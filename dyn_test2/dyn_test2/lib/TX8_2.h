//*****************************************************************************
//*****************************************************************************
//  FILENAME: TX8_2.h
//   Version: 3.50, Updated on 2012/3/2 at 9:15:33
//  Generated by PSoC Designer 5.2.2551
//
//  DESCRIPTION: TX8 User Module C Language interface file.
//-----------------------------------------------------------------------------
//      Copyright (c) Cypress Semiconductor 2012. All Rights Reserved.
//*****************************************************************************
//*****************************************************************************
#ifndef TX8_2_INCLUDE
#define TX8_2_INCLUDE

#include <m8c.h>

/* Create pragmas to support proper argument and return value passing */
#pragma fastcall16  TX8_2_SetTxIntMode
#pragma fastcall16  TX8_2_EnableInt
#pragma fastcall16  TX8_2_DisableInt
#pragma fastcall16  TX8_2_Start
#pragma fastcall16  TX8_2_Stop
#pragma fastcall16  TX8_2_SendData
#pragma fastcall16  TX8_2_bReadTxStatus

// High level TX functions
#pragma fastcall16  TX8_2_PutSHexByte
#pragma fastcall16  TX8_2_PutSHexInt
#pragma fastcall16  TX8_2_CPutString
#pragma fastcall16  TX8_2_PutString
#pragma fastcall16  TX8_2_PutChar
#pragma fastcall16  TX8_2_Write
#pragma fastcall16  TX8_2_CWrite
#pragma fastcall16  TX8_2_PutCRLF

//-------------------------------------------------
// Prototypes of the TX8_2 API.
//-------------------------------------------------
extern void  TX8_2_SetTxIntMode(BYTE bTxIntMode);
extern void  TX8_2_EnableInt(void);
extern void  TX8_2_DisableInt(void);
extern void  TX8_2_Start(BYTE bParity);
extern void  TX8_2_Stop(void);
extern void  TX8_2_SendData(BYTE bTxData);
extern BYTE  TX8_2_bReadTxStatus(void);

// High level TX functions
extern void   TX8_2_CPutString(const char * szRomString);
extern void   TX8_2_PutString(char * szRamString);
extern void   TX8_2_PutChar(CHAR cData);
extern void   TX8_2_Write(char * szRamString, BYTE bCount);
extern void   TX8_2_CWrite(const char * szRomString, INT iCount);
extern void   TX8_2_PutSHexByte(BYTE bValue);
extern void   TX8_2_PutSHexInt(INT iValue);
extern void   TX8_2_PutCRLF(void);

// Old style function name, Do Not Use.
// Will be removfr in a future release
#pragma fastcall16 bTX8_2_ReadTxStatus
extern BYTE bTX8_2_ReadTxStatus(void);

//------------------------------------
//  Transmitter Parity masks
//------------------------------------
#define  TX8_2_PARITY_NONE         0x00
#define  TX8_2_PARITY_EVEN         0x02
#define  TX8_2_PARITY_ODD          0x06

//------------------------------------
//  Transmitter Status Register masks
//------------------------------------
#define  TX8_2_TX_COMPLETE         0x20
#define  TX8_2_TX_BUFFER_EMPTY     0x10

#define TX8_2_INT_MODE_TX_REG_EMPTY 0x00
#define TX8_2_INT_MODE_TX_COMPLETE  0x01

//------------------------------------
// Transmitter Interrupt masks
//------------------------------------
#define TX8_2_INT_REG_ADDR                     ( 0x0e1 )
#define TX8_2_bINT_MASK                        ( 0x08 )

// Old style defines, do not use.  These
// will be removed in a future release.
#define  TX8_PARITY_NONE         0x00
#define  TX8_PARITY_EVEN         0x02
#define  TX8_PARITY_ODD          0x06
#define  TX8_TX_COMPLETE         0x20
#define  TX8_TX_BUFFER_EMPTY     0x10



//-------------------------------------------------
// Register Addresses for TX8_2
//-------------------------------------------------
#pragma ioport  TX8_2_CONTROL_REG:  0x02f                  // Control register
BYTE            TX8_2_CONTROL_REG;
#pragma ioport  TX8_2_TX_SHIFT_REG: 0x02c                  // TX Shift Register register
BYTE            TX8_2_TX_SHIFT_REG;
#pragma ioport  TX8_2_TX_BUFFER_REG:    0x02d              // TX Buffer Register
BYTE            TX8_2_TX_BUFFER_REG;
#pragma ioport  TX8_2_FUNC_REG: 0x12c                      // Function register
BYTE            TX8_2_FUNC_REG;
#pragma ioport  TX8_2_INPUT_REG:    0x12d                  // Input register
BYTE            TX8_2_INPUT_REG;
#pragma ioport  TX8_2_OUTPUT_REG:   0x12e                  // Output register
BYTE            TX8_2_OUTPUT_REG;

#endif
// end of file TX8_2.h
