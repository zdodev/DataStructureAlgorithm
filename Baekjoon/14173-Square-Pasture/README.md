### Baekjoon 14173번 Square Pasture

기존의 사각형 농장 2개를 합쳐서 더 큰 정사각형의 농장을 만드려고 할 때, 이 두 농장을 포함할 수 있는 정사각형의 최소 크기를 구하는 문제입니다.

농장을 포함하는 정사각형을 만들기 위해서 다음과 같은 알고리즘이 적용됩니다.

- 두 농장 범위에서 가장 큰 X와 가장 작은 X의 값을 구합니다.
- 두 농장 범위에서 가장 큰 Y와 가장 작은 Y의 값을 구합니다.
- 구 한 두 값의 차를 구합니다.
- 두 차 중에서 더 큰 값이 정사각형의 한 변의 길이가 됩니다.

두 농장을 포함할 수 있는 최소 크기는 두 차 중에서 더 큰 값의 정사각형입니다.

정사각형의 넓이를 구하기 위해 차를 제곱하여 출력하면 문제를 해결할 수 있습니다.

