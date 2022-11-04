import 'package:flutter/material.dart';
import 'package:resume_app/resources/color_manager.dart';
import 'package:resume_app/resources/strings_manager.dart';
import 'package:resume_app/resources/values_manager.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'model.dart';
import 'package:url_launcher/url_launcher.dart';

class Resume extends StatelessWidget {
  Resume({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: Drawer(
          width: 350,
          backgroundColor: ColorManager.bgColor,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 240,
                  width: double.infinity,
                  child: DrawerHeader(
                    decoration: BoxDecoration(
                      color: ColorManager.darkColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage(
                            'assets/images/myPic.jpg',
                          ),
                        ),
                        SizedBox(
                          height: AppSize.s10,
                        ),
                        Text(
                          'Esan Favour',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        SizedBox(
                          height: AppSize.s5,
                        ),
                        Text(
                          'Flutter Developer',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: AppSize.s10,
                          ),
                          rowDesc('Residence:', 'Nigeria', context),
                          SizedBox(
                            height: AppSize.s10,
                          ),
                          rowDesc('City:', 'Lagos', context),
                          SizedBox(
                            height: AppSize.s10,
                          ),
                          rowDesc('Username:', '@favoresan', context),
                          SizedBox(
                            height: AppSize.s30,
                          ),
                          Text(
                            'Skills',
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                          SizedBox(
                            height: AppSize.s30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              animatedCircle(
                                0.8,
                                'Flutter',
                              ),
                              animatedCircle(
                                0.6,
                                'Firebase',
                              ),
                              animatedCircle(
                                0.65,
                                'Github',
                              ),
                            ],
                          ),
                          SizedBox(
                            height: AppSize.s50,
                          ),
                          Text(
                            AppStrings.coding,
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                          SizedBox(
                            height: AppSize.s20,
                          ),
                          animatedLine(
                            0.7,
                            'Dart',
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          animatedLine(
                            0.9,
                            'HTML',
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          animatedLine(
                            0.62,
                            'CSS',
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          animatedLine(
                            0.5,
                            'JavaScript',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 30,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              color: ColorManager.primary,
                            ),
                            child: Placeholder(),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
      backgroundColor: ColorManager.bgColor,
      appBar: AppBar(
          backgroundColor: ColorManager.bgColor,
          elevation: AppSize.s0,
          leading: GestureDetector(
            onTap: () {
              _key.currentState!.openDrawer();
            },
            child: Icon(
              Icons.menu,
              color: ColorManager.white,
            ),
          )),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppPadding.p20,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    SizedBox(
                      height: 150,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(AppSize.s5),
                        ),
                        child: Image.asset(
                          'assets/images/background.JPG',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 18,
                      child: Text(
                        'Welcome to my\nportfolio!',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Row(
                        children: [
                          // richText(context),
                          AnimatedTextKit(totalRepeatCount: 2, animatedTexts: [
                            TyperAnimatedText(
                              'I build responsive mobile apps.',
                              textStyle: Theme.of(context).textTheme.titleLarge,
                            ),
                          ]),
                          // richText(context),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'About Me',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(
                  height: AppSize.s15,
                ),
                Text(
                  AppStrings.aboutMe,
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                SizedBox(
                  height: AppSize.s30,
                ),
                Text(
                  AppStrings.myP,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(
                  height: AppSize.s20,
                ),
                ListView.separated(
                    separatorBuilder: (context, _) {
                      return SizedBox(
                        height: 20,
                      );
                    },
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: projectList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppSize.s15, vertical: AppSize.s15),
                        height: 220,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              AppSize.s10,
                            ),
                          ),
                          color: ColorManager.primary,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              projectList[index].title,
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                            SizedBox(
                              height: AppSize.s10,
                            ),
                            Text(
                              projectList[index].desc,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            SizedBox(
                              height: AppSize.s5,
                            ),
                            TextButton(
                                onPressed: () async {
                                  String url = projectList[index].link;
                                  if (await canLaunchUrlString(url)) {
                                    await launchUrlString(
                                      url,
                                      mode: LaunchMode.platformDefault,
                                    );
                                  } else {
                                    print(
                                      'couldnt launch',
                                    );
                                  }
                                },
                                child: Text(
                                  'See More >>',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ))
                          ],
                        ),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text richText(BuildContext context) {
    return Text.rich(
      TextSpan(text: '<', children: [
        TextSpan(
          text: 'flutter',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        TextSpan(
          text: '>',
        ),
      ]),
    );
  }

  TweenAnimationBuilder<double> animatedCircle(double percent, String skill) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: percent),
      duration: Duration(milliseconds: 800),
      builder: (context, double value, child) => Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 60,
                width: 60,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  value: value,
                  color: ColorManager.secondary,
                  backgroundColor: ColorManager.bgColor,
                ),
              ),
              Positioned(
                top: 22,
                left: 15,
                child: Text(
                  (percent * 100).toInt().toString() + '%',
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            skill,
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ],
      ),
    );
  }

  Widget rowDesc(String left, String right, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          left,
          style: Theme.of(context).textTheme.displaySmall,
        ),
        Text(
          right,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }

  TweenAnimationBuilder<double> animatedLine(double percent, String skill) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: percent),
      duration: Duration(milliseconds: 800),
      builder: (context, double value, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                skill,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Text(
                (percent * 100).toInt().toString() + '%',
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          LinearProgressIndicator(
            value: value,
            minHeight: 4,
            backgroundColor: ColorManager.bgColor,
            color: ColorManager.secondary,
          ),
        ],
      ),
    );
  }
}

//ClipRRect(
//                 borderRadius: const BorderRadius.all(Radius.circular(100,),),
//                 child: Image.asset(
//                   'assets/images/photo.jpg',
//                   width: 200,
//                   height: 200,
//                   fit: BoxFit.cover,
//                 ),
//               ),
