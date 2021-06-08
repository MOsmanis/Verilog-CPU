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
static const char *ng0 = "/home/ise/Documents/CPU/Verilog-CPU/CPU/Reg2R1W.v";
static int ng1[] = {1, 0};
static int ng2[] = {0, 0};
static int ng3[] = {32, 0};
static unsigned int ng4[] = {0U, 0U};



static void Always_42_0(char *t0)
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
    int t39;
    char *t40;
    int t41;
    int t42;
    int t43;
    int t44;

LAB0:    t1 = (t0 + 3800U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 4368);
    *((int *)t2) = 1;
    t3 = (t0 + 3832);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(42, ng0);

LAB5:    xsi_set_current_line(43, ng0);
    t4 = (t0 + 2008U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
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

LAB11:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB19;

LAB20:
LAB21:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(43, ng0);

LAB13:    xsi_set_current_line(44, ng0);
    xsi_set_current_line(44, ng0);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 2888);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 32);

LAB14:    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB15;

LAB16:    goto LAB12;

LAB15:    xsi_set_current_line(45, ng0);
    t8 = ((char*)((ng4)));
    t21 = (t0 + 2728);
    t22 = (t0 + 2728);
    t28 = (t22 + 72U);
    t29 = *((char **)t28);
    t32 = (t0 + 2728);
    t33 = (t32 + 64U);
    t34 = *((char **)t33);
    t35 = (t0 + 2888);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    xsi_vlog_generic_convert_array_indices(t30, t31, t29, t34, 2, 1, t37, 32, 1);
    t38 = (t30 + 4);
    t14 = *((unsigned int *)t38);
    t39 = (!(t14));
    t40 = (t31 + 4);
    t15 = *((unsigned int *)t40);
    t41 = (!(t15));
    t42 = (t39 && t41);
    if (t42 == 1)
        goto LAB17;

LAB18:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 2888);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB14;

LAB17:    t16 = *((unsigned int *)t30);
    t17 = *((unsigned int *)t31);
    t43 = (t16 - t17);
    t44 = (t43 + 1);
    xsi_vlogvar_wait_assign_value(t21, t8, 0, *((unsigned int *)t31), t44, 0LL);
    goto LAB18;

LAB19:    xsi_set_current_line(47, ng0);

LAB22:    xsi_set_current_line(49, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 2728);
    t7 = (t0 + 2728);
    t8 = (t7 + 72U);
    t21 = *((char **)t8);
    t22 = (t0 + 2728);
    t28 = (t22 + 64U);
    t29 = *((char **)t28);
    t32 = (t0 + 1208U);
    t33 = *((char **)t32);
    xsi_vlog_generic_convert_array_indices(t6, t30, t21, t29, 2, 1, t33, 5, 2);
    t32 = (t6 + 4);
    t14 = *((unsigned int *)t32);
    t39 = (!(t14));
    t34 = (t30 + 4);
    t15 = *((unsigned int *)t34);
    t41 = (!(t15));
    t42 = (t39 && t41);
    if (t42 == 1)
        goto LAB23;

LAB24:    goto LAB21;

LAB23:    t16 = *((unsigned int *)t6);
    t17 = *((unsigned int *)t30);
    t43 = (t16 - t17);
    t44 = (t43 + 1);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, *((unsigned int *)t30), t44, 0LL);
    goto LAB24;

}

static void Always_53_1(char *t0)
{
    char t7[8];
    char t28[8];
    char t29[8];
    char t50[8];
    char t64[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
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
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    char *t49;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;

LAB0:    t1 = (t0 + 4048U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 4384);
    *((int *)t2) = 1;
    t3 = (t0 + 4080);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(53, ng0);

LAB5:    xsi_set_current_line(54, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t0 + 1368U);
    t6 = *((char **)t4);
    memset(t7, 0, 8);
    t4 = (t5 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t6);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t7) = 1;

LAB9:    t22 = (t7 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t7);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:
LAB12:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 1528U);
    t4 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t2);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t2);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB29;

LAB26:    if (t18 != 0)
        goto LAB28;

LAB27:    *((unsigned int *)t7) = 1;

LAB29:    t8 = (t7 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t7);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB30;

LAB31:
LAB32:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB49;

LAB47:    if (*((unsigned int *)t2) == 0)
        goto LAB46;

LAB48:    t4 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t4) = 1;

LAB49:    t5 = (t7 + 4);
    t14 = *((unsigned int *)t5);
    t15 = (~(t14));
    t16 = *((unsigned int *)t7);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB50;

LAB51:
LAB52:    goto LAB2;

LAB8:    t21 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(55, ng0);
    t30 = (t0 + 1848U);
    t31 = *((char **)t30);
    memset(t29, 0, 8);
    t30 = (t31 + 4);
    t32 = *((unsigned int *)t30);
    t33 = (~(t32));
    t34 = *((unsigned int *)t31);
    t35 = (t34 & t33);
    t36 = (t35 & 1U);
    if (t36 != 0)
        goto LAB13;

LAB14:    if (*((unsigned int *)t30) != 0)
        goto LAB15;

