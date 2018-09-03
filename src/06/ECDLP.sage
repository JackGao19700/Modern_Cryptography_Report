q = next_prime(2^256)       # A public integer, should be very big
R = IntegerModRing(q)
a = R(2)
b = R(9)

# check
if R(4*a^3 + 27*b^2) == 0:
    raise ValueError("bad")

E = EllipticCurve(GF(q), [a,b])
G = E([0,3])    # base point, order(G) = 2373

Private_Key_Liupeng = 19961019
Public_Key_Liupeng = Private_Key_Liupeng * G

Private_Key_Zheng = 19970323
Public_Key_Zheng = Private_Key_Zheng * G

print "Liu Peng: I received ", Private_Key_Liupeng * Public_Key_Zheng
print "Zheng   : I received ", Private_Key_Zheng * Public_Key_Liupeng

a = Private_Key_Liupeng * Public_Key_Zheng == Private_Key_Zheng * Public_Key_Liupeng
print "Same? ", a