R = IntegerModRing(2341)
Key_Liu_Peng = 19961019
Y_Liu_Peng = R(7^(Key_Liu_Peng))

Key_Zheng_Mao_Sen = 19970323
Y_Zheng_Mao_Sen = R(7^(Key_Zheng_Mao_Sen))

Key1 = R(Y_Liu_Peng^(Key_Zheng_Mao_Sen))
Key2 = R(Y_Zheng_Mao_Sen^(Key_Liu_Peng))

print Key2 == Key1