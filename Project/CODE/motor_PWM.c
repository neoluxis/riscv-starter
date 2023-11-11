/*
 * motor_PWM.c
 *
 *  Created on: September 26, 2023
 *      Author: Kiana Kaslana
 */

#include "headfile.h"         // ����ͷ�ļ���������Դ�ļ������ͷ�ļ�
#include "include_control.h"  // ��������ļ�ͷ�ļ������ڵ�����ع���

// ---------------------------------------------------------
//  @brief      ���ʹ��ת�����ų�ʼ����������
//  @return     void
//  Sample usage:   motor_enable_init_made(); // �˺���������ʵ�����Ѿ�����������߽Ӻõ���ѵ��ֱ�ӳ�ʼ������ο�����
// ---------------------------------------------------------

void motor_enable_init_made()
{
    gpio_init(C9, GPO, 1, GPIO_PIN_CONFIG);   // STBYʹ��

    // ���֣�
    gpio_init(A8, GPO, 0, GPIO_PIN_CONFIG);   // AIN1
    gpio_init(A11, GPO, 0, GPIO_PIN_CONFIG);  // AIN2

    // ���֣�
    gpio_init(C10, GPO, 0, GPIO_PIN_CONFIG);  // BIN1
    gpio_init(C12, GPO, 0, GPIO_PIN_CONFIG);  // BIN2
}

// ---------------------------------------------------------
//  @brief      ���ʹ��ת�����ų�ʼ��
//  @param      pin_STBY       ���������ʹ�ܿڣ���Ϊ0�����·��ü������������ת
//  @param      pin_AIN1       ���1�����������1     pin_AIN1=1��pin_AIN2=0������ת״̬
//  @param      pin_AIN2       ���1�����������2     pin_AIN1=0��pin_AIN2=1������ת״̬
//  @param      pin_BIN1       ���2�����������1     pin_BIN1=1��pin_BIN2=0������ת״̬
//  @param      pin_BIN2       ���2�����������2     pin_BIN1=1��pin_BIN2=0������ת״̬
//  @return     void
//  Sample usage:   motor_enable_init(C9, A8, A11, C10, C12);   // ��ʼ�����ʹ��ת������
// ---------------------------------------------------------

void motor_enable_init(PIN_enum pin_STBY, PIN_enum pin_AIN1, PIN_enum pin_AIN2, PIN_enum pin_BIN1, PIN_enum pin_BIN2)
{
    gpio_init(pin_STBY, GPO, 1, GPIO_PIN_CONFIG);  // STBYʹ��

    // ���֣�
    gpio_init(pin_AIN1, GPO, 0, GPIO_PIN_CONFIG);  // AIN1
    gpio_init(pin_AIN2, GPO, 0, GPIO_PIN_CONFIG);  // AIN2

    // ���֣�
    gpio_init(pin_BIN1, GPO, 0, GPIO_PIN_CONFIG);  // BIN1
    gpio_init(pin_BIN2, GPO, 0, GPIO_PIN_CONFIG);  // BIN2
}

// ---------------------------------------------------------
//  @brief      ���PWM��ʼ����������
//  @return     void
//  Sample usage:   PWM_init_made(); // �˺���������ʵ�����Ѿ�����������߽Ӻõ���ѵ��ֱ�ӳ�ʼ������ο�����
// ---------------------------------------------------------

void PWM_init_made()
{
    timer_pwm_init(PWM3_CH1_C6, 5000, 0);  // ��ʼ��PWM3 ͨ��1 ʹ������C6  ���PWMƵ��5KHZ   ռ�ձ�Ϊ�ٷ�֮ 0/PWM_DUTY_MAX*100
    timer_pwm_init(PWM3_CH2_C7, 5000, 0);  // ��ʼ��PWM3 ͨ��2 ʹ������C7  ���PWMƵ��5KHZ   ռ�ձ�Ϊ�ٷ�֮ 0/PWM_DUTY_MAX*100
}

// ---------------------------------------------------------
//  @brief      ���PWM��ʼ��
//  @param      pwmch1     PWMͨ���ż�����
//  @param      pwmch2     PWMͨ���ż�����
//  @param      freq       PWMƵ��
//  @param      duty       PWMռ�ձ�
//  @return     void
//  Sample usage:   PWM_init(PWM3_CH1_C6, PWM3_CH2_C7, 5000, 0); // ��ʼ��PWM3 ͨ��1��ͨ��2 ʹ������C6��C7  ���PWMƵ��5KHZ   ռ�ձ�Ϊ�ٷ�֮ 5000/PWM_DUTY_MAX*100
//                                                                  PWM_DUTY_MAX��zf_pwm.h�ļ��� Ĭ��Ϊ10000
// ---------------------------------------------------------

void PWM_init(PWMCH_enum pwmch1, PWMCH_enum pwmch2, uint32 freq, uint32 duty)
{
    timer_pwm_init(pwmch1, freq, duty);  // ��ʼ��PWM ͨ�� ʹ������  ���PWMƵ��freq HZ   ռ�ձ�Ϊ�ٷ�֮ duty/PWM_DUTY_MAX*100
    timer_pwm_init(pwmch2, freq, duty);  // ��ʼ��PWM ͨ�� ʹ������  ���PWMƵ��freq HZ   ռ�ձ�Ϊ�ٷ�֮ duty/PWM_DUTY_MAX*100
}

// ---------------------------------------------------------
//  @brief      ������ƣ�������
//  @param      duty       ����������PWMռ�ձ�
//  @param      dat        ����ת���ƣ�1Ϊ��ת��0Ϊ��ת
//  @return     void
//  Sample usage:   set_PWM_motor_made(2000, 1); // ʹ��˫�������20%ռ�ձ���ת
// ---------------------------------------------------------

void set_PWM_motor_made(uint32 duty, uint8 dat)
{
    gpio_set(A8, dat);
    gpio_set(A11, !dat);
    timer_pwm_duty(PWM3_CH1_C6, duty);  // �ı�A15���PWM��ռ�ձ�Ϊ�ٷ�֮ duty/PWM_DUTY_MAX*100

    gpio_set(C10, dat);
    gpio_set(C12, !dat);
    timer_pwm_duty(PWM3_CH2_C7, duty);  // �ı�A15���PWM��ռ�ձ�Ϊ�ٷ�֮ duty/PWM_DUTY_MAX*100
}

// ---------------------------------------------------------
//  @brief      ���������
//  @param      pin_1     ��������������1,������ת
//  @param      pin_2     ��������������2,���Ʒ�ת
//  @param      pwmch     PWMͨ���ż�����
//  @param      duty      ����������PWMռ�ձ�
//  @param      dat       ����ת���ƣ�1Ϊ��ת��0Ϊ��ת
//  @return     void
//  Sample usage:   set_PWM_motor(A8, A11, PWM3_CH1_C6, 2000, 1); // ͨ������A8,A9��Ϊ����ת��������  ͨ������C6���PWM ռ�ձ�Ϊ�ٷ�֮ 2000/PWM_DUTY_MAX*100   ������ת
//                                                             PWM_DUTY_MAX��zf_pwm.h�ļ��� Ĭ��Ϊ10000
// ---------------------------------------------------------

void set_PWM_motor(PIN_enum pin_1, PIN_enum pin_2, PWMCH_enum pwmch, uint32 duty, uint8 dat)
{
    gpio_set(pin_1, dat);
    gpio_set(pin_2, !dat);
    timer_pwm_duty(pwmch, duty);  // �ı�A15���PWM��ռ�ձ�Ϊ�ٷ�֮ duty/PWM_DUTY_MAX*100
}
