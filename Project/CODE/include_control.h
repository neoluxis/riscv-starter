/*
 * include_control.h
 *
 *  Created on: September 26, 2023
 *      Author: Kiana Kaslana
 */

// 头文件，通常包含其他头文件的引用，以便在源文件中可以使用这些头文件中定义的函数和变量。
// 头文件通常用于组织代码，提高可维护性。

#ifndef INCLUDE_CONTROL_H_ // 这是条件编译指令，确保头文件只包含一次
#define INCLUDE_CONTROL_H_

// 下面包含了一系列其他头文件，这些头文件可能包含了在本程序中使用的函数和变量的声明。
// 包含这些头文件允许在本文件中使用它们，而无需重新声明。

#include "motor_PWM.h"       // 包含 motor_PWM 头文件
#include "uart_showdate.h"   // 包含 uart_showdate 头文件
#include "timer_encoder.h"   // 包含 timer_encoder 头文件
#include "ips_show.h"        // 包含 ips_show 头文件
#include "ADC_measure.h"     // 包含 ADC_measure 头文件
#include "key_make.h"        // 包含 key_make 头文件

#endif /* INCLUDE_CONTROL_H_ */
// 结束条件编译指令，确保头文件只包含一次。如果没有定义 INCLUDE_CONTROL_H_，则定义它，
// 这样可以防止多次包含同一头文件，避免编译错误。
