import 'package:flutter/material.dart';
import 'package:learning_app/model/course_model.dart';

import '../../../../constants.dart';
class CourseWidget extends StatelessWidget {
  const CourseWidget({Key? key, required this.courseModel}) : super(key: key);
  final CourseModel courseModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingProfile , vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: kColorBorderHistory, width: 1)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(
                                courseModel.imageCourse),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Text(
                        courseModel.nameCourse,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                            color: kColorDark,
                            fontSize: 15,
                            fontFamily: 'NunitoSan'),
                      ),
                      SizedBox(height: 13,),
                      Text(
                        courseModel.address,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            color: kColorLable,
                            fontSize: 13,
                            fontFamily: 'NunitoSan'),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Ngày tạo đơn : ${courseModel.time}',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            color: kColorLable,
                            fontSize: 13,
                            fontFamily: 'NunitoSan'),
                      ),
                    ],
                  ),
                  courseModel.online ?
                  Row(
                    children: [
                      Container(
                        height: 3,
                        width: 3,
                        decoration: BoxDecoration(
                            color: kColorOnline,
                            shape: BoxShape.circle),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        'Online',
                        style: TextStyle(
                            color: kColorOnline,
                            fontFamily: 'NunitoSan',
                            fontSize: 13,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ) :  Row(
                    children: [
                      Container(
                        height: 3,
                        width: 3,
                        decoration: BoxDecoration(
                            color: kTextColor,
                            shape: BoxShape.circle),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        'Offline',
                        style: TextStyle(
                            color: kTextColor,
                            fontFamily: 'NunitoSan',
                            fontSize: 13,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: kColorBorderHistory,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, bottom: 17),
              child: Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Đã thanh toán',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontSize: 13,
                        fontFamily: 'NunitoSan',
                        color: kColorBlue),
                  ),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: 'Tổng cộng : ',
                            style: TextStyle(
                                color: kColorDark2,
                                fontFamily: 'NunitoSan',
                                fontSize: 13,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400)),
                        TextSpan(
                            text: '${courseModel.price} đ',
                            style: TextStyle(
                                color: kColorDark2,
                                fontFamily: 'NunitoSan',
                                fontSize: 15,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600)),
                      ]))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
