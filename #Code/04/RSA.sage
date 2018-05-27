#-------------Code from Console-------------

p = random_prime(2^32, 2^31)
q = random_prime(2^32, 2^31)
if p == q:
    # The probability of p == q is very small.
    raise ValueError("bad")
n = p * q
phi_n = (p-1) * (q-1)
if phi_n != euler_phi(n):
    # Just for checking.
    raise ValueError("Bad Generator of prime number.")

e = ZZ.random_element(phi_n)
while gcd(e, phi_n) != 1:
    e = ZZ.random_element(phi_n)
print e
#-------------------------------------

bezout = xgcd(e, phi_n); bezout
bezout = xgcd(e, phi_n); bezout
d = Integer(mod(bezout[1], phi_n))
mod(d*e, phi_n)
public_key = (n, e)
private_key = (p, q, d)

print """
The ASCII Value of "HELLO_WORLD"
+--------------------------------------------+
| H   E   L   L   O   _   W   O   R   L   D  |
| 72  69  76  76  79  95  87  79  82  76  68 |
+--------------------------------------------+
"""

m = "HELLO_WORLD"
m
m = [ord(x) for x in m];
m
m = ZZ(list(reversed(m)), 100); m

print "public Key holder send message to private key holder"

C = power_mod(m, e, n)
M = power_mod(C, d, n)
M == m
#-------------End of Code-------------