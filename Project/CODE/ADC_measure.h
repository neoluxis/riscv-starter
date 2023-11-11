/*
 * ADC_measure.h
 *
 *  Created on: September 27, 2023
 *      Author: Kiana Kaslana
 */

// 头文件通常用来在不同的源文件中共享函数和变量的信息。

#ifndef ADC_MEASURE_H_ // 这是条件编译指令，确保头文件只包含一次
#define ADC_MEASURE_H_

// 下面是函数声明，它们告诉编译器这些函数的存在，但函数的实现在其他文件中定义。
// 函数声明通常在头文件中，以便其他源文件可以访问这些函数。

// ---------------------------------------------------------
//  @brief      初始化ADC
//  @param      ch      选择ADC通道
//  @return     void
//  Sample usage:   ADC_init(ADC_IN0_A0);  // 初始化A0引脚为ADC功能

void ADC_init(ADCCH_enum ch); // 函数声明，选择并初始化ADC通道

// ---------------------------------------------------------
//  @brief      执行一次ADC转换（读取指定端口的ADC值）
//  @param      ch              选择ADC通道
//  @param      resolution      分辨率 (8位、10位、12位)
//  @return     void
//  Sample usage:   ADC_get(ADC_IN0_A0, ADC_8BIT);  // 采集A0端口返回8位分辨率的AD值

int ADC_get(ADCCH_enum ch, ADCRES_enum resolution); // 函数声明，采集ADC通道端口返回指定分辨率的AD值

#endif /* ADC_MEASURE_H_ */
// 结束条件编译指令，确保头文件只包含一次。如果没有定义 ADC_MEASURE_H_，则定义它，
// 这样可以防止多次包含同一头文件，避免编译错误。
