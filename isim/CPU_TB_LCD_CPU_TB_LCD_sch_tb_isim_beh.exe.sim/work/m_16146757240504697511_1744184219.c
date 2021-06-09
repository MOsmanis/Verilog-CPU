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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ise/Documents/CPU/Verilog-CPU/CPU/lsu.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {24, 0};
static int ng3[] = {16, 0};



static void Cont_25_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;

LAB0:    t1 = (t0 + 4384U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 2752U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    *((unsigned int *)t3) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t10 & 65535U);
    t11 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t11 & 65535U);
    t12 = (t0 + 5048);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memset(t16, 0, 8);
    t17 = 65535U;
    t18 = t17;
    t19 = (t3 + 4);
    t20 = *((unsigned int *)t3);
    t17 = (t17 & t20);
    t21 = *((unsigned int *)t19);
    t18 = (t18 & t21);
    t22 = (t16 + 4);
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t23 | t17);
    t24 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t24 | t18);
    xsi_driver_vfirst_trans(t12, 0, 15);
    t25 = (t0 + 4952);
    *((int *)t25) = 1;

LAB1:    return;
}

static void Always_27_1(char *t0)
{
    char t7[8];
    char t8[8];
    char t16[8];
    char t20[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t17;
    char *t18;
    char *t19;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;

LAB0:    t1 = (t0 + 4632U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 4968);
    *((int *)t2) = 1;
    t3 = (t0 + 4664);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(27, ng0);

LAB5:    xsi_set_current_line(28, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 3312);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    xsi_set_current_line(29, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3472);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(30, ng0);
    t2 = (t0 + 2272U);
    t3 = *((char **)t2);

LAB6:    t2 = (t0 + 608);
    t4 = *((char **)t2);
    t6 = xsi_vlog_unsigned_case_compare(t3, 3, t4, 32);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = (t0 + 744);
    t4 = *((char **)t2);
    t6 = xsi_vlog_unsigned_case_compare(t3, 3, t4, 32);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = (t0 + 880);
    t4 = *((char **)t2);
    t6 = xsi_vlog_unsigned_case_compare(t3, 3, t4, 32);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = (t0 + 1016);
    t4 = *((char **)t2);
    t6 = xsi_vlog_unsigned_case_compare(t3, 3, t4, 32);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = (t0 + 1152);
    t4 = *((char **)t2);
    t6 = xsi_vlog_unsigned_case_compare(t3, 3, t4, 32);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = (t0 + 1288);
    t4 = *((char **)t2);
    t6 = xsi_vlog_unsigned_case_compare(t3, 3, t4, 32);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = (t0 + 1424);
    t4 = *((char **)t2);
    t6 = xsi_vlog_unsigned_case_compare(t3, 3, t4, 32);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = (t0 + 1560);
    t4 = *((char **)t2);
    t6 = xsi_vlog_unsigned_case_compare(t3, 3, t4, 32);
    if (t6 == 1)
        goto LAB21;

LAB22:
LAB24:
LAB23:    xsi_set_current_line(53, ng0);

LAB26:    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 3312);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 32);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 3472);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 32);

LAB25:    goto LAB2;

LAB7:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 2432U);
    t5 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t8 + 4);
    t9 = (t5 + 4);
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 0);
    *((unsigned int *)t8) = t11;
    t12 = *((unsigned int *)t9);
    t13 = (t12 >> 0);
    *((unsigned int *)t2) = t13;
    t14 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t14 & 255U);
    t15 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t15 & 255U);
    t17 = ((char*)((ng2)));
    t18 = (t0 + 2432U);
    t19 = *((char **)t18);
    memset(t20, 0, 8);
    t18 = (t20 + 4);
    t21 = (t19 + 4);
    t22 = *((unsigned int *)t19);
    t23 = (t22 >> 7);
    t24 = (t23 & 1);
    *((unsigned int *)t20) = t24;
    t25 = *((unsigned int *)t21);
    t26 = (t25 >> 7);
    t27 = (t26 & 1);
    *((unsigned int *)t18) = t27;
    xsi_vlog_mul_concat(t16, 24, 1, t17, 1U, t20, 1);
    xsi_vlogtype_concat(t7, 32, 32, 2U, t16, 24, t8, 8);
    t28 = (t0 + 3312);
    xsi_vlogvar_assign_value(t28, t7, 0, 0, 32);
    goto LAB25;

