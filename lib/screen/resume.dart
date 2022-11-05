import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:resume_app/app/app_pref.dart';
import 'package:resume_app/resources/assets_manager.dart';
import 'package:resume_app/resources/color_manager.dart';
import 'package:resume_app/resources/strings_manager.dart';
import 'package:resume_app/resources/ui_parameters.dart';
import 'package:resume_app/resources/values_manager.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:resume_app/model/model.dart';

class Resume extends StatelessWidget {
  Resume({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final AppPreferences _appPreferences = AppPreferences();
  @override
  Widget build(BuildContext context) {
    final query = MediaQuery.of(context);
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      key: _key,
      drawer: Drawer(
        width: query.orientation == Orientation.portrait
            ? query.size.width * 0.8
            : query.size.width * 0.4,
        backgroundColor: customScaffoldColor(context),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: query.orientation == Orientation.portrait
                    ? query.size.height * 0.4
                    : query.size.height * 0.6,
                width: double.infinity,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: customHeaderColor(context),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: customMenuColor(context),
                        radius: query.orientation == Orientation.portrait
                            ? AppSize.s70
                            : AppSize.s50,
                        backgroundImage: const AssetImage(
                          ImageAssets.myPic,
                        ),
                      ),
                      const SizedBox(
                        height: AppSize.s10,
                      ),
                      Text(AppStrings.name, style: theme.displayMedium),
                      const SizedBox(
                        height: AppSize.s5,
                      ),
                      Text(
                        AppStrings.work.tr(),
                        textAlign: TextAlign.center,
                        style: theme.titleSmall,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: AppSize.s10,
                      ),
                      rowDesc(AppStrings.residence.tr(), AppStrings.country,
                          context),
                      const SizedBox(
                        height: AppSize.s10,
                      ),
                      rowDesc(AppStrings.city.tr(), AppStrings.lag, context),
                      const SizedBox(
                        height: AppSize.s10,
                      ),
                      rowDesc(
                          AppStrings.username.tr(), AppStrings.slack, context),
                      const SizedBox(
                        height: AppSize.s15,
                      ),
                      Divider(
                        height: AppSize.s3,
                        color: ColorManager.bodyTextColor,
                      ),
                      const SizedBox(
                        height: AppSize.s15,
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppPadding.p15),
                          child: Text(AppStrings.skills.tr(),
                              style: theme.displayMedium)),
                      const SizedBox(
                        height: AppSize.s30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppPadding.p15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            animatedCircle(
                              0.8,
                              AppStrings.flutter,
                            ),
                            animatedCircle(
                              0.6,
                              AppStrings.firebase,
                            ),
                            animatedCircle(
                              0.65,
                              AppStrings.github,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: AppSize.s25,
                      ),
                      Divider(
                        height: AppSize.s3,
                        color: ColorManager.bodyTextColor,
                      ),
                      const SizedBox(
                        height: AppSize.s25,
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppPadding.p15),
                          child: Text(AppStrings.coding.tr(),
                              style: theme.displayMedium)),
                      const SizedBox(
                        height: AppSize.s20,
                      ),
                      animatedLine(
                        0.7,
                        AppStrings.dart,
                      ),
                      const SizedBox(
                        height: AppSize.s30,
                      ),
                      animatedLine(
                        0.8,
                        AppStrings.html,
                      ),
                      const SizedBox(
                        height: AppSize.s30,
                      ),
                      animatedLine(
                        0.6,
                        AppStrings.css,
                      ),
                      const SizedBox(
                        height: AppSize.s30,
                      ),
                      animatedLine(
                        0.55,
                        AppStrings.javascript,
                      ),
                      const SizedBox(
                        height: AppSize.s20,
                      ),
                      Divider(
                        height: AppSize.s3,
                        color: ColorManager.bodyTextColor,
                      ),
                      const SizedBox(
                        height: AppSize.s20,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: AppMargin.m20),
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppPadding.p20),
                        height: AppSize.s50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(AppSize.s10),
                          ),
                          color: customPrimaryColor(context),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () async {
                                String url = 'https://twitter.com/favorszn';
                                if (await canLaunchUrlString(url)) {
                                  await launchUrlString(
                                    url,
                                    mode: LaunchMode.platformDefault,
                                  );
                                } else {
                                  throw AppStrings.launch.tr();
                                }
                              },
                              child: SvgPicture.asset(
                                IconAssets.twitter,
                                height: AppSize.s30,
                                width: AppSize.s30,
                                color: ColorManager.bodyTextColor,
                              ),
                            ),
                            GestureDetector(
                              onTap: () async {
                                String url = 'https://github.com/favoresan';
                                if (await canLaunchUrlString(url)) {
                                  await launchUrlString(
                                    url,
                                    mode: LaunchMode.platformDefault,
                                  );
                                } else {
                                  throw AppStrings.launch.tr();
                                }
                              },
                              child: SvgPicture.asset(
                                IconAssets.github,
                                height: AppSize.s30,
                                width: AppSize.s30,
                                color: ColorManager.bodyTextColor,
                              ),
                            ),
                            GestureDetector(
                              onTap: () async {
                                String url =
                                    'https://buymeacoffee.com/5vvzvdkvz8N';
                                if (await canLaunchUrlString(url)) {
                                  await launchUrlString(
                                    url,
                                    mode: LaunchMode.platformDefault,
                                  );
                                } else {
                                  throw AppStrings.launch.tr();
                                }
                              },
                              child: SvgPicture.asset(
                                IconAssets.coffee,
                                height: AppSize.s30,
                                width: AppSize.s30,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: AppSize.s10,
                      ),
                      Center(
                        child: TextButton(
                            style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(
                                customPrimaryColor(context),
                              ),
                            ),
                            onPressed: () {
                              _appPreferences.setLanguageChanged();
                              Phoenix.rebirth(context);
                            },
                            child: Text(
                              AppStrings.changeLang.tr(),
                              style: theme.bodySmall,
                            )),
                      ),
                      const SizedBox(
                        height: AppSize.s20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: customScaffoldColor(context),
      appBar: AppBar(
          backgroundColor: customScaffoldColor(context),
          elevation: AppSize.s0,
          leading: IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () {
              _key.currentState!.openDrawer();
            },
            icon: Icon(
              Icons.menu,
              size: AppSize.s30,
              color: customMenuColor(context),
            ),
          )),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p20,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: AppSize.s10,
                ),
                Stack(
                  children: [
                    SizedBox(
                      height: AppSize.s150,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(AppSize.s5),
                        ),
                        child: Image.asset(
                          ImageAssets.background,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      left: AppSize.s10,
                      top: AppSize.s10,
                      child: Text(
                        query.orientation == Orientation.portrait
                            ? AppStrings.welcome1.tr()
                            : AppStrings.welcome2.tr(),
                        style: theme.bodyLarge,
                      ),
                    ),
                    Positioned(
                      bottom: AppSize.s10,
                      left: AppSize.s10,
                      child: Row(
                        children: [
                          // richText(context),
                          AnimatedTextKit(totalRepeatCount: 2, animatedTexts: [
                            TyperAnimatedText(
                              AppStrings.iBuild.tr(),
                              textStyle: theme.titleLarge,
                            ),
                          ]),
                          // richText(context),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: AppSize.s10,
                ),
                Text(
                  AppStrings.abtMe.tr(),
                  style: UiParameters.isDarkMode(context)
                      ? theme.displayLarge
                      : theme.displayLarge?.copyWith(color: Colors.black),
                ),
                const SizedBox(
                  height: AppSize.s15,
                ),
                Text(
                  AppStrings.aboutMe.tr(),
                  textAlign: TextAlign.start,
                  style: UiParameters.isDarkMode(context)
                      ? theme.displaySmall
                      : theme.displaySmall?.copyWith(color: Colors.black),
                ),
                const SizedBox(
                  height: AppSize.s30,
                ),
                Text(
                  AppStrings.myP.tr(),
                  style: UiParameters.isDarkMode(context)
                      ? theme.displayLarge
                      : theme.displayLarge?.copyWith(color: Colors.black),
                ),
                const SizedBox(
                  height: AppSize.s20,
                ),
                ListView.separated(
                    separatorBuilder: (context, _) {
                      return const SizedBox(
                        height: AppSize.s20,
                      );
                    },
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: projectList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppSize.s15, vertical: AppSize.s15),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              AppSize.s10,
                            ),
                          ),
                          color: customPrimaryColor(context),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              projectList[index].title,
                              style: UiParameters.isDarkMode(context)
                                  ? theme.displayMedium
                                  : theme.displayMedium
                                      ?.copyWith(color: Colors.black),
                            ),
                            const SizedBox(
                              height: AppSize.s10,
                            ),
                            Text(
                              projectList[index].desc.tr(),
                              style: theme.titleMedium,
                            ),
                            const SizedBox(
                              height: AppSize.s5,
                            ),
                            TextButton(
                                style: ButtonStyle(
                                  overlayColor: MaterialStateProperty.all(
                                    Colors.transparent,
                                  ),
                                ),
                                onPressed: () async {
                                  String url = projectList[index].link;
                                  if (await canLaunchUrlString(url)) {
                                    await launchUrlString(
                                      url,
                                      mode: LaunchMode.platformDefault,
                                    );
                                  } else {
                                    throw AppStrings.launch.tr();
                                  }
                                },
                                child: Text(
                                  AppStrings.seeMore.tr(),
                                  style: theme.bodySmall,
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

  TweenAnimationBuilder<double> animatedCircle(double percent, String skill) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: AppSize.s0, end: percent),
      duration: const Duration(milliseconds: 800),
      builder: (context, double value, child) => Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: AppSize.s60,
                width: AppSize.s60,
                child: CircularProgressIndicator(
                  strokeWidth: AppSize.s3,
                  value: value,
                  color: ColorManager.secondaryDark,
                  backgroundColor: customScaffoldColor(context),
                ),
              ),
              Positioned(
                top: AppSize.s22,
                left: AppSize.s15,
                child: Text(
                  '${(percent * AppSize.s100).toInt()}%',
                  style: TextStyle(
                      color: UiParameters.isDarkMode(context)
                          ? ColorManager.white
                          : ColorManager.black),
                ),
              )
            ],
          ),
          const SizedBox(
            height: AppSize.s10,
          ),
          Text(
            skill,
            style: UiParameters.isDarkMode(context)
                ? Theme.of(context).textTheme.displayMedium
                : Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(color: ColorManager.black),
          ),
        ],
      ),
    );
  }

  Widget rowDesc(String left, String right, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(left, style: Theme.of(context).textTheme.displaySmall),
          Text(
            right,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }

  TweenAnimationBuilder<double> animatedLine(double percent, String skill) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: AppSize.s0, end: percent),
      duration: const Duration(milliseconds: 800),
      builder: (context, double value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(skill, style: Theme.of(context).textTheme.displaySmall),
                Text(
                  '${(percent * AppSize.s100).toInt()}%',
                  style: TextStyle(
                      color: UiParameters.isDarkMode(context)
                          ? ColorManager.white
                          : ColorManager.black),
                ),
              ],
            ),
            const SizedBox(
              height: AppSize.s5,
            ),
            LinearProgressIndicator(
              value: value,
              minHeight: AppSize.s4,
              backgroundColor: customScaffoldColor(context),
              color: ColorManager.secondaryDark,
            ),
          ],
        ),
      ),
    );
  }
}
