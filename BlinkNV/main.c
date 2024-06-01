/*
  This work is licensed under the:
      Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
   To view a copy of this license, visit:
      http://creativecommons.org/licenses/by-nc-sa/4.0/
   or send a letter to Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.

   License summary:
    You are free to:
      Share, copy and redistribute the material in any medium or format
      Adapt, remix, transform, and build upon the material

    The licensor cannot revoke these freedoms as long as you follow the license terms.

    Attribution : You must give appropriate credit, provide a link to the license,
                   and indicate if changes were made. You may do so in any reasonable manner,
                   but not in any way that suggests the licensor endorses you or your use.

    NonCommercial : You may not use the material for commercial purposes. **(see note below)

    ShareAlike : If you remix, transform, or build upon the material, you must distribute
                  your contributions under the same license as the original.

    No additional restrictions : You may not apply legal terms or technological measures that
                                  legally restrict others from doing anything the license permits.

   ** For commercial use, please contact the original copyright holder(s) to agree licensing terms

    This software is distributed in the hope that it will be useful, but WITHOUT ANY
    WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE
 */
/**
 *	The Main CANMIO program supporting configurable I/O.
 *
 * @author Ian Hogg 
 * @date Apr 2024
 * 
 */ 
/**
 * @copyright Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
 */

#include <xc.h>
#include "module.h"
#include "vlcb.h"
// the services
#include "mns.h"
#include "can.h"
#include "nv.h"
// others
#include "ticktime.h"
#include "timedResponse.h"
#include "devincs.h"
#include <stddef.h>
#include "statusLeds.h"
#include "nvm.h"
#include "timedResponse.h"
#include "arduino.h"

// The LED is to be connected to Channel 1 which is 0 in the code.
#define LED_CHANNEL 0

/*
 * File:   main.c
 * Author: Ian Hogg
 * 
 * This is the example for Blink.
 */

static TickValue   blinkTime;
Boolean blinkState;

const Service * const services[] = {
    &canService,
    &mnsService,
    &nvService,
};

/**
 * Called at first run to initialise all the non volatile memory. 
 * Also called if the PB hold down special sequence at power up is done.
 * Also called as a result of a NNRSM request.
 */
void APP_factoryReset(void) {
}

/**
 * Called if the PB is held down during power up.
 * Normally would perform any test functionality to help a builder check the hardware.
 */
void APP_testMode(void) {
}

/**
 * Called upon power up.
 */
void setup(void) {
    // use CAN as the module's transport
    transport = &canTransport;

    /**
     * Set the timedResponse delay between messages.
     */
    setTimedResponseDelay(5);

    /*
     * Ensure LED channel is digital output.
     */
    pinMode(LED_CHANNEL, OUTPUT);

    /**
     * Initialise the blink timer
     */
    blinkTime.val = tickGet();
    blinkState = FALSE;
    // Initialise the LED output
    digitalWrite(LED_CHANNEL, blinkState);
}

void loop(void) {
    // Written out in full to make it easier to understand
    // Check if it is time to change the LED state
    if (tickTimeSince(blinkTime) > HUNDRED_MILI_SECOND * getNV(NV_LOOP_TIMER)) {
        // Toggle blinkState variable
        blinkState = ~ blinkState;
        // Update the channel output
        digitalWrite(LED_CHANNEL, blinkState);
        // Update the timer so we called back at the right time 
        blinkTime.val = tickGet();
    }
}

// Application functions required by VLCB library
/**
 * Check to see if now is a good time to start a flash write.
 * Always GOOD
 */
ValidTime APP_isSuitableTimeToWriteFlash(void){
    return GOOD_TIME;
}

/**
 * This application doesn't need to process any messages in a special way.
 */
Processed APP_preProcessMessage(Message * m) {
    return NOT_PROCESSED;
}

/**
 * This application doesn't need to process any messages in a special way.
 */
Processed APP_postProcessMessage(Message * m) {
    return NOT_PROCESSED;
}

#if defined(_18F66K80_FAMILY_)
// APP Interrupt service routines
void APP_lowIsr(void) {
}

// Interrupt service routines
void APP_highIsr(void) {
}
#endif

/*************************** NV Service ***************************************/
/*
 * NV default values.
 */
uint8_t APP_nvDefault(uint8_t index) {
    switch (index) {
        case NV_LOOP_TIMER:
            return 10;
        default:
            return 0;
    }
}

/*
 * Called when a NV value is changed.
 * No need to do anything for the Blink 2 example
 */
void APP_nvValueChanged(uint8_t index, uint8_t newValue, uint8_t oldValue) {
    
}

/*
 * Validate that the provided new value is acceptable.
 */
NvValidation APP_nvValidate(uint8_t index, uint8_t value) {
    switch (index) {
        case NV_LOOP_TIMER:
            if (value == 0) {
                return INVALID; // A loop timer value of 0 is invalid
            } else {
                return VALID;
            }
        default:
            return 0;
    }
}