LAB9:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 2432U);
    t5 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t8 + 4);
    t9 = (t5 + 4);
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 0);
    *((unsigned int *)t8) = t11;
    t12 = *((unsigned int *)t9);
    t13 = (t12 >> 0);
    *((unsigned int *)t2) = t13;
    t14 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t14 & 65535U);
    t15 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t15 & 65535U);
    t17 = ((char*)((ng3)));
    t18 = (t0 + 2432U);
    t19 = *((char **)t18);
    memset(t20, 0, 8);
    t18 = (t20 + 4);
    t21 = (t19 + 4);
    t22 = *((unsigned int *)t19);
    t23 = (t22 >> 15);
    t24 = (t23 & 1);
    *((unsigned int *)t20) = t24;
    t25 = *((unsigned int *)t21);
    t26 = (t25 >> 15);
    t27 = (t26 & 1);
    *((unsigned int *)t18) = t27;
    xsi_vlog_mul_concat(t16, 16, 1, t17, 1U, t20, 1);
    xsi_vlogtype_concat(t7, 32, 32, 2U, t16, 16, t8, 16);
    t28 = (t0 + 3312);
    xsi_vlogvar_assign_value(t28, t7, 0, 0, 32);
    goto LAB25;

LAB11:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 2432U);
    t5 = *((char **)t2);
    t2 = (t0 + 3312);
    xsi_vlogvar_assign_value(t2, t5, 0, 0, 32);
    goto LAB25;

LAB13:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 2432U);
    t5 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t8 + 4);
    t9 = (t5 + 4);
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 0);
    *((unsigned int *)t8) = t11;
    t12 = *((unsigned int *)t9);
    t13 = (t12 >> 0);
    *((unsigned int *)t2) = t13;
    t14 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t14 & 255U);
    t15 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t15 & 255U);
    t17 = ((char*)((ng1)));
    xsi_vlogtype_concat(t7, 32, 32, 2U, t17, 24, t8, 8);
    t18 = (t0 + 3312);
    xsi_vlogvar_assign_value(t18, t7, 0, 0, 32);
    goto LAB25;

LAB15:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2432U);
    t5 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t8 + 4);
    t9 = (t5 + 4);
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 0);
    *((unsigned int *)t8) = t11;
    t12 = *((unsigned int *)t9);
    t13 = (t12 >> 0);
    *((unsigned int *)t2) = t13;
    t14 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t14 & 65535U);
    t15 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t15 & 65535U);
    t17 = ((char*)((ng1)));
    xsi_vlogtype_concat(t7, 32, 32, 2U, t17, 16, t8, 16);
    t18 = (t0 + 3312);
    xsi_vlogvar_assign_value(t18, t7, 0, 0, 32);
    goto LAB25;

LAB17:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 2592U);
    t5 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t8 + 4);
    t9 = (t5 + 4);
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 0);
    *((unsigned int *)t8) = t11;
    t12 = *((unsigned int *)t9);
    t13 = (t12 >> 0);
    *((unsigned int *)t2) = t13;
    t14 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t14 & 255U);
    t15 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t15 & 255U);
    t17 = ((char*)((ng1)));
    xsi_vlogtype_concat(t7, 32, 32, 2U, t17, 24, t8, 8);
    t18 = (t0 + 3472);
    xsi_vlogvar_assign_value(t18, t7, 0, 0, 32);
    goto LAB25;

LAB19:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 2592U);
    t5 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t8 + 4);
    t9 = (t5 + 4);
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 0);
    *((unsigned int *)t8) = t11;
    t12 = *((unsigned int *)t9);
    t13 = (t12 >> 0);
    *((unsigned int *)t2) = t13;
    t14 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t14 & 65535U);
    t15 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t15 & 65535U);
    t17 = ((char*)((ng1)));
    xsi_vlogtype_concat(t7, 32, 32, 2U, t17, 16, t8, 16);
    t18 = (t0 + 3472);
    xsi_vlogvar_assign_value(t18, t7, 0, 0, 32);
    goto LAB25;

LAB21:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 2592U);
    t5 = *((char **)t2);
    t2 = (t0 + 3472);
    xsi_vlogvar_assign_value(t2, t5, 0, 0, 32);
    goto LAB25;

}


extern void work_m_16146757240504697511_1744184219_init()
{
	static char *pe[] = {(void *)Cont_25_0,(void *)Always_27_1};
	xsi_register_didat("work_m_16146757240504697511_1744184219", "isim/CPU_TB_LCD_CPU_TB_LCD_sch_tb_isim_beh.exe.sim/work/m_16146757240504697511_1744184219.didat");
	xsi_register_executes(pe);
}
