# 注释：输入两个大于零的实数a、b;
a=float(input("请输入一个数a:"))
b=float(input("请输入一个数b:"))
#注释：在以下区域中编写代码，实现：判断a除以10的值和b除以20的值，如果两者都小于0.5，则输出2a+3b，否则输出(a+b)÷a。
if a / 10 < 0.5 and b / 20 < 0.5:
    print(2 * a + 3 * b)
else:
    print((a + b) / a)
