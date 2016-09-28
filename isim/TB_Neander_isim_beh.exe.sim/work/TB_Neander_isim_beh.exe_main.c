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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *IEEE_P_3620187407;
char *STD_STANDARD;
char *STD_TEXTIO;
char *IEEE_P_3499444699;
char *IEEE_P_3564397177;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_3880989854_3212880686_init();
    work_a_0873390410_3212880686_init();
    work_a_1016387942_3212880686_init();
    work_a_1764692275_3212880686_init();
    std_textio_init();
    ieee_p_3564397177_init();
    xilinxcorelib_a_1923264462_2959432447_init();
    xilinxcorelib_a_4282816042_1709443946_init();
    xilinxcorelib_a_2313985948_0543512595_init();
    xilinxcorelib_a_3234154482_3212880686_init();
    work_a_3276747723_0033051833_init();
    work_a_0290344353_3212880686_init();
    work_a_1232942002_3212880686_init();
    work_a_2263464102_3212880686_init();
    work_a_3735238183_3212880686_init();
    work_a_0758161670_3212880686_init();
    work_a_0319183883_3212880686_init();
    work_a_0438254740_3212880686_init();
    work_a_0056059633_2372691052_init();


    xsi_register_tops("work_a_0056059633_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");

    return xsi_run_simulation(argc, argv);

}
