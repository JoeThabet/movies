import 'package:flutter/material.dart';
import 'package:movies/Assets/Colors/app_colors.dart';
import 'package:movies/Preferals/movie_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static final String routeName = '/homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.mainBlackColor,
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('Lib/Assets/Images/Available_Now.png'),
        backgroundColor: AppColors.mainBlackColor,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.65,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          AppColors.mainBlackColor.withValues(alpha: 0.5),
                          BlendMode.darken,
                        ),
                        image: AssetImage(movies[index].image),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset('Lib/Assets/Images/Watch_Now.png'),
          ],
        ),
      ),
    );
  }
}
