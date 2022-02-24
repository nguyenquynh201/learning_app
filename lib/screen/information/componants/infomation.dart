import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:learning_app/constants.dart';
import 'package:learning_app/responsive/responsive_widget.dart';
import 'btn_save.dart';
import 'input_text.dart';
import 'input_text_birthday.dart';
class Information extends StatelessWidget {
  const Information({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context) ?  Container(
      color: kBackgroundColor,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Stack(
            alignment: Alignment.centerLeft,
            children: [
              IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.keyboard_arrow_left,
                    color: kColorDark,
                  )),
              const Center(
                child: Text(
                  'THÔNG TIN CÁ NHÂN',
                  style: TextStyle(
                      fontFamily: 'NunitoSan',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      color: kColorDark,
                      fontSize: 18),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 37,
          ),
          Expanded(
            child: Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              decoration: const BoxDecoration(
                  color: kColorWhite,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Stack(children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                              image: AssetImage('assets/images/quynhh.jpg'),
                              fit: BoxFit.cover),
                          border: Border.all(
                              width: 3, color: kColorWhite.withOpacity(0.7)),
                        ),
                      ),
                      Positioned(
                        bottom: 1,
                        right: 1,
                        child: Container(
                          height: 34,
                          width: 34,
                          decoration: const BoxDecoration(
                              gradient: kColorPrimary, shape: BoxShape.circle),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: SvgPicture.asset(
                              'assets/icons/jam_camera.svg',
                              color: kColorWhite,
                            ),
                          ),
                        ),
                      )
                    ]),
                    const SizedBox(
                      height: 23,
                    ),
                    const InputText(
                      fontSize: 15,
                      text: 'Họ và tên',
                      label: 'Văn Quỳnh',
                    ),
                    InputTextBirthDay(
                      icon: SvgPicture.asset(
                        'assets/icons/calendar.svg',
                        width: 24,
                        height: 24,
                      ),
                      fontSize: 15,
                      label: 'dd/mm/yyyy',
                      text: 'Ngày sinh',

                    ),
                    const InputText(
                      fontSize: 15,
                      text: 'Email',
                      label: 'nguyenquynhqb98@gmail.com',
                    ),
                    const InputText(
                      fontSize: 15,
                      text: 'Số điện thoại',
                      label: '+0763021524',
                    ),
                    Spacer(),
                    const BtnSave(
                      text: 'Save',
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ) : Container(
      color: kBackgroundColor,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Stack(
            alignment: Alignment.centerLeft,
            children: [
              Positioned(
                child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.keyboard_arrow_left,
                      color: kColorDark,
                    )),
              ),
              const Center(
                child: Text(
                  'THÔNG TIN CÁ NHÂN',
                  style: TextStyle(
                      fontFamily: 'NunitoSan',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      color: kColorDark,
                      fontSize: 18),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 37,
          ),
          Container(
            height: MediaQuery
                .of(context)
                .size
                .height,
            decoration: const BoxDecoration(
                color: kColorWhite,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Stack(children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                            image: AssetImage('assets/images/quynhh.jpg'),
                            fit: BoxFit.cover),
                        border: Border.all(
                            width: 3, color: kColorWhite.withOpacity(0.7)),
                      ),
                    ),
                    Positioned(
                      bottom: 1,
                      right: 1,
                      child: Container(
                        height: 34,
                        width: 34,
                        decoration: const BoxDecoration(
                            gradient: kColorPrimary, shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: SvgPicture.asset(
                            'assets/icons/jam_camera.svg',
                            color: kColorWhite,
                          ),
                        ),
                      ),
                    )
                  ]),
                  const SizedBox(
                    height: 23,
                  ),
                  const InputText(
                    fontSize: 15,
                    text: 'Họ và tên',
                    label: 'Văn Quỳnh',
                  ),
                  InputTextBirthDay(
                    icon: SvgPicture.asset(
                      'assets/icons/calendar.svg',
                      width: 24,
                      height: 24,
                    ),
                    fontSize: 15,
                    label: 'dd/mm/yyyy',
                    text: 'Ngày sinh',

                  ),
                  const InputText(
                    fontSize: 15,
                    text: 'Email',
                    label: 'nguyenquynhqb98@gmail.com',
                  ),
                  const InputText(
                    fontSize: 15,
                    text: 'Số điện thoại',
                    label: '+0763021524',
                  ),
                  const SizedBox(
                    height: 140,
                  ),
                  const BtnSave(
                    text: 'Save',
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }


}
