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
static const char *ng0 = "/home/ise/Documents/CPU/Verilog-CPU/CPU/TB_CPU.v";
static int ng1[] = {0, 0};
static int ng2[] = {31, 0};
static unsigned int ng3[] = {0U, 0U};
static int ng4[] = {1, 0};
static unsigned int ng5[] = {49U, 0U};
static unsigned int ng6[] = {31U, 0U};
static unsigned int ng7[] = {33542019U, 0U};
static unsigned int ng8[] = {2068371U, 0U};
static int ng9[] = {4, 0};
static unsigned int ng10[] = {1019811U, 0U};
static int ng11[] = {8, 0};
static int ng12[] = {2, 0};
static int ng13[] = {1746935840, 0, 1852121187, 0, 1679846505, 0, 539832942, 0, 1914773536, 0, 1969645157, 0, 1380196418, 0, 2119503, 0};



static void Initial_47_0(char *t0)
{
    char t6[8];
    char t15[8];
    char t16[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    int t28;
    char *t29;
    unsigned int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    int t35;
    int t36;

LAB0:    t1 = (t0 + 4600U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(47, ng0);

LAB4:    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(54, ng0);
    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3688);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB5:    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3528);
    t4 = (t0 + 3528);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t13 = (t0 + 3528);
    t14 = (t13 + 64U);
    t17 = *((char **)t14);
    t18 = ((char*)((ng6)));
    xsi_vlog_generic_convert_array_indices(t6, t15, t7, t17, 2, 1, t18, 12, 2);
    t19 = (t6 + 4);
    t8 = *((unsigned int *)t19);
    t28 = (!(t8));
    t20 = (t15 + 4);
    t9 = *((unsigned int *)t20);
    t31 = (!(t9));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB10;

LAB11:    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 3528);
    t4 = (t0 + 3528);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t13 = (t0 + 3528);
    t14 = (t13 + 64U);
    t17 = *((char **)t14);
    t18 = ((char*)((ng1)));
    xsi_vlog_generic_convert_array_indices(t6, t15, t7, t17, 2, 1, t18, 32, 1);
    t19 = (t6 + 4);
    t8 = *((unsigned int *)t19);
    t28 = (!(t8));
    t20 = (t15 + 4);
    t9 = *((unsigned int *)t20);
    t31 = (!(t9));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB12;

LAB13:    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 3528);
    t4 = (t0 + 3528);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t13 = (t0 + 3528);
    t14 = (t13 + 64U);
    t17 = *((char **)t14);
    t18 = ((char*)((ng9)));
    xsi_vlog_generic_convert_array_indices(t6, t15, t7, t17, 2, 1, t18, 32, 1);
    t19 = (t6 + 4);
    t8 = *((unsigned int *)t19);
    t28 = (!(t8));
    t20 = (t15 + 4);
    t9 = *((unsigned int *)t20);
    t31 = (!(t9));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB14;

LAB15:    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 3528);
    t4 = (t0 + 3528);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t13 = (t0 + 3528);
    t14 = (t13 + 64U);
    t17 = *((char **)t14);
    t18 = ((char*)((ng11)));
    xsi_vlog_generic_convert_array_indices(t6, t15, t7, t17, 2, 1, t18, 32, 1);
    t19 = (t6 + 4);
    t8 = *((unsigned int *)t19);
    t28 = (!(t8));
    t20 = (t15 + 4);
    t9 = *((unsigned int *)t20);
    t31 = (!(t9));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB16;

LAB17:    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 4408);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB18;

LAB1:    return;
LAB6:    xsi_set_current_line(55, ng0);
    t13 = ((char*)((ng3)));
    t14 = (t0 + 3528);
    t17 = (t0 + 3528);
    t18 = (t17 + 72U);
    t19 = *((char **)t18);
    t20 = (t0 + 3528);
    t21 = (t20 + 64U);
    t22 = *((char **)t21);
    t23 = (t0 + 3688);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    xsi_vlog_generic_convert_array_indices(t15, t16, t19, t22, 2, 1, t25, 32, 1);
    t26 = (t15 + 4);
    t27 = *((unsigned int *)t26);
    t28 = (!(t27));
    t29 = (t16 + 4);
    t30 = *((unsigned int *)t29);
    t31 = (!(t30));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB8;

LAB9:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 3688);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB5;

LAB8:    t33 = *((unsigned int *)t15);
    t34 = *((unsigned int *)t16);
    t35 = (t33 - t34);
    t36 = (t35 + 1);
    xsi_vlogvar_assign_value(t14, t13, 0, *((unsigned int *)t16), t36);
    goto LAB9;

LAB10:    t10 = *((unsigned int *)t6);
    t11 = *((unsigned int *)t15);
    t35 = (t10 - t11);
    t36 = (t35 + 1);
    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t15), t36);
    goto LAB11;

LAB12:    t10 = *((unsigned int *)t6);
    t11 = *((unsigned int *)t15);
    t35 = (t10 - t11);
    t36 = (t35 + 1);
    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t15), t36);
    goto LAB13;

LAB14:    t10 = *((unsigned int *)t6);
    t11 = *((unsigned int *)t15);
    t35 = (t10 - t11);
    t36 = (t35 + 1);
    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t15), t36);
    goto LAB15;

LAB16:    t10 = *((unsigned int *)t6);
    t11 = *((unsigned int *)t15);
    t35 = (t10 - t11);
    t36 = (t35 + 1);
    xsi_vlogvar_assign_value(t3, t2, 0, *((unsigned int *)t15), t36);
    goto LAB17;

LAB18:    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3528);
    t7 = (t5 + 72U);
    t13 = *((char **)t7);
    t14 = (t0 + 3528);
    t17 = (t14 + 64U);
    t18 = *((char **)t17);
    t19 = (t0 + 1208U);
    t20 = *((char **)t19);
    xsi_vlog_generic_get_array_select_value(t6, 32, t4, t13, t18, 2, 1, t20, 32, 2);
    t19 = (t0 + 2888);
    xsi_vlogvar_assign_value(t19, t6, 0, 0, 32);
    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB1;

}

