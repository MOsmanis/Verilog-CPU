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
static const char *ng0 = "/home/ise/Documents/CPU/Verilog-CPU/CPU/char_mem.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {8, 0};



static void Always_15_0(char *t0)
{
    char t4[8];
    char t9[8];
    char t11[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;

LAB0:    t1 = (t0 + 3360U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(15, ng0);
    t2 = (t0 + 3680);
    *((int *)t2) = 1;
    t3 = (t0 + 3392);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(15, ng0);

LAB5:    xsi_set_current_line(16, ng0);
    t5 = (t0 + 1888U);
    t6 = *((char **)t5);
    t5 = (t0 + 1848U);
    t7 = (t5 + 72U);
    t8 = *((char **)t7);
    t10 = ((char*)((ng1)));
    t12 = (t0 + 1728U);
    t13 = *((char **)t12);
    memset(t11, 0, 8);
    t12 = (t11 + 4);
    t14 = (t13 + 4);
    t15 = *((unsigned int *)t13);
    t16 = (t15 >> 0);
    *((unsigned int *)t11) = t16;
    t17 = *((unsigned int *)t14);
    t18 = (t17 >> 0);
    *((unsigned int *)t12) = t18;
    t19 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t19 & 31U);
    t20 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t20 & 31U);
    xsi_vlogtype_concat(t9, 8, 8, 2U, t11, 5, t10, 3);
    t21 = ((char*)((ng2)));
    xsi_vlog_get_indexed_partselect(t4, 8, t6, ((int*)(t8)), 2, t9, 8, 2, t21, 32, 1, 1);
    t22 = (t0 + 2448);
    xsi_vlogvar_assign_value(t22, t4, 0, 0, 8);
    goto LAB2;

}


extern void work_m_00858997145189067799_0219848785_init()
{
	static char *pe[] = {(void *)Always_15_0};
	xsi_register_didat("work_m_00858997145189067799_0219848785", "isim/CPU_TB_LCD_CPU_TB_LCD_sch_tb_isim_beh.exe.sim/work/m_00858997145189067799_0219848785.didat");
	xsi_register_executes(pe);
}
