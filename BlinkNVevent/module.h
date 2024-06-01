#ifndef _MODULE_H_
#define _MODULE_H_

// comment out for CBUS
#define VLCB

#include "statusLeds.h"

//
// VLCB Service options first
//
// The data version
#define APP_NVM_VERSION 1
#define NUM_SERVICES 5

// The hardware
#define CANMIO
#define NUM_IO 16
#if defined(_18FXXQ83_FAMILY_)
#define IVT_BASE      0x900
#define IVT_BASE_U    0x00
#define IVT_BASE_H    0x09
#define IVT_BASE_L    0x00
#endif

//
// CAN service
//
#define CANID_ADDRESS  0x3FE    // 1 byte
#define CANID_NVM_TYPE EEPROM_NVM_TYPE
#define CAN_INTERRUPT_PRIORITY 0    // all low priority
#define CAN_CLOCK_MHz   64
// Number of buffers
#if defined(_18F66K80_FAMILY_)
#define CAN_NUM_RXBUFFERS   32  
#define CAN_NUM_TXBUFFERS   8
#endif
#if defined(_18FXXQ83_FAMILY_)
#define CAN_NUM_RXBUFFERS   8
#endif

//
// MNS service
//
// Processor clock speed
#define clkMHz      64

// 1 byte for the mode flags
#define MODE_FLAGS_ADDRESS    0x3F9
#define MODE_FLAGS_NVM_TYPE   EEPROM_NVM_TYPE
// 1 byte for the version number
#define VERSION_ADDRESS    0x3FA
#define VERSION_NVM_TYPE   EEPROM_NVM_TYPE
// 1 byte for the mode
#define MODE_ADDRESS    0x3FB
#define MODE_NVM_TYPE   EEPROM_NVM_TYPE
// 2 bytes for the module's node number
#define NN_ADDRESS  0x3FC 
#define NN_NVM_TYPE EEPROM_NVM_TYPE

// LEDs and PB                                 // GREEN is 0 YELLOW is 1
#if defined(_18F66K80_FAMILY_)
#define APP_setPortDirections(){ANCON0=ANCON1=0; TRISBbits.TRISB6=TRISBbits.TRISB7=0,TRISAbits.TRISA2=1;}
#endif
#if defined(_18FXXQ83_FAMILY_)
#define APP_setPortDirections(){ANSELA=ANSELB=0; TRISBbits.TRISB6=TRISBbits.TRISB7=0,TRISAbits.TRISA2=1;}
#endif
#define APP_writeLED1(state)   (LATBbits.LATB7=state)   // GREEN true is on
#define APP_writeLED2(state)   (LATBbits.LATB6=state)   // YELLOW true is on 
#define APP_pbPressed()        (!(PORTAbits.RA2))       // where the push button is connected. True when pressed

//
// NV Service
//
// Number of NVs
#define NV_NUM  1
#define NV_CACHE
// The NV indexes
#define NV_LOOP_TIMER 1
#define NV_ADDRESS  0x200
#define NV_NVM_TYPE EEPROM_NVM_TYPE

//
// Event Teach
//
#define NUM_EVENTS          1  // The number of rows in the event table. The
                                // actual number of events may be less than this
                                // if any events use more the 1 row.
#define EV_FILL             0
#define EVENT_TABLE_ADDRESS     0x100
#define EVENT_TABLE_NVM_TYPE    EEPROM_NVM_TYPE

//
// Event Consumer service
//
#define APP_addEvent    addEvent


// Parameters
#define PARAM_MANU              MANU_MERG
#define PARAM_MODULE_ID         MTYP_CANDEV
#define PARAM_MAJOR_VERSION     1
#define PARAM_MINOR_VERSION     'a'
#define PARAM_BUILD_VERSION     1
#define PARAM_NUM_NV            0
#define PARAM_NUM_EVENTS        NUM_EVENTS
#define PARAM_NUM_EV_EVENT      1
// Module name - must be 7 characters
#define NAME    "BLINK  "
#endif