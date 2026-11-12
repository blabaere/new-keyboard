/*
 * Copyright 2013-2014 Esrille Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "Keyboard.h"

#include <string.h>

#ifdef __XC8
#include <xc.h>
#endif

// ---------------------------------------------------------------------------//
// BASE LAYER
// ---------------------------------------------------------------------------//
// Keys for emulating Ergol on Azerty hosts.
// Some positions in the grid don't match a regular Azerty key.
// This is obviously the case for the dead key (between D and Y)
// But it seems also true for 3 others on the bottom row (punctuation)
// These special keys are marked by empty comments used as delimiters: /**/
// This means the existing functions cannot simply read a position in that matrix and return the key code
static uint8_t const matrix_ergol_az[8][12] =
{
    KEY_LEFT_BRACKET, KEY_F2, KEY_F3, KEY_F4, KEY_F5, KEY_F6, KEY_F7, KEY_F8, KEY_F9, KEY_F10, KEY_F11, KEY_EQUAL,
    KEY_APPLICATION, KEY_F1, 0, 0, 0, 0, 0, 0, 0, 0, KEY_F12, KEY_BACKSLASH,
    KEY_RIGHT_BRACKET, KEY_1, 0, 0, 0, 0, 0, 0, 0, 0, KEY_0, KEY_MINUS,
    KEY_NON_US_BACKSLASH, KEY_2, KEY_3, KEY_4, KEY_5, 0, 0, KEY_6, KEY_7, KEY_8, KEY_9, KEY_QUOTE,
    KEY_A, KEY_C, KEY_O, KEY_P, KEY_Z, 0, 0, KEY_J, KEY_SEMICOLON, KEY_D, /**/VOID_KEY/**/, KEY_Y,
    KEY_Q, KEY_S, KEY_E, KEY_N, KEY_F, KEY_ESCAPE, KEY_DELETE, KEY_L, KEY_R, KEY_T, KEY_I, KEY_U,
    KEY_W, KEY_X, /**/KEY_MINUS/**/, KEY_V, KEY_B, KEY_TAB, KEY_ENTER, /**/KEY_COMMA/**/, KEY_H, KEY_G, /**/KEY_PERIOD/**/, KEY_K,
    KEY_LEFTCONTROL, KEY_LEFT_GUI, KEY_FN, KEY_LEFTSHIFT, KEY_BACKSPACE, KEY_LEFTALT, KEY_RIGHTALT, KEY_SPACEBAR, KEY_RIGHTSHIFT, KEY_FN, KEY_RIGHT_GUI, KEY_RIGHTCONTROL
};

// ---------------------------------------------------------------------------//
// SHIFT LAYER
// ---------------------------------------------------------------------------//
// IT SEEMS LIKE THE SHIFT MODIFIER WILL NEED SOME SPECIAL HANDLING TOO
// Otherwise, how is "Shift + 1" supposed to result in "€" ?

// ---------------------------------------------------------------------------//
// DEAD-KEY LAYER
// ---------------------------------------------------------------------------//
// What is needed here is not a single key code per cell but a key combination
// for example where 'à' is expected, there should be something that would generate the sequence Alt + 0,2,2,4
// But some cells should be empty, or maybe a regular key code
// All symbols in CP-1252 are combinations starting with Alt + 0,1 or Alt + 0,2
static uint8_t const matrix_ergol_az_dead_key[8][12][3] = 
{
    {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}},
    {{0, 0, 0}, {0, 0, 0}, {0      }, {0      }, {0      }, {0      }, {0      }, {0      }, {0      }, {0      }, {0, 0, 0}, {0, 0, 0}},
    {{0, 0, 0}, {0, 0, 0}, {0      }, {0      }, {0      }, {0      }, {0      }, {0      }, {0      }, {0      }, {0, 0, 0}, {0, 0, 0}},
    {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0      }, {0      }, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}},
    {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0      }, {0      }, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}},
    {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}},
    {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}},
    {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}}
};
// here '⁰' means "not mapped" and '₀' means "special case"
/* 
 * 1 2 3 4 5 6 7 8 9 0
 * „ “ ” ¢ ‰ ⁰ ⁰ § ¶ °
 * 
 * Q C O P W J M D ! Y
 * â ç œ ô ⁰ ⁰ µ _ ₀ û
 * 
 * A S E N F L R T I U
 * à é è ê ñ ( ) î ï ù
 * 
 * Z X - V B . H G , K
 * æ ß ‑ – — … ⁰ ⁰ · ⁰
 */


