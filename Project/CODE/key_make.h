/*
 * key_make.h
 *
 *  Created on: September 27, 2023
 *      Author: Kiana Kaslana
 */

#ifndef KEY_MAKE_H_
#define KEY_MAKE_H_

// 这是一个头文件，通常包含函数的声明以供其他源文件使用。

// 下面是函数声明，它们告诉编译器这些函数的存在，但函数的实现在其他文件中定义。

// ---------------------------------------------------------
//  @brief      GPIO按键初始化
//  @param      pin         选择的引脚 (可选择范围由 common.h 内PIN_enum枚举值确定)
//  @return     void
//  Sample usage:   key_init(C0); // C0初始化为GPIO功能、输入模式、输入低电平、推挽输入，即初始化为按键引脚
// ---------------------------------------------------------

void key_init(PIN_enum pin);

// ---------------------------------------------------------
//  @brief      GPIO按键状态获取
//  @param      pin         选择的引脚 (可选择范围由 common.h 内PIN_enum枚举值确定)
//  @return     uint8       0：低电平 1：高电平
//  Sample usage:   uint8 key_get(C0); // 获取C0引脚电平
// ---------------------------------------------------------

uint8 key_get(PIN_enum pin);

// ---------------------------------------------------------
//  @brief      设置按键启动程序例程
//  @param      pin         选择的引脚 (可选择范围由 common.h 内PIN_enum枚举值确定)
//  @return     void
//  Sample usage:   key_start(C0); // 设置C0口作为程序启动按键
// ---------------------------------------------------------

void key_start(PIN_enum pin);

#endif /* KEY_MAKE_H_ */
// 结束条件编译指令，确保头文件只包含一次。如果没有定义 KEY_MAKE_H_，则定义它，
// 这样可以防止多次包含同一头文件，避免编译错误。
