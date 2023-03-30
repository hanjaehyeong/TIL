# git 용어

## satging이란?
어떤 변경사항이 저장소에 커밋되기 전에, 반드시 거쳐야만 하는 중간단계이다.<br>

현재 수정한 파일을 곧 커밋할 것이라고 표시한 상태이다.<br>
커밋을 하기 위해 git add 명령어로 추가한 파일들이 모여있는 공간<br>


## git에서 staging 하는 법

```
git add (파일 이름)

git add . 또는 git add -A (모든 파일)
```

## commit이란?
git이 코드 변화를 기록하는 것


## git에서 commit 하는 법
```
git commit -m "메모할 내용"
```

## push란?
원격 저장소에 변경된 코드를 업로드하기 위해서 사용한다.

## git에서 push 하는 법
```
git remote add (원격 저장소 이름) (원격 저장소 github URL)
git push (원격 저장소 이름) (브랜치 이름)
```