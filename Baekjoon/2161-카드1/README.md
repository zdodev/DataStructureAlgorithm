###  Baekjoon 2161번 카드1

조건에 따라 카드를 버린 순서와 마지막 남은 카드 번호를 구하는 문제입니다.

1. 가장 위 카드를 버린다. -> 가장 위 카드 번호를 따로 생성한 배열(순서대로)에 저장한다.
2. 가장 위 카드를 카드 덱에서 가장 밑으로 넣는다 -> 가장 이 카드 번호를 꺼내서 마지막 인덱스에 저장한다. first -> last
3. 이 과정을 카드 덱에 카드가 1장만 있을 때까지 반복한다.

이러면 배열은 카드를 버린 순서를 가지고 있고 카드 덱에는 마지막 카드를 가지고 있다. 배열과 마지막 카드 번호를 출력하면 문제를 해결할 수 있다.