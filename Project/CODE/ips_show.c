/*
 * ips_show.c
 *
 *  Created on: September 26, 2023
 *      Author: Kiana Kaslana
 */

#include "headfile.h"         // 引入头文件，包含本源文件所需的头文件
#include "include_control.h"  // 引入控制文件头文件，用于调用相关功能

//-------------------------------------------------------------------------------------------------------------------
//  @brief      1.14寸 IPS液晶初始化
//  @return     void
//  @since      v1.0
//  Sample usage:   ips_init(); // 初始化IPS屏幕
// ---------------------------------------------------------

void ips_init()
{
    ips114_init(); // 调用初始化函数
}

//-------------------------------------------------------------------------------------------------------------------
//  @brief      液晶显示16位有符号整数
//  @param      x               x方向坐标的起点，参数范围 0 -（IPS114_X_MAX-1），即0-239，x不能大于239
//  @param      y               y方向坐标的起点，参数范围 0 -（IPS114_Y_MAX/16-1），即0-7，y不能大于7
//  @param      dat             需要显示的整数，数据类型int16
//  @return     void
//  @since      v1.0
//  Sample usage:   ips_show_date(0, 1, x); // 在第1行第0列显示一个x，x为int16类型
// ---------------------------------------------------------

void ips_show_date(uint16 x, uint16 y, int16 dat)
{
    ips114_showint16(x, y, dat); // 调用显示整数函数
}

//-------------------------------------------------------------------------------------------------------------------
//  @brief      液晶显示字符串
//  @param      x               x方向坐标的起点，参数范围 0 -（IPS114_X_MAX-1），即0-239，x不能大于239
//  @param      y               y方向坐标的起点，参数范围 0 -（IPS114_Y_MAX/16-1），即0-7，y不能大于7
//  @param      dat             需要显示的字符串
//  @return     void
//  @since      v1.0
//  Sample usage:   ips_show_string(2, 3, "NEUQ SMART CAR"); // 从第3行第2列开始显示字符串“NEUQ SMART CAR”
// ------------------------------------------------------------------------------------------------------------------

void ips_show_string(uint16 x, uint16 y, const int8 dat[])
{
    ips114_showstr(x, y, dat); // 调用显示字符串函数
}

// 常用颜色在SEEKFREE_FONT.h文件中定义
// #define RED      0xF800   // 红色
// #define BLUE     0x001F   // 蓝色
// #define YELLOW   0xFFE0   // 黄色
// #define GREEN    0x07E0   // 绿色
// #define WHITE    0xFFFF   // 白色
// #define BLACK    0x0000   // 黑色
// #define GRAY     0X8430   // 灰色
// #define BROWN    0XBC40   // 棕色
// #define PURPLE   0XF81F   // 紫色
// #define PINK     0XFE19   // 粉色

//-------------------------------------------------------------------------------------------------------------------
//  @brief      液晶清屏函数
//  @param      color           颜色设置
//  @return     void
//  @since      v1.0
//  Sample usage:   ips_show_clear(YELLOW); // 全屏设置为黄色背景   ips_show_clear(); // 默认将全屏设置为白色背景
// ---------------------------------------------------------

void ips_show_clear(uint16 color)
{
    ips114_clear(color); // 调用清屏函数
}
