/*
 * uart_showdate.h
 *
 * Created on: 2023��9��27��
 * Author: Kiana Kaslana
 */

#ifndef UART_SHOWDATE_H_
#define UART_SHOWDATE_H_

/**
 * @brief UART��ʾ����
 *
 * ͨ��UART���������ǰ���ڡ�
 */
void uart_show_date();

/**
 * @brief UART��ʾ�ַ���
 *
 * ͨ��ָ����UART��������������ַ�����
 *
 * @param uartn  UART����ö��
 * @param str    Ҫ��ʾ���ַ���
 */
void uart_show_string(UARTN_enum uartn, const uint8 *str);

#endif /* UART_SHOWDATE_H_ */
