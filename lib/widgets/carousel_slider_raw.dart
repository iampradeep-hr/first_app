import 'dart:async';

import 'package:flutter/material.dart';

// CAROUSEL SLIDER FROM SCRATCH

class CarouselSlider extends StatefulWidget {
  const CarouselSlider({super.key});

  @override
  State<CarouselSlider> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<CarouselSlider> {
  late final PageController _pageController;

  int pageNo = 0;

  final List<String> images = [
    "https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    "https://images.unsplash.com/photo-1609250291996-fdebe6020a8f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    "https://images.unsplash.com/photo-1515955656352-a1fa3ffcd111?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    "https://images.unsplash.com/photo-1584590069631-1c180f90a54c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    "https://images.unsplash.com/photo-1520256862855-398228c41684?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80",
    "https://images.unsplash.com/photo-1539185441755-769473a23570?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80"
  ];

  late final Timer carouselTimer;

  Timer getTimer() {
    return Timer.periodic(const Duration(seconds: 3), (timer) {
      if (pageNo == images.length - 1) {
        pageNo = 0;
      }
      _pageController.animateToPage(pageNo,
          duration: const Duration(seconds: 1), curve: Curves.easeInOut);

      pageNo++;
    });
  }

  @override
  void initState() {
    _pageController = PageController(initialPage: 0, viewportFraction: 0.85);
    carouselTimer = getTimer();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: PageView.builder(
                onPageChanged: (value) {
                  pageNo = value;
                  setState(() {});
                },
                controller: _pageController,
                itemBuilder: (context, index) {
                  return AnimatedBuilder(
                    animation: _pageController,
                    builder: (context, child) {
                      return child!;
                    },
                    child: InkWell(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("$index is shown")));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(
                            right: 4, left: 4, top: 36, bottom: 12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.0),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(images[index]))),
                      ),
                    ),
                  );
                },
                // itemCount: images.length,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  images.length,
                  (index) => Container(
                        margin: const EdgeInsets.all(2.0),
                        child: Icon(
                          Icons.circle,
                          size: 12.0,
                          color: pageNo == index
                              ? Colors.indigoAccent
                              : Colors.grey.shade300,
                        ),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
