HI-TECH Software C Compiler 

Linker command line:

--edf=C:\Program Files\HI-TECH Software\HCPSOC\PRO\9.61\dat\en_msgs.txt -cs \
  -h+output\dyn_test2.sym -z -QCY8C21323MLF -ol.obj -Moutput/dyn_test2.mp \
  -E1 -ACODE=00h-03h,065h-0BFFh -ABANKROM=00h-03h,065h-0FFh,0100h-01FFhx11 \
  -AROM=00h-03h,065h-0BFFh -ARAM=00h-0F7h -pvectors=0x0 -pstrings=ROM \
  -pcdata=ROM -pPD_startup=CODE,powerup,init,end_init -pintrtext=CODE \
  -pmaintext=CODE -ptext=CODE -pUserModules=CODE \
  -pbss0=00h,rbit0,ramdata0,nvram0,nvbit0,fnauto,InterruptRAM \
  -promdata0=BANKROM -pstackps=0C7h/0C7h output\startup.obj \
  output\dyn_test2.obj ./obj/boot.obj lib/libpsoc.lib \
  C:/PROGRA~1/Cypress/PSOCDE~1/5.2/Common/CY3E64~1/tools/lib/CY8C21020/cms.lib 

Object code version is 3.10

Machine type is CY8C21323MLF

Call graph: (short form)

*_main size 0,2 offset 0
*    _PWM8_1_Start size 0,0 offset 2
*    _Counter16_1_DisableInt size 0,0 offset 2
*    _Counter16_1_Start size 0,0 offset 9
*    _Counter16_1_wReadCounter size 0,0 offset 9
*    _Counter16_1_Stop size 0,0 offset 9
*    _Counter16_1_WritePeriod size 0,0 offset 9
*    _My_TX size 0,0 offset 2
*        _IsADC_ConfigLoaded size 0,0 offset 2
*        _LoadConfig_ADC_Config size 0,0 offset 2
*        _TX8_2_Start size 0,0 offset 2
*        _TX8_2_PutChar size 0,0 offset 2
*        _TX8_2_PutCRLF size 0,0 offset 2
*        _TX8_2_bReadTxStatus size 0,0 offset 2
*        _TX8_2_Stop size 0,0 offset 2
*        _UnloadConfig_ADC_Config size 0,0 offset 2
*        _LoadConfig_dyn_test2 size 0,0 offset 2
*        _PWM8_1_Start size 0,0 offset 2
*    _IsADC_ConfigLoaded size 0,0 offset 2
*    _LoadConfig_ADC_Config size 0,0 offset 2
*    _TX8_2_Start size 0,0 offset 2
*    _TX8_2_CPutString size 0,0 offset 2
*    _TX8_2_bReadTxStatus size 0,0 offset 2
*    _TX8_2_PutSHexInt size 0,0 offset 2
*    _TX8_2_PutCRLF size 0,0 offset 2
*    _UnloadConfig_ADC_Config size 0,0 offset 2
*    _LoadConfig_dyn_test2 size 0,0 offset 2

Estimated maximum call depth: 2

*intlevel1 size 0,0 offset 2
*    _MyGpioISR_int3 size 0,7 offset 2
*        _Counter16_1_WritePeriod size 0,0 offset 9
*        _Counter16_1_Start size 0,0 offset 9
*        _Counter16_1_Stop size 0,0 offset 9
*        _Counter16_1_wReadCounter size 0,0 offset 9
*        _led_t size 0,0 offset 9

Estimated maximum call depth: 2


                Name          Link     Load   Length Selector Space Scale
output\startup.obj
                SSCParmBl       F8       F8        8       0     1
                init           B64      B64       17     B09     0
                vectors          0        0        3       0     0
                TOP              4        4       61       0     0
output\dyn_test2.obj
                strings        B00      B00        9       B     0
                bss0             0        0       BC       0     1
                nvram0          BC       BC        1       0     1
                text           7F9      7F9       6C     7F9     0
                maintext       89C      89C      139     89C     0
                intrtext       9D5      9D5      12B     9D5     0
./obj/boot.obj  PD_startu      B09      B09       5B     B09     0
                TOP              4        4       61       0     0

lib/libpsoc.lib
lib/obj/counter16_1.obj
                UserModul      698      698       5C     698     0
lib/obj/counter16_1int.obj
                UserModul      6F4      6F4        1     698     0
