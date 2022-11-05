import 'package:resume_app/resources/strings_manager.dart';

class Project {
  final String title;
  final String desc;
  final String link;
  Project({required this.title, required this.desc, required this.link});
}

List<Project> projectList = [
  Project(
      title: AppStrings.newsWatch,
      desc: AppStrings.newsWatchDesc,
      link: 'https://github.com/favoresan/NewsWatch'),
  Project(
      title: AppStrings.sApp,
      desc: AppStrings.sAppDesc,
      link: 'https://github.com/favoresan/StudyApp'),
  Project(
    title: AppStrings.bmiCalc,
    desc: AppStrings.bmiCalcDesc,
    link: 'https://github.com/favoresan/bmi-calculator',
  ),
];
