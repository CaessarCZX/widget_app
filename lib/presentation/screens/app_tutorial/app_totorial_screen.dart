import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imgUrl;

  new(this.title, this.caption, this.imgUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
    'Look for a meal',
    'Tempor veniam sit quis duis quis.',
    'assets/images/1.png',
  ),
  SlideInfo(
    'Fast delivery',
    'Aute ad deserunt aute ad.',
    'assets/images/2.png',
  ),
  SlideInfo(
    'Enjoy yout food',
    'Laboris nulla amet reprehenderit velit.',
    'assets/images/3.png',
  ),
];

class AppTutorialScreen extends StatefulWidget {
  const AppTutorialScreen({super.key});

  static const String name = 'app_tutorial_screen';

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageViewController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();
    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;
      if (!endReached && page >= (slides.length - 1.5)) {
        setState(() {
          endReached = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
            physics: BouncingScrollPhysics(),
            children: slides
                .map(
                  (slideData) => _Slide(
                    title: slideData.title,
                    caption: slideData.caption,
                    imgUrl: slideData.imgUrl,
                  ),
                )
                .toList(),
          ),

          //Floating button
          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              onPressed: () => context.pop(),
              child: const Text(
                'Skip',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),

          endReached
              ? Positioned(
                  bottom: 50,
                  right: 30,
                  child: FadeInRight(
                    from: 15,
                    delay: const Duration(seconds: 1),
                    child: FilledButton(
                      onPressed: () => context.pop(),
                      child: const Text('Start'),
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  const _Slide({
    required this.title,
    required this.caption,
    required this.imgUrl,
  });
  final String title;
  final String caption;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: const EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 50),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imgUrl)),
            SizedBox(height: 15),
            Text(title, style: titleStyle),
            SizedBox(height: 10),
            Text(caption, style: captionStyle),
          ],
        ),
      ),
    );
  }
}
