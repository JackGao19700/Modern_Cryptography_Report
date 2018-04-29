    r"""
    EXAMPLES:
        sage: MILLER_RABIN_TEST(101)
        False
        
        sage: MILLER_RABIN_TEST(592701729979)
        True
    """

def MILLER_RABINTEST(n):
    r"""
    This function implements the miller-Rabin Test.
    It either reutrns "inconclusive" or "composite."
    
    INPUT:
        
        n - positive integer to probabilistically determine the primality of.
       
    OUTPUT:
    
        If the function returns False, then the test was inconclusive.

        If the function returns True, then the test was conclusive and n is composite.
    """
    R = InteferModRing(n)       # object for integers mod n
    # (1) Find integers k, q w/ k >0 and q odd so that (n-1) == 2^k * q
    q = n - 1
    k = 0
    while (1 == (q % 2)):
        k _= 1
        q = q.quo_rem(2)[0]     # q/2 but with result of type Integer
        
