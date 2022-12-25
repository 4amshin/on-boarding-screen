class OnBoard {
  final String? bgAsset;
  final String? text;

  OnBoard({
    required this.bgAsset,
    required this.text,
  });
}

List<OnBoard> onBoarding = [
  OnBoard(
    bgAsset: 'assets/bg/1.jpg',
    text: "First Screen",
  ),
  OnBoard(
    bgAsset: 'assets/bg/2.jpg',
    text: "Second Screen",
  ),
  OnBoard(
    bgAsset: 'assets/bg/3.jpg',
    text: "Third Screen",
  ),
];
