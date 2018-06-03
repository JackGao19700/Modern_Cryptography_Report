#
# Choose the elliptic curve modulo p = large prime
# and G a point of high order
#
p = next_prime(10^10)
E = EllipticCurve(GF(p), [2011 ,1])
G = E([0, 1])
print G.additive_order()

#
# Encryption and decryption functions
# 
def encrypt_mv_eg(Kpub ,m1 ,m2 ):
    x, y = 0, 0         # temp value
    while ((x == 0) or (y == 0)):
        r = floor(p * random())
        x = (r * Kpub)[0]
        y = (r * Kpub)[1]
    return r*G, m1*x, m2*y
def decrypt_mv_eg (kpri ,enc ):
    x = (kpri * enc[0])[0]
    y = (kpri * enc[0])[1]
    return enc[1] * x^-1, enc [2] * y^-1

#
# Example
#
private_key = 19961019
public_key = private_key * G
decrypt_mv_eg(private_key, encrypt_mv_eg(public_key, 10101, 33333))

# text to number
def encoding(text):
    result = 0
    for c in text :
        result = 256 * result + ord(c)      # bit operation
    return result

# number to text
def decoding(number):
    number = Integer (number)
    result = ''
    for i in number.digits(256):
        result = chr(i) + result
    return result

#
# TABLE for a long text
# 1st column : Decoded and decrypted text ( original message )
# 2nd , 3rd: encoded blocks
# rest : encrypted blocks
#
text = 'This is a long text to be subdivided into blocks'
k = floor(log(p, 256))      # log_256(p), 8 bit
key = 19961019
for i in range(0, len(text), 2*k):
    m1 = encoding(text[i:i+k])
    m2 = encoding(text[i+k:i+2*k])
    enc = encrypt_mv_eg (key*G, m1, m2)
    d1 = decoding(decrypt_mv_eg(key, enc)[0])
    d2 = decoding(decrypt_mv_eg(key, enc)[1])
    print d1 + d2, "\t|", m1, "\t|", m2, "\t|", enc