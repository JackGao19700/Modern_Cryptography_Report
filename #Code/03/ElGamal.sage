print "User A --Private Key keeper Generate Public Key...\n"
p = 2341
Primitive_root = 7

R = IntegerModRing(2341)

Private_Key = ZZ(1996)
if Private_Key not in range(2, p-2):
    raise ValueError("Bad Private Key")

Public_Key  = R(Primitive_root^Private_Key)

print "Generation of Public Key Success...\n"
print "User B --Encrypting a Message...\n"

m = "HELLO, WORLD!"
print "Message is ", m, "\n"
m = [ord(x) for x in m]
Cipher_Text = []
for i in m:
    k = randint(1, p)
    K = R(Public_Key^k)

    C_1 = R(Primitive_root^k)
    C_2 = R(K*i)
    Cipher_Text.append((C_1, C_2))

print Cipher_Text, "\n"

print "Encryption Success...\n"
print "User A --Received and Decrypting...\n"

Plain_Text = []
for i in Cipher_Text:
    K = R(i[0]^Private_Key)
    M = R(i[1] * K^(-1))
    Plain_Text.append(M)

tmp = [chr(i) for i in Plain_Text]
Received_Message = ""
for i in tmp:
    Received_Message += i
print "Decryption Finished!"

print "Message User A Received is", Received_Message