/*
 * motor_PWM.c
 *
 *  Created on: September 26, 2023
 *      Author: Kiana Kaslana
 */

#include "headfile.h"         // 引入头文件，包含本源文件所需的头文件
#include "include_control.h"  // 引入控制文件头文件，用于调用相关功能

// ---------------------------------------------------------
//  @brief      电机使能转向引脚初始化（范例）
//  @return     void
//  Sample usage:   motor_enable_init_made(); // 此函数适用于实验室已经将驱动相关线接好的培训板直接初始化，起参考作用
// ---------------------------------------------------------

void motor_enable_init_made()
{
    gpio_init(C9, GPO, 1, GPIO_PIN_CONFIG);   // STBY使能

    // 左轮：
    gpio_init(A8, GPO, 0, GPIO_PIN_CONFIG);   // AIN1
    gpio_init(A11, GPO, 0, GPIO_PIN_CONFIG);  // AIN2

    // 右轮：
    gpio_init(C10, GPO, 0, GPIO_PIN_CONFIG);  // BIN1
    gpio_init(C12, GPO, 0, GPIO_PIN_CONFIG);  // BIN2
}

// ---------------------------------------------------------
//  @brief      电机使能转向引脚初始化
//  @param      pin_STBY       电机驱动总使能口，若为0则不论下方置几两个电机均不转
//  @param      pin_AIN1       电机1方向控制引脚1     pin_AIN1=1，pin_AIN2=0则开启正转状态
//  @param      pin_AIN2       电机1方向控制引脚2     pin_AIN1=0，pin_AIN2=1则开启反转状态
//  @param      pin_BIN1       电机2方向控制引脚1     pin_BIN1=1，pin_BIN2=0则开启正转状态
//  @param      pin_BIN2       电机2方向控制引脚2     pin_BIN1=1，pin_BIN2=0则开启正转状态
//  @return     void
//  Sample usage:   motor_enable_init(C9, A8, A11, C10, C12);   // 初始化电机使能转向引脚
// ---------------------------------------------------------

void motor_enable_init(PIN_enum pin_STBY, PIN_enum pin_AIN1, PIN_enum pin_AIN2, PIN_enum pin_BIN1, PIN_enum pin_BIN2)
{
    gpio_init(pin_STBY, GPO, 1, GPIO_PIN_CONFIG);  // STBY使能

    // 左轮：
    gpio_init(pin_AIN1, GPO, 0, GPIO_PIN_CONFIG);  // AIN1
    gpio_init(pin_AIN2, GPO, 0, GPIO_PIN_CONFIG);  // AIN2

    // 右轮：
    gpio_init(pin_BIN1, GPO, 0, GPIO_PIN_CONFIG);  // BIN1
    gpio_init(pin_BIN2, GPO, 0, GPIO_PIN_CONFIG);  // BIN2
}

// ---------------------------------------------------------
//  @brief      电机PWM初始化（范例）
//  @return     void
//  Sample usage:   PWM_init_made(); // 此函数适用于实验室已经将驱动相关线接好的培训板直接初始化，起参考作用
// ---------------------------------------------------------

void PWM_init_made()
{
    timer_pwm_init(PWM3_CH1_C6, 5000, 0);  // 初始化PWM3 通道1 使用引脚C6  输出PWM频率5KHZ   占空比为百分之 0/PWM_DUTY_MAX*100
    timer_pwm_init(PWM3_CH2_C7, 5000, 0);  // 初始化PWM3 通道2 使用引脚C7  输出PWM频率5KHZ   占空比为百分之 0/PWM_DUTY_MAX*100
}

// ---------------------------------------------------------
//  @brief      电机PWM初始化
//  @param      pwmch1     PWM通道号及引脚
//  @param      pwmch2     PWM通道号及引脚
//  @param      freq       PWM频率
//  @param      duty       PWM占空比
//  @return     void
//  Sample usage:   PWM_init(PWM3_CH1_C6, PWM3_CH2_C7, 5000, 0); // 初始化PWM3 通道1与通道2 使用引脚C6与C7  输出PWM频率5KHZ   占空比为百分之 5000/PWM_DUTY_MAX*100
//                                                                  PWM_DUTY_MAX在zf_pwm.h文件中 默认为10000
// ---------------------------------------------------------

void PWM_init(PWMCH_enum pwmch1, PWMCH_enum pwmch2, uint32 freq, uint32 duty)
{
    timer_pwm_init(pwmch1, freq, duty);  // 初始化PWM 通道 使用引脚  输出PWM频率freq HZ   占空比为百分之 duty/PWM_DUTY_MAX*100
    timer_pwm_init(pwmch2, freq, duty);  // 初始化PWM 通道 使用引脚  输出PWM频率freq HZ   占空比为百分之 duty/PWM_DUTY_MAX*100
}

// ---------------------------------------------------------
//  @brief      电机控制（范例）
//  @param      duty       给电机输出的PWM占空比
//  @param      dat        正反转控制，1为正转，0为反转
//  @return     void
//  Sample usage:   set_PWM_motor_made(2000, 1); // 使得双电机均以20%占空比正转
// ---------------------------------------------------------

void set_PWM_motor_made(uint32 duty, uint8 dat)
{
    gpio_set(A8, dat);
    gpio_set(A11, !dat);
    timer_pwm_duty(PWM3_CH1_C6, duty);  // 改变A15输出PWM的占空比为百分之 duty/PWM_DUTY_MAX*100

    gpio_set(C10, dat);
    gpio_set(C12, !dat);
    timer_pwm_duty(PWM3_CH2_C7, duty);  // 改变A15输出PWM的占空比为百分之 duty/PWM_DUTY_MAX*100
}

// ---------------------------------------------------------
//  @brief      单电机控制
//  @param      pin_1     电机方向控制引脚1,控制正转
//  @param      pin_2     电机方向控制引脚2,控制反转
//  @param      pwmch     PWM通道号及引脚
//  @param      duty      给电机输出的PWM占空比
//  @param      dat       正反转控制，1为正转，0为反转
//  @return     void
//  Sample usage:   set_PWM_motor(A8, A11, PWM3_CH1_C6, 2000, 1); // 通过引脚A8,A9作为正反转控制引脚  通过引脚C6输出PWM 占空比为百分之 2000/PWM_DUTY_MAX*100   控制正转
//                                                             PWM_DUTY_MAX在zf_pwm.h文件中 默认为10000
// ---------------------------------------------------------

void set_PWM_motor(PIN_enum pin_1, PIN_enum pin_2, PWMCH_enum pwmch, uint32 duty, uint8 dat)
{
    gpio_set(pin_1, dat);
    gpio_set(pin_2, !dat);
    timer_pwm_duty(pwmch, duty);  // 改变A15输出PWM的占空比为百分之 duty/PWM_DUTY_MAX*100
}
