import 'package:flutter/material.dart';

class LockScreen extends StatelessWidget {
  LockScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // 배경색을 조정하세요.
        backgroundColor: Color(0xFFaedefc),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 60), // 빈 공간을 추가
              Container(
                width: 340,
                height: 320, // 이미지와 텍스트를 모두 포함할 수 있도록 높이를 조정했습니다.
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  border: Border.all(color: const Color(0x33ffffff), width: 2),
                  color: const Color(0xfffff6f6),
                ),
                child: Column(
                  // 세로로 위젯을 나열하기 위해 Column 위젯을 사용합니다.
                  children: <Widget>[
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(40), // 이미지 모서리를 둥글게 만듭니다.
                      child: SizedBox(
                        width: 320, // 이미지의 크기를 조정합니다.
                        height: 200, // 이미지의 높이를 조정합니다.
                        child: Image.asset(
                          'asset/img/img1.png', // 이미지 파일의 정확한 경로를 지정합니다.
                          fit: BoxFit
                              .contain, // 이미지가 SizedBox 안에서 비율을 유지하면서 전체적으로 보이도록 합니다.
                        ),
                      ),
                    ),
                    SizedBox(height: 20), // 이미지와 텍스트 사이의 간격을 만듭니다.
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            style: TextStyle(
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Poppins",
                              fontStyle: FontStyle.normal,
                              fontSize: 28.0,
                            ),
                            text: "오래 된 오토바이 한대가 해변에 ",
                          ),
                          TextSpan(
                            style: TextStyle(
                              color: const Color(0xff56b8f6),
                              fontWeight: FontWeight.w800,
                              fontFamily: "Poppins",
                              fontStyle: FontStyle.normal,
                              fontSize: 28.0,
                            ),
                            text: "주차",
                          ),
                          TextSpan(
                            style: TextStyle(
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Poppins",
                              fontStyle: FontStyle.normal,
                              fontSize: 28.0,
                            ),
                            text: "되어 있다.",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20), // Add space between text and buttons
              SizedBox(
                width: 330,
                height: 70,
                child: Text(
                  "다음 중 어느 단어로 \n 바꿔 넣을 수 있을까요?",
                  style: const TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w800,
                    fontFamily: "Poppins",
                    fontStyle: FontStyle.normal,
                    fontSize: 32.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 330,
                height: 65,
                child: ElevatedButton(
                  onPressed: () {
                    // 버튼을 눌렀을 때 실행할 기능 정의
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    // 크기 제한을 맞추기 위해 패딩을 0으로 설정
                    padding: EdgeInsets.zero,
                    // 버튼이 정의된 크기에 맞추어질 수 있도록 탭 대상 크기를 최소화
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text('영차',
                      style: TextStyle(fontSize: 12)), // 필요하다면 텍스트의 폰트 크기 조정
                ),
              ),
              SizedBox(height: 10), // Add space between buttons
              SizedBox(
                width: 330,
                height: 65,
                child: ElevatedButton(
                  onPressed: () {
                    // 버튼을 눌렀을 때 실행할 기능 정의
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    // 크기 제한을 맞추기 위해 패딩을 0으로 설정
                    padding: EdgeInsets.zero,
                    // 버튼이 정의된 크기에 맞추어질 수 있도록 탭 대상 크기를 최소화
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text('정차',
                      style: TextStyle(fontSize: 12)), // 필요하다면 텍스트의 폰트 크기 조정
                ),
              ),

              SizedBox(height: 10), // Add space between buttons
              SizedBox(
                width: 330,
                height: 65,
                child: ElevatedButton(
                  onPressed: () {
                    // 버튼을 눌렀을 때 실행할 기능 정의
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    // 크기 제한을 맞추기 위해 패딩을 0으로 설정
                    padding: EdgeInsets.zero,
                    // 버튼이 정의된 크기에 맞추어질 수 있도록 탭 대상 크기를 최소화
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text('다음',
                      style: TextStyle(fontSize: 12)), // 필요하다면 텍스트의 폰트 크기 조정
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
