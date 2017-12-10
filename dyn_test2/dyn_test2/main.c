//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules
#include "PSoCGPIOINT.h"
#include "PSoCDynamic.h"
//#def PRT1DR = 0x05
#pragma interrupt_handler MyGpioISR_int3
//INT IntCount;
short j,k,l;
char m;
BOOL mat[55],b_mat[55],mat1[55],b_mat1[55];
//bool mybit[10];
BYTE pwm1count;
BYTE Port1Shadow;
int a,b,c,d,e,f,g,h,i,n,r,y;
int tx_timer;
short pwm1_val;
short p1tim;
short c2count;
//short mat[60];
unsigned int IntCount,b_IntCount,p_num;

short flag;

void main(void)
{
	
	
	
	//led7_Data_ADDR |= led7_MASK;  // Set P0[7]
	 M8C_EnableGInt ; // Uncomment this line to enable Global Interrupts
	M8C_EnableIntMask(INT_MSK0, INT_MSK0_GPIO); 
	
	
	// Insert your main routine code here.
	//PWM8_1_WritePeriod(255);
/* set pulse width to generate a 33% duty cycle */
//PWM8_1_WritePulseWidth(127);
/* ensure interrupt is disabled */
//PWM8_1_DisableInt();
/* start the PWM8! */
PWM8_1_Start();

	Counter16_1_DisableInt(); 
	Counter16_1_Start();  
	 
	
	
	//TX8_1_Start();
	
	
// Initialize in the beginning of code
// Bit0 is set to enable the Pullup for the key
Port1Shadow = PRT0DR;
Port1Shadow &= ~0x32;
//Port1Shadow = 0x32;
PRT0DR = Port1Shadow;

	while(1){

		
		
		if(Counter16_1_wReadCounter() <= 0x47e)
				{
				Counter16_1_Stop();
				Counter16_1_WritePeriod(0x5db);
				Counter16_1_Stop();
				
				//led_t();
				
				m++;
				if(m>5)
					{
					flag=0;
				for (y=0; y<52; y++)
					{
  					mat[y]=b_mat[y];
					}
								
				IntCount=p_num;
				p_num=0;
				b_IntCount=0;
					
					My_TX();
					}
				
				}
		
		
		
		
		
	//Port1Shadow = in5_Data_ADDR ;
	if (in5_Data_ADDR & in5_MASK)    //if p0.5set
		{
		
		
		
		//	PRT0DR |= 0x80; // Set P0[7]
		//led7_Data_ADDR |= led7_MASK;  // Set P0[7]
		//Port1Shadow = PRT0DR ;
		//Port1Shadow &= ~0x80;
		Port1Shadow |= 0x80;
		Port1Shadow &= ~0x32;
		//Port1Shadow |= 0x32;
		PRT0DR = Port1Shadow;
		
			
				if(IsADC_ConfigLoaded()==0)
				{
			 	LoadConfig_ADC_Config();
			 
			 TX8_2_Start(TX8_PARITY_NONE);
			 
		TX8_2_CPutString("a=");
		while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
		TX8_2_PutSHexInt(a);
		while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
		TX8_2_PutCRLF();							//Do a Line and Carriage Return
				//Wait until TX operation Complete
				while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
				while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
		TX8_2_CPutString("b=");
		while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
		TX8_2_PutSHexInt(b);
		while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
		TX8_2_PutCRLF();							//Do a Line and Carriage Return
				//Wait until TX operation Complete
				while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
				while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
		TX8_2_CPutString("c=");
		while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
		TX8_2_PutSHexInt(c);
		while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
		TX8_2_PutCRLF();							//Do a Line and Carriage Return
				//Wait until TX operation Complete
			while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
			while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
			
				
				}
					
		
			}
			
	else{
			
			
		
		if(IsADC_ConfigLoaded()== 1)
				{
				/*
				TX8_1_Start(TX8_PARITY_NONE);
				
				TX8_1_PutCRLF();							//Do a Line and Carriage Return
				//Wait until TX operation Complete
				while( !( TX8_1_bReadTxStatus() & TX8_TX_COMPLETE ) );
				while( !( TX8_1_bReadTxStatus() & TX8_TX_COMPLETE ) );
				//TX8_1_CPutString("\n");
				//TX8_1_CPutString("\r");
				*///TX8_1_Stop();	
				//PWM8_2_Stop();
    			
				UnloadConfig_ADC_Config();		//Load ADC configuration
				LoadConfig_dyn_test2();
				PWM8_1_Start();
				//Counter16_1_Start();  
			
				
				//PWM8_2_WritePeriod(255);

				//PWM8_2_WritePulseWidth(127);

				
				}
		//PWM8_1_Stop();
	
		//PRT0DR &= ~0x80;
		//PWM8_2_Stop();
		//UnloadConfig_ADC_Config();
		//Port1Shadow = PRT0DR ;
		//Port1Shadow |= 0x80;
		//Port1Shadow &= ~0x80;
		//PRT0DR = Port1Shadow;
		//led7_Data_ADDR &= ~led7_MASK;} // Clear P1[7];
		//PRT0DR &= ~0x80; // Clear P1[7]	
	}
	
	
	
}
}


