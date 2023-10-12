# **Encoding, Decoding**

**Codable, CordingKey**

**Decodable**과 **Encodable**로 이루어져있는 프로토콜

```swift
struct Song: Codable {
    var title: String
		var kind: String
}
//서버에서 원하는 이름으로 넘겨주지 않을 때 CodingKey를 이용해서 직접 바꿀 수 있다.
    enum CodingKeys: String, CodingKey {
        case title = "Title"
				case kind = "Song_kind"
    }
}
```

---
**Encoding** → data를 JSON으로 바꿔주는 것

```swift
struct Song: Codable {
    var title: String
    var kind: String
}

let younha: Human = .init(name: "Event Horizon", kind: "Rock")

let data = try? JSONEncoder().encode(younha)
```

Encoding을 하고싶다면 **반드시** Codable(Encodable) 프로토콜을 채택해야 한다.

---
**Decoding** → JSON을 data로 바꿔주는 것

```swift
struct Song: Codable {
    var title: String
    var kind: String
}

//서버에서 준 데이터
"title" : "Event Horizon",
"kind"  : "Rock"

let younha = try? JSONDecoder().decode(Song.self, from: data)
```

Decoding을 하고싶다면 **반드시** Codable(Decodable) 프로토콜을 채택해야 한다.

서버에서 넘겨주는 데이터와 Song 구조체의 프로퍼티들이 1:1로 매칭돼야 한다.

만약 서버에서 데이터를 줄 때 Key와 Value가 누락되면 nil이 반환된다.

1. 직접 Decoding 함수를 작성
2. 변수를 Optional로 작성