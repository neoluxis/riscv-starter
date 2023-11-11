/*
 * uart_showdate.h
 *
 * Created on: 2023年9月27日
 * Author: Kiana Kaslana
 */

#ifndef UART_SHOWDATE_H_
#define UART_SHOWDATE_H_

/**
 * @brief UART显示日期
 *
 * 通过UART串口输出当前日期。
 */
void uart_show_date();

/**
 * @brief UART显示字符串
 *
 * 通过指定的UART串口输出给定的字符串。
 *
 * @param uartn  UART串口枚举
 * @param str    要显示的字符串
 */
void uart_show_string(UARTN_enum uartn, const uint8 *str);

#endif /* UART_SHOWDATE_H_ */