void MyGpioISR_int3(void)
{		
	
	h=0;	
		
		if(flag ==0 )	// zero flag)
			{
			Counter16_1_WritePeriod(0x5db);   
			Counter16_1_Start();
			flag = 0x01;
			}
		
		
		if (int3_Data_ADDR & int3_MASK)    //if p1.3 set => @ rising edge
		{									// to start timer/set period
		//led_on();
		Counter16_1_Stop();
		//Counter16_1_Start();
		Counter16_1_WritePeriod(0x5db);   
		Counter16_1_Start();
		//IntCount++;
		}
		
		if (~int3_Data_ADDR & int3_MASK)    //if p1.3 set => @ falling edge
		{									// to read counter and start timer/set period
		//led_off();
		p_num++;
		b_IntCount++;
		k++;
				a=Counter16_1_wReadCounter();
				//Counter16_1_Stop();
				
				if(a>=0x56c)
					{
					led_t();
					b=a;
					b_mat[p_num]=1;
					}
					if(a<0x56c) 
					{
					//led_t();
					b_mat[p_num]=0;
					c=a;
					}
					else
					{
					d=a;
					}
					
		Counter16_1_Stop();
		Counter16_1_WritePeriod(0x5db);   
		Counter16_1_Start();
		}
		
		
			if (int4_Data_ADDR & int4_MASK)    //if p1.3 set => @ rising edge
		{									// to start timer/set period
		//led_on();
		Counter16_1_Stop();
		//Counter16_1_Start();
		Counter16_1_WritePeriod(0x5db);   
		Counter16_1_Start();
		//IntCount++;
		}
		
		if (~int4_Data_ADDR & int4_MASK)    //if p1.3 set => @ falling edge
		{									// to read counter and start timer/set period
		//led_off();
		p_num++;
		b_IntCount++;
		k++;
				a=Counter16_1_wReadCounter();
				//Counter16_1_Stop();
				
				if(a>=0x56c)
					{
					led_t();
					b=a;
					b_mat1[p_num]=1;
					}
					if(a<0x56c) 
					{
					//led_t();
					b_mat1[p_num]=0;
					c=a;
					}
					else
					{
					d=a;
					}
					
		Counter16_1_Stop();
		Counter16_1_WritePeriod(0x5db);   
		Counter16_1_Start();
		}
		
		
		
		
		}
		

	





My_TX(void)
{

	
	if(IsADC_ConfigLoaded()==0)
				{
			 	LoadConfig_ADC_Config();
			 
			 TX8_2_Start(TX8_PARITY_NONE);
		/*	 
		TX8_2_CPutString("a=");
		while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
		TX8_2_PutSHexInt(mat[1]);
		while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
		TX8_2_PutCRLF();							//Do a Line and Carriage Return
				//Wait until TX operation Complete
				while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
				while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
		TX8_2_CPutString("b=");
		while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
		TX8_2_PutSHexInt(mat[2]);
		while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
		TX8_2_PutCRLF();							//Do a Line and Carriage Return
				//Wait until TX operation Complete
				while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
				while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
		TX8_2_CPutString("c=");
		while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
		TX8_2_PutSHexInt(c);
		while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
		TX8_2_PutCRLF();							//Do a Line and Carriage Return
				//Wait until TX operation Complete
			while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
			while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
		TX8_2_CPutString("d=");
		while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
		TX8_2_PutSHexInt(d);
		while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
		TX8_2_PutCRLF();							//Do a Line and Carriage Return
				//Wait until TX operation Complete
			while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
			while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );	
		TX8_2_CPutString("I=");
		while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
		TX8_2_PutSHexInt(IntCount);
		while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
		TX8_2_PutCRLF();							//Do a Line and Carriage Return
				//Wait until TX operation Complete
			while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
			while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
		*/
		for ( r = 0; r < 52; ++r )
		{
    	if ( mat[r] == 1 )
    	{
       			 TX8_2_PutChar('1');
    		}
			else TX8_2_PutChar('0');
			}
		
		
		
		TX8_2_PutCRLF();							//Do a Line and Carriage Return
				//Wait until TX operation Complete
			while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
			while( !( TX8_2_bReadTxStatus() & TX8_TX_COMPLETE ) );
			
				
		TX8_2_Stop();
		
		m=0;
		
		UnloadConfig_ADC_Config();		//Load ADC configuration
				LoadConfig_dyn_test2();
				PWM8_1_Start();
				
				}
}
led_t(void)
{
Port1Shadow = PRT0DR ;
		//Port1Shadow |= 0x80;
		Port1Shadow ^= 0x80;
		PRT0DR = Port1Shadow;
}

led_on(void)
{
Port1Shadow = PRT0DR ;
		//Port1Shadow |= 0x80;
		Port1Shadow |= 0x80;
		PRT0DR = Port1Shadow;
}

led_off(void)
{
Port1Shadow = PRT0DR ;
		//Port1Shadow |= 0x80;
		Port1Shadow &= ~0x80;
		PRT0DR = Port1Shadow;
}