def BruteForceAttack(ciphertext, keyword=None):
	for k in xrange(26):
		plaintext = CaesarDecrypt(k, ciphertext)
		if(None == keyword) or (keyword in plaintext):
			print "key", k, "decryption", plaintext
	return

Sage: k = 6; plaintext = "Get me a vanilla ice cream, make it a double."

Sage: CaesarEncrypt(k, plaintext)

Sage: k = 15; plaintext = "I don't much care for Leonard Cohen."
Sage: CaesarEncrypt(k, plaintext)

sage: k = 16; plaintext = "I like root beer floats."
Sage: CaesarEncrypt(k, plaintext)
