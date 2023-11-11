/*********************************************************************************************************************
 * ��Ȩ����
 * ��Ȩ���� (c) 2023��Kiana Kaslana
 * ��������Ȩ��
 * ���ߣ�Kiana Kaslana
 * �������ڣ�2023��9��27��
 ********************************************************************************************************************/

#include "headfile.h"
#include "include_control.h"

//-------------------------------------------------------------------------------------------------------------------
//  @brief      ��������������ʼ��
//  @param      timern   ��ʱ��ö���壬������zf.timer.h��
//  @param      phaseA   ͨ��A���������
//  @param      phaseB   ͨ��B���������
//  @return     void
//  ʹ��ʾ����  �Ƽ�ʹ���������������б��������롣
//              encoder_init(TIMER_2, TIMER_PIN_E12, TIMER_PIN_E13);
//              ��ʼ����ʱ��2����ͨ��A���ӵ�����E12��ͨ��B���ӵ�����E13��
//-------------------------------------------------------------------------------------------------------------------
void encoder_init(TIMERN_enum timern, TIMER_PIN_enum phaseA, TIMER_PIN_enum phaseB)
{
    timer_quad_init(timern, phaseA, phaseB);
}

int enc_date;

//-------------------------------------------------------------------------------------------------------------------
//  @brief      ��ȡ��������ֵ
//  @param      timern   ��ʱ��ö���壬������zf.timer.h��
//  @return     int      ��������ֵ
//  ʹ��ʾ����  enc = encoder_get(TIMER_2);
//              ��ȡ�������ʱ��2�ı�������ֵ��
//-------------------------------------------------------------------------------------------------------------------
int encoder_get(TIMERN_enum timern)
{
    enc_date = timer_quad_get(timern);        // ��ȡ��������ֵ
    timer_quad_clear(timern);                // �����ʱ���ļ�������ֵ
    return enc_date;
}