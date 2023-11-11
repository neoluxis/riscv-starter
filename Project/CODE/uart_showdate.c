/*
 * uart_showdate.c
 *
 * Created on: 2023年9月27日
 * Author: Kiana Kaslana
 */

#include "headfile.h"
#include "include_control.h"

//-------------------------------------------------------------------------------------------------------------------
//  @brief      串口发送数据变量
//  @param      uartn       串口通道
//  @param      date        数据变量
//  @return     void
//  Sample usage:                   uart_show_date(UART_1, adc);   //通过串口1发送int型变量adc中的值
//-------------------------------------------------------------------------------------------------------------------
void uart_show_date(UARTN_enum uartn, int date)
{
    // 将 'date' 的值转换为字符串
    char date_str[10];
    snprintf(date_str, sizeof(date_str), "%d", date);

    // 逐个发送 'date_str' 中的每个字符
    for (int i = 0; date_str[i] != '\0'; i++)
    {
        uart_putchar(uartn, date_str[i]);
    }

    // 发送回车换行字符以进行格式化
//    uart_putchar(uartn, '\r');
//    uart_putchar(uartn, '\n');
}

//-------------------------------------------------------------------------------------------------------------------
//  @brief      串口发送字符串
//  @param      uartn       串口通道
//  @param      str         字符串首地址
//  @return     void
//  Sample usage:                   uart_show_string(UART_1, "ADC:");   //通过串口1发送字符串“ADC：”
//-------------------------------------------------------------------------------------------------------------------
void uart_show_string(UARTN_enum uartn, const uint8 *str)
{
    while (*str)
    {
        uart_putchar(uartn, *str++);
    }
}

