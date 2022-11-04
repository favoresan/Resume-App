class Project {
  final String title;
  final String desc;
  final String link;
  Project({required this.title, required this.desc, required this.link});
}

List<Project> projectList = [
  Project(
      title: 'NewsWatch',
      desc:
          'An application which will display news articles. User can browse news articles through various categories. App will enable user to view news details and images. Users can also bookmark any news article for future use.',
      link: 'https://github.com/favoresan/NewsWatch'),
  Project(
      title: 'Study App',
      desc:
          'Educational learning app with features such as Knowledge augmentation, tailored learning experiences, access to online study material, ease of communication.\nComing soon.',
      link: 'https://github.com/favoresan/NewsWatch/StudyApp'),
  Project(
    title: 'BMI Calculator',
    desc:
        'BMI Calculator is an app that allows you to monitor BMI and percentage of fat in your body. Ideal weight - app calculates the ideal weight you should gain.',
    link: 'https://github.com/favoresan/bmi-calculator',
  ),
];