// ---------------------------------------------------------------------------//
// DEAD-KEY SHIFT LAYER
// ---------------------------------------------------------------------------//
/* 
 * 1 2 3 4 5 6 7 8 9 0
 * ‚ ‘ ’              
 * 
 * Q C O P W J M D ! Y
 * Â Ç Œ Ô       _ ¡ Û
 * 
 * A S E N F L R T I U
 * À É È Ê Ñ     Î Ï Ù
 * 
 * Z X - V B . H G , K
 * Æ ẞ ¿           •  
 */


// ---------------------------------------------------------------------------//
// DOUBLE DEAD-KEY LAYER
// ---------------------------------------------------------------------------//
// There should be a layer for double dead key
// For DK, P -> ô, but DK, DK, O -> ö
// There isn't much here, may be it could be enriched
/* 
 * 1 2 3 4 5 6 7 8 9 0
 * NOTHING HERE        
 * 
 * Q C O P W J M D ! Y
 *     ö   ẅ         ÿ
 * 
 * A S E N F L R T I U
 * ä   ë         ẗ ï ü
 * 
 * Z X - V B . H G , K
 *   ẍ         ḧ   ·  
 */

// ---------------------------------------------------------------------------//
// DOUBLE DEAD-KEY SHIFT LAYER
// ---------------------------------------------------------------------------//
// Same as above but in capital layer


// ---------------------------------------------------------------------------//
// ALT_GR LAYER
// ---------------------------------------------------------------------------//
// There has to be another layer for AltGr for symbols (math and programming)
// This one will definitely have regular keys and some combinations 
/* 
 * 1 2 3 4 5 6 7 8 9 0
 * ₁ ₂ ₃ ₄ ₅ ₆ ₇ ₈ ₉ ₀
 * 
 * Q C O P W J M D ! Y
 * ^ < > $ % @ & * ' `
 * 
 * A S E N F L R T I U
 * { ( ) } = \ + - / "
 * 
 * Z X - V B . H G , K
 * ~ [ ] _ # | ! ; : ?
 */


// ---------------------------------------------------------------------------//
// ALT_GR SHIFT LAYER
// ---------------------------------------------------------------------------//
// And if there is some room left: AltGr+Shift. Not much here except × ≠ ÷ ≤ ≥ ±
// Many places are some kind of dead-key
/* 
 * 1 2 3 4 5 6 7 8 9 0
 * ₁ ₂ ₃ ₄ ₅ ₆ ₇ ₈ ₉ ₀
 * 
 * Q C O P W J M D ! Y
 *   ≤ ≥   ‰     ×    
 * 
 * A S E N F L R T I U
 *         ≠   ±   ÷  
 * 
 * Z X - V B . H G , K
 *       –   ¦ ¬   :  
 */


// Do not remove this, it breaks the build
static uint8_t const vowelSet[] =
{
    0,
    KEY_A,
    KEY_I,
    KEY_U,
    KEY_E,
    KEY_O,
    KEY_Y
};

static uint8_t const mode_keys[KANA_MAX + 1][5] =
{
    {KEY_O, KEY_F, KEY_F, KEY_ENTER},            // OFF
    {KEY_E, KEY_R, KEY_MINUS, KEY_A, KEY_ENTER}, // Ergol azerty
    {KEY_E, KEY_R, KEY_MINUS, KEY_Q, KEY_ENTER}, // Ergol qwerty-intl
};

// Is Ergol emulation OFF, ON for Azerty or ON for Qwerty
static uint8_t mode;
static uint8_t led;
static uint8_t ime;

void initKeyboardKana(void)
{
    mode = eeprom_read(EEPROM_KANA);
    if (KANA_MAX < mode)
        mode = 0;

    led = eeprom_read(EEPROM_LED);
    if (LED_MAX < led)
        led = LED_DEFAULT;

    ime = eeprom_read(EEPROM_IME);
    if (IME_MAX < ime)
        ime = 0;
}


int8_t is_ergol_mode(const uint8_t* current)
{
    return mode && 
            !(current[0] & (MOD_ALT | MOD_CONTROL | MOD_GUI)) && 
            !(current[1] & (MOD_FN | MOD_PAD));
}

void switch_ergol(void)
{
    ++mode;
    if (KANA_MAX < mode)
        mode = 0;
    eeprom_write(EEPROM_KANA, mode);
    emit_ergol_name();
}

void emit_ergol_name(void) {
    emitStringN(mode_keys[mode], 5);    
}

int8_t process_keys_ergol(const uint8_t* current, const uint8_t* processed, uint8_t* report)
{
    return XMIT_NONE;
}