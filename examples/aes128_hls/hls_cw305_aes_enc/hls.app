<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" top="AES128Encrypt" name="hls_cw305_aes_enc">
    <files>
        <file name="../../../ip_repo/aes128_hls/test/test_aes.cpp" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="../ip_repo/aes128_hls/src/AES_Encrypt.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../ip_repo/aes128_hls/src/Sbox_Composite.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions>
        <solution name="solution0" status=""/>
    </solutions>
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
</AutoPilot:project>

