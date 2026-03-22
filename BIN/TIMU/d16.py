#注释：输入两个整数a、b；
a=int(input("请输入一个整数："))
b=int(input("请输入一个整数："))
#注释：在以下区域中编写代码，实现：输入两个整数a、b，比较a、b的大小，若a不小于b,则输出2a-b,否则输出3b-a。
if a >= b:
    print(2 * a - b)
else:
    print(3 * b - a)
