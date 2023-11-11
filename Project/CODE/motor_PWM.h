/*
 * motor_PWM.h
 *
 * 创建日期: 2023年9月26日
 * 作者: Kiana Kaslana
 */

#ifndef MOTOR_PWM_H_
#define MOTOR_PWM_H_

/**
 * @brief 初始化电机控制引脚（示例）
 *
 * 初始化电机控制引脚，适用于预先连接电机驱动相关线路的培训板。
 *
 * @return void
 * @details 此函数适用于预先设置电机驱动相关连接的培训板。
 * @usage motor_enable_init_made();
 */
void motor_enable_init_made();

/**
 * @brief 初始化电机控制引脚
 *
 * 通过此函数来初始化电机的控制引脚。
 *
 * @param pin_STBY  电机驱动待机控制引脚
 * @param pin_AIN1  电机1方向控制引脚1
 * @param pin_AIN2  电机1方向控制引脚2
 * @param pin_BIN1  电机2方向控制引脚1
 * @param pin_BIN2  电机2方向控制引脚2
 * @return void
 * @usage motor_enable_init(C9, A8, A11, C10, C12);
 */
void motor_enable_init(PIN_enum pin_STBY, PIN_enum pin_AIN1, PIN_enum pin_AIN2, PIN_enum pin_BIN1, PIN_enum pin_BIN2);

/**
 * @brief 初始化电机PWM（示例）
 *
 * 初始化电机的PWM，适用于预先连接电机驱动相关线路的培训板。
 *
 * @return void
 * @details 此函数适用于预先设置电机驱动相关连接的培训板。
 * @usage PWM_init_made();
 */
void PWM_init_made();

/**
 * @brief 初始化电机PWM
 *
 * 通过此函数来初始化电机的PWM。
 *
 * @param pwmch1  用于电机1的PWM通道及相关引脚
 * @param pwmch2  用于电机2的PWM通道及相关引脚
 * @param freq    PWM频率
 * @param duty    PWM占空比
 * @return void
 * @usage PWM_init(PWM3_CH1_C6, PWM3_CH2_C7, 5000, 0);
 * @details PWM_DUTY_MAX在zf_pwm.h文件中定义，默认为10000。
 */
void PWM_init(PWMCH_enum pwmch1, PWMCH_enum pwmch2, uint32 freq, uint32 duty);

/**
 * @brief 控制电机（示例）
 *
 * 用于控制电机，适用于预先连接电机驱动相关线路的培训板。
 *
 * @param duty  要应用于电机的PWM占空比
 * @param dat   方向控制: 1表示正转，0表示反转
 * @return void
 * @details 此函数适用于预先设置电机驱动相关连接的培训板。
 * @usage set_PWM_motor_made(2000, 1);
 */
void set_PWM_motor_made(uint32 duty, uint8 dat);

/**
 * @brief 控制单个电机
 *
 * 通过此函数来控制单个电机。
 *
 * @param pin_1  用于控制电机正转的电机方向控制引脚1
 * @param pin_2  用于控制电机反转的电机方向控制引脚2
 * @param pwmch  用于电机的PWM通道及相关引脚
 * @param duty   要应用于电机的PWM占空比
 * @param dat    方向控制: 1表示正转，0表示反转
 * @return void
 * @usage set_PWM_motor(A8, A11, PWM3_CH1_C6, 2000, 1);
 * @details PWM_DUTY_MAX在zf_pwm.h文件中定义，默认为10000。
 */
void set_PWM_motor(PIN_enum pin_1, PIN_enum pin_2, PWMCH_enum pwmch, uint32 duty, uint8 dat);

#endif /* MOTOR_PWM_H_ */
