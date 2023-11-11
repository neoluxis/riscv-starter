/*
 * key_make.c
 *
 *  Created on: September 27, 2023
 *      Author: Kiana Kaslana
 */

#include "headfile.h"         // ����ͷ�ļ���������Դ�ļ������ͷ�ļ�
#include "include_control.h"  // ��������ļ�ͷ�ļ������ڵ�����ع���

//-------------------------------------------------------------------------------------------------------------------
//  @brief      GPIO������ʼ��
//  @param      pin         ѡ������� (��ѡ��Χ�� common.h ��PIN_enumö��ֵȷ��)
//  @return     void
//  Sample usage:   key_init(C0); // C0��ʼ��ΪGPIO���ܡ�����ģʽ������͵�ƽ���������룬����ʼ��Ϊ��������
// ---------------------------------------------------------

void key_init(PIN_enum pin)
{
    gpio_init(pin, GPI, 0, GPIO_PIN_CONFIG); // �����ų�ʼ��ΪGPIO����ģʽ
}

uint8 key_01; // ����һ�����ڴ洢����״̬�ı���

//-------------------------------------------------------------------------------------------------------------------
//  @brief      GPIO����״̬��ȡ
//  @param      pin         ѡ������� (��ѡ��Χ�� common.h ��PIN_enumö��ֵȷ��)
//  @return     uint8       0���͵�ƽ 1���ߵ�ƽ
//  Sample usage:   uint8 key_01 = gpio_get(C0); // ��ȡC0���ŵ�ƽ
// ---------------------------------------------------------

uint8 key_get(PIN_enum pin)
{
    key_01 = gpio_get(pin); // ��ȡָ�����ŵĵ�ƽ״̬
    return key_01;
}

int8 key_able = 0; // ����һ�����ڱ�ǰ�����������ı���

//-------------------------------------------------------------------------------------------------------------------
//  @brief      ���ð���������������
//  @param      pin         ѡ������� (��ѡ��Χ�� common.h ��PIN_enumö��ֵȷ��)
//  @return     void
//  Sample usage:   key_start(C0); // ����C0����Ϊ������������
// ---------------------------------------------------------

void key_start(PIN_enum pin)
{
    while (!key_able) // ������δ��������ʱ
    {
        ips_show_string(5, 0, "Please press the key."); // ��Һ������ʾ��ʾ��Ϣ
        if (key_get(pin)) // �����⵽��������
        {
            systick_delay_ms(200); // �ȴ�200����
            if (key_get(pin)) // ���������Ȼ����
            {
                key_able = 1; // ��ǰ�����������
                ips_show_clear(WHITE); // �������Ա���ʾ������Ϣ
                ips_show_string(5, 1, "Key pressed."); // ��Һ������ʾ�����Ѱ���
                systick_delay_ms(1000); // �ȴ�1��
            }
        }
    }
}
