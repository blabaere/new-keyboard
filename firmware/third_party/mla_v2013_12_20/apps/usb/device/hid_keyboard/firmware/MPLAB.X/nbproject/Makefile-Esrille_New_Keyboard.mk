#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-Esrille_New_Keyboard.mk)" "nbproject/Makefile-local-Esrille_New_Keyboard.mk"
include nbproject/Makefile-local-Esrille_New_Keyboard.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=Esrille_New_Keyboard
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/system_config/esrille_new_keyboard/system.c ../src/app_device_keyboard.c ../src/app_led_usb_status.c ../src/main.c ../src/usb_descriptors.c ../src/app_device_mouse.c ../../../../../../bsp/esrille_new_keyboard/buttons.c ../../../../../../bsp/esrille_new_keyboard/leds.c ../../../../../../framework/usb/src/usb_device.c ../../../../../../framework/usb/src/usb_device_hid.c ../../../../../../../../src/KeyboardCommon.c ../../../../../../../../src/KeyboardJP.c ../../../../../../../../src/KeyboardUS.c ../../../../../../../../src/Mouse.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/770305540/system.p1 ${OBJECTDIR}/_ext/1360937237/app_device_keyboard.p1 ${OBJECTDIR}/_ext/1360937237/app_led_usb_status.p1 ${OBJECTDIR}/_ext/1360937237/main.p1 ${OBJECTDIR}/_ext/1360937237/usb_descriptors.p1 ${OBJECTDIR}/_ext/1360937237/app_device_mouse.p1 ${OBJECTDIR}/_ext/978351403/buttons.p1 ${OBJECTDIR}/_ext/978351403/leds.p1 ${OBJECTDIR}/_ext/838585624/usb_device.p1 ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1 ${OBJECTDIR}/_ext/309221532/KeyboardCommon.p1 ${OBJECTDIR}/_ext/309221532/KeyboardJP.p1 ${OBJECTDIR}/_ext/309221532/KeyboardUS.p1 ${OBJECTDIR}/_ext/309221532/Mouse.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/770305540/system.p1.d ${OBJECTDIR}/_ext/1360937237/app_device_keyboard.p1.d ${OBJECTDIR}/_ext/1360937237/app_led_usb_status.p1.d ${OBJECTDIR}/_ext/1360937237/main.p1.d ${OBJECTDIR}/_ext/1360937237/usb_descriptors.p1.d ${OBJECTDIR}/_ext/1360937237/app_device_mouse.p1.d ${OBJECTDIR}/_ext/978351403/buttons.p1.d ${OBJECTDIR}/_ext/978351403/leds.p1.d ${OBJECTDIR}/_ext/838585624/usb_device.p1.d ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1.d ${OBJECTDIR}/_ext/309221532/KeyboardCommon.p1.d ${OBJECTDIR}/_ext/309221532/KeyboardJP.p1.d ${OBJECTDIR}/_ext/309221532/KeyboardUS.p1.d ${OBJECTDIR}/_ext/309221532/Mouse.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/770305540/system.p1 ${OBJECTDIR}/_ext/1360937237/app_device_keyboard.p1 ${OBJECTDIR}/_ext/1360937237/app_led_usb_status.p1 ${OBJECTDIR}/_ext/1360937237/main.p1 ${OBJECTDIR}/_ext/1360937237/usb_descriptors.p1 ${OBJECTDIR}/_ext/1360937237/app_device_mouse.p1 ${OBJECTDIR}/_ext/978351403/buttons.p1 ${OBJECTDIR}/_ext/978351403/leds.p1 ${OBJECTDIR}/_ext/838585624/usb_device.p1 ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1 ${OBJECTDIR}/_ext/309221532/KeyboardCommon.p1 ${OBJECTDIR}/_ext/309221532/KeyboardJP.p1 ${OBJECTDIR}/_ext/309221532/KeyboardUS.p1 ${OBJECTDIR}/_ext/309221532/Mouse.p1

# Source Files
SOURCEFILES=../src/system_config/esrille_new_keyboard/system.c ../src/app_device_keyboard.c ../src/app_led_usb_status.c ../src/main.c ../src/usb_descriptors.c ../src/app_device_mouse.c ../../../../../../bsp/esrille_new_keyboard/buttons.c ../../../../../../bsp/esrille_new_keyboard/leds.c ../../../../../../framework/usb/src/usb_device.c ../../../../../../framework/usb/src/usb_device_hid.c ../../../../../../../../src/KeyboardCommon.c ../../../../../../../../src/KeyboardJP.c ../../../../../../../../src/KeyboardUS.c ../../../../../../../../src/Mouse.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-Esrille_New_Keyboard.mk ${DISTDIR}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F4550
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/770305540/system.p1: ../src/system_config/esrille_new_keyboard/system.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/770305540" 
	@${RM} ${OBJECTDIR}/_ext/770305540/system.p1.d 
	@${RM} ${OBJECTDIR}/_ext/770305540/system.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --rom=default,-0-17FF,-1806-1807,-1826-1827 --opt=+asm,-asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../../../../../../src" -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/esrille_new_keyboard" -I"../src/system_config/esrille_new_keyboard" --warn=0 --asmlist -DXPRJ_Esrille_New_Keyboard=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x1800 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/770305540/system.p1 ../src/system_config/esrille_new_keyboard/system.c 
	@-${MV} ${OBJECTDIR}/_ext/770305540/system.d ${OBJECTDIR}/_ext/770305540/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/770305540/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/app_device_keyboard.p1: ../src/app_device_keyboard.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_device_keyboard.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_device_keyboard.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --rom=default,-0-17FF,-1806-1807,-1826-1827 --opt=+asm,-asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../../../../../../src" -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/esrille_new_keyboard" -I"../src/system_config/esrille_new_keyboard" --warn=0 --asmlist -DXPRJ_Esrille_New_Keyboard=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x1800 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1360937237/app_device_keyboard.p1 ../src/app_device_keyboard.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/app_device_keyboard.d ${OBJECTDIR}/_ext/1360937237/app_device_keyboard.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/app_device_keyboard.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/app_led_usb_status.p1: ../src/app_led_usb_status.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_led_usb_status.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_led_usb_status.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --rom=default,-0-17FF,-1806-1807,-1826-1827 --opt=+asm,-asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../../../../../../src" -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/esrille_new_keyboard" -I"../src/system_config/esrille_new_keyboard" --warn=0 --asmlist -DXPRJ_Esrille_New_Keyboard=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x1800 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1360937237/app_led_usb_status.p1 ../src/app_led_usb_status.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/app_led_usb_status.d ${OBJECTDIR}/_ext/1360937237/app_led_usb_status.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/app_led_usb_status.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/main.p1: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --rom=default,-0-17FF,-1806-1807,-1826-1827 --opt=+asm,-asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../../../../../../src" -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/esrille_new_keyboard" -I"../src/system_config/esrille_new_keyboard" --warn=0 --asmlist -DXPRJ_Esrille_New_Keyboard=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x1800 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1360937237/main.p1 ../src/main.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/main.d ${OBJECTDIR}/_ext/1360937237/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/usb_descriptors.p1: ../src/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/usb_descriptors.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/usb_descriptors.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --rom=default,-0-17FF,-1806-1807,-1826-1827 --opt=+asm,-asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../../../../../../src" -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/esrille_new_keyboard" -I"../src/system_config/esrille_new_keyboard" --warn=0 --asmlist -DXPRJ_Esrille_New_Keyboard=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x1800 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1360937237/usb_descriptors.p1 ../src/usb_descriptors.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/usb_descriptors.d ${OBJECTDIR}/_ext/1360937237/usb_descriptors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/usb_descriptors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/app_device_mouse.p1: ../src/app_device_mouse.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_device_mouse.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_device_mouse.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --rom=default,-0-17FF,-1806-1807,-1826-1827 --opt=+asm,-asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../../../../../../src" -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/esrille_new_keyboard" -I"../src/system_config/esrille_new_keyboard" --warn=0 --asmlist -DXPRJ_Esrille_New_Keyboard=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x1800 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1360937237/app_device_mouse.p1 ../src/app_device_mouse.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/app_device_mouse.d ${OBJECTDIR}/_ext/1360937237/app_device_mouse.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/app_device_mouse.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/978351403/buttons.p1: ../../../../../../bsp/esrille_new_keyboard/buttons.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/978351403" 
	@${RM} ${OBJECTDIR}/_ext/978351403/buttons.p1.d 
	@${RM} ${OBJECTDIR}/_ext/978351403/buttons.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --rom=default,-0-17FF,-1806-1807,-1826-1827 --opt=+asm,-asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../../../../../../src" -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/esrille_new_keyboard" -I"../src/system_config/esrille_new_keyboard" --warn=0 --asmlist -DXPRJ_Esrille_New_Keyboard=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x1800 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/978351403/buttons.p1 ../../../../../../bsp/esrille_new_keyboard/buttons.c 
	@-${MV} ${OBJECTDIR}/_ext/978351403/buttons.d ${OBJECTDIR}/_ext/978351403/buttons.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/978351403/buttons.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/978351403/leds.p1: ../../../../../../bsp/esrille_new_keyboard/leds.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/978351403" 
	@${RM} ${OBJECTDIR}/_ext/978351403/leds.p1.d 
	@${RM} ${OBJECTDIR}/_ext/978351403/leds.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --rom=default,-0-17FF,-1806-1807,-1826-1827 --opt=+asm,-asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../../../../../../src" -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/esrille_new_keyboard" -I"../src/system_config/esrille_new_keyboard" --warn=0 --asmlist -DXPRJ_Esrille_New_Keyboard=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x1800 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/978351403/leds.p1 ../../../../../../bsp/esrille_new_keyboard/leds.c 
	@-${MV} ${OBJECTDIR}/_ext/978351403/leds.d ${OBJECTDIR}/_ext/978351403/leds.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/978351403/leds.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/838585624/usb_device.p1: ../../../../../../framework/usb/src/usb_device.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/838585624" 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_device.p1.d 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_device.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --rom=default,-0-17FF,-1806-1807,-1826-1827 --opt=+asm,-asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../../../../../../src" -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/esrille_new_keyboard" -I"../src/system_config/esrille_new_keyboard" --warn=0 --asmlist -DXPRJ_Esrille_New_Keyboard=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x1800 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/838585624/usb_device.p1 ../../../../../../framework/usb/src/usb_device.c 
	@-${MV} ${OBJECTDIR}/_ext/838585624/usb_device.d ${OBJECTDIR}/_ext/838585624/usb_device.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/838585624/usb_device.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/838585624/usb_device_hid.p1: ../../../../../../framework/usb/src/usb_device_hid.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/838585624" 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1.d 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --rom=default,-0-17FF,-1806-1807,-1826-1827 --opt=+asm,-asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../../../../../../src" -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/esrille_new_keyboard" -I"../src/system_config/esrille_new_keyboard" --warn=0 --asmlist -DXPRJ_Esrille_New_Keyboard=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x1800 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/838585624/usb_device_hid.p1 ../../../../../../framework/usb/src/usb_device_hid.c 
	@-${MV} ${OBJECTDIR}/_ext/838585624/usb_device_hid.d ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/309221532/KeyboardCommon.p1: ../../../../../../../../src/KeyboardCommon.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/309221532" 
	@${RM} ${OBJECTDIR}/_ext/309221532/KeyboardCommon.p1.d 
	@${RM} ${OBJECTDIR}/_ext/309221532/KeyboardCommon.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --rom=default,-0-17FF,-1806-1807,-1826-1827 --opt=+asm,-asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../../../../../../src" -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/esrille_new_keyboard" -I"../src/system_config/esrille_new_keyboard" --warn=0 --asmlist -DXPRJ_Esrille_New_Keyboard=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x1800 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/309221532/KeyboardCommon.p1 ../../../../../../../../src/KeyboardCommon.c 
	@-${MV} ${OBJECTDIR}/_ext/309221532/KeyboardCommon.d ${OBJECTDIR}/_ext/309221532/KeyboardCommon.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/309221532/KeyboardCommon.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/309221532/KeyboardJP.p1: ../../../../../../../../src/KeyboardJP.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/309221532" 
	@${RM} ${OBJECTDIR}/_ext/309221532/KeyboardJP.p1.d 
	@${RM} ${OBJECTDIR}/_ext/309221532/KeyboardJP.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --rom=default,-0-17FF,-1806-1807,-1826-1827 --opt=+asm,-asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../../../../../../src" -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/esrille_new_keyboard" -I"../src/system_config/esrille_new_keyboard" --warn=0 --asmlist -DXPRJ_Esrille_New_Keyboard=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x1800 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/309221532/KeyboardJP.p1 ../../../../../../../../src/KeyboardJP.c 
	@-${MV} ${OBJECTDIR}/_ext/309221532/KeyboardJP.d ${OBJECTDIR}/_ext/309221532/KeyboardJP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/309221532/KeyboardJP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/309221532/KeyboardUS.p1: ../../../../../../../../src/KeyboardUS.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/309221532" 
	@${RM} ${OBJECTDIR}/_ext/309221532/KeyboardUS.p1.d 
	@${RM} ${OBJECTDIR}/_ext/309221532/KeyboardUS.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --rom=default,-0-17FF,-1806-1807,-1826-1827 --opt=+asm,-asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../../../../../../src" -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/esrille_new_keyboard" -I"../src/system_config/esrille_new_keyboard" --warn=0 --asmlist -DXPRJ_Esrille_New_Keyboard=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x1800 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/309221532/KeyboardUS.p1 ../../../../../../../../src/KeyboardUS.c 
	@-${MV} ${OBJECTDIR}/_ext/309221532/KeyboardUS.d ${OBJECTDIR}/_ext/309221532/KeyboardUS.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/309221532/KeyboardUS.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/309221532/Mouse.p1: ../../../../../../../../src/Mouse.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/309221532" 
	@${RM} ${OBJECTDIR}/_ext/309221532/Mouse.p1.d 
	@${RM} ${OBJECTDIR}/_ext/309221532/Mouse.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --rom=default,-0-17FF,-1806-1807,-1826-1827 --opt=+asm,-asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../../../../../../src" -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/esrille_new_keyboard" -I"../src/system_config/esrille_new_keyboard" --warn=0 --asmlist -DXPRJ_Esrille_New_Keyboard=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x1800 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/309221532/Mouse.p1 ../../../../../../../../src/Mouse.c 
	@-${MV} ${OBJECTDIR}/_ext/309221532/Mouse.d ${OBJECTDIR}/_ext/309221532/Mouse.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/309221532/Mouse.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/770305540/system.p1: ../src/system_config/esrille_new_keyboard/system.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/770305540" 
	@${RM} ${OBJECTDIR}/_ext/770305540/system.p1.d 
	@${RM} ${OBJECTDIR}/_ext/770305540/system.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --rom=default,-0-17FF,-1806-1807,-1826-1827 --opt=+asm,-asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../../../../../../src" -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/esrille_new_keyboard" -I"../src/system_config/esrille_new_keyboard" --warn=0 --asmlist -DXPRJ_Esrille_New_Keyboard=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x1800 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/770305540/system.p1 ../src/system_config/esrille_new_keyboard/system.c 
	@-${MV} ${OBJECTDIR}/_ext/770305540/system.d ${OBJECTDIR}/_ext/770305540/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/770305540/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/app_device_keyboard.p1: ../src/app_device_keyboard.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_device_keyboard.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_device_keyboard.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --rom=default,-0-17FF,-1806-1807,-1826-1827 --opt=+asm,-asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../../../../../../src" -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/esrille_new_keyboard" -I"../src/system_config/esrille_new_keyboard" --warn=0 --asmlist -DXPRJ_Esrille_New_Keyboard=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x1800 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1360937237/app_device_keyboard.p1 ../src/app_device_keyboard.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/app_device_keyboard.d ${OBJECTDIR}/_ext/1360937237/app_device_keyboard.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/app_device_keyboard.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/app_led_usb_status.p1: ../src/app_led_usb_status.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_led_usb_status.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_led_usb_status.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --rom=default,-0-17FF,-1806-1807,-1826-1827 --opt=+asm,-asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../../../../../../src" -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/esrille_new_keyboard" -I"../src/system_config/esrille_new_keyboard" --warn=0 --asmlist -DXPRJ_Esrille_New_Keyboard=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x1800 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1360937237/app_led_usb_status.p1 ../src/app_led_usb_status.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/app_led_usb_status.d ${OBJECTDIR}/_ext/1360937237/app_led_usb_status.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/app_led_usb_status.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/main.p1: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --rom=default,-0-17FF,-1806-1807,-1826-1827 --opt=+asm,-asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../../../../../../src" -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/esrille_new_keyboard" -I"../src/system_config/esrille_new_keyboard" --warn=0 --asmlist -DXPRJ_Esrille_New_Keyboard=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x1800 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1360937237/main.p1 ../src/main.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/main.d ${OBJECTDIR}/_ext/1360937237/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/usb_descriptors.p1: ../src/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/usb_descriptors.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/usb_descriptors.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --rom=default,-0-17FF,-1806-1807,-1826-1827 --opt=+asm,-asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../../../../../../src" -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/esrille_new_keyboard" -I"../src/system_config/esrille_new_keyboard" --warn=0 --asmlist -DXPRJ_Esrille_New_Keyboard=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x1800 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1360937237/usb_descriptors.p1 ../src/usb_descriptors.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/usb_descriptors.d ${OBJECTDIR}/_ext/1360937237/usb_descriptors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/usb_descriptors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1360937237/app_device_mouse.p1: ../src/app_device_mouse.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_device_mouse.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_device_mouse.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --rom=default,-0-17FF,-1806-1807,-1826-1827 --opt=+asm,-asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../../../../../../src" -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/esrille_new_keyboard" -I"../src/system_config/esrille_new_keyboard" --warn=0 --asmlist -DXPRJ_Esrille_New_Keyboard=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x1800 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1360937237/app_device_mouse.p1 ../src/app_device_mouse.c 
	@-${MV} ${OBJECTDIR}/_ext/1360937237/app_device_mouse.d ${OBJECTDIR}/_ext/1360937237/app_device_mouse.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1360937237/app_device_mouse.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/978351403/buttons.p1: ../../../../../../bsp/esrille_new_keyboard/buttons.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/978351403" 
	@${RM} ${OBJECTDIR}/_ext/978351403/buttons.p1.d 
	@${RM} ${OBJECTDIR}/_ext/978351403/buttons.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --rom=default,-0-17FF,-1806-1807,-1826-1827 --opt=+asm,-asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../../../../../../src" -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/esrille_new_keyboard" -I"../src/system_config/esrille_new_keyboard" --warn=0 --asmlist -DXPRJ_Esrille_New_Keyboard=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x1800 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/978351403/buttons.p1 ../../../../../../bsp/esrille_new_keyboard/buttons.c 
	@-${MV} ${OBJECTDIR}/_ext/978351403/buttons.d ${OBJECTDIR}/_ext/978351403/buttons.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/978351403/buttons.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/978351403/leds.p1: ../../../../../../bsp/esrille_new_keyboard/leds.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/978351403" 
	@${RM} ${OBJECTDIR}/_ext/978351403/leds.p1.d 
	@${RM} ${OBJECTDIR}/_ext/978351403/leds.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --rom=default,-0-17FF,-1806-1807,-1826-1827 --opt=+asm,-asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../../../../../../src" -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/esrille_new_keyboard" -I"../src/system_config/esrille_new_keyboard" --warn=0 --asmlist -DXPRJ_Esrille_New_Keyboard=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x1800 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/978351403/leds.p1 ../../../../../../bsp/esrille_new_keyboard/leds.c 
	@-${MV} ${OBJECTDIR}/_ext/978351403/leds.d ${OBJECTDIR}/_ext/978351403/leds.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/978351403/leds.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/838585624/usb_device.p1: ../../../../../../framework/usb/src/usb_device.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/838585624" 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_device.p1.d 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_device.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --rom=default,-0-17FF,-1806-1807,-1826-1827 --opt=+asm,-asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../../../../../../src" -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/esrille_new_keyboard" -I"../src/system_config/esrille_new_keyboard" --warn=0 --asmlist -DXPRJ_Esrille_New_Keyboard=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x1800 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/838585624/usb_device.p1 ../../../../../../framework/usb/src/usb_device.c 
	@-${MV} ${OBJECTDIR}/_ext/838585624/usb_device.d ${OBJECTDIR}/_ext/838585624/usb_device.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/838585624/usb_device.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/838585624/usb_device_hid.p1: ../../../../../../framework/usb/src/usb_device_hid.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/838585624" 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1.d 
	@${RM} ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --rom=default,-0-17FF,-1806-1807,-1826-1827 --opt=+asm,-asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../../../../../../src" -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/esrille_new_keyboard" -I"../src/system_config/esrille_new_keyboard" --warn=0 --asmlist -DXPRJ_Esrille_New_Keyboard=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x1800 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/838585624/usb_device_hid.p1 ../../../../../../framework/usb/src/usb_device_hid.c 
	@-${MV} ${OBJECTDIR}/_ext/838585624/usb_device_hid.d ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/838585624/usb_device_hid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/309221532/KeyboardCommon.p1: ../../../../../../../../src/KeyboardCommon.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/309221532" 
	@${RM} ${OBJECTDIR}/_ext/309221532/KeyboardCommon.p1.d 
	@${RM} ${OBJECTDIR}/_ext/309221532/KeyboardCommon.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --rom=default,-0-17FF,-1806-1807,-1826-1827 --opt=+asm,-asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../../../../../../src" -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/esrille_new_keyboard" -I"../src/system_config/esrille_new_keyboard" --warn=0 --asmlist -DXPRJ_Esrille_New_Keyboard=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x1800 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/309221532/KeyboardCommon.p1 ../../../../../../../../src/KeyboardCommon.c 
	@-${MV} ${OBJECTDIR}/_ext/309221532/KeyboardCommon.d ${OBJECTDIR}/_ext/309221532/KeyboardCommon.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/309221532/KeyboardCommon.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/309221532/KeyboardJP.p1: ../../../../../../../../src/KeyboardJP.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/309221532" 
	@${RM} ${OBJECTDIR}/_ext/309221532/KeyboardJP.p1.d 
	@${RM} ${OBJECTDIR}/_ext/309221532/KeyboardJP.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --rom=default,-0-17FF,-1806-1807,-1826-1827 --opt=+asm,-asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../../../../../../src" -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/esrille_new_keyboard" -I"../src/system_config/esrille_new_keyboard" --warn=0 --asmlist -DXPRJ_Esrille_New_Keyboard=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x1800 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/309221532/KeyboardJP.p1 ../../../../../../../../src/KeyboardJP.c 
	@-${MV} ${OBJECTDIR}/_ext/309221532/KeyboardJP.d ${OBJECTDIR}/_ext/309221532/KeyboardJP.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/309221532/KeyboardJP.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/309221532/KeyboardUS.p1: ../../../../../../../../src/KeyboardUS.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/309221532" 
	@${RM} ${OBJECTDIR}/_ext/309221532/KeyboardUS.p1.d 
	@${RM} ${OBJECTDIR}/_ext/309221532/KeyboardUS.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --rom=default,-0-17FF,-1806-1807,-1826-1827 --opt=+asm,-asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../../../../../../src" -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/esrille_new_keyboard" -I"../src/system_config/esrille_new_keyboard" --warn=0 --asmlist -DXPRJ_Esrille_New_Keyboard=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x1800 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/309221532/KeyboardUS.p1 ../../../../../../../../src/KeyboardUS.c 
	@-${MV} ${OBJECTDIR}/_ext/309221532/KeyboardUS.d ${OBJECTDIR}/_ext/309221532/KeyboardUS.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/309221532/KeyboardUS.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/309221532/Mouse.p1: ../../../../../../../../src/Mouse.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/309221532" 
	@${RM} ${OBJECTDIR}/_ext/309221532/Mouse.p1.d 
	@${RM} ${OBJECTDIR}/_ext/309221532/Mouse.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --rom=default,-0-17FF,-1806-1807,-1826-1827 --opt=+asm,-asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../../../../../../src" -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/esrille_new_keyboard" -I"../src/system_config/esrille_new_keyboard" --warn=0 --asmlist -DXPRJ_Esrille_New_Keyboard=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x1800 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/309221532/Mouse.p1 ../../../../../../../../src/Mouse.c 
	@-${MV} ${OBJECTDIR}/_ext/309221532/Mouse.d ${OBJECTDIR}/_ext/309221532/Mouse.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/309221532/Mouse.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -m${DISTDIR}/MPLAB.X.${IMAGE_TYPE}.map  -D__DEBUG=1  --debugger=none  -DXPRJ_Esrille_New_Keyboard=$(CND_CONF)    --double=24 --float=24 --emi=wordwrite --rom=default,-0-17FF,-1806-1807,-1826-1827 --opt=+asm,-asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../../../../../../src" -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/esrille_new_keyboard" -I"../src/system_config/esrille_new_keyboard" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x1800 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"        $(COMPARISON_BUILD) --memorysummary ${DISTDIR}/memoryfile.xml -o${DISTDIR}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/MPLAB.X.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -m${DISTDIR}/MPLAB.X.${IMAGE_TYPE}.map  -DXPRJ_Esrille_New_Keyboard=$(CND_CONF)    --double=24 --float=24 --emi=wordwrite --rom=default,-0-17FF,-1806-1807,-1826-1827 --opt=+asm,-asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"../../../../../../../../src" -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/esrille_new_keyboard" -I"../src/system_config/esrille_new_keyboard" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --codeoffset=0x1800 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     $(COMPARISON_BUILD) --memorysummary ${DISTDIR}/memoryfile.xml -o${DISTDIR}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}
