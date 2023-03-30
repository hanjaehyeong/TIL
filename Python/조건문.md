# Python

## f-string
f-string의 모양은 f와 {}을 사용한다. 문자열 맨 앞에 f를 붙여주고, 중괄호 안에 직접 변수 이름이나 출력하고 싶은것을 바로 넣으면 된다.

```
num = 10;
g = 'coffee'

print(f"{num}, {g}")


----------------
10, coffee
```

## if문
***파이썬에서는 else if 대신 elif를 사용한다.***
```
x <> 0
if x>0:
    print("양수입니다.")
elif x<0:
    print("음수입니다.")
else:
    print("zero")
print("종료")


-----------------
음수입니다.
```