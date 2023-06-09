import 'package:flutter/material.dart';
import 'package:netflix_application/core/colors/colors.dart';
import 'package:netflix_application/core/constants.dart';
import 'package:netflix_application/presentation/home/widgets/custom_button_widget.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
            children: [
              Container(
                width: double.infinity,
                height: 600,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(kMainImage), fit: BoxFit.cover)),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(bottom:10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CustomButtonWidget(
                        icon: Icons.add,
                        title: 'MyList',
                      ),
                      _PlayButton(),
                      const CustomButtonWidget(
                        icon: Icons.info,
                        title: 'Info',
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
  }
   TextButton _PlayButton() {
    return TextButton.icon(
      onPressed: () {},
      style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(kwhitecolor)),
      icon: const Icon(
        Icons.play_arrow,
        size: 30,
        color: kBlackclolr,
      ),
      label: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          'Play',
          style: TextStyle(fontSize: 20, color: kBlackclolr),
        ),
      ),
    );
  }
}