import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_tracker/misc/colors.dart';

import '../cubit/app_cubit.dart';
import '../widgets/app_large_text.dart';
import '../widgets/app_text.dart';
import '../widgets/response_button.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List images = [
    'welcome-one1.jpg',
    'welcome-two2.jpg',
    'welcome-three3.jpg'
  ];

  List texts = [
    'Trips',
    'Guidance',
    'Awesome'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('img/${images[index]}'),
                fit: BoxFit.cover
              )
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: texts[index]),
                      const AppText(
                        text: 'Mountain',
                        size: 30
                      ),
                      const SizedBox(height: 20,),
                      SizedBox(
                        width: 250,
                          child: AppText(
                            text: 'Mountain hikes give you an incredible sense of freedom along with endurance text',
                            size: 16,
                            color: AppColors.textColor1
                          ),
                      ),
                      const SizedBox(height: 40,),
                      GestureDetector(
                        onTap:() {
                          BlocProvider.of<AppCubits>(context).getData();
                        },
                        child: SizedBox(
                          width: 200,
                          child: Row(
                            children: const [
                               ResponseButton(width: 100)
                            ],
                          )
                        )
                      )
                    ],
                  ),
                  Column(
                    children: List.generate(3, (indexDots) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 4),
                        width: 8,
                        height: index == indexDots ? 25 : 8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: index == indexDots
                                ? AppColors.textColor1
                                : AppColors.textColor1.withOpacity(0.3)),
                      );
                    }),
                  )
                ],
              )
            )
          );
        },
      ),
    );
  }
}