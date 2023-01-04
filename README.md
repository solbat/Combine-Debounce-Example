## Combine Debounce Example

### `Combine`의 `Debounce`를 활용하여 `UISearchTextField` 입력에 대해 1초 대기 후 반응하도록 구현

- `UISearchTextField`의 `textDidChangeNotification`에 대한 Publisher 생성
- `debounce`를 활용하여 1초 대기 후 이벤트를 생성하도록 구현
- `filter`를 활용하여 입력 값이 있을 때만 이벤트를 생성하도록 구현
- 이벤트 발생 시 VC에서 이를 구독하여 `UILabel`의 text에 반영

![Simulator Screen Recording - iPhone 14 Pro - 2023-01-04 at 11 43 48](https://user-images.githubusercontent.com/77015330/210488772-77543c1e-a581-446b-9fac-381bc1e43ac9.gif)