LAB16:    t38 = (t29 + 4);
    t39 = *((unsigned int *)t29);
    t40 = *((unsigned int *)t38);
    t41 = (t39 || t40);
    if (t41 > 0)
        goto LAB17;

LAB18:    t44 = *((unsigned int *)t29);
    t45 = (~(t44));
    t46 = *((unsigned int *)t38);
    t47 = (t45 || t46);
    if (t47 > 0)
        goto LAB19;

LAB20:    if (*((unsigned int *)t38) > 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t29) > 0)
        goto LAB23;

LAB24:    memcpy(t28, t50, 8);

LAB25:    t57 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t57, t28, 0, 0, 32, 0LL);
    goto LAB12;

LAB13:    *((unsigned int *)t29) = 1;
    goto LAB16;

LAB15:    t37 = (t29 + 4);
    *((unsigned int *)t29) = 1;
    *((unsigned int *)t37) = 1;
    goto LAB16;

LAB17:    t42 = (t0 + 1048U);
    t43 = *((char **)t42);
    goto LAB18;

LAB19:    t42 = (t0 + 2728);
    t48 = (t42 + 56U);
    t49 = *((char **)t48);
    t51 = (t0 + 2728);
    t52 = (t51 + 72U);
    t53 = *((char **)t52);
    t54 = (t0 + 2728);
    t55 = (t54 + 64U);
    t56 = *((char **)t55);
    t57 = (t0 + 1368U);
    t58 = *((char **)t57);
    xsi_vlog_generic_get_array_select_value(t50, 32, t49, t53, t56, 2, 1, t58, 5, 2);
    goto LAB20;

LAB21:    xsi_vlog_unsigned_bit_combine(t28, 32, t43, 32, t50, 32);
    goto LAB25;

LAB23:    memcpy(t28, t43, 8);
    goto LAB25;

LAB28:    t6 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t6) = 1;
    goto LAB29;

LAB30:    xsi_set_current_line(57, ng0);
    t21 = (t0 + 1848U);
    t22 = *((char **)t21);
    memset(t29, 0, 8);
    t21 = (t22 + 4);
    t32 = *((unsigned int *)t21);
    t33 = (~(t32));
    t34 = *((unsigned int *)t22);
    t35 = (t34 & t33);
    t36 = (t35 & 1U);
    if (t36 != 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t21) != 0)
        goto LAB35;

LAB36:    t31 = (t29 + 4);
    t39 = *((unsigned int *)t29);
    t40 = *((unsigned int *)t31);
    t41 = (t39 || t40);
    if (t41 > 0)
        goto LAB37;

LAB38:    t44 = *((unsigned int *)t29);
    t45 = (~(t44));
    t46 = *((unsigned int *)t31);
    t47 = (t45 || t46);
    if (t47 > 0)
        goto LAB39;

LAB40:    if (*((unsigned int *)t31) > 0)
        goto LAB41;

LAB42:    if (*((unsigned int *)t29) > 0)
        goto LAB43;

LAB44:    memcpy(t28, t50, 8);

LAB45:    t55 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t55, t28, 0, 0, 32, 0LL);
    goto LAB32;

LAB33:    *((unsigned int *)t29) = 1;
    goto LAB36;

LAB35:    t30 = (t29 + 4);
    *((unsigned int *)t29) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB36;

LAB37:    t37 = (t0 + 1048U);
    t38 = *((char **)t37);
    goto LAB38;

LAB39:    t37 = (t0 + 2728);
    t42 = (t37 + 56U);
    t43 = *((char **)t42);
    t48 = (t0 + 2728);
    t49 = (t48 + 72U);
    t51 = *((char **)t49);
    t52 = (t0 + 2728);
    t53 = (t52 + 64U);
    t54 = *((char **)t53);
    t55 = (t0 + 1528U);
    t56 = *((char **)t55);
    xsi_vlog_generic_get_array_select_value(t50, 32, t43, t51, t54, 2, 1, t56, 5, 2);
    goto LAB40;

LAB41:    xsi_vlog_unsigned_bit_combine(t28, 32, t38, 32, t50, 32);
    goto LAB45;

LAB43:    memcpy(t28, t38, 8);
    goto LAB45;

LAB46:    *((unsigned int *)t7) = 1;
    goto LAB49;

LAB50:    xsi_set_current_line(58, ng0);

LAB53:    xsi_set_current_line(59, ng0);
    t6 = (t0 + 1368U);
    t8 = *((char **)t6);
    t6 = ((char*)((ng2)));
    memset(t50, 0, 8);
    t21 = (t8 + 4);
    t22 = (t6 + 4);
    t19 = *((unsigned int *)t8);
    t20 = *((unsigned int *)t6);
    t23 = (t19 ^ t20);
    t24 = *((unsigned int *)t21);
    t25 = *((unsigned int *)t22);
    t26 = (t24 ^ t25);
    t27 = (t23 | t26);
    t32 = *((unsigned int *)t21);
    t33 = *((unsigned int *)t22);
    t34 = (t32 | t33);
    t35 = (~(t34));
    t36 = (t27 & t35);
    if (t36 != 0)
        goto LAB57;

