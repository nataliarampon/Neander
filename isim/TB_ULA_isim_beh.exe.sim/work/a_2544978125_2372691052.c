/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/natal/Documents/GitHub/Neander/TB_ULA.vhd";
extern char *STD_STANDARD;
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_2544978125_2372691052_p_0(char *t0)
{
    char t16[16];
    char t19[16];
    char t21[16];
    char t28[16];
    char t30[16];
    char t34[16];
    char t41[16];
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;
    int t11;
    int t12;
    int t13;
    int t14;
    int t15;
    int t17;
    char *t18;
    char *t20;
    char *t22;
    char *t23;
    int t24;
    unsigned int t25;
    char *t27;
    char *t29;
    char *t31;
    char *t32;
    int t33;
    char *t35;
    char *t36;
    int t37;
    char *t38;
    char *t39;
    char *t40;
    char *t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned char t49;

LAB0:    t1 = (t0 + 2832U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(81, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2640);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 5361);
    t5 = (t0 + 3216);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 5369);
    t5 = (t0 + 3280);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 5377);
    t5 = (t0 + 3344);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 5380);
    *((int *)t2) = 0;
    t4 = (t0 + 5384);
    *((int *)t4) = 6;
    t10 = 0;
    t11 = 6;

LAB8:    if (t10 <= t11)
        goto LAB9;

LAB11:    xsi_set_current_line(101, ng0);
    t3 = (20 * 1000LL);
    t2 = (t0 + 2640);
    xsi_process_wait(t2, t3);

LAB35:    *((char **)t1) = &&LAB36;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(88, ng0);
    t5 = (t0 + 5388);
    *((int *)t5) = 0;
    t6 = (t0 + 5392);
    *((int *)t6) = 3;
    t12 = 0;
    t13 = 3;

LAB12:    if (t12 <= t13)
        goto LAB13;

LAB15:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t2 = (t0 + 5244U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t16, t4, t2, 1);
    t6 = (t16 + 12U);
    t25 = *((unsigned int *)t6);
    t44 = (1U * t25);
    t49 = (3U != t44);
    if (t49 == 1)
        goto LAB30;

LAB31:    t7 = (t0 + 3344);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t18 = (t9 + 56U);
    t20 = *((char **)t18);
    memcpy(t20, t5, 3U);
    xsi_driver_first_trans_fast(t7);

LAB10:    t2 = (t0 + 5380);
    t10 = *((int *)t2);
    t4 = (t0 + 5384);
    t11 = *((int *)t4);
    if (t10 == t11)
        goto LAB11;

LAB32:    t12 = (t10 + 1);
    t10 = t12;
    t5 = (t0 + 5380);
    *((int *)t5) = t10;
    goto LAB8;

LAB13:    xsi_set_current_line(89, ng0);
    t7 = (t0 + 5396);
    *((int *)t7) = 0;
    t8 = (t0 + 5400);
    *((int *)t8) = 2;
    t14 = 0;
    t15 = 2;

LAB16:    if (t14 <= t15)
        goto LAB17;

LAB19:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = (t0 + 5260U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t16, t4, t2, 1);
    t6 = (t16 + 12U);
    t25 = *((unsigned int *)t6);
    t44 = (1U * t25);
    t49 = (8U != t44);
    if (t49 == 1)
        goto LAB27;

LAB28:    t7 = (t0 + 3216);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t18 = (t9 + 56U);
    t20 = *((char **)t18);
    memcpy(t20, t5, 8U);
    xsi_driver_first_trans_fast(t7);

LAB14:    t2 = (t0 + 5388);
    t12 = *((int *)t2);
    t4 = (t0 + 5392);
    t13 = *((int *)t4);
    if (t12 == t13)
        goto LAB15;

LAB29:    t14 = (t12 + 1);
    t12 = t14;
    t5 = (t0 + 5388);
    *((int *)t5) = t12;
    goto LAB12;

LAB17:    xsi_set_current_line(90, ng0);
    t3 = (20 * 1000LL);
    t9 = (t0 + 2640);
    xsi_process_wait(t9, t3);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB18:    t2 = (t0 + 5396);
    t14 = *((int *)t2);
    t4 = (t0 + 5400);
    t15 = *((int *)t4);
    if (t14 == t15)
        goto LAB19;

LAB26:    t17 = (t14 + 1);
    t14 = t17;
    t5 = (t0 + 5396);
    *((int *)t5) = t14;
    goto LAB16;

