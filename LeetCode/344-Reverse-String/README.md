### LeetCode 344번 Reverse String

문자열을 뒤집는 문제입니다. 입력은 문자 배열로 주어집니다. 반환 값 없이 입력 인자의 순서를 뒤집어야 하며 추가적인 배열을 생성해서는 안 됩니다.

---

### 투 포인터를 이용한 스왑

배열 양 끝을 가리키는 인덱스 변수를 생성합니다. 인덱스를 줄여가면서 각 인덱스에 있는 문자를 교환하면 됩니다.

1. left, right 인덱스를 생성합니다.
2. left, right 인덱스의 값을 교환합니다.
3. left 인덱스는 1을 증가시키고, right 인덱스는 1을 감소시킵니다.
4. left 인덱스가 right 인덱스보다 크거나 같을 때까지 반복합니다.

### Swift 라이브러리 사용

배열의 reverse() 메서드를 사용합니다. 현재 배열 공간에서 배열의 요소를 뒤집어줍니다. O(n) 복잡도 안에 해결할 수 있습니다.