import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/model/course_model.dart';
import 'package:learning_app/screen/history/componants/widget/categories_history.dart';
import 'package:learning_app/screen/history/componants/widget/cousre_widget.dart';
import 'package:learning_app/screen/history/componants/widget/header_widget.dart';

import '../../../constants.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: kBackgroundColor,
        child: Column(
          children: [
            const HeaderHistory(),
            const SizedBox(height: 37),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: kColorWhite,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CategoriesHistory(),
                    Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: listCourse.length,
                          itemBuilder: (context, index) =>
                              CourseWidget(courseModel: listCourse[index])),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
