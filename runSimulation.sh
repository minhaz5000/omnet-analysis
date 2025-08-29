#!/bin/bash

CONFIGS_TASK_1=(
  "T1_A_Hosts_5"
  "T1_A_Hosts_10"
  "T1_A_Hosts_15"
  "T1_A_Hosts_20"
  "T1_A_Hosts_25"
  "T1_A_Hosts_30"
  "T1_A_Hosts_40"
  "T1_A_Hosts_50"
  
  "T1_B_Load_1s"
  "T1_B_Load_0p5s"
  "T1_B_Load_0p2s"
  "T1_B_Load_0p1s"
  "T1_B_Load_0p05s"
  "T1_B_Load_0p02s"
  "T1_B_Load_0p01s"
  
  "T1_C_cwMin_7"
  "T1_C_cwMin_15"
  "T1_C_cwMin_31"
  "T1_C_cwMin_63"
  "T1_C_cwMin_127"
)

CONFIGS_TASK_2=(
  "T2_A_Hosts10"
  "T2_A_Hosts20"
  "T2_A_Hosts50"
  "T2_A_Hosts100"

  "T2_B_Load_0p1s"
  "T2_B_Load_0p05s"
  "T2_B_Load_0p02s"
  "T2_B_Load_0p01s"

  "T2_C_CW7"
  "T2_C_CW15"
  "T2_C_CW31"
  "T2_C_CW63"
)

CONFIGS_TASK_3=(
  "T3_Baseline"

  "T3_A_Noise_neg110"
  "T3_A_Noise_neg100"
  "T3_A_Noise_neg95"
  "T3_A_Noise_neg90"
  "T3_A_Noise_neg85"

  "T3_B_TxP_20mW"
  "T3_B_TxP_10mW"
  "T3_B_TxP_1mW"
  "T3_B_TxP_0p1mW"
  "T3_B_TxP_0p01mW"

  "T3_C_Sens_neg90"
  "T3_C_Sens_neg85"
  "T3_C_Sens_neg80"
  "T3_C_Sens_neg75"

  "T3_D_Snir_0dB"
  "T3_D_Snir_4dB"
  "T3_D_Snir_8dB"
  "T3_D_Snir_12dB"

  "T3_E_Severe1"
  "T3_E_Severe2"

)

CONFIGS_TASK_4=(
  "T4_WirelessSaturation"
  "T4_WiredSaturation"

  "T4_WirelessSaturation_LowLoad"
  "T4_WirelessSaturation_HighLoad"

  "T4_WiredSaturation_LowLoad"
  "T4_WiredSaturation_HighLoad"
)


# Run Task 1 config
for config in "${CONFIGS_TASK_1[@]}"; do
    echo "Task 1"
    echo "Running simulation for config: $config"
    opp_run -u Cmdenv -n ../../../examples:../:../../:../../../src -l ../../../src/INET omnetpp.ini -c "$config"
done

# Run Task 2 config
for config in "${CONFIGS_TASK_2[@]}"; do
    echo "Task 2"
    echo "Running simulation for config: $config"
    opp_run -u Cmdenv -n ../../../examples:../:../../:../../../src -l ../../../src/INET omnetpp.ini -c "$config"
done

# Run Task 3 config
for config in "${CONFIGS_TASK_3[@]}"; do
    echo "Task 3"
    echo "Running simulation for config: $config"
    opp_run -u Cmdenv -n ../../../examples:../:../../:../../../src -l ../../../src/INET omnetpp.ini -c "$config"
done

# Run Task 4 config
for config in "${CONFIGS_TASK_4[@]}"; do
    echo "Task 4"
    echo "Running simulation for config: $config"
    opp_run -u Cmdenv -n ../../../examples:../:../../:../../../src -l ../../../src/INET omnetpp.ini -c "$config"
done
