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

#define MAX_KANA_KEY_NAME    6

#define ENABLE_MTYPE
#define ENABLE_STICKNEY

#define MAX_LED_KEY_NAME    4

#define MAX_IME_KEY_NAME     5

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

#ifdef ENABLE_MTYPE

#endif

#ifdef ENABLE_STICKNEY
#endif

#ifdef ENABLE_MTYPE
#endif

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
