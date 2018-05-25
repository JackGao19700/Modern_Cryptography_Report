#-*-coding:utf-8-*-

'''
fileName : byg.py
求出25的所有本原根
'''

#与25互素的所有数的集合封装于List ：primeList中
primeList = [1 , 2 , 3 , 4 , 6 , 7 , 8 , 9 , 11 , 12 , 13 , 14 , 16 , 17 , 18 , 19 , 21 , 22 , 23 , 24]

byg = []    #用于存储25本原根的List ：byg 
list = []    #用于存储遍历primeList中元素测试结果的集合

for j in primeList :    #对所有与25互素的数字进行遍历测试     
    for i in range (1 , 21) :    #求出每个数字的1-20次方并mod 25
        list.append (j**i % 25)
    list.sort()            #将集合list进行排序
    if primeList == list :    #比较集合是否与primeList相同，若说明此时的j为25的本原根
        #print list
        #print j
        byg.append (j)    #将本原根j压入byg中
    else :
        pass    #否则，不执行任何操作
    list = []    #初始化list ， 以备下一次迭代

print("25的所有本原根为： " , byg)    #将25的所有本原根组成的集合byg打印出来