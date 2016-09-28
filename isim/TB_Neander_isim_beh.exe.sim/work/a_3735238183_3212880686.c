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
static const char *ng0 = "C:/Users/natal/Documents/GitHub/Neander/ULA.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767632659_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_3735238183_3212880686_p_0(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    int t17;
    int t18;
    int t19;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    unsigned int t38;

LAB0:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 7204U);
    t4 = (t0 + 1352U);
    t5 = *((char **)t4);
    t4 = (t0 + 7220U);
    t6 = ieee_p_3620187407_sub_767632659_3965413181(IEEE_P_3620187407, t1, t3, t2, t5, t4);
    t7 = (t1 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (16U != t9);
    if (t10 == 1)
        goto LAB2;

LAB3:    t11 = (t0 + 4768);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 16U);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 7367);
    t16 = xsi_mem_cmp(t2, t3, 3U);
    if (t16 == 1)
        goto LAB5;

LAB13:    t5 = (t0 + 7370);
    t17 = xsi_mem_cmp(t5, t3, 3U);
    if (t17 == 1)
        goto LAB6;

LAB14:    t7 = (t0 + 7373);
    t18 = xsi_mem_cmp(t7, t3, 3U);
    if (t18 == 1)
        goto LAB7;

LAB15:    t12 = (t0 + 7376);
    t19 = xsi_mem_cmp(t12, t3, 3U);
    if (t19 == 1)
        goto LAB8;

LAB16:    t14 = (t0 + 7379);
    t20 = xsi_mem_cmp(t14, t3, 3U);
    if (t20 == 1)
        goto LAB9;

LAB17:    t21 = (t0 + 7382);
    t23 = xsi_mem_cmp(t21, t3, 3U);
    if (t23 == 1)
        goto LAB10;

LAB18:    t24 = (t0 + 7385);
    t26 = xsi_mem_cmp(t24, t3, 3U);
    if (t26 == 1)
        goto LAB11;

LAB19:
LAB12:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 4832);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 8U);
    xsi_driver_first_trans_fast(t2);

LAB4:    t2 = (t0 + 4624);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_size_not_matching(16U, t9, 0);
    goto LAB3;

LAB5:    xsi_set_current_line(53, ng0);
    t27 = (t0 + 1192U);
    t28 = *((char **)t27);
    t27 = (t0 + 7204U);
    t29 = (t0 + 1352U);
    t30 = *((char **)t29);
    t29 = (t0 + 7220U);
    t31 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t1, t28, t27, t30, t29);
    t32 = (t1 + 12U);
    t8 = *((unsigned int *)t32);
    t9 = (1U * t8);
    t10 = (8U != t9);
    if (t10 == 1)
        goto LAB21;

LAB22:    t33 = (t0 + 4832);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    memcpy(t37, t31, 8U);
    xsi_driver_first_trans_fast(t33);
    goto LAB4;

LAB6:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 7204U);
    t4 = (t0 + 1352U);
    t5 = *((char **)t4);
    t4 = (t0 + 7220U);
    t6 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t1, t3, t2, t5, t4);
    t7 = (t1 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (8U != t9);
    if (t10 == 1)
        goto LAB23;

LAB24:    t11 = (t0 + 4832);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 8U);
    xsi_driver_first_trans_fast(t11);
    goto LAB4;

LAB7:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 7204U);
    t4 = (t0 + 1352U);
    t5 = *((char **)t4);
    t4 = (t0 + 7220U);
    t6 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t1, t3, t2, t5, t4);
    t7 = (t1 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (8U != t9);
    if (t10 == 1)
        goto LAB25;

LAB26:    t11 = (t0 + 4832);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 8U);
    xsi_driver_first_trans_fast(t11);
    goto LAB4;

LAB8:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 7204U);
    t4 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t1, t3, t2);
    t5 = (t1 + 12U);
    t8 = *((unsigned int *)t5);
    t9 = (1U * t8);
    t10 = (8U != t9);
    if (t10 == 1)
        goto LAB27;

LAB28:    t6 = (t0 + 4832);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 8U);
    xsi_driver_first_trans_fast(t6);
    goto LAB4;

LAB9:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 4832);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 8U);
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB10:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 7204U);
    t4 = (t0 + 1352U);
    t5 = *((char **)t4);
    t4 = (t0 + 7220U);
    t6 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t1, t3, t2, t5, t4);
    t7 = (t1 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (8U != t9);
    if (t10 == 1)
        goto LAB29;

LAB30:    t11 = (t0 + 4832);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 8U);
    xsi_driver_first_trans_fast(t11);
    goto LAB4;

LAB11:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t8 = (15 - 7);
    t9 = (t8 * 1U);
    t38 = (0 + t9);
    t2 = (t3 + t38);
    t4 = (t0 + 4832);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB20:;
LAB21:    xsi_size_not_matching(8U, t9, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(8U, t9, 0);
    goto LAB24;

LAB25:    xsi_size_not_matching(8U, t9, 0);
    goto LAB26;

LAB27:    xsi_size_not_matching(8U, t9, 0);
    goto LAB28;

LAB29:    xsi_size_not_matching(8U, t9, 0);
    goto LAB30;

}

static void work_a_3735238183_3212880686_p_1(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 7284U);
    t3 = (t0 + 7388);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 7;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (7 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:
LAB5:    t15 = (t0 + 4896);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)2;
    xsi_driver_first_trans_delta(t15, 1U, 1, 0LL);

LAB2:    t20 = (t0 + 4640);
    *((int *)t20) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 4896);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_delta(t7, 1U, 1, 0LL);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_3735238183_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = (7 - 7);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB3;

LAB4:
LAB5:    t14 = (t0 + 4960);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)2;
    xsi_driver_first_trans_delta(t14, 0U, 1, 0LL);

LAB2:    t19 = (t0 + 4656);
    *((int *)t19) = 1;

LAB1:    return;
LAB3:    t9 = (t0 + 4960);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_delta(t9, 0U, 1, 0LL);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_3735238183_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(69, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 5024);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4672);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3735238183_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(70, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = (15 - 15);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 5088);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 4688);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3735238183_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3735238183_3212880686_p_0,(void *)work_a_3735238183_3212880686_p_1,(void *)work_a_3735238183_3212880686_p_2,(void *)work_a_3735238183_3212880686_p_3,(void *)work_a_3735238183_3212880686_p_4};
	xsi_register_didat("work_a_3735238183_3212880686", "isim/TB_Neander_isim_beh.exe.sim/work/a_3735238183_3212880686.didat");
	xsi_register_executes(pe);
}
