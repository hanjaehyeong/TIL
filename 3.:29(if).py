# x = 20
# if x > 0:
#     print("양수입니다.")
# print("종료");

# x = -20
# if x > 0:
#     print("양수입니다.")
# else:
#     print("음수입니다.")
# print("종료")

# x = 0
# if x>0:
#     print("양수입니다.")
# elif x<0:
#     print("음수입니다.")
# else:
#     print("zero")
# print("종료")


# num = int(input("정수를 입력하세요 : "))

# if num % 2 == 0:
#     print("짝수입니다.")
# else:
#     print("홀수입니다.")

# print("메뉴판")
# print()
# print("- 비빔밥(7,500원)")
# print("- 제육볶음(8,500원)")
# print("- 삼겹살(12,000원)")
# print("- 국밥(7,000원)")
# print()

# price1 = 7500
# price2 = 8500
# price3 = 12000
# price4 = 7000

# menu = int(input("원하는 메뉴를 고르세요 : "))
# per=int(input("몇인분 주문하시겠습니까? : "))
# if menu == 1:
#     print(f"선택한 메뉴는 비빔밥으로 {price1 * per}원입니다.")
# elif menu == 2:
#     print(f"선택한 메뉴는 제육볶음으로 {price2 * per}원입니다.")
# elif menu == 3:
#     print(f"선택한 메뉴는 삼겹살로 {price3 * per}원입니다.")
# else:
#     print(f"선택한 메뉴는 국밥으로 {price4 * per}원입니다.")

# from random import *

# x = randint(1, 10)
# y = int(input("1부터 10까지 숫자를 입력하세요 : "))

# if x == y:
#     print("맞췄습니다.")
# elif x > y:
#     print(f"땡!! {y}보다 큽니다.")
# elif x < y:
#     print(f"땡!! {y}보다 작습니다.")

# print("--<<컴퓨터와 가위바위보 게임하기>>--")
# print("1. 가위 2. 바위 3. 보")
# y = int(input("1, 2, 3 중에 선택하세요 : "))

# from random import *
# x = randint(1, 3)

# if (y == 1 and x == 2) or (y == 2 and x == 3) or (y == 3 and x == 1):
#     print(f"당신이 졌습니다 컴퓨터는 {x}를 냈습니다.")
# elif (y == 1 and x == 3) or (y == 2 and x == 1) or (y == 3 and x == 2):
#     print(f"당신이 이겼습니다 컴퓨터는 {x}를 냈습니다.")
# else:
#     print("비겼습니다")

money = 10000
print("--<<은행 프로그램>>--")
print("A. 예금 B. 출금 C. 잔고 확인")
print()
x = input("원하시는 메뉴를 선택하세요 : ")
if x == 'A' or x == 'a':
    y = int(input("얼마를 입금하시겠습니까? : "))
    print(f"현재 잔액 : {money+y}")
elif x == 'B' or x == 'b':
    y = int(input("얼마를 출금하시겠습니까? : "))
    if money > y:
        print(f"현재 잔액 : {money-y}")
    else:
        print("삑! 잔액부족입니다.")
elif x == 'C' or x == 'c':
    print(f"현재 잔액 : {money}")
else:
    print("잘못된 접근입니다")
