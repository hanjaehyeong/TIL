# Process, Thread

- **Process**
    
    운영체제로부터 시스템 자원을 할당받는 작업의 단위
    

각각의 독립된 **메모리 영역(Code, Data, Stack, Heap)**을 할당 받는다.

Process 끼리는 서로의 변수나 자료구조에 대해 절대 접근할 수 없다.

접근하고 싶으면 프로세스간 통신(IPC)를 사용해야 한다.

- **Multi Process**
    
    하나의 프로그램을 여러 개의 프로세스로 구성하여, 각 프로세스마다 하나의 작업씩 처리하도록 하는 것
    

하나의 프로그램에서 일어나는 여러 개의 작업을 프로세스를 여러 개 생성하여 각자 하나씩 처리하도록 하는 것

**Multi Processing의 장점**

- 프로세스 간 서로의 자원에 침투할 수 없다 → 안정성이 높다.

**Multi Processing의 단점**

- 프로세스는 메모리가 모두 독립적이므로 프로세스를 왔다 갔다 하는 과정(Context Switching)에서 CPU의 부담이 커지고 오버헤드가 발생한다.
- 프로세스 간 자원 공유가 어렵다

---

- **Thread**
    
    한 프로세스 내에서 동작되는 여러 실행의 흐름
    

메모리 영역을 독립적으로 할당받지 못한다.

Process의 Code, Data, Heap 영역은 공유하고 Stack 영역만 독립적으로 할당받을 수 있다.

따라서 Thead 끼리는 Heap 영역을 공유하여 같은 자원을 접근할 수 있지만 각자의 Stack 영역은 서로 접근할 수 없다.

- **Multi Thread**
    
    하나의 프로그램을 여러 개의 쓰레드로 구성하여, 각 쓰레드마다 하나의 작업씩 처리하도록 하는 것
    

많은 운영체제가 멀티 프로세싱을 지원하지만 멀티 쓰레드를 기본으로 한다.

**Multi Thread의 장점**

- Code, Data, Heap 영역을 공유하므로 Process를 왔다 갔다 하는 과정(Context Switching)이 빠름
- Process를 생성하여 자원을 할당하는 것이 아니므로 생성/종료 시간도 Process보다 빠름
- 통신 방법이 훨씬 간단함

**Multi Thread의 단점**

- 자원 공유의 문제가 생기므로 설계가 까다로움
- 독립적이지 않아 하나의 Thread에서 문제가 발생 시 전체 Thread가 영향을 받음