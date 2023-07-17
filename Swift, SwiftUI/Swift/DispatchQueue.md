# async, sync, serial, concurrent

Sync와 Serial, Async와 Concurrent는 다 다른 개념이다.

<br>
- Async
    - 아이패드, 아이폰, 맥북을 주문한다 했을때 아이패드를 주문(요청)하고난 후, 배송(응답)이 올 때까지 기다리지 않고바로 아이폰, 맥북을 이어 주문할 수 있는 것
    
    작업자1 —-1—-
    
    작업자2 ——2——
    
    작업자3 ——3——
    
<br>
- Concurrent
    - 여러 작업들을 동시에 실행
    
    작업자1  —-1—-
    
    작업자1  ——2——
    
    작업자1  ——3——

<br>
- Serial
    - 하나의 작업이 완료된 후 다음 작업이 진행
    
    작업자1 —-1—-
    
    작업자1        ——2——
    
    작업자1               ——3——
    
<br>
- Sync
    - 아이패드를 주문(요청)하면, 아이패드가 나한테 배달(응답) 올 때까지 아이폰, 맥북은 주문할 수 없음
    
    작업자1 —-1—-
    
    작업자2        ——2——
    
    작업자3              ——3——
    

---

## Serial VS Sync

Sync는 앞 작업과 뒷 작업의 연관성에는 상관이 없다.(**단일 작업**)

Serial은 Queue에 들어온 작업들을 순차적으로 실행

Sync은 앞 작업이 Sync라고 해고 뒷 작업은 Async일 수 있다.

Serial은 이 앞 작업과 뒷 작업을 **순차적**으로 실행시킬지 정하는게 Serial

**Sync는 단일 작업의 특성 중 하나,**

**이런 단일 작업들을 순차적으로 하나씩 실행하는 것이 Serial**

---

```swift
print("start")
DispatchQueue.main.async {
    for _ in 0...10 {
        print("async")
    }
}
for _ in 0...10 {
    print("sync")
}
print("end")

//start
//sync
//sync
//sync
//...
//end
//async
//async
//async
//...
```

sync인 “start”, “sync”, “end”가 먼저 출력이 되고

aync인 “async”가 출력된다.

Serial Queue(Main Queue)는 한번에 하나의 Task만 실행이 가능하기 때문이다.

Serial - sync를 먼저 하고 async를 실행

```swift
//Serial Queue(Main Queue)

--(Sync)--- ----(Sync)---- --(Sync)--- -------(Async)---------
```

---

## Concurrent

작업들을 동시에 실행

**한 번에 여러 개의 Task 실행 가능**

```swift
//Concurrent Queue

--(Sync)---
			 -------(Async)---------
			 ----(Sync)----
						     --(Sync)---
```