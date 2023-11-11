/*
 * timer_encoder.h
 *
 * 创建日期: 2023年9月27日
 * 作者: Kiana Kaslana
 */

#ifndef TIMER_ENCODER_H_
#define TIMER_ENCODER_H_

/**
 * @brief 初始化编码器解码器
 *
 * 通过此函数来初始化编码器解码器。
 *
 * @param timern  定时器枚举类型，定义在zf.timer.h中
 * @param phaseA  通道A和关联引脚
 * @param phaseB  通道B和关联引脚
 * @return void
 * @使用方法 推荐使用正交解码器进行编码器初始化。
 *            encoder_init(TIMER_2, TIMER_PIN_E12, TIMER_PIN_E13);
 *            初始化Timer 2，通道A在引脚E12，通道B在引脚E13。
 */
void encoder_init(TIMERN_enum timern, TIMER_PIN_enum phaseA, TIMER_PIN_enum phaseB);

/**
 * @brief 获取编码器值
 *
 * 通过此函数来获取编码器的值。
 *
 * @param timern  定时器枚举类型，定义在zf.timer.h中
 * @return int    编码器值
 * @使用方法 enc = encoder_get(TIMER_2);
 *            读取并清除Timer 2的编码器值。
 */
int encoder_get(TIMERN_enum timern);

#endif /* TIMER_ENCODER_H_ */
