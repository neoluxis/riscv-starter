/*
 * ips_show.h
 *
 *  Created on: September 26, 2023
 *      Author: Kiana Kaslana
 */

#ifndef IPS_SHOW_H_
#define IPS_SHOW_H_

// 这是一个头文件，通常包含函数的声明以供其他源文件使用。

// 下面是函数声明，它们告诉编译器这些函数的存在，但函数的实现在其他文件中定义。

// ---------------------------------------------------------
//  @brief      1.14寸IPS液晶初始化
//  @return     void
//  Sample usage:   ips_init(); // 初始化IPS屏幕
// ---------------------------------------------------------

void ips_init();

// ---------------------------------------------------------
//  @brief      液晶显示16位有符号整数
//  @param      x               x方向坐标的起点，参数范围 0 -（IPS114_X_MAX-1），即0-239，x不能大于239
//  @param      y               y方向坐标的起点，参数范围 0 -（IPS114_Y_MAX/16-1），即0-7，y不能大于7
//  @param      dat             需要显示的整数，数据类型int16
//  @return     void
//  Sample usage:   ips_show_date(0, 1, x); // 在第1行第0列显示一个x，x为int16类型
// ---------------------------------------------------------

void ips_show_date(uint16 x, uint16 y, int16 dat);

// ---------------------------------------------------------
//  @brief      液晶显示字符串
//  @param      x               x方向坐标的起点，参数范围 0 -（IPS114_X_MAX-1），即0-239，x不能大于239
//  @param      y               y方向坐标的起点，参数范围 0 -（IPS114_Y_MAX/16-1），即0-7，y不能大于7
//  @param      dat             需要显示的字符串
//  @return     void
//  Sample usage:   ips_show_string(2, 3, "NEUQ SMART CAR"); // 从第3行第2列开始显示字符串“NEUQ SMART CAR”
// ---------------------------------------------------------

void ips_show_string(uint16 x, uint16 y, const int8 dat[]);

// ---------------------------------------------------------
//  @brief      液晶清屏函数
//  @param      color           颜色设置
//  @return     void
//  Sample usage:   ips_show_clear(YELLOW); // 全屏设置为黄色背景   ips_show_clear(); // 默认将全屏设置为白色背景
// ---------------------------------------------------------

void ips_show_clear(uint16 color);

#endif /* IPS_SHOW_H_ */
// 结束条件编译指令，确保头文件只包含一次。如果没有定义 IPS_SHOW_H_，则定义它，
// 这样可以防止多次包含同一头文件，避免编译错误。
