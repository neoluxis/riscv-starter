/*
 * ADC_measure.c
 *
 *  Created on: September 27, 2023
 *      Author: Kiana Kaslana
 */

// #include ��һ��C/C++רҵ������ڽ�ָ��ͷ�ļ�Ƕ��Դ�ļ��С�
// ��������� #include ָ�������ͷ�ļ���ͷ�ļ�ͨ����������Ҫ�ĺ����ͱ���������
#include "headfile.h"     // �����ڵ�ǰĿ¼����ͷ�ļ�
#include "include_control.h"

// ---------------------------------------------------------
//  @brief      ��ʼ��ADC
//  @param      ch      ѡ��ADCͨ��
//  @return     void
//  Sample usage:   ADC_init(ADC_IN0_A0);  // ��ʼ��A0����ΪADC����
// ---------------------------------------------------------
void ADC_init(ADCCH_enum ch) // ѡ�񲢳�ʼ��ADCͨ��
{
    adc_init(ch);
}

int ADC_data; // ����һ���������������ڴ洢ADC�ɼ�����ֵ��

// ---------------------------------------------------------
//  @brief      ִ��һ��ADCת������ȡָ���˿ڵ�ADCֵ��
//  @param      ch              ѡ��ADCͨ��
//  @param      resolution      �ֱ��� (8λ��10λ��12λ)
//  @return     void
//  Sample usage:   ADC_get(ADC_IN0_A0, ADC_8BIT);  // �ɼ�A0�˿ڷ���8λ�ֱ��ʵ�ADֵ
// ---------------------------------------------------------

int ADC_get(ADCCH_enum ch, ADCRES_enum resolution) // �ɼ�ADCͨ���˿ڷ���ָ���ֱ��ʵ�ADֵ
{
    ADC_data = adc_convert(ch, resolution); // ���� adc_convert ����ִ��ADCת��
    return ADC_data; // ���زɼ���ADCֵ
}