static void Always_73_1(char *t0)
{
    char t7[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    t1 = (t0 + 4848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 5912);
    *((int *)t2) = 1;
    t3 = (t0 + 4880);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(73, ng0);

LAB5:    xsi_set_current_line(74, ng0);
    t4 = (t0 + 3528);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t0 + 3528);
    t9 = (t8 + 72U);
    t10 = *((char **)t9);
    t11 = (t0 + 3528);
    t12 = (t11 + 64U);
    t13 = *((char **)t12);
    t14 = (t0 + 1208U);
    t15 = *((char **)t14);
    xsi_vlog_generic_get_array_select_value(t7, 32, t6, t10, t13, 2, 1, t15, 32, 2);
    t14 = (t0 + 2888);
    xsi_vlogvar_assign_value(t14, t7, 0, 0, 32);
    xsi_set_current_line(75, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(76, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB2;

}

static void Always_78_2(char *t0)
{
    char t6[8];
    char t30[8];
    char t31[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    unsigned int t40;
    int t41;
    char *t42;
    unsigned int t43;
    int t44;
    int t45;
    unsigned int t46;
    unsigned int t47;
    int t48;
    int t49;

LAB0:    t1 = (t0 + 5096U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 5928);
    *((int *)t2) = 1;
    t3 = (t0 + 5128);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(78, ng0);

LAB5:    xsi_set_current_line(79, ng0);
    t4 = (t0 + 1688U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng12)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB18;

LAB15:    if (t18 != 0)
        goto LAB17;

LAB16:    *((unsigned int *)t6) = 1;

LAB18:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB19;

LAB20:
LAB21:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(80, ng0);
    t28 = (t0 + 1528U);
    t29 = *((char **)t28);
    t28 = (t0 + 3528);
    t32 = (t0 + 3528);
    t33 = (t32 + 72U);
    t34 = *((char **)t33);
    t35 = (t0 + 3528);
    t36 = (t35 + 64U);
    t37 = *((char **)t36);
    t38 = (t0 + 1368U);
    t39 = *((char **)t38);
    xsi_vlog_generic_convert_array_indices(t30, t31, t34, t37, 2, 1, t39, 16, 2);
    t38 = (t30 + 4);
    t40 = *((unsigned int *)t38);
    t41 = (!(t40));
    t42 = (t31 + 4);
    t43 = *((unsigned int *)t42);
    t44 = (!(t43));
    t45 = (t41 && t44);
    if (t45 == 1)
        goto LAB13;

LAB14:    goto LAB12;

LAB13:    t46 = *((unsigned int *)t30);
    t47 = *((unsigned int *)t31);
    t48 = (t46 - t47);
    t49 = (t48 + 1);
    xsi_vlogvar_assign_value(t28, t29, 0, *((unsigned int *)t31), t49);
    goto LAB14;

LAB17:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB18;

LAB19:    xsi_set_current_line(81, ng0);

LAB22:    xsi_set_current_line(82, ng0);
    t21 = (t0 + 3528);
    t22 = (t21 + 56U);
    t28 = *((char **)t22);
    t29 = (t0 + 3528);
    t32 = (t29 + 72U);
    t33 = *((char **)t32);
    t34 = (t0 + 3528);
    t35 = (t34 + 64U);
    t36 = *((char **)t35);
    t37 = (t0 + 1368U);
    t38 = *((char **)t37);
    xsi_vlog_generic_get_array_select_value(t30, 32, t28, t33, t36, 2, 1, t38, 16, 2);
    t37 = (t0 + 2568);
    xsi_vlogvar_assign_value(t37, t30, 0, 0, 32);
    xsi_set_current_line(83, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(84, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB21;

}

static void Always_90_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 5344U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 5944);
    *((int *)t2) = 1;
    t3 = (t0 + 5376);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(90, ng0);

LAB5:    xsi_set_current_line(91, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 2248);
    xsi_vlogvar_assign_value(t4, t5, 0, 0, 1);
    goto LAB2;

}

static void Always_93_4(char *t0)
{
    char t4[72];
    char t8[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    t1 = (t0 + 5592U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 5960);
    *((int *)t2) = 1;
    t3 = (t0 + 5624);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(93, ng0);

LAB5:    xsi_set_current_line(94, ng0);
    t5 = (t0 + 3528);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t9 = (t0 + 3528);
    t10 = (t9 + 72U);
    t11 = *((char **)t10);
    t12 = (t0 + 3528);
    t13 = (t12 + 64U);
    t14 = *((char **)t13);
    t15 = ((char*)((ng6)));
    xsi_vlog_generic_get_array_select_value(t8, 32, t7, t11, t14, 2, 1, t15, 12, 2);
    t16 = ((char*)((ng13)));
    xsi_vlogtype_concat(t4, 280, 280, 2U, t16, 248, t8, 32);
    t17 = (t0 + 2088);
    xsi_vlogvar_assign_value(t17, t4, 0, 0, 256);
    goto LAB2;

}


extern void work_m_14881508178661867891_0540155903_init()
{
	static char *pe[] = {(void *)Initial_47_0,(void *)Always_73_1,(void *)Always_78_2,(void *)Always_90_3,(void *)Always_93_4};
	xsi_register_didat("work_m_14881508178661867891_0540155903", "isim/CPU_TB_LCD_CPU_TB_LCD_sch_tb_isim_beh.exe.sim/work/m_14881508178661867891_0540155903.didat");
	xsi_register_executes(pe);
}
