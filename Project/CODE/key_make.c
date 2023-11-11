/*
 * key_make.c
 *
 *  Created on: September 27, 2023
 *      Author: Kiana Kaslana
 */

#include "headfile.h"         // 引入头文件，包含本源文件所需的头文件
#include "include_control.h"  // 引入控制文件头文件，用于调用相关功能

//-------------------------------------------------------------------------------------------------------------------
//  @brief      GPIO按键初始化
//  @param      pin         选择的引脚 (可选择范围由 common.h 内PIN_enum枚举值确定)
//  @return     void
//  Sample usage:   key_init(C0); // C0初始化为GPIO功能、输入模式、输入低电平、推挽输入，即初始化为按键引脚
// ---------------------------------------------------------

void key_init(PIN_enum pin)
{
    gpio_init(pin, GPI, 0, GPIO_PIN_CONFIG); // 将引脚初始化为GPIO输入模式
}

uint8 key_01; // 这是一个用于存储按键状态的变量

//-------------------------------------------------------------------------------------------------------------------
//  @brief      GPIO按键状态获取
//  @param      pin         选择的引脚 (可选择范围由 common.h 内PIN_enum枚举值确定)
//  @return     uint8       0：低电平 1：高电平
//  Sample usage:   uint8 key_01 = gpio_get(C0); // 获取C0引脚电平
// ---------------------------------------------------------

uint8 key_get(PIN_enum pin)
{
    key_01 = gpio_get(pin); // 获取指定引脚的电平状态
    return key_01;
}

int8 key_able = 0; // 这是一个用于标记按键启动程序的变量

//-------------------------------------------------------------------------------------------------------------------
//  @brief      设置按键启动程序例程
//  @param      pin         选择的引脚 (可选择范围由 common.h 内PIN_enum枚举值确定)
//  @return     void
//  Sample usage:   key_start(C0); // 设置C0口作为程序启动按键
// ---------------------------------------------------------

void key_start(PIN_enum pin)
{
    while (!key_able) // 当按键未启动程序时
    {
        ips_show_string(5, 0, "Please press the key."); // 在液晶上显示提示信息
        if (key_get(pin)) // 如果检测到按键按下
        {
            systick_delay_ms(200); // 等待200毫秒
            if (key_get(pin)) // 如果按键仍然按下
            {
                key_able = 1; // 标记按键启动程序
                ips_show_clear(WHITE); // 清屏，以便显示后续信息
                ips_show_string(5, 1, "Key pressed."); // 在液晶上显示按键已按下
                systick_delay_ms(1000); // 等待1秒
            }
        }
    }
}
