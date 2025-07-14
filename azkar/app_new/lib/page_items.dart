import 'package:app_new/my_app.dart';
import 'package:app_new/page_data.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageItems extends StatelessWidget {
  const PageItems({super.key, required this.pageData});

  final PageData pageData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(23),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 20, 0),
            child: Container(
              alignment: Alignment(1.1, 0),
              child: Text(
                'Skip',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Image.asset(
              pageData.img!,
              width: 250,
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            pageData.title!,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            textAlign: TextAlign.center,
            pageData.description!,
            style: TextStyle(
              color: Color(0xFF9FA3A9),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: SmoothPageIndicator(
              effect: ColorTransitionEffect(
                activeDotColor: Color(0xFF265AE8),
                dotHeight: 12,
                dotWidth: 12,
                spacing: 8,
              ),
              controller: pageController,
              count: 3,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF265AE8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                minimumSize: Size(335, 60)),
            child: Text(
              'Register',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  minimumSize: Size(335, 60)),
              child: Text(
                'Log in',
                style: TextStyle(
                  color: Color(0xFF265AE8),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