lib/obj/psocconfig.obj
                Interrupt       C6       C6        1       0     1
                psoc_conf      582      582      116     582     0
lib/obj/psocconfigtbl.obj
                lit            4A8      4A8       DA     4A8     0
                psoc_conf      B7B      B7B       45     B7B     0
lib/obj/psocdynamic.obj
                text           865      865       14     7F9     0
lib/obj/psocdynamicint.obj
                text           879      879       1F     7F9     0
lib/obj/psocgpioint.obj
                text           898      898        4     7F9     0
lib/obj/pwm8_1.obj
                UserModul      6F5      6F5       42     698     0
lib/obj/pwm8_1int.obj
                UserModul      737      737        1     698     0
lib/obj/tx8_2.obj
                UserModul      738      738       C0     698     0
lib/obj/tx8_2int.obj
                UserModul      7F8      7F8        1     698     0

C:/PROGRA~1/Cypress/PSOCDE~1/5.2/Common/CY3E64~1/tools/lib/CY8C21020/cms.lib

COMMON          fnauto          BD       BD        9       0     1

TOTAL           Name          Link     Load   Length  Space
        CLASS   CODE           
                init           B64      B64       17     0
                text           7F9      7F9       A3     0
                PD_startu      B09      B09       5B     0
                vectors          0        0        3     0
                maintext       89C      89C      139     0
                intrtext       9D5      9D5      12B     0

        CLASS   BANKROM        

        CLASS   ROM            
                UserModul      698      698      161     0
                strings        B00      B00        9     0
                TOP              4        4       61     0
                psoc_conf      582      582      116     0
                lit            4A8      4A8       DA     0
                psoc_conf      B7B      B7B       45     0

        CLASS   RAM            
                fnauto          BD       BD        9     1
                SSCParmBl       F8       F8        8     1
                bss0             0        0       BC     1
                nvram0          BC       BC        1     1
                Interrupt       C6       C6        1     1



SEGMENTS        Name           Load    Length   Top     Selector    Space Class

                bss0            000000  0000C7  0000C7         0       1  RAM     
                vectors         000000  000003  000003         0       0  CODE    
                lit             0004A8  0000DA  000582       4A8       0  ROM     
                psoc_config     000582  000116  000698       582       0  ROM     
                UserModules     000698  000161  0007F9       698       0  CODE    
                text            0007F9  0000A3  00089C       7F9       0  CODE    
                maintext        00089C  000139  0009D5       89C       0  CODE    
                intrtext        0009D5  00012B  000B00       9D5       0  CODE    
                strings         000B00  000009  000B09         B       0  ROM     
                PD_startup      000B09  000072  000B7B       B09       0  CODE    
                psoc_config     000B7B  000045  000BC0       B7B       0  ROM     


UNUSED ADDRESS RANGES

        BANKROM          003-003
                         065-4A7
                         BC0-BFF
        CODE             003-003
                         065-4A7
                         BC0-BFF
        RAM              0C7-0F7
        ROM              003-003
                         065-4A7
                         BC0-BFF

                                  Symbol Table

??_main                          fnauto        0BD
ACTIVE_CONFIG_STATUS             InterruptRAM  0C6
Counter16_1_DisableInt           UserModules   69C
Counter16_1_EnableInt            UserModules   698
Counter16_1_Start                UserModules   6A0
Counter16_1_Stop                 UserModules   6A4
Counter16_1_WriteCompareValue    UserModules   6AE
Counter16_1_WritePeriod          UserModules   6A8
Counter16_1_wReadCompareValue    UserModules   6B4
Counter16_1_wReadCounter         UserModules   6BA
Dispatch_INTERRUPT_11            text          879
IsADC_ConfigLoaded               text          86F
Isdyn_test2Loaded                text          865
LoadConfigInit                   psoc_config   582
LoadConfigTBL_ADC_Config_Bank0   lit           4A8
LoadConfigTBL_ADC_Config_Bank1   lit           4AF
LoadConfigTBL_dyn_test2_Bank0    lit           4C1
LoadConfigTBL_dyn_test2_Bank1    lit           4F0
LoadConfigTBL_dyn_test2_Ordered  psoc_config   B7B
LoadConfig_ADC_Config            psoc_config   5EA
LoadConfig_dyn_test2             psoc_config   58C
MyGpioISR_int3                   intrtext      9D5
NO_SHADOW                        InterruptRAM  0C6
PSoC_GPIO_ISR                    text          898
PWM8_1_DisableInt                UserModules   6F9
PWM8_1_EnableInt                 UserModules   6F5
PWM8_1_Start                     UserModules   6FD
PWM8_1_Stop                      UserModules   701
PWM8_1_WritePeriod               UserModules   705
PWM8_1_WritePulseWidth           UserModules   708
PWM8_1_bReadCounter              UserModules   70E
PWM8_1_bReadPulseWidth           UserModules   70B
ReloadConfigTBL_dyn_test2_Bank0  lit           51F
ReloadConfigTBL_dyn_test2_Bank1  lit           532
ReloadConfig_dyn_test2           psoc_config   5AC
TX8_2_CPutString                 UserModules   7DD
TX8_2_CWrite                     UserModules   7B5
TX8_2_DisableInt                 UserModules   73C
TX8_2_EnableInt                  UserModules   738
TX8_2_PutCRLF                    UserModules   7EF
TX8_2_PutChar                    UserModules   78B
TX8_2_PutSHexByte                UserModules   771
TX8_2_PutSHexInt                 UserModules   784
TX8_2_PutString                  UserModules   793
TX8_2_SendData                   UserModules   75B
TX8_2_SetTxIntMode               UserModules   740
TX8_2_Start                      UserModules   752
TX8_2_Stop                       UserModules   757
TX8_2_Write                      UserModules   79D
TX8_2_bReadTxStatus              UserModules   75E
UnloadConfigTBL_ADC_Config_Bank0 lit           4B6
UnloadConfigTBL_ADC_Config_Bank1 lit           4B9
UnloadConfigTBL_Total_Bank0      lit           560
UnloadConfigTBL_Total_Bank1      lit           569
UnloadConfigTBL_dyn_test2_Bank0  lit           545
UnloadConfigTBL_dyn_test2_Bank1  lit           54C
UnloadConfig_ADC_Config          psoc_config   610
UnloadConfig_Total               psoc_config   63C
UnloadConfig_dyn_test2           psoc_config   5CA
_Counter16_1_DisableInt          UserModules   69C
_Counter16_1_EnableInt           UserModules   698
_Counter16_1_ISR                 UserModules   6F4
_Counter16_1_Start               UserModules   6A0
_Counter16_1_Stop                UserModules   6A4
_Counter16_1_WriteCompareValue   UserModules   6AE
_Counter16_1_WritePeriod         UserModules   6A8
_Counter16_1_wReadCompareValue   UserModules   6B4
_Counter16_1_wReadCounter        UserModules   6BA
_IsADC_ConfigLoaded              text          86F
_Isdyn_test2Loaded               text          865
_LoadConfigInit                  psoc_config   582
_LoadConfig_ADC_Config           psoc_config   5EA
_LoadConfig_dyn_test2            psoc_config   58C
_MyGpioISR_int3                  intrtext      9D5
_My_TX                           text          7F9
_NO_SHADOW                       InterruptRAM  0C6
_PWM8_1_DisableInt               UserModules   6F9
_PWM8_1_EnableInt                UserModules   6F5
_PWM8_1_ISR                      UserModules   737
_PWM8_1_Start                    UserModules   6FD
_PWM8_1_Stop                     UserModules   701
_PWM8_1_WritePeriod              UserModules   705
_PWM8_1_WritePulseWidth          UserModules   708
_PWM8_1_bReadCounter             UserModules   70E
_PWM8_1_bReadPulseWidth          UserModules   70B
_Port1Shadow                     nvram0        0BC
_ReloadConfig_dyn_test2          psoc_config   5AC
_TX8_2_CPutString                UserModules   7DD
_TX8_2_CWrite                    UserModules   7B5
_TX8_2_DisableInt                UserModules   73C
_TX8_2_EnableInt                 UserModules   738
_TX8_2_ISR                       UserModules   7F8
_TX8_2_PutCRLF                   UserModules   7EF
_TX8_2_PutChar                   UserModules   78B
_TX8_2_PutSHexByte               UserModules   771
_TX8_2_PutSHexInt                UserModules   784
_TX8_2_PutString                 UserModules   793
_TX8_2_SendData                  UserModules   75B
_TX8_2_SetTxIntMode              UserModules   740
_TX8_2_Start                     UserModules   752
_TX8_2_Stop                      UserModules   757
_TX8_2_Write                     UserModules   79D
_TX8_2_bReadTxStatus             UserModules   75E
_UnloadConfig_ADC_Config         psoc_config   610
_UnloadConfig_Total              psoc_config   63C
_UnloadConfig_dyn_test2          psoc_config   5CA
__Bnvbit0                        nvbit0        0BD
__Brbit0                         rbit0         0BC
__Bstackps                       stackps       0C7
__HInterruptRAM                  InterruptRAM  0C7
__HPD_startup                    PD_startup    B64
__HSSCParmBlk                    SSCParmBlk    100
__HTOP                           TOP           065
__HUserModules                   UserModules   7F9
__Hbss                           bss           0C7
__Hbss0                          bss0          0BC
__Hcdata                         cdata         C00
__Hdyn_test2_RAM                 dyn_test2_RAM 0C7
__Hend_init                      end_init      003
__Hfnauto                        fnauto        0C6
__Hinit                          init          B7B
__Hintrtext                      intrtext      B00
__Hlit                           lit           0C7
__Hmaintext                      maintext      9D5
__Hnvbit0                        nvbit0        5E8
__Hnvram0                        nvram0        0BD
__Hpowerup                       powerup       003
__Hpsoc_config                   psoc_config   0C7
__Hramdata0                      ramdata0      0BC
__Hrbit0                         rbit0         5E0
__Hromdata0                      romdata0      003
__Hstackps                       stackps       0C7
__Hstrings                       strings       B09
__Htext                          text          89C
__Hvectors                       vectors       003
__LInterruptRAM                  InterruptRAM  0C6
__LPD_startup                    PD_startup    B09
__LSSCParmBlk                    SSCParmBlk    000
__LTOP                           TOP           000
__LUserModules                   UserModules   698
__Lbss                           bss           0C7
__Lbss0                          bss0          000
__Lcdata                         cdata         C00
__Ldyn_test2_RAM                 dyn_test2_RAM 0C7
__Lend_init                      end_init      003
__Lfnauto                        fnauto        0BD
__Linit                          init          B64
__Lintrtext                      intrtext      9D5
__Llit                           lit           0C7
__Lmaintext                      maintext      89C
__Lnvbit0                        nvbit0        5E8
__Lnvram0                        nvram0        0BC
__Lpowerup                       powerup       003
__Lpsoc_config                   psoc_config   0C7
__Lramdata0                      ramdata0      0BC
__Lrbit0                         rbit0         5E0
__Lromdata0                      romdata0      003
__Lstackps                       stackps       0C7
__Lstrings                       strings       B00
__Ltext                          text          7F9
__Lvectors                       vectors       000
__S0                             (abs)         C00
__S1                             (abs)         0C7
__Start                          PD_startup    B09
___end_of_c_program_code         text          865
___start_of_c_program_code       text          7F9
__end_of_MyGpioISR_int3          intrtext      B00
__end_of_My_TX                   text          859
__end_of_led_t                   text          865
__end_of_main                    maintext      9D5
__stack_start__                  stackps       0C7
_a                               bss0          0A5
_b                               bss0          0A7
_bGetPowerSetting                PD_startup    B61
_bPWM8_1_ReadCounter             UserModules   70E
_bPWM8_1_ReadPulseWidth          UserModules   70B
_bTX8_2_ReadTxStatus             UserModules   75E
_b_IntCount                      bss0          0A9
_b_mat                           bss0          000
_b_mat1                          bss0          037
_c                               bss0          0AB
_d                               bss0          0AD
_flag                            bss0          0AF
_h                               bss0          0B1
_k                               bss0          0B3
_led_t                           text          859
_m                               bss0          0BB
_main                            maintext      89C
_mat                             bss0          06E
_p_num                           bss0          0B5
_r                               bss0          0B7
_wCounter16_1_ReadCompareValue   UserModules   6B4
_wCounter16_1_ReadCounter        UserModules   6BA
_y                               bss0          0B9
bGetPowerSetting                 PD_startup    B61
bPWM8_1_ReadCounter              UserModules   70E
bPWM8_1_ReadPulseWidth           UserModules   70B
bTX8_2_ReadTxStatus              UserModules   75E
intlevel0                        InterruptRAM  0C6
intlevel1                        InterruptRAM  0C6
intlevel2                        InterruptRAM  0C6
reset_vec                        vectors       000
start                            vectors       000
startup                          init          B64
wCounter16_1_ReadCompareValue    UserModules   6B4
wCounter16_1_ReadCounter         UserModules   6BA
