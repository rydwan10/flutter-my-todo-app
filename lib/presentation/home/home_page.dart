import 'package:flutter/material.dart';
import 'package:my_note_app/presentation/utils/sized_box_helper.dart';
import 'package:my_note_app/theme/custom_theme.dart';

enum EnumTodoSummaryTile {
  done,
  remaining,
  total,
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget tabIndicator(bool isSelected) {
    return Container(
      height: 4,
      width: 25,
      decoration: BoxDecoration(
        color: isSelected ? mainColor : neutralColor50,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }

  Widget todoSummary(Size size) {
    return Container(
      margin: const EdgeInsets.only(top: 45),
      width: size.width,
      height: 100,
      decoration: BoxDecoration(
        color: neutralColor10,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.1),
            spreadRadius: 0,
            blurRadius: 7,
            offset: const Offset(0, 4), // changes position of shadow
            blurStyle: BlurStyle.normal,
          ),
        ],
      ),
      child: Padding(
          padding: const EdgeInsets.only(
            top: 16,
            bottom: 16,
            left: 28,
            right: 28,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              todoSummaryTile(EnumTodoSummaryTile.done, 10),
              todoSummaryTile(EnumTodoSummaryTile.remaining, 20),
              todoSummaryTile(EnumTodoSummaryTile.total, 30),
            ],
          )),
    );
  }

  Widget todoSummaryTile(EnumTodoSummaryTile typeTile, int total) {
    Gradient? bgColorTile;
    String bottomText = "";

    switch (typeTile) {
      case EnumTodoSummaryTile.done:
        bgColorTile = const LinearGradient(
            colors: [Color(0xff87ff99), Color(0xffcef2d7)],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight);
        bottomText = "Done";
        break;
      case EnumTodoSummaryTile.remaining:
        bgColorTile = const LinearGradient(
          colors: [Color(0xffffdb11), Color(0xfffff9ce)],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        );
        bottomText = "Remaining";
        break;
      case EnumTodoSummaryTile.total:
        bgColorTile = const LinearGradient(
          colors: [Color(0xff30b2ff), Color(0xffafe2ff)],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        );
        bottomText = "Total";
        break;
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 10,
          ),
          width: 72,
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            gradient: bgColorTile,
          ),
          child: Align(
              alignment: Alignment.center,
              child: Text(
                total.toString(),
                style: secondaryTextStyle.copyWith(
                  fontSize: fontSizeTextL,
                  fontWeight: FontWeight.w600,
                ),
              )),
        ),
        VerticalSpace(size: 6),
        Text(
          bottomText,
          style: primaryTextStyle.copyWith(
            fontSize: fontSizeTextS,
          ),
        )
      ],
    );
  }

  Widget filterTab() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Today",
                style: primaryTextStyle.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: fontSizeTextL,
                ),
              ),
              VerticalSpace(size: 4),
              tabIndicator(true),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Tomorrow",
                style: primaryTextStyle.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: fontSizeTextL,
                ),
              ),
              VerticalSpace(size: 4),
              tabIndicator(false),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Planned",
                style: primaryTextStyle.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: fontSizeTextL,
                ),
              ),
              VerticalSpace(size: 4),
              tabIndicator(false),
            ],
          )
        ],
      ),
    );
  }

  Widget quoteOfTheDay() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(top: 14),
        child: Text(
          "\"You can do this all day\"",
          style: secondaryTextStyle.copyWith(
            fontSize: fontSizeTextL,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  Widget greetingAndAvatar() {
    return Row(
      children: [
        Expanded(
          child: Text(
            "Good Morning, Rydwan",
            style: secondaryTextStyle.copyWith(
              fontSize: fontSizeHeadingS,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const CircleAvatar(
          radius: 24,
          backgroundImage: NetworkImage(
            "https://avatars.githubusercontent.com/u/52476050?v=4",
          ),
        ),
      ],
    );
  }

  Widget todoTile(String todoTitle, bool isDone) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: neutralColor10,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.1),
            spreadRadius: 0,
            blurRadius: 7,
            offset: const Offset(0, 4), // changes position of shadow
            blurStyle: BlurStyle.normal,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              todoTitle,
              style: primaryTextStyle.copyWith(
                fontSize: fontSizeTextL,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: pageBackgroundColor,
      body: Stack(
        children: [
          Container(
            height: size.height / 3,
            width: size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/backgrounds/bg-home.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  greetingAndAvatar(),
                  quoteOfTheDay(),
                  todoSummary(size),
                  VerticalSpace(size: 26),
                  filterTab(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
