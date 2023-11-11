/*
 * ADC_measure.c
 *
 *  Created on: September 27, 2023
 *      Author: Kiana Kaslana
 */

// #include 是一个C/C++专业术语，用于将指定头文件嵌入源文件中。
// 下面的两行 #include 指令包含了头文件，头文件通常包含了需要的函数和变量声明。
#include "headfile.h"     // 优先在当前目录查找头文件
#include "include_control.h"

// ---------------------------------------------------------
//  @brief      初始化ADC
//  @param      ch      选择ADC通道
//  @return     void
//  Sample usage:   ADC_init(ADC_IN0_A0);  // 初始化A0引脚为ADC功能
// ---------------------------------------------------------
void ADC_init(ADCCH_enum ch) // 选择并初始化ADC通道
{
    adc_init(ch);
}

int ADC_data; // 这是一个变量声明，用于存储ADC采集的数值。

// ---------------------------------------------------------
//  @brief      执行一次ADC转换（读取指定端口的ADC值）
//  @param      ch              选择ADC通道
//  @param      resolution      分辨率 (8位、10位、12位)
//  @return     void
//  Sample usage:   ADC_get(ADC_IN0_A0, ADC_8BIT);  // 采集A0端口返回8位分辨率的AD值
// ---------------------------------------------------------

int ADC_get(ADCCH_enum ch, ADCRES_enum resolution) // 采集ADC通道端口返回指定分辨率的AD值
{
    ADC_data = adc_convert(ch, resolution); // 调用 adc_convert 函数执行ADC转换
    return ADC_data; // 返回采集的ADC值
}
