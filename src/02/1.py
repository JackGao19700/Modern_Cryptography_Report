# in the English alphabet
#
def num_to_char(x):
    return en_alphabet[x % 26]

def CaesarEncrypt(k, plaintext):
    ciphertext = ""
    for j in xrange(len(plaintext)):
        p = plaintext[j]
        if is_alphabetic_char(p):
            x = (k + char_to_num(p)) % 26
            c = num_to_char(x)
        else:
            c = p
        ciphertext += c
    return ciphertext
def CaesarDecrypt(k, ciphertext):
    plaintext = ""
    for j in xrange(len(ciphertext)):
        c = ciphertext[j]
        if is_alphabetic_char(c):
            x = (char_to_num(c) - k) % 26
            p = num_to_char(x)
        else:
            p = c
        plaintext += p
    return plaintext

def BruteForceAttack(ciphertext, keyword=None):
    for k in xrange(26):
        plaintext = CaesarDecrypt(k, ciphertext)
        if(None==keyword) or (keyword in plaintext):
            print "key", k, "decryption", plaintext
    return

"""------------------have a try------------------"""


k = 6; plaintext = "Get me a vanilla ice cream, make it a double." ;
print  CaesarEncrypt(k, plaintext)

k = 15; plaintext = "I don't much care for Leonard Cohen.";
print CaesarEncrypt(k, plaintext)

k = 16; plaintext = "I like root beer floats.";
print CaesarEncrypt(k, plaintext)

"""------------------have a try------------------"""

k = 12; ciphertext = "nduzs ftq buzq oazqe";
print CaesarDecrypt(k, ciphertext)

k =  3; ciphertext = "fdhvdu qhhgv wr orvh zhljkw.";
print CaesarDecrypt(k, ciphertext)

k = 20; ciphertext = "ufgihxm uly numnys.";