### LeetCode 200번 Letter Combinations of a Phone Number

주어진 숫자에 대하여 2부터 9번까지 만들 수 있는 모든 문자 조합을 구하는 문제입니다. 문자는 숫자의 키패드에 있습니다.

---

### DFS를 사용하여 풀이

첫 숫자부터 마지막 숫자까지 탐색해야 합니다. 문자별로 전체 탐색을 수행해야 합니다.

---

1. 첫 번째 문자를 탐색한 후 다음 문자를 찾습니다.
2. 하나의 문자 조합이 완성되는 조건은 탐색하는 문자열의 길이와 주어진 숫자의 길이와 동일해야 합니다.