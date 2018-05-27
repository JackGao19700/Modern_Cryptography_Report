#-------------Code from Console-------------

p = random_prime(2^64, 2^63)
q = random_prime(2^64, 2^63)
if p == q:
    # The probability of p == q is very small.
    raise ValueError("bad")
n = p * q
phi_n = (p-1) * (q-1)

e = ZZ.random_element(phi_n)
while gcd(e, phi_n) != 1:
    e = ZZ.random_element(phi_n)
print "e = ", e
#-------------------------------------

bezout = xgcd(e, phi_n); bezout
bezout = xgcd(e, phi_n); bezout
d = Integer(mod(bezout[1], phi_n))
print "d = ", d
print "de mod Phi(n) = ", mod(d*e, phi_n)

public_key = (n, e)
private_key = (p, q, d)

print """
The ASCII Value of "HELLO_WORLD"
+----------------------------------------+
| H   E   L   L   O   W   O   R   L   D  |
| 72  69  76  76  79  87  79  82  76  68 |
+----------------------------------------+
"""

print "---public Key holder ALICE send message to private key holder BOB---\n"
print "ALICE ==> BOB"
   
m = "HELLO, WORLD!"
print "Message is ", m
m = [ord(x) for x in m];
m = ZZ(list(reversed(m)), 100)
print "m = ", m

if m < n:
    print "Length of message is less than N, Cryption can be done..."
else:
    raise "Block is too big"

C = power_mod(m, e, n)
print "The Crypted Message is ", C

M = power_mod(C, d, n)
print "Integer Bob received is", M

M = str(M)
message = ""
i =  0
while i <= len(M)-2:
    tmp = int(M[i] + M[i+1])
    tmp = chr(tmp)    
    message += tmp
    i = i + 2
print "Bob: I received a message read ", message

#-------------End of Code-------------