LAB20:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 5404);
    t5 = ((STD_STANDARD) + 384);
    t6 = (t0 + 1192U);
    t7 = *((char **)t6);
    t6 = (t0 + 5260U);
    t17 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t7, t6);
    t8 = xsi_int_to_mem(t17);
    t9 = xsi_string_variable_get_image(t16, t5, t8);
    t20 = ((STD_STANDARD) + 1008);
    t22 = (t21 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 1;
    t23 = (t22 + 4U);
    *((int *)t23) = 14;
    t23 = (t22 + 8U);
    *((int *)t23) = 1;
    t24 = (14 - 1);
    t25 = (t24 * 1);
    t25 = (t25 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t25;
    t18 = xsi_base_array_concat(t18, t19, t20, (char)97, t2, t21, (char)97, t9, t16, (char)101);
    t23 = (t0 + 5418);
    t29 = ((STD_STANDARD) + 1008);
    t31 = (t30 + 0U);
    t32 = (t31 + 0U);
    *((int *)t32) = 1;
    t32 = (t31 + 4U);
    *((int *)t32) = 5;
    t32 = (t31 + 8U);
    *((int *)t32) = 1;
    t33 = (5 - 1);
    t25 = (t33 * 1);
    t25 = (t25 + 1);
    t32 = (t31 + 12U);
    *((unsigned int *)t32) = t25;
    t27 = xsi_base_array_concat(t27, t28, t29, (char)97, t18, t19, (char)97, t23, t30, (char)101);
    t32 = ((STD_STANDARD) + 384);
    t35 = (t0 + 1352U);
    t36 = *((char **)t35);
    t35 = (t0 + 5276U);
    t37 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t36, t35);
    t38 = xsi_int_to_mem(t37);
    t39 = xsi_string_variable_get_image(t34, t32, t38);
    t42 = ((STD_STANDARD) + 1008);
    t40 = xsi_base_array_concat(t40, t41, t42, (char)97, t27, t28, (char)97, t39, t34, (char)101);
    t43 = (t16 + 12U);
    t25 = *((unsigned int *)t43);
    t44 = (14U + t25);
    t45 = (t44 + 5U);
    t46 = (t34 + 12U);
    t47 = *((unsigned int *)t46);
    t48 = (t45 + t47);
    xsi_report(t40, t48, 0);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 5423);
    t5 = ((STD_STANDARD) + 384);
    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t6 = (t0 + 5244U);
    t17 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t7, t6);
    t8 = xsi_int_to_mem(t17);
    t9 = xsi_string_variable_get_image(t16, t5, t8);
    t20 = ((STD_STANDARD) + 1008);
    t22 = (t21 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 1;
    t23 = (t22 + 4U);
    *((int *)t23) = 7;
    t23 = (t22 + 8U);
    *((int *)t23) = 1;
    t24 = (7 - 1);
    t25 = (t24 * 1);
    t25 = (t25 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t25;
    t18 = xsi_base_array_concat(t18, t19, t20, (char)97, t2, t21, (char)97, t9, t16, (char)101);
    t23 = (t0 + 5430);
    t29 = ((STD_STANDARD) + 1008);
    t31 = (t30 + 0U);
    t32 = (t31 + 0U);
    *((int *)t32) = 1;
    t32 = (t31 + 4U);
    *((int *)t32) = 19;
    t32 = (t31 + 8U);
    *((int *)t32) = 1;
    t33 = (19 - 1);
    t25 = (t33 * 1);
    t25 = (t25 + 1);
    t32 = (t31 + 12U);
    *((unsigned int *)t32) = t25;
    t27 = xsi_base_array_concat(t27, t28, t29, (char)97, t18, t19, (char)97, t23, t30, (char)101);
    t32 = ((STD_STANDARD) + 384);
    t35 = (t0 + 1512U);
    t36 = *((char **)t35);
    t35 = (t0 + 5292U);
    t37 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t36, t35);
    t38 = xsi_int_to_mem(t37);
    t39 = xsi_string_variable_get_image(t34, t32, t38);
    t42 = ((STD_STANDARD) + 1008);
    t40 = xsi_base_array_concat(t40, t41, t42, (char)97, t27, t28, (char)97, t39, t34, (char)101);
    t43 = (t16 + 12U);
    t25 = *((unsigned int *)t43);
    t44 = (7U + t25);
    t45 = (t44 + 19U);
    t46 = (t34 + 12U);
    t47 = *((unsigned int *)t46);
    t48 = (t45 + t47);
    xsi_report(t40, t48, 0);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 5449);
    t5 = ((STD_STANDARD) + 384);
    t6 = (t0 + 1672U);
    t7 = *((char **)t6);
    t6 = (t0 + 5308U);
    t17 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t7, t6);
    t8 = xsi_int_to_mem(t17);
    t9 = xsi_string_variable_get_image(t16, t5, t8);
    t20 = ((STD_STANDARD) + 1008);
    t22 = (t21 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 1;
    t23 = (t22 + 4U);
    *((int *)t23) = 6;
    t23 = (t22 + 8U);
    *((int *)t23) = 1;
    t24 = (6 - 1);
    t25 = (t24 * 1);
    t25 = (t25 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t25;
    t18 = xsi_base_array_concat(t18, t19, t20, (char)97, t2, t21, (char)97, t9, t16, (char)101);
    t23 = (t16 + 12U);
    t25 = *((unsigned int *)t23);
    t44 = (6U + t25);
    xsi_report(t18, t44, 0);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = (t0 + 5276U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t16, t4, t2, 1);
    t6 = (t16 + 12U);
    t25 = *((unsigned int *)t6);
    t44 = (1U * t25);
    t49 = (8U != t44);
    if (t49 == 1)
        goto LAB24;

LAB25:    t7 = (t0 + 3280);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t18 = (t9 + 56U);
    t20 = *((char **)t18);
    memcpy(t20, t5, 8U);
    xsi_driver_first_trans_fast(t7);
    goto LAB18;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB24:    xsi_size_not_matching(8U, t44, 0);
    goto LAB25;

LAB27:    xsi_size_not_matching(8U, t44, 0);
    goto LAB28;

LAB30:    xsi_size_not_matching(3U, t44, 0);
    goto LAB31;

LAB33:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 5455);
    t5 = (t0 + 3216);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 5463);
    t5 = (t0 + 3280);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 5471);
    t5 = (t0 + 3344);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(106, ng0);

LAB39:    *((char **)t1) = &&LAB40;
    goto LAB1;

LAB34:    goto LAB33;

LAB36:    goto LAB34;

LAB37:    goto LAB2;

LAB38:    goto LAB37;

LAB40:    goto LAB38;

}


extern void work_a_2544978125_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2544978125_2372691052_p_0};
	xsi_register_didat("work_a_2544978125_2372691052", "isim/TB_ULA_isim_beh.exe.sim/work/a_2544978125_2372691052.didat");
	xsi_register_executes(pe);
}
