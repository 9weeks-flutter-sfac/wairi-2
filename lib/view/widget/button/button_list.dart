import 'package:flutter/material.dart';
import 'package:sface/util/color.dart';
import 'package:sface/util/typo.dart';

class button_list extends StatelessWidget {
  const button_list({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                width: 73,
                height: 22,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Secondary',
                    style: Typo(color: AppColor.greyscale60).body5_12R,
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: AppColor.greyscale5,
                    textStyle: Typo(color: AppColor.greyscale60).body5_12R,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(8)),
              ElevatedButton(
                onPressed: () {},
                child: Text('Secondary'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.primary80,
                  textStyle: Typo(color: AppColor.greyscale0).body5_12R,
                ),
              ),
              Padding(padding: EdgeInsets.all(8)),
              OutlinedButton(
                onPressed: () {},
                child: Text('Secondary'),
                style: OutlinedButton.styleFrom(
                  backgroundColor: AppColor.primary5,
                  textStyle: Typo(color: AppColor.primary80).body5_12R,
                  side: BorderSide(
                    color: AppColor.primary80,
                    width: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
