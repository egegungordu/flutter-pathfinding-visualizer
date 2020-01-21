import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionPage extends StatelessWidget {
  IntroductionPage({this.onDone});
  final Function onDone;
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Hey!",
          body: "This app visualizes different pathfinding algorithms. Some of them find the shortest path, while others trade off speed for path length.",
          image: Center(
            child: Image.network("https://domaine.com/image.png", height: 175.0),
          ),
        ),
        PageViewModel(
          title: "Learn the tools",
          body: "To draw walls, tap the brush button and drag your finger on the grid.",
          image: Center(
            child: Image.network("https://domaine.com/image.png", height: 175.0),
          ),
        ),
        PageViewModel(
          title: "Learn the tools",
          body: "Long press drawing tool to reveal other brush types such as start and finish node.",
          image: Center(
            child: Image.network("https://domaine.com/image.png", height: 175.0),
          ),
        ),
        PageViewModel(
          title: "Learn the tools",
          body: "To erase walls individually, tap the erase button. There's also a button for clearing the whole board.",
          image: Center(
            child: Image.network("https://domaine.com/image.png", height: 175.0),
          ),
        ),
        PageViewModel(
          title: "Learn the tools",
          body: "To pan around and zoom, tap the pan button.",
          image: Center(
            child: Image.network("https://domaine.com/image.png", height: 175.0),
          ),
        ),
        PageViewModel(
          title: "Visualize!",
          body: "Tap the visualize button and watch the path go crazy! Long press the visualize button to reveal other algorithms.",
          image: Center(
            child: Image.network("https://domaine.com/image.png", height: 175.0),
          ),
        ),
        PageViewModel(
          title: "Generate!",
          body: "Tap the generate button and let the algorithm do its thing! Long press the generate button to reveal other algorithms.",
          image: Center(
            child: Image.network("https://domaine.com/image.png", height: 175.0),
          ),
        ),
        
      ],
      onDone: () {
        onDone();
      },
      showSkipButton: false,
      next: const Icon(Icons.navigate_next),
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: DotsDecorator(
        size: const Size.square(10.0),
        activeSize: const Size(15.0, 10.0),
        activeColor: Theme.of(context).accentColor,
        color: Colors.black26,
        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0)
        )
      ),
    );
  }
}