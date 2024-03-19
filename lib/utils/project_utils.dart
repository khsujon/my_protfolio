class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
  });
}

//hobby projects
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/project1.png',
    title: 'Hobby Dummy App',
    subtitle:
        'Lorem ipsum dolor sit amet, consectetur Maecenas molestie mi vel lorem lobortis vestibulum. iculadignissim.',
    androidLink: 'http://www.sample.info/friend#downtown',
  ),
  ProjectUtils(
    image: 'assets/projects/project2.png',
    title: 'Hobby Dummy App',
    subtitle:
        'Lorem ipsum dolor sit amet, consectetur Maecenas molestie mi vel lorem lobortis vestibulum. iculadignissim.',
    iosLink: 'http://www.sample.info/friend#downtown',
  ),
  ProjectUtils(
    image: 'assets/projects/project3.png',
    title: 'Hobby Dummy App',
    subtitle:
        'Lorem ipsum dolor sit amet, consectetur Maecenas molestie mi vel lorem lobortis vestibulum. iculadignissim.',
    androidLink: 'http://www.sample.info/friend#downtown',
  ),
];

//work projects
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/project5.png',
    title: 'Work Dummy App',
    subtitle:
        'Lorem ipsum dolor sit amet, consectetur Maecenas molestie mi vel lorem lobortis vestibulum. iculadignissim.',
    androidLink: 'http://www.sample.info/friend#downtown',
    iosLink: 'http://www.sample.info/friend#downtown',
  ),
  ProjectUtils(
    image: 'assets/projects/project4.png',
    title: 'Work Hobby Dummy App',
    subtitle:
        'Lorem ipsum dolor sit amet, consectetur Maecenas molestie mi vel lorem lobortis vestibulum. iculadignissim.',
    androidLink: 'http://www.sample.info/friend#downtown',
    iosLink: 'http://www.sample.info/friend#downtown',
    webLink: 'http://www.sample.info/friend#downtown',
  ),
  ProjectUtils(
    image: 'assets/projects/project6.png',
    title: 'Work Hobby Dummy App',
    subtitle:
        'Lorem ipsum dolor sit amet, consectetur Maecenas molestie mi vel lorem lobortis vestibulum. iculadignissim.',
    androidLink: 'http://www.sample.info/friend#downtown',
    webLink: 'http://www.sample.info/friend#downtown',
  ),
];
