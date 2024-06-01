/**
 *	The Blink example.
 *
 * @author Ian Hogg 
 * @date May 2024
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
    if (tickTimeSince(blinkTime) > ONE_SECOND) {
        if (blinkState) {
            // If it was TRUE then now make it FALSE
            blinkState = FALSE;
        } else {
            // If it was FALSE now make it TRUE
            blinkState = TRUE;
        }
        // Update the channel 1 output
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
