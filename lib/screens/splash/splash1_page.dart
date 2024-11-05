import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Splash1Page extends StatefulWidget {
  const Splash1Page({super.key});

  @override
  State<Splash1Page> createState() => _Splash1PageState();
}

class _Splash1PageState extends State<Splash1Page> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 140,
              ),
              Image.asset('assets/images/shoe1.png'),
              const Spacer(),
              Text(
                'Start Journey',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'With Nike',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Smart, Gorgeous & Fashionable',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
              ),
              Text(
                'Collection',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      SmoothPageIndicator(
                        controller: _pageController,
                        count: 3,
                        effect: ExpandingDotsEffect(
                          activeDotColor: Theme.of(context).colorScheme.primary,
                          dotWidth: 20,
                          dotHeight: 8,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
