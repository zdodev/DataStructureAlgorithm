###  Baekjoon 4299번 AFC 윔블던

해를 구할 때 해를 받아두고 원래의 방정식이 복구되는지 판단하는 방법으로 해를 구할 수 있는 문제였습니다.

두 수의 합과 두 수의 차가 주어질 때 두 수를 구하는 문제입니다. 축구 점수 문제로 두 수의 합과 두 수의 차가 존재할 수 없는 수이면 -1을 출력해야 합니다.

방정식을 통해 두 수를 구하고 두 수를 다시 더한 값이 주어진 두수의 합과 동일한지, 두 수를 다시 빼서 두수의 차와 동일한지 판별하면 됩니다. 여기서 작은 수는 음수가 될 수 있으니 (축구에서는 음수 점수가 존재하지 않으므로) 작은 수가 0보다 크거나 같다는 조건이 있어야 합니다.

이렇게 두 수를 구하고 큰 수부터 출력하면 문제를 해결할 수 있습니다.