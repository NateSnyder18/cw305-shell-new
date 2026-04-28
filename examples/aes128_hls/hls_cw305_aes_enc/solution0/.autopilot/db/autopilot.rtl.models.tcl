set SynModuleInfo {
  {SRCNAME Sbox MODELNAME Sbox RTLNAME AES128Encrypt_Sbox}
  {SRCNAME MixColumns MODELNAME MixColumns RTLNAME AES128Encrypt_MixColumns}
  {SRCNAME AES128Encrypt MODELNAME AES128Encrypt RTLNAME AES128Encrypt IS_TOP 1
    SUBMODULES {
      {MODELNAME AES128Encrypt_data_m_axi RTLNAME AES128Encrypt_data_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME AES128Encrypt_control_s_axi RTLNAME AES128Encrypt_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
