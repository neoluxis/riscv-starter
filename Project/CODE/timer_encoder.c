/*********************************************************************************************************************
 * 版权声明
 * 版权所有 (c) 2023，Kiana Kaslana
 * 保留所有权利
 * 作者：Kiana Kaslana
 * 创建日期：2023年9月27日
 ********************************************************************************************************************/

#include "headfile.h"
#include "include_control.h"

//-------------------------------------------------------------------------------------------------------------------
//  @brief      编码器解码器初始化
//  @param      timern   定时器枚举体，定义在zf.timer.h中
//  @param      phaseA   通道A和相关引脚
//  @param      phaseB   通道B和相关引脚
//  @return     void
//  使用示例：  推荐使用正交解码器进行编码器解码。
//              encoder_init(TIMER_2, TIMER_PIN_E12, TIMER_PIN_E13);
//              初始化定时器2，将通道A连接到引脚E12，通道B连接到引脚E13。
//-------------------------------------------------------------------------------------------------------------------
void encoder_init(TIMERN_enum timern, TIMER_PIN_enum phaseA, TIMER_PIN_enum phaseB)
{
    timer_quad_init(timern, phaseA, phaseB);
}

int enc_date;

//-------------------------------------------------------------------------------------------------------------------
//  @brief      获取编码器数值
//  @param      timern   定时器枚举体，定义在zf.timer.h中
//  @return     int      编码器数值
//  使用示例：  enc = encoder_get(TIMER_2);
//              读取并清除定时器2的编码器数值。
//-------------------------------------------------------------------------------------------------------------------
int encoder_get(TIMERN_enum timern)
{
    enc_date = timer_quad_get(timern);        // 获取编码器数值
    timer_quad_clear(timern);                // 清除定时器的计数器数值
    return enc_date;
}