LAB54:    if (t34 != 0)
        goto LAB56;

LAB55:    *((unsigned int *)t50) = 1;

LAB57:    memset(t29, 0, 8);
    t31 = (t50 + 4);
    t39 = *((unsigned int *)t31);
    t40 = (~(t39));
    t41 = *((unsigned int *)t50);
    t44 = (t41 & t40);
    t45 = (t44 & 1U);
    if (t45 != 0)
        goto LAB58;

LAB59:    if (*((unsigned int *)t31) != 0)
        goto LAB60;

LAB61:    t38 = (t29 + 4);
    t46 = *((unsigned int *)t29);
    t47 = *((unsigned int *)t38);
    t59 = (t46 || t47);
    if (t59 > 0)
        goto LAB62;

LAB63:    t60 = *((unsigned int *)t29);
    t61 = (~(t60));
    t62 = *((unsigned int *)t38);
    t63 = (t61 || t62);
    if (t63 > 0)
        goto LAB64;

LAB65:    if (*((unsigned int *)t38) > 0)
        goto LAB66;

LAB67:    if (*((unsigned int *)t29) > 0)
        goto LAB68;

LAB69:    memcpy(t28, t64, 8);

LAB70:    t57 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t57, t28, 0, 0, 32, 0LL);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t29, 0, 8);
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
        goto LAB74;

LAB71:    if (t18 != 0)
        goto LAB73;

LAB72:    *((unsigned int *)t29) = 1;

LAB74:    memset(t28, 0, 8);
    t8 = (t29 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t29);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB75;

LAB76:    if (*((unsigned int *)t8) != 0)
        goto LAB77;

LAB78:    t22 = (t28 + 4);
    t32 = *((unsigned int *)t28);
    t33 = *((unsigned int *)t22);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB79;

LAB80:    t35 = *((unsigned int *)t28);
    t36 = (~(t35));
    t39 = *((unsigned int *)t22);
    t40 = (t36 || t39);
    if (t40 > 0)
        goto LAB81;

LAB82:    if (*((unsigned int *)t22) > 0)
        goto LAB83;

LAB84:    if (*((unsigned int *)t28) > 0)
        goto LAB85;

LAB86:    memcpy(t7, t50, 8);

LAB87:    t53 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t53, t7, 0, 0, 32, 0LL);
    goto LAB52;

LAB56:    t30 = (t50 + 4);
    *((unsigned int *)t50) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB57;

LAB58:    *((unsigned int *)t29) = 1;
    goto LAB61;

LAB60:    t37 = (t29 + 4);
    *((unsigned int *)t29) = 1;
    *((unsigned int *)t37) = 1;
    goto LAB61;

LAB62:    t42 = ((char*)((ng2)));
    goto LAB63;

LAB64:    t43 = (t0 + 2728);
    t48 = (t43 + 56U);
    t49 = *((char **)t48);
    t51 = (t0 + 2728);
    t52 = (t51 + 72U);
    t53 = *((char **)t52);
    t54 = (t0 + 2728);
    t55 = (t54 + 64U);
    t56 = *((char **)t55);
    t57 = (t0 + 1368U);
    t58 = *((char **)t57);
    xsi_vlog_generic_get_array_select_value(t64, 32, t49, t53, t56, 2, 1, t58, 5, 2);
    goto LAB65;

LAB66:    xsi_vlog_unsigned_bit_combine(t28, 32, t42, 32, t64, 32);
    goto LAB70;

LAB68:    memcpy(t28, t42, 8);
    goto LAB70;

LAB73:    t6 = (t29 + 4);
    *((unsigned int *)t29) = 1;
    *((unsigned int *)t6) = 1;
    goto LAB74;

LAB75:    *((unsigned int *)t28) = 1;
    goto LAB78;

LAB77:    t21 = (t28 + 4);
    *((unsigned int *)t28) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB78;

LAB79:    t30 = ((char*)((ng2)));
    goto LAB80;

LAB81:    t31 = (t0 + 2728);
    t37 = (t31 + 56U);
    t38 = *((char **)t37);
    t42 = (t0 + 2728);
    t43 = (t42 + 72U);
    t48 = *((char **)t43);
    t49 = (t0 + 2728);
    t51 = (t49 + 64U);
    t52 = *((char **)t51);
    t53 = (t0 + 1528U);
    t54 = *((char **)t53);
    xsi_vlog_generic_get_array_select_value(t50, 32, t38, t48, t52, 2, 1, t54, 5, 2);
    goto LAB82;

LAB83:    xsi_vlog_unsigned_bit_combine(t7, 32, t30, 32, t50, 32);
    goto LAB87;

LAB85:    memcpy(t7, t30, 8);
    goto LAB87;

}


extern void work_m_15039031837560129860_0076479157_init()
{
	static char *pe[] = {(void *)Always_42_0,(void *)Always_53_1};
	xsi_register_didat("work_m_15039031837560129860_0076479157", "isim/schematic_schematic_sch_tb_isim_beh.exe.sim/work/m_15039031837560129860_0076479157.didat");
	xsi_register_executes(pe);
}
