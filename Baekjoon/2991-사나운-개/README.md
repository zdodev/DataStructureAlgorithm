### 2991번 사나운 개

배달부들이 몇 마리의 개에게 공격을 받는지 구하는 문제입니다.

---

p 시간에 도착했을 때 개가 공격적인지 쉬는 중인지 알아야 합니다. 공격적인 시간과 쉬는 시간을 번갈아 더해가며 구할 수도 있지만 나누기를 통해 빠르게 구할 수 있습니다.

A + B 값으로 배달부가 도착하는 시간을 나눕니다. 그 나머지가 A 값보다 작은지 비교하면 됩니다. 단 나머지가 0일 경우 B 값에 해당하는 경우로 공격 받는 조건은 나머지가 A 보다 작거나 같고 0 보다 커야 합니다.