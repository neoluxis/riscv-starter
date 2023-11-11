/*********************************************************************************************************************
 * COPYRIGHT NOTICE
 * Copyright (c) 2018,��ɿƼ�
 * All rights reserved.
 * ��������QQȺ��һȺ��179029047(����)  ��Ⱥ��244861897
 *
 * �����������ݰ�Ȩ������ɿƼ����У�δ����������������ҵ��;��
 * ��ӭ��λʹ�ò������������޸�����ʱ���뱣����ɿƼ��İ�Ȩ������
 *
 * @file            TFT
 * @company         �ɶ���ɿƼ����޹�˾
 * @author          ��ɿƼ�(QQ3184284598)
 * @version         �鿴doc��version�ļ� �汾˵��
 * @Software        MounRiver Studio V1.51
 * @Taobao          https://seekfree.taobao.com/
 * @date            2019-04-30
 * @note
                                                    ���߶��壺
                    ------------------------------------
                                                                ģ��ܽ�                                    ��Ƭ���ܽ�
                        SCL                 �鿴TFT_SCL�궨�������     Ӳ��SPI���Ų��������л�
                        SDA                 �鿴TFT_SDA�궨�������     Ӳ��SPI���Ų��������л�
                        RES                 �鿴REST_PIN�궨�������
                        DC                  �鿴DC_PIN�궨�������
                        CS                  �鿴TFT_CS�궨�������      Ӳ��SPI���Ų��������л�

                                                                ��Դ����
                        BL  3.3V��Դ������������ţ�Ҳ���Խ�PWM���������ȣ�
                        VCC 3.3V��Դ
                        GND ��Դ��
                                                                 ���ֱ���128*160
                    ------------------------------------

 ********************************************************************************************************************/



#ifndef _SEEKFREE_18TFT_h
#define _SEEKFREE_18TFT_h

#include "common.h"
#include "SEEKFREE_FONT.h"

//-----------------���Ŷ���------------------------------
#define TFT_SPIN        SPI_1           //����ʹ�õ�SPI��
#define TFT_SCL         SPI1_SCK_PA5    //����SPI_SCK����
#define TFT_SDA         SPI1_MOSI_PA7   //����SPI_MOSI����
#define TFT_SDA_IN      SPI_MISO_NULL   //����SPI_MISO����  IPSû��MISO���ţ�����������Ȼ��Ҫ���壬��spi�ĳ�ʼ��ʱ��Ҫʹ��
#define TFT_REST_PIN    C13             //Һ����λ���Ŷ��� ����ʵ��ͨѶδʹ��D15��� ���︴��ΪGPIO
#define TFT_DC_PIN      C14             //Һ������λ���Ŷ���
#define TFT_CS_PIN      C15             //����SPI_CS����
#define TFT_BL_PIN      PIN_NULL        //Һ���������Ŷ���

#define TFT_DC(x)       ((x == 0)? (GPIO_PIN_RESET(TFT_DC_PIN))  :(GPIO_PIN_SET(TFT_DC_PIN)))
#define TFT_REST(x)     ((x == 0)? (GPIO_PIN_RESET(TFT_REST_PIN)):(GPIO_PIN_SET(TFT_REST_PIN)))
#define TFT_CS(x)       ((x == 0)? (GPIO_PIN_RESET(TFT_CS_PIN))  :(GPIO_PIN_SET(TFT_CS_PIN)))


//-------������ɫ��SEEKFREE_FONT.h�ļ��ж���----------
//#define RED               0xF800  //��ɫ
//#define BLUE              0x001F  //��ɫ
//#define YELLOW            0xFFE0  //��ɫ
//#define GREEN             0x07E0  //��ɫ
//#define WHITE             0xFFFF  //��ɫ
//#define BLACK             0x0000  //��ɫ
//#define GRAY              0X8430  //��ɫ
//#define BROWN             0XBC40  //��ɫ
//#define PURPLE            0XF81F  //��ɫ
//#define PINK              0XFE19  //��ɫ



//����д�ֱʵ���ɫ
#define TFT_PENCOLOR    RED

//���屳����ɫ
#define TFT_BGCOLOR     WHITE



//������ʾ����
//0 ����ģʽ
//1 ����ģʽ  ��ת180
//2 ����ģʽ
//3 ����ģʽ  ��ת180
#define TFT_DISPLAY_DIR 3

#if (0==TFT_DISPLAY_DIR || 1==TFT_DISPLAY_DIR)
#define TFT_X_MAX   128 //Һ��X������
#define TFT_Y_MAX   160 //Һ��Y������

#elif (2==TFT_DISPLAY_DIR || 3==TFT_DISPLAY_DIR)
#define TFT_X_MAX   160 //Һ��X������
#define TFT_Y_MAX   128 //Һ��Y������

#else
#error "TFT_DISPLAY_DIR �������"

#endif

//--------------------Ӳ��SPI--------------------
void lcd_init(void);
void lcd_clear(uint16 color);
void lcd_drawpoint(uint16 x,uint16 y,uint16 color);
void lcd_showchar(uint16 x,uint16 y,const int8 dat);
void lcd_showstr(uint16 x,uint16 y,const int8 dat[]);
void lcd_showint8(uint16 x,uint16 y,int8 dat);
void lcd_showuint8(uint16 x,uint16 y,uint8 dat);
void lcd_showint16(uint16 x,uint16 y,int16 dat);
void lcd_showuint16(uint16 x,uint16 y,uint16 dat);
void lcd_showint32(uint16 x,uint16 y,int32 dat,uint8 num);
void lcd_showfloat(uint16 x,uint16 y,double dat,uint8 num,uint8 pointnum);
void showimage(const unsigned char *p);
void lcd_displayimage032(uint8 *p, uint16 width, uint16 height);
void lcd_displayimage032_zoom(uint8 *p, uint16 width, uint16 height, uint16 dis_width, uint16 dis_height);
void lcd_displayimage8660_zoom(uint16 *p, uint16 width, uint16 height, uint16 dis_width, uint16 dis_height);
void lcd_displayimage7725(uint8 *p, uint16 width, uint16 height);
void lcd_display_chinese(uint16 x, uint16 y, uint8 size, const uint8 *p, uint8 number, uint16 color);

#endif