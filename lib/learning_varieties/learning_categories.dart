import 'package:first_project/learning_varieties/data/Learning%20Model.dart';
import 'package:first_project/learning_varieties/lesson_widget.dart';
import 'package:first_project/learning_varieties/presentation/view/learning_feature.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LearningCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

getLearningcategories(BuildContext context, Size mediaQuery) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, top: 40),
          child: Text("Choose a topic to learn..",
              style: GoogleFonts.galindo(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Theme.of(context).textTheme.bodyMedium!.color,
              )),
        ),
        Container(
          width: mediaQuery.width,
          height: mediaQuery.height * 0.15,
          decoration: const BoxDecoration(),
          child: LessonWidget(
            image: "images/animals.jpg",
            lessonName: "Animals",
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => Learning_Feature(myData: animalsData)));
            },
          ),
        ),
        Container(
          width: mediaQuery.width,
          height: mediaQuery.height * 0.15,
          child: LessonWidget(
            image: "images/chats.jpg",
            lessonName: "Chats",
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => Learning_Feature(myData: chatData)));
            },
          ),
        ),
        Container(
          width: mediaQuery.width,
          height: mediaQuery.height * 0.15,
          child: LessonWidget(
            image: "images/clothes_bar.jpg",
            lessonName: "Clothes",
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => Learning_Feature(myData: clothesDate)));
            },
          ),
        ),
        Container(
          width: mediaQuery.width,
          height: mediaQuery.height * 0.15,
          child: LessonWidget(
            image: "images/colors.jpg",
            lessonName: "Colors",
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => Learning_Feature(myData: colorsDate)));
            },
          ),
        ),
        Container(
          width: mediaQuery.width,
          height: mediaQuery.height * 0.15,
          child: LessonWidget(
            image: "images/foods.jpg",
            lessonName: "Food",
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => Learning_Feature(myData: foodDate)));
            },
          ),
        ),
        Container(
          width: mediaQuery.width,
          height: mediaQuery.height * 0.15,
          child: LessonWidget(
            image: "images/family_bar.jpg",
            lessonName: "Family",
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => Learning_Feature(myData: familyData)));
            },
          ),
        ),
        Container(
          width: mediaQuery.width,
          height: mediaQuery.height * 0.15,
          child: LessonWidget(
            image: "images/days3.png",
            lessonName: "Days",
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => Learning_Feature(myData: daysData)));
            },
          ),
        ),
        Container(
          width: mediaQuery.width,
          height: mediaQuery.height * 0.15,
          child: LessonWidget(
            image: "images/questions_bar.jpg",
            lessonName: "Questions",
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => Learning_Feature(myData: questionsData)));
            },
          ),
        ),
        Container(
          width: mediaQuery.width,
          height: mediaQuery.height * 0.15,
          child: LessonWidget(
            image: "images/jobs_bar.jpg",
            lessonName: "Jobs",
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => Learning_Feature(myData: jobsData)));
            },
          ),
        ),
        Container(
          width: mediaQuery.width,
          height: mediaQuery.height * 0.15,
          child: LessonWidget(
            image: "images/letter.jpg",
            lessonName: "Letters",
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => Learning_Feature(myData: letersData)));
            },
          ),
        ),
        Container(
          width: mediaQuery.width,
          height: mediaQuery.height * 0.15,
          child: LessonWidget(
            image: "images/numbers.jpg",
            lessonName: "Numbers",
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => Learning_Feature(myData: numbersData)));
            },
          ),
        ),
        Container(
          width: mediaQuery.width,
          height: mediaQuery.height * 0.15,
          child: LessonWidget(
            image: "images/places.jpg",
            lessonName: "Places",
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => Learning_Feature(myData: placesData)));
            },
          ),
        ),
        Container(
          width: mediaQuery.width,
          height: mediaQuery.height * 0.15,
          child: LessonWidget(
            image: "images/weather_bar.jpg",
            lessonName: "Weather",
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => Learning_Feature(myData: weatherData)));
            },
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    ),
  );
}
