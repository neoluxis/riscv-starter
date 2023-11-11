/*
 * ADC_measure.h
 *
 *  Created on: September 27, 2023
 *      Author: Kiana Kaslana
 */

// ͷ�ļ�ͨ�������ڲ�ͬ��Դ�ļ��й������ͱ�������Ϣ��

#ifndef ADC_MEASURE_H_ // ������������ָ�ȷ��ͷ�ļ�ֻ����һ��
#define ADC_MEASURE_H_

// �����Ǻ������������Ǹ��߱�������Щ�����Ĵ��ڣ���������ʵ���������ļ��ж��塣
// ��������ͨ����ͷ�ļ��У��Ա�����Դ�ļ����Է�����Щ������

// ---------------------------------------------------------
//  @brief      ��ʼ��ADC
//  @param      ch      ѡ��ADCͨ��
//  @return     void
//  Sample usage:   ADC_init(ADC_IN0_A0);  // ��ʼ��A0����ΪADC����

void ADC_init(ADCCH_enum ch); // ����������ѡ�񲢳�ʼ��ADCͨ��

// ---------------------------------------------------------
//  @brief      ִ��һ��ADCת������ȡָ���˿ڵ�ADCֵ��
//  @param      ch              ѡ��ADCͨ��
//  @param      resolution      �ֱ��� (8λ��10λ��12λ)
//  @return     void
//  Sample usage:   ADC_get(ADC_IN0_A0, ADC_8BIT);  // �ɼ�A0�˿ڷ���8λ�ֱ��ʵ�ADֵ

int ADC_get(ADCCH_enum ch, ADCRES_enum resolution); // �����������ɼ�ADCͨ���˿ڷ���ָ���ֱ��ʵ�ADֵ

#endif /* ADC_MEASURE_H_ */
// ������������ָ�ȷ��ͷ�ļ�ֻ����һ�Ρ����û�ж��� ADC_MEASURE_H_����������
// �������Է�ֹ��ΰ���ͬһͷ�ļ�������������
