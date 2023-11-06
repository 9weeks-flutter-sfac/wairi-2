import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sface/util/color.dart';
import 'package:sface/view/widget/button/color_button.dart';

// void main() {
//   runApp(AvatarSetup());
// }

class Images {
  final String imagePath;

  Images(this.imagePath);
}

class Hair extends Images {
  Hair(String imagePath) : super(imagePath);
}

class Skin extends Images {
  Skin(String imagePath) : super(imagePath);
}

class Emotion extends Images {
  Emotion(String imagePath) : super(imagePath);
}

class Item extends Images {
  Item(String imagePath) : super(imagePath);
}

class AvatarSetup extends StatefulWidget {
  const AvatarSetup({super.key});

  static const String route = '/avatar';
  @override
  State<AvatarSetup> createState() => _AvatarSetupState();
}

class _AvatarSetupState extends State<AvatarSetup> {
  bool isHairVisible = true;
  bool isSkinVisible = false;
  bool isEmoVisible = false;
  bool isItemVisible = false;

  //버튼 색상변경
  bool isHairButtonSelected = true;
  bool isSkinButtonSelected = false;
  bool isEmoButtonSelected = false;
  bool isItemButtonSelected = false;

  Color selectedColor = Colors.black;

  List<Hair> hairItems = [
    Hair('assets/avatar/Hair/off_hair_1.svg'),
    Hair('assets/avatar/Hair/off_hair_2.svg'),
    Hair('assets/avatar/Hair/off_hair_3.svg'),
    Hair('assets/avatar/Hair/off_hair_4.svg'),
    Hair('assets/avatar/Hair/off_hair_5.svg'),
    Hair('assets/avatar/Hair/off_hair_6.svg'),
    Hair('assets/avatar/Hair/off_hair_7.svg'),
    Hair('assets/avatar/Hair/off_hair_8.svg'),
    Hair('assets/avatar/Hair/off_hair_9.svg'),
    Hair('assets/avatar/Hair/off_hair_10.svg'),
    Hair('assets/avatar/Hair/off_hair_11.svg'),
    Hair('assets/avatar/Hair/off_hair_12.svg'),
    Hair('assets/avatar/Hair/off_hair_13.svg'),
    Hair('assets/avatar/Hair/off_hair_14.svg'),
    Hair('assets/avatar/Hair/off_hair_15.svg'),
    Hair('assets/avatar/Hair/off_hair_16.svg'),
    Hair('assets/avatar/Hair/off_hair_17.svg'),
    Hair('assets/avatar/Hair/off_hair_18.svg'),
    Hair('assets/avatar/Hair/off_hair_19.svg'),
    Hair('assets/avatar/Hair/off_hair_20.svg'),
    Hair('assets/avatar/Hair/off_hair_21.svg'),
    Hair('assets/avatar/Hair/off_hair_22.svg'),
    Hair('assets/avatar/Hair/off_hair_23.svg'),
    Hair('assets/avatar/Hair/off_hair_24.svg'),
  ];
  List<Skin> skinItems = [
    Skin('assets/avatar/Face/on_face_1.svg'),
    Skin('assets/avatar/Face/on_face_2.svg'),
    Skin('assets/avatar/Face/on_face_3.svg'),
    Skin('assets/avatar/Face/on_face_4.svg'),
    Skin('assets/avatar/Face/on_face_5.svg'),
    Skin('assets/avatar/Face/on_face_6.svg'),
    Skin('assets/avatar/Face/on_face_7.svg'),
    Skin('assets/avatar/Face/on_face_8.svg'),
    Skin('assets/avatar/Face/on_face_9.svg'),
  ];
  List<Emotion> emotionItems = [
    Emotion('assets/avatar/Emotion/off_emotion_1.svg'),
    Emotion('assets/avatar/Emotion/off_emotion_2.svg'),
    Emotion('assets/avatar/Emotion/off_emotion_3.svg'),
    Emotion('assets/avatar/Emotion/off_emotion_4.svg'),
    Emotion('assets/avatar/Emotion/off_emotion_5.svg'),
    Emotion('assets/avatar/Emotion/off_emotion_6.svg'),
    Emotion('assets/avatar/Emotion/off_emotion_7.svg'),
    Emotion('assets/avatar/Emotion/off_emotion_8.svg'),
    Emotion('assets/avatar/Emotion/off_emotion_9.svg'),
    Emotion('assets/avatar/Emotion/off_emotion_10.svg'),
    Emotion('assets/avatar/Emotion/off_emotion_11.svg'),
    Emotion('assets/avatar/Emotion/off_emotion_12.svg'),
    Emotion('assets/avatar/Emotion/off_emotion_13.svg'),
    Emotion('assets/avatar/Emotion/off_emotion_14.svg'),
    Emotion('assets/avatar/Emotion/off_emotion_15.svg'),
    Emotion('assets/avatar/Emotion/off_emotion_16.svg'),
    Emotion('assets/avatar/Emotion/off_emotion_17.svg'),
    Emotion('assets/avatar/Emotion/off_emotion_18.svg'),
    Emotion('assets/avatar/Emotion/off_emotion_19.svg'),
    Emotion('assets/avatar/Emotion/off_emotion_20.svg'),
    Emotion('assets/avatar/Emotion/off_emotion_21.svg'),
    Emotion('assets/avatar/Emotion/off_emotion_22.svg'),
    Emotion('assets/avatar/Emotion/off_emotion_23.svg'),
    Emotion('assets/avatar/Emotion/off_emotion_24.svg'),
  ];
  List<Item> itemItems = [
    Item('assets/avatar/Item/off_item_angel.svg'),
    Item('assets/avatar/Item/off_item_beard.svg'),
    Item('assets/avatar/Item/off_item_bone.svg'),
    Item('assets/avatar/Item/off_item_cat.svg'),
    Item('assets/avatar/Item/off_item_devil.svg'),
    Item('assets/avatar/Item/off_item_flower.svg'),
    Item('assets/avatar/Item/off_item_glasses1.svg'),
    Item('assets/avatar/Item/off_item_glasses2.svg'),
    Item('assets/avatar/Item/off_item_graduate.svg'),
    Item('assets/avatar/Item/off_item_hand.svg'),
    Item('assets/avatar/Item/off_item_hat.svg'),
    Item('assets/avatar/Item/off_item_magician.svg'),
    Item('assets/avatar/Item/off_item_mask.svg'),
    Item('assets/avatar/Item/off_item_rabbit.svg'),
    Item('assets/avatar/Item/off_item_ribbon.svg'),
    Item('assets/avatar/Item/off_item_star.svg'),
    Item('assets/avatar/Item/off_item_sunglass.svg'),
    Item('assets/avatar/Item/off_item_tiara.svg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0), color: Colors.white),
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 70),
      width: 370,
      height: 753,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    '아바타 설정',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.left,
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60.0),
              color: AppColor.greyscale10,
            ),
            width: 120,
            height: 120,
            child: SvgPicture.asset(
              'assets/avatar/testavatar.svg',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 2.0,
                          color: isHairButtonSelected
                              ? AppColor.primary80
                              : AppColor.greyscale30,
                        ),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          isHairVisible = true;
                          isSkinVisible = false;
                          isEmoVisible = false;
                          isItemVisible = false;
                          // 텍스트 색상
                          isHairButtonSelected = true;
                          isSkinButtonSelected = false;
                          isEmoButtonSelected = false;
                          isItemButtonSelected = false;
                        });
                      },
                      child: Text(
                        '헤어',
                        style: TextStyle(
                          color: isHairButtonSelected
                              ? AppColor.primary80
                              : AppColor.greyscale30,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 2.0,
                          color: isSkinButtonSelected
                              ? AppColor.primary80
                              : AppColor.greyscale30,
                        ),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          isHairVisible = false;
                          isSkinVisible = true;
                          isEmoVisible = false;
                          isItemVisible = false;
                          // 텍스트 색상
                          isHairButtonSelected = false;
                          isSkinButtonSelected = true;
                          isEmoButtonSelected = false;
                          isItemButtonSelected = false;
                        });
                      },
                      child: Text(
                        '피부',
                        style: TextStyle(
                          color: isSkinButtonSelected
                              ? AppColor.primary80
                              : AppColor.greyscale30,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 2.0,
                          color: isEmoButtonSelected
                              ? AppColor.primary80
                              : AppColor.greyscale30,
                        ),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          isHairVisible = false;
                          isSkinVisible = false;
                          isEmoVisible = true;
                          isItemVisible = false;
                          // 텍스트 색상
                          isHairButtonSelected = false;
                          isSkinButtonSelected = false;
                          isEmoButtonSelected = true;
                          isItemButtonSelected = false;
                        });
                      },
                      child: Text(
                        '표정',
                        style: TextStyle(
                          color: isEmoButtonSelected
                              ? AppColor.primary80
                              : AppColor.greyscale30,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 2.0,
                          color: isItemButtonSelected
                              ? AppColor.primary80
                              : AppColor.greyscale30,
                        ),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          isHairVisible = false;
                          isSkinVisible = false;
                          isEmoVisible = false;
                          isItemVisible = true;
                          // 텍스트 색상
                          isHairButtonSelected = false;
                          isSkinButtonSelected = false;
                          isEmoButtonSelected = false;
                          isItemButtonSelected = true;
                        });
                      },
                      child: Text(
                        '아이템',
                        style: TextStyle(
                          color: isItemButtonSelected
                              ? AppColor.primary80
                              : AppColor.greyscale30,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: isHairVisible, // 헤어 버튼이 선택된 경우에만 보이도록
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ColorButton(
                        color: Colors.black,
                        isSelected: selectedColor == Colors.black,
                        onPressed: () {
                          setState(() {
                            selectedColor = Colors.black;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: ColorButton(
                        color: AppColor.greyscale30,
                        isSelected: selectedColor == AppColor.greyscale30,
                        onPressed: () {
                          setState(() {
                            selectedColor = AppColor.greyscale30;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: ColorButton(
                        color: Color(0xFF925319),
                        isSelected: selectedColor == Color(0xFF925319),
                        onPressed: () {
                          setState(() {
                            selectedColor = Color(0xFF925319);
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: ColorButton(
                        color: Color(0xFF6B4D20),
                        isSelected: selectedColor == Color(0xFF6B4D20),
                        onPressed: () {
                          setState(() {
                            selectedColor = Color(0xFF6B4D20);
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: ColorButton(
                        color: Color(0xFFEDD0AD),
                        isSelected: selectedColor == Color(0xFFEDD0AD),
                        onPressed: () {
                          setState(() {
                            selectedColor = Color(0xFFEDD0AD);
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: ColorButton(
                        color: AppColor.primary80,
                        isSelected: selectedColor == AppColor.primary80,
                        onPressed: () {
                          setState(() {
                            selectedColor = AppColor.primary80;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: ColorButton(
                        color: Color(0xFFFF7777),
                        isSelected: selectedColor == Color(0xFFFF7777),
                        onPressed: () {
                          setState(() {
                            selectedColor = Color(0xFFFF7777);
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: ColorButton(
                        color: Color(0xFFB33CDD),
                        isSelected: selectedColor == Color(0xFFB33CDD),
                        onPressed: () {
                          setState(() {
                            selectedColor = Color(0xFFB33CDD);
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: AppColor.greyscale5,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemCount: isHairVisible
                      ? hairItems.length
                      : isSkinVisible
                          ? skinItems.length
                          : isEmoVisible
                              ? emotionItems.length
                              : isItemVisible
                                  ? itemItems.length
                                  : 0,
                  itemBuilder: (context, index) {
                    String imagePath = '';
                    if (isHairVisible) {
                      imagePath = hairItems[index].imagePath;
                    } else if (isSkinVisible) {
                      imagePath = skinItems[index].imagePath;
                    } else if (isEmoVisible) {
                      imagePath = emotionItems[index].imagePath;
                    } else if (isItemVisible) {
                      imagePath = itemItems[index].imagePath;
                    }
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.greyscale0,
                      ),
                      child: SvgPicture.asset(
                        imagePath,
                        color: selectedColor,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    // 여기에 이메일을 사용하여 비밀번호 찾기 로직을 추가하세요.
                    // findPassword 함수를 호출하거나 원하는 방식으로 구현하세요.
                  },
                  style: ElevatedButton.styleFrom(
                    maximumSize: Size(165, 40),
                    backgroundColor: AppColor.primary5, // 배경색
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 50.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), // Radius
                      side: BorderSide(color: AppColor.primary40, width: 1.0),
                    ),
                  ),
                  child: const Text(
                    '초기화',
                    style: TextStyle(
                      color: AppColor.primary40,
                      fontSize: 18.0,
                      fontFamily: 'Pretendard', // 폰트
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  maximumSize: Size(165, 40),
                  backgroundColor: AppColor.primary80, // 배경색
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 45.0), // Padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0), // Radius
                  ),
                ),
                child: const Text(
                  '저장하기',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Pretendard',
                    color: Colors.white, // 폰트
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
