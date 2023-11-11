/*********************************************************************************************************************
 * COPYRIGHT NOTICE
 * Copyright (c) 2018,��ɿƼ�
 * All rights reserved.
 * ��������QQȺ��һȺ��179029047(����)  ��Ⱥ��244861897
 *
 * �����������ݰ�Ȩ������ɿƼ����У�δ����������������ҵ��;��
 * ��ӭ��λʹ�ò������������޸�����ʱ���뱣����ɿƼ��İ�Ȩ������
 *
 * @file            ��ɿƼ�����ת����ģ��
 * @company         �ɶ���ɿƼ����޹�˾
 * @author          ��ɿƼ�(QQ3184284598)
 * @version         �鿴doc��version�ļ� �汾˵��
 * @Software        MounRiver Studio V1.51
 * @Taobao          https://seekfree.taobao.com/
 * @date            2019-03-27
 * @note
                    ���߶��壺
                    ------------------------------------
                        ����ת����       ��Ƭ��
                        RX              �鿴SEEKFREE_WIRELESS.h�ļ��е�WIRELESS_UART_TX�궨��
                        TX              �鿴SEEKFREE_WIRELESS.h�ļ��е�WIRELESS_UART_RX�궨��
                        RTS             �鿴SEEKFREE_WIRELESS.h�ļ��е�RTS_PIN�궨��
                        CMD             ���ջ�������
                    ------------------------------------
 ********************************************************************************************************************/

#include "zf_systick.h"
#include "zf_gpio.h"
#include "zf_uart.h"
#include "SEEKFREE_WIRELESS.h"





uint8 wireless_rx_buffer;

//-------------------------------------------------------------------------------------------------------------------
//  @brief      ����ת����ģ�� �����жϺ���
//  @param      NULL
//  @return     void
//  @since      v1.0
//  Sample usage:
//  @note       �ú�����ISR�ļ� ����1�жϳ��򱻵���
//-------------------------------------------------------------------------------------------------------------------
void wireless_uart_callback(void)
{
    //�ӵ�һ���ֽں�Ƭ���������˴���ͨ���ڴ˴���ȡwireless_rx_buffer����ȡ������
    wireless_rx_buffer = ((USART_TypeDef*)UARTN[WIRELESS_UART])->DATAR & 0x01FF;
}



//-------------------------------------------------------------------------------------------------------------------
//  @brief      ����ת����ģ���ʼ��
//  @param      NULL
//  @return     void
//  @since      v1.0
//  Sample usage:
//  @note       
//-------------------------------------------------------------------------------------------------------------------
void seekfree_wireless_init(void)
{
    //������ʹ�õĲ�����Ϊ115200��Ϊ����ת����ģ���Ĭ�ϲ����ʣ�������������������������ģ�鲢�޸Ĵ��ڵĲ�����
    wireless_type = WIRELESS_SI24R1;
    gpio_init(RTS_PIN,GPI,0,GPIO_PIN_CONFIG);//��ʼ����������
    
    uart_init (WIRELESS_UART, WIRELESS_UART_BAUD, WIRELESS_UART_TX, WIRELESS_UART_RX);  //��ʼ������
    uart_rx_irq(WIRELESS_UART, ENABLE);

    
    //NVIC_SetPriority((IRQn_Type)((IRQn_Type)(WIRELESS_UART) + LPUART1_IRQn),0);  //�����ж����ȼ� ��Χ0-15 ԽС���ȼ�Խ��
    //EnableGlobalIRQ(0);
    
}

//-------------------------------------------------------------------------------------------------------------------
//  @brief      ����ת����ģ�� ���ͺ���
//  @param      buff        ��Ҫ���͵����ݵ�ַ
//  @param      len         ���ͳ���
//  @return     uint32      ʣ��δ���͵��ֽ���   
//  @since      v1.0
//  Sample usage:
//  @note       
//-------------------------------------------------------------------------------------------------------------------
uint32 seekfree_wireless_send_buff(uint8 *buff, uint32 len)
{
    while(len>30)
    {
        if(gpio_get(RTS_PIN))  
        {
            return len;//ģ��æ,���������ǰ����ʹ��while�ȴ� �����ʹ�ú���ע�͵�while�ȴ�����滻��if���
        }
        //while(gpio_get(RTS_PIN));  //���RTSΪ�͵�ƽ���������������
        uart_putbuff(WIRELESS_UART,buff,30);

        buff += 30; //��ַƫ��
        len -= 30;//����
    }
    
    if(gpio_get(RTS_PIN))  
    {
        return len;//ģ��æ,���������ǰ����ʹ��while�ȴ� �����ʹ�ú���ע�͵�while�ȴ�����滻��if���
    }
    //while(gpio_get(RTS_PIN));  //���RTSΪ�͵�ƽ���������������
    uart_putbuff(WIRELESS_UART,buff,len);//������������
    
    return 0;
}