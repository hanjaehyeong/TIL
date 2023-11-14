# gesture

gesture : 사용자가 화면을 클릭하는 등의 행동을 인식해 반응을 할 수 있게 한다.

SwiftUI 내의 모든 뷰에서 사용이 가능하다

**gesture의 종류**

- Tap
    
    ```swift
    .gesture(
    	TapGesture()
    		.onEnded {
    			// 여기에 누르고 땠을 때의 동작을 정할 수 있다.
    		}
    )
    ```
    
- Drag
    
    ```swift
    .gesture(
    	DragGesture()
    		.onChanged { gesture in
    			// 여기에 드래그 중일 때의 동작을 정할 수 있다.
    		}
    		.onEnded { gesture in
    			// 여기에 드래그가 끝났을 때의 동작을 정할 수 있다.
    		}
    )
    ```
    
- Press
    
    ```swift
    .gesture(
    	LongPressGesture()
    		.updating($press){ gesture in
    			// 누른 시간에 따라 값을 변경할 수 있다.
    		}
    		.onEnded { gesture in
    			// 누르는게 끝났을 때의 동작을 정할 수 있다.
    		}
    	}
    )
    ```
    
- Magnify
    
    MagnificationGesture → MagnifyGesture
    
    ```swift
    .gesture(
    	MagnifyGesture()
    		.updating($scale) { value, gestureState, transaction in
    			// 확대한 범위에 따라 값을 변경 할 수 있다.
    		}
    		.onEnded { gesture in
    			// 확대가 끝났을 때의 동작을 정할 수 있다.
    		}
    )
    ```