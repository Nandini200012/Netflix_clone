import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_application/core/colors/colors.dart';
import 'package:netflix_application/core/constants.dart';
import 'package:netflix_application/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});
  final _widgetList = [const _SmartDownloads(), Section2(), const Section3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: AppBarWidget(
            title: 'Downlolads',
          ),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(10),
            itemBuilder: (ctx, index) => _widgetList[index],
            separatorBuilder: (ctx, index) => const SizedBox(
                  height: 25,
                ),
            itemCount: _widgetList.length));
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});
  final List imageList = [
    "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/ym1dxyOk4jFcSl4Q2zmRrA5BEEN.jpg",
    "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/gPbM0MK8CP8A174rmUwGsADNYKD.jpg",
    "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(children: [
      const Text('Introduicng Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kwhitecolor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          )),
      kheight,
      const Text(
        'We\'ll download a personalized selection of \nmovies and shows for you so there is \nalways something to watch on your\ndevice',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.grey, fontSize: 16),
      ),
      SizedBox(
        width: size.width,
        height: size.width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(.5),
              radius: size.width * .4,
            ),
            DownloadsImageWidget(
              angle: 20,
              imageList: imageList[0],
              margin: const EdgeInsets.only(left: 170,top: 50),
              size: Size(size.width * 0.4, size.width * 0.58),
            ),
            DownloadsImageWidget(
              imageList: imageList[1],
              margin: const EdgeInsets.only(right: 170, top: 50),
              angle: -20,
              size: Size(size.width * 0.4, size.width * 0.58),
            ),
            DownloadsImageWidget(
              imageList: imageList[2],
              margin: const EdgeInsets.only(
                bottom: 35,top: 50
              ),
              radius: 8,
              size: Size(size.width * 0.4, size.width * 0.65),
            )
          ],
        ),
      ),
    ]);
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: kButtonColorBLue,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Set up',
                style: TextStyle(
                    color: kwhitecolor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        kheight,
        MaterialButton(
          color: kButtonColorwhite,
          onPressed: () {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can download',
              style: TextStyle(
                  color: kBlackclolr,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.settings,
          color: kwhitecolor,
        ),
        kwidth,
        Text('Smart Downloads')
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget(
      {super.key,
      required this.imageList,
      this.angle = 0,
      required this.margin,
      required this.size,
      this.radius = 10});

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Container(
          margin: margin,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageList))),
          width: size.width,
          height: size.height,
        ),
      ),
    );
  }
}
