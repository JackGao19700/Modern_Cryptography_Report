en_alphabet = "abcdefghijklmnopqrstuvwxyz"
#
# This function returns true if and only if the character c is an 
# anphabet character
#
def is_alphabetic_char(c):
	return (c.lower() in en_alphabet)
#
# This function converts a single character into its numeric value
#
def char_to_num(c):
	return en_alphabet.index(c.lower())
#
# This function returns the character corresponding to x mod 26
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
