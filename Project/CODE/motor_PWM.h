/*
 * motor_PWM.h
 *
 * ��������: 2023��9��26��
 * ����: Kiana Kaslana
 */

#ifndef MOTOR_PWM_H_
#define MOTOR_PWM_H_

/**
 * @brief ��ʼ������������ţ�ʾ����
 *
 * ��ʼ������������ţ�������Ԥ�����ӵ�����������·����ѵ�塣
 *
 * @return void
 * @details �˺���������Ԥ�����õ������������ӵ���ѵ�塣
 * @usage motor_enable_init_made();
 */
void motor_enable_init_made();

/**
 * @brief ��ʼ�������������
 *
 * ͨ���˺�������ʼ������Ŀ������š�
 *
 * @param pin_STBY  �������������������
 * @param pin_AIN1  ���1�����������1
 * @param pin_AIN2  ���1�����������2
 * @param pin_BIN1  ���2�����������1
 * @param pin_BIN2  ���2�����������2
 * @return void
 * @usage motor_enable_init(C9, A8, A11, C10, C12);
 */
void motor_enable_init(PIN_enum pin_STBY, PIN_enum pin_AIN1, PIN_enum pin_AIN2, PIN_enum pin_BIN1, PIN_enum pin_BIN2);

/**
 * @brief ��ʼ�����PWM��ʾ����
 *
 * ��ʼ�������PWM��������Ԥ�����ӵ�����������·����ѵ�塣
 *
 * @return void
 * @details �˺���������Ԥ�����õ������������ӵ���ѵ�塣
 * @usage PWM_init_made();
 */
void PWM_init_made();

/**
 * @brief ��ʼ�����PWM
 *
 * ͨ���˺�������ʼ�������PWM��
 *
 * @param pwmch1  ���ڵ��1��PWMͨ�����������
 * @param pwmch2  ���ڵ��2��PWMͨ�����������
 * @param freq    PWMƵ��
 * @param duty    PWMռ�ձ�
 * @return void
 * @usage PWM_init(PWM3_CH1_C6, PWM3_CH2_C7, 5000, 0);
 * @details PWM_DUTY_MAX��zf_pwm.h�ļ��ж��壬Ĭ��Ϊ10000��
 */
void PWM_init(PWMCH_enum pwmch1, PWMCH_enum pwmch2, uint32 freq, uint32 duty);

/**
 * @brief ���Ƶ����ʾ����
 *
 * ���ڿ��Ƶ����������Ԥ�����ӵ�����������·����ѵ�塣
 *
 * @param duty  ҪӦ���ڵ����PWMռ�ձ�
 * @param dat   �������: 1��ʾ��ת��0��ʾ��ת
 * @return void
 * @details �˺���������Ԥ�����õ������������ӵ���ѵ�塣
 * @usage set_PWM_motor_made(2000, 1);
 */
void set_PWM_motor_made(uint32 duty, uint8 dat);

/**
 * @brief ���Ƶ������
 *
 * ͨ���˺��������Ƶ��������
 *
 * @param pin_1  ���ڿ��Ƶ����ת�ĵ�������������1
 * @param pin_2  ���ڿ��Ƶ����ת�ĵ�������������2
 * @param pwmch  ���ڵ����PWMͨ�����������
 * @param duty   ҪӦ���ڵ����PWMռ�ձ�
 * @param dat    �������: 1��ʾ��ת��0��ʾ��ת
 * @return void
 * @usage set_PWM_motor(A8, A11, PWM3_CH1_C6, 2000, 1);
 * @details PWM_DUTY_MAX��zf_pwm.h�ļ��ж��壬Ĭ��Ϊ10000��
 */
void set_PWM_motor(PIN_enum pin_1, PIN_enum pin_2, PWMCH_enum pwmch, uint32 duty, uint8 dat);

#endif /* MOTOR_PWM_H_ */
