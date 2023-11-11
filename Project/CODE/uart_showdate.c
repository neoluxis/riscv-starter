/*
 * uart_showdate.c
 *
 * Created on: 2023��9��27��
 * Author: Kiana Kaslana
 */

#include "headfile.h"
#include "include_control.h"

//-------------------------------------------------------------------------------------------------------------------
//  @brief      ���ڷ������ݱ���
//  @param      uartn       ����ͨ��
//  @param      date        ���ݱ���
//  @return     void
//  Sample usage:                   uart_show_date(UART_1, adc);   //ͨ������1����int�ͱ���adc�е�ֵ
//-------------------------------------------------------------------------------------------------------------------
void uart_show_date(UARTN_enum uartn, int date)
{
    // �� 'date' ��ֵת��Ϊ�ַ���
    char date_str[10];
    snprintf(date_str, sizeof(date_str), "%d", date);

    // ������� 'date_str' �е�ÿ���ַ�
    for (int i = 0; date_str[i] != '\0'; i++)
    {
        uart_putchar(uartn, date_str[i]);
    }

    // ���ͻس������ַ��Խ��и�ʽ��
//    uart_putchar(uartn, '\r');
//    uart_putchar(uartn, '\n');
}

//-------------------------------------------------------------------------------------------------------------------
//  @brief      ���ڷ����ַ���
//  @param      uartn       ����ͨ��
//  @param      str         �ַ����׵�ַ
//  @return     void
//  Sample usage:                   uart_show_string(UART_1, "ADC:");   //ͨ������1�����ַ�����ADC����
//-------------------------------------------------------------------------------------------------------------------
void uart_show_string(UARTN_enum uartn, const uint8 *str)
{
    while (*str)
    {
        uart_putchar(uartn, *str++);
    }
}

