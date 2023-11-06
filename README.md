# sface

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

1. FutureBuilder로 가져오던 것들, 전부 Obx로 바꾸어야 함.
   Rxn<List<CatchUpModel>> catchupList2 = Rxn(); 이런 식으로 넣고,

일단 데이터를 가져올 때,
List<CatchUpModel>? catchupList; 이거에 넣고,
새로운 변수를 하나 만든다.
List<CatchUpModel>? newList = List.from(catchupList!);
데이터 가져오는 함수에
catchupList2.value = newList 이렇게 넣어야 한다.

그리고 catchupList2.value == null 일 때는 cathcupList로 데이터를 넣어주고, null이 아닐 때는 catchupList2.value로 데이터를 넣어주면 된다.

catchup 완료
mogakko 진행중
talk 완료
home 미완

역할 분담 소개
시연용 앱
깃허브
회의록
회고록

team7test
team7test@test.coo
123123123
01033453344
