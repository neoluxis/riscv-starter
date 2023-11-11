/*
 * timer_encoder.h
 *
 * ��������: 2023��9��27��
 * ����: Kiana Kaslana
 */

#ifndef TIMER_ENCODER_H_
#define TIMER_ENCODER_H_

/**
 * @brief ��ʼ��������������
 *
 * ͨ���˺�������ʼ����������������
 *
 * @param timern  ��ʱ��ö�����ͣ�������zf.timer.h��
 * @param phaseA  ͨ��A�͹�������
 * @param phaseB  ͨ��B�͹�������
 * @return void
 * @ʹ�÷��� �Ƽ�ʹ���������������б�������ʼ����
 *            encoder_init(TIMER_2, TIMER_PIN_E12, TIMER_PIN_E13);
 *            ��ʼ��Timer 2��ͨ��A������E12��ͨ��B������E13��
 */
void encoder_init(TIMERN_enum timern, TIMER_PIN_enum phaseA, TIMER_PIN_enum phaseB);

/**
 * @brief ��ȡ������ֵ
 *
 * ͨ���˺�������ȡ��������ֵ��
 *
 * @param timern  ��ʱ��ö�����ͣ�������zf.timer.h��
 * @return int    ������ֵ
 * @ʹ�÷��� enc = encoder_get(TIMER_2);
 *            ��ȡ�����Timer 2�ı�����ֵ��
 */
int encoder_get(TIMERN_enum timern);

#endif /* TIMER_ENCODER_H_ */
