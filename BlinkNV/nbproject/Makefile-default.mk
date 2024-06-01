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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/BlinkNV.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/BlinkNV.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=main.c ../../VLCBlib_PIC/arduino.c ../../VLCBlib_PIC/can18_ecan.c ../../VLCBlib_PIC/messageQueue.c ../../VLCBlib_PIC/mns.c ../../VLCBlib_PIC/nv.c ../../VLCBlib_PIC/nvm.c ../../VLCBlib_PIC/statusLeds2.c ../../VLCBlib_PIC/ticktime.c ../../VLCBlib_PIC/timedResponse.c ../../VLCBlib_PIC/vlcb.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/main.p1 ${OBJECTDIR}/_ext/1954642981/arduino.p1 ${OBJECTDIR}/_ext/1954642981/can18_ecan.p1 ${OBJECTDIR}/_ext/1954642981/messageQueue.p1 ${OBJECTDIR}/_ext/1954642981/mns.p1 ${OBJECTDIR}/_ext/1954642981/nv.p1 ${OBJECTDIR}/_ext/1954642981/nvm.p1 ${OBJECTDIR}/_ext/1954642981/statusLeds2.p1 ${OBJECTDIR}/_ext/1954642981/ticktime.p1 ${OBJECTDIR}/_ext/1954642981/timedResponse.p1 ${OBJECTDIR}/_ext/1954642981/vlcb.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/main.p1.d ${OBJECTDIR}/_ext/1954642981/arduino.p1.d ${OBJECTDIR}/_ext/1954642981/can18_ecan.p1.d ${OBJECTDIR}/_ext/1954642981/messageQueue.p1.d ${OBJECTDIR}/_ext/1954642981/mns.p1.d ${OBJECTDIR}/_ext/1954642981/nv.p1.d ${OBJECTDIR}/_ext/1954642981/nvm.p1.d ${OBJECTDIR}/_ext/1954642981/statusLeds2.p1.d ${OBJECTDIR}/_ext/1954642981/ticktime.p1.d ${OBJECTDIR}/_ext/1954642981/timedResponse.p1.d ${OBJECTDIR}/_ext/1954642981/vlcb.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/main.p1 ${OBJECTDIR}/_ext/1954642981/arduino.p1 ${OBJECTDIR}/_ext/1954642981/can18_ecan.p1 ${OBJECTDIR}/_ext/1954642981/messageQueue.p1 ${OBJECTDIR}/_ext/1954642981/mns.p1 ${OBJECTDIR}/_ext/1954642981/nv.p1 ${OBJECTDIR}/_ext/1954642981/nvm.p1 ${OBJECTDIR}/_ext/1954642981/statusLeds2.p1 ${OBJECTDIR}/_ext/1954642981/ticktime.p1 ${OBJECTDIR}/_ext/1954642981/timedResponse.p1 ${OBJECTDIR}/_ext/1954642981/vlcb.p1

# Source Files
SOURCEFILES=main.c ../../VLCBlib_PIC/arduino.c ../../VLCBlib_PIC/can18_ecan.c ../../VLCBlib_PIC/messageQueue.c ../../VLCBlib_PIC/mns.c ../../VLCBlib_PIC/nv.c ../../VLCBlib_PIC/nvm.c ../../VLCBlib_PIC/statusLeds2.c ../../VLCBlib_PIC/ticktime.c ../../VLCBlib_PIC/timedResponse.c ../../VLCBlib_PIC/vlcb.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/BlinkNV.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F26K80
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../VLCB-defs" -I"../../VLCBlib_PIC" -I"." -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1954642981/arduino.p1: ../../VLCBlib_PIC/arduino.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1954642981" 
	@${RM} ${OBJECTDIR}/_ext/1954642981/arduino.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1954642981/arduino.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../VLCB-defs" -I"../../VLCBlib_PIC" -I"." -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1954642981/arduino.p1 ../../VLCBlib_PIC/arduino.c 
	@-${MV} ${OBJECTDIR}/_ext/1954642981/arduino.d ${OBJECTDIR}/_ext/1954642981/arduino.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954642981/arduino.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1954642981/can18_ecan.p1: ../../VLCBlib_PIC/can18_ecan.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1954642981" 
	@${RM} ${OBJECTDIR}/_ext/1954642981/can18_ecan.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1954642981/can18_ecan.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../VLCB-defs" -I"../../VLCBlib_PIC" -I"." -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1954642981/can18_ecan.p1 ../../VLCBlib_PIC/can18_ecan.c 
	@-${MV} ${OBJECTDIR}/_ext/1954642981/can18_ecan.d ${OBJECTDIR}/_ext/1954642981/can18_ecan.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954642981/can18_ecan.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1954642981/messageQueue.p1: ../../VLCBlib_PIC/messageQueue.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1954642981" 
	@${RM} ${OBJECTDIR}/_ext/1954642981/messageQueue.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1954642981/messageQueue.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../VLCB-defs" -I"../../VLCBlib_PIC" -I"." -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1954642981/messageQueue.p1 ../../VLCBlib_PIC/messageQueue.c 
	@-${MV} ${OBJECTDIR}/_ext/1954642981/messageQueue.d ${OBJECTDIR}/_ext/1954642981/messageQueue.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954642981/messageQueue.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1954642981/mns.p1: ../../VLCBlib_PIC/mns.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1954642981" 
	@${RM} ${OBJECTDIR}/_ext/1954642981/mns.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1954642981/mns.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../VLCB-defs" -I"../../VLCBlib_PIC" -I"." -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1954642981/mns.p1 ../../VLCBlib_PIC/mns.c 
	@-${MV} ${OBJECTDIR}/_ext/1954642981/mns.d ${OBJECTDIR}/_ext/1954642981/mns.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954642981/mns.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1954642981/nv.p1: ../../VLCBlib_PIC/nv.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1954642981" 
	@${RM} ${OBJECTDIR}/_ext/1954642981/nv.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1954642981/nv.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../VLCB-defs" -I"../../VLCBlib_PIC" -I"." -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1954642981/nv.p1 ../../VLCBlib_PIC/nv.c 
	@-${MV} ${OBJECTDIR}/_ext/1954642981/nv.d ${OBJECTDIR}/_ext/1954642981/nv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954642981/nv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1954642981/nvm.p1: ../../VLCBlib_PIC/nvm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1954642981" 
	@${RM} ${OBJECTDIR}/_ext/1954642981/nvm.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1954642981/nvm.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../VLCB-defs" -I"../../VLCBlib_PIC" -I"." -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1954642981/nvm.p1 ../../VLCBlib_PIC/nvm.c 
	@-${MV} ${OBJECTDIR}/_ext/1954642981/nvm.d ${OBJECTDIR}/_ext/1954642981/nvm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954642981/nvm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1954642981/statusLeds2.p1: ../../VLCBlib_PIC/statusLeds2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1954642981" 
	@${RM} ${OBJECTDIR}/_ext/1954642981/statusLeds2.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1954642981/statusLeds2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../VLCB-defs" -I"../../VLCBlib_PIC" -I"." -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1954642981/statusLeds2.p1 ../../VLCBlib_PIC/statusLeds2.c 
	@-${MV} ${OBJECTDIR}/_ext/1954642981/statusLeds2.d ${OBJECTDIR}/_ext/1954642981/statusLeds2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954642981/statusLeds2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1954642981/ticktime.p1: ../../VLCBlib_PIC/ticktime.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1954642981" 
	@${RM} ${OBJECTDIR}/_ext/1954642981/ticktime.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1954642981/ticktime.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../VLCB-defs" -I"../../VLCBlib_PIC" -I"." -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1954642981/ticktime.p1 ../../VLCBlib_PIC/ticktime.c 
	@-${MV} ${OBJECTDIR}/_ext/1954642981/ticktime.d ${OBJECTDIR}/_ext/1954642981/ticktime.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954642981/ticktime.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1954642981/timedResponse.p1: ../../VLCBlib_PIC/timedResponse.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1954642981" 
	@${RM} ${OBJECTDIR}/_ext/1954642981/timedResponse.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1954642981/timedResponse.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../VLCB-defs" -I"../../VLCBlib_PIC" -I"." -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1954642981/timedResponse.p1 ../../VLCBlib_PIC/timedResponse.c 
	@-${MV} ${OBJECTDIR}/_ext/1954642981/timedResponse.d ${OBJECTDIR}/_ext/1954642981/timedResponse.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954642981/timedResponse.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1954642981/vlcb.p1: ../../VLCBlib_PIC/vlcb.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1954642981" 
	@${RM} ${OBJECTDIR}/_ext/1954642981/vlcb.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1954642981/vlcb.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../VLCB-defs" -I"../../VLCBlib_PIC" -I"." -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1954642981/vlcb.p1 ../../VLCBlib_PIC/vlcb.c 
	@-${MV} ${OBJECTDIR}/_ext/1954642981/vlcb.d ${OBJECTDIR}/_ext/1954642981/vlcb.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954642981/vlcb.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../VLCB-defs" -I"../../VLCBlib_PIC" -I"." -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1954642981/arduino.p1: ../../VLCBlib_PIC/arduino.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1954642981" 
	@${RM} ${OBJECTDIR}/_ext/1954642981/arduino.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1954642981/arduino.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../VLCB-defs" -I"../../VLCBlib_PIC" -I"." -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1954642981/arduino.p1 ../../VLCBlib_PIC/arduino.c 
	@-${MV} ${OBJECTDIR}/_ext/1954642981/arduino.d ${OBJECTDIR}/_ext/1954642981/arduino.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954642981/arduino.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1954642981/can18_ecan.p1: ../../VLCBlib_PIC/can18_ecan.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1954642981" 
	@${RM} ${OBJECTDIR}/_ext/1954642981/can18_ecan.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1954642981/can18_ecan.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../VLCB-defs" -I"../../VLCBlib_PIC" -I"." -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1954642981/can18_ecan.p1 ../../VLCBlib_PIC/can18_ecan.c 
	@-${MV} ${OBJECTDIR}/_ext/1954642981/can18_ecan.d ${OBJECTDIR}/_ext/1954642981/can18_ecan.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954642981/can18_ecan.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1954642981/messageQueue.p1: ../../VLCBlib_PIC/messageQueue.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1954642981" 
	@${RM} ${OBJECTDIR}/_ext/1954642981/messageQueue.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1954642981/messageQueue.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../VLCB-defs" -I"../../VLCBlib_PIC" -I"." -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1954642981/messageQueue.p1 ../../VLCBlib_PIC/messageQueue.c 
	@-${MV} ${OBJECTDIR}/_ext/1954642981/messageQueue.d ${OBJECTDIR}/_ext/1954642981/messageQueue.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954642981/messageQueue.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1954642981/mns.p1: ../../VLCBlib_PIC/mns.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1954642981" 
	@${RM} ${OBJECTDIR}/_ext/1954642981/mns.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1954642981/mns.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../VLCB-defs" -I"../../VLCBlib_PIC" -I"." -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1954642981/mns.p1 ../../VLCBlib_PIC/mns.c 
	@-${MV} ${OBJECTDIR}/_ext/1954642981/mns.d ${OBJECTDIR}/_ext/1954642981/mns.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954642981/mns.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1954642981/nv.p1: ../../VLCBlib_PIC/nv.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1954642981" 
	@${RM} ${OBJECTDIR}/_ext/1954642981/nv.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1954642981/nv.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../VLCB-defs" -I"../../VLCBlib_PIC" -I"." -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1954642981/nv.p1 ../../VLCBlib_PIC/nv.c 
	@-${MV} ${OBJECTDIR}/_ext/1954642981/nv.d ${OBJECTDIR}/_ext/1954642981/nv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954642981/nv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1954642981/nvm.p1: ../../VLCBlib_PIC/nvm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1954642981" 
	@${RM} ${OBJECTDIR}/_ext/1954642981/nvm.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1954642981/nvm.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../VLCB-defs" -I"../../VLCBlib_PIC" -I"." -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1954642981/nvm.p1 ../../VLCBlib_PIC/nvm.c 
	@-${MV} ${OBJECTDIR}/_ext/1954642981/nvm.d ${OBJECTDIR}/_ext/1954642981/nvm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954642981/nvm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1954642981/statusLeds2.p1: ../../VLCBlib_PIC/statusLeds2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1954642981" 
	@${RM} ${OBJECTDIR}/_ext/1954642981/statusLeds2.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1954642981/statusLeds2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../VLCB-defs" -I"../../VLCBlib_PIC" -I"." -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1954642981/statusLeds2.p1 ../../VLCBlib_PIC/statusLeds2.c 
	@-${MV} ${OBJECTDIR}/_ext/1954642981/statusLeds2.d ${OBJECTDIR}/_ext/1954642981/statusLeds2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954642981/statusLeds2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1954642981/ticktime.p1: ../../VLCBlib_PIC/ticktime.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1954642981" 
	@${RM} ${OBJECTDIR}/_ext/1954642981/ticktime.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1954642981/ticktime.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../VLCB-defs" -I"../../VLCBlib_PIC" -I"." -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1954642981/ticktime.p1 ../../VLCBlib_PIC/ticktime.c 
	@-${MV} ${OBJECTDIR}/_ext/1954642981/ticktime.d ${OBJECTDIR}/_ext/1954642981/ticktime.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954642981/ticktime.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1954642981/timedResponse.p1: ../../VLCBlib_PIC/timedResponse.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1954642981" 
	@${RM} ${OBJECTDIR}/_ext/1954642981/timedResponse.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1954642981/timedResponse.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../VLCB-defs" -I"../../VLCBlib_PIC" -I"." -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1954642981/timedResponse.p1 ../../VLCBlib_PIC/timedResponse.c 
	@-${MV} ${OBJECTDIR}/_ext/1954642981/timedResponse.d ${OBJECTDIR}/_ext/1954642981/timedResponse.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954642981/timedResponse.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1954642981/vlcb.p1: ../../VLCBlib_PIC/vlcb.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1954642981" 
	@${RM} ${OBJECTDIR}/_ext/1954642981/vlcb.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1954642981/vlcb.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../VLCB-defs" -I"../../VLCBlib_PIC" -I"." -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1954642981/vlcb.p1 ../../VLCBlib_PIC/vlcb.c 
	@-${MV} ${OBJECTDIR}/_ext/1954642981/vlcb.d ${OBJECTDIR}/_ext/1954642981/vlcb.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954642981/vlcb.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/BlinkNV.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/BlinkNV.${IMAGE_TYPE}.map  -D__DEBUG=1  -mdebugger=none  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../VLCB-defs" -I"../../VLCBlib_PIC" -I"." -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/BlinkNV.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/BlinkNV.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/BlinkNV.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/BlinkNV.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../VLCB-defs" -I"../../VLCBlib_PIC" -I"." -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/BlinkNV.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
