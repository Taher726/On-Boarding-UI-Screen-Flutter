import 'package:flutter/material.dart';
import "data/data.dart";

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentIndex = 0;
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    pageController!.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 30,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Skip",
                    style: TextStyle(
                      fontFamily: "Gilroy-Bold",
                      fontSize: 20.0,
                      color: Colors.teal
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: pageController,
                itemCount: contents.length,
                onPageChanged: (value){
                  setState(() {
                    currentIndex = value;
                  });
                },
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(contents[index].image, height: 300, width: 300,),
                        Text(
                          contents[index].title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 28.0,
                            color: Colors.teal,
                            fontFamily: "Gilroy-Bold",
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Text(
                          contents[index].discription,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontFamily: "Gilroy-Regular",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      if(currentIndex == contents.length - 1){
                        //Go to next page
                      }
                      pageController!.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal[400],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      child: Text(
                        currentIndex == contents.length - 1 ? "Get Started" : "Next"
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      contents.length,
                          (index) => Dot(index, context),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  AnimatedContainer Dot(int index, BuildContext context){
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      height: 6,
      width: currentIndex == index ? 24 : 6,
      margin: EdgeInsets.only(right: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? Colors.teal[400] : Colors.teal[200],
      ),
    );
  }
}
