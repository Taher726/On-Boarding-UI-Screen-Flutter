class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({
    required this.image,
    required this.title,
    required this.discription,
  });
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: 'Welcome to Quick Start',
    image: 'assets/flutter.png',
    discription:
    "Embark on a journey of creativity with Flutter development.",
  ),
  UnbordingContent(
    title: 'Hands-On Learning',
    image: 'assets/apps.png',
    discription: "Learn Flutter by coding real-world projects. No coding experience required.",
  ),
  UnbordingContent(
    title: 'Code Playground',
    image: 'assets/together.png',
    discription:
    "Practice coding in a safe environment. Try out Flutter widgets and see results instantly.",
  ),
];