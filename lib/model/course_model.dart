class CourseModel {
  final int id;
  final String nameCourse;
  final String address;
  final String time;
  final String imageCourse;
  final String price;
  final bool online;

  CourseModel(
      {required this.id,
      required this.nameCourse,
      required this.address,
      required this.time,
      required this.price,
      required this.imageCourse,
      required this.online});
}

List<CourseModel> listCourse = [
  CourseModel(
      id: 1,
      nameCourse: 'Toán tư duy',
      address: 'Trung tâm Sparta',
      time: '20/12/2021',
      price: '2.500.000',
      imageCourse: 'assets/images/quynhh.jpg',
      online: true),
  CourseModel(
      id: 2,
      nameCourse: 'Toán tư duy',
      address: 'Trung tâm Sparta',
      time: '20/12/2021',
      price: '2.500.000',
      imageCourse: 'assets/images/quynhh.jpg',
      online: false),
  CourseModel(
      id: 3,
      nameCourse: 'Toán tư duy',
      address: 'Trung tâm Sparta',
      time: '20/12/2021',
      price: '2.500.000',
      imageCourse: 'assets/images/quynhh.jpg',
      online: true),
  CourseModel(
      id: 4,
      nameCourse: 'Toán tư duy',
      address: 'Trung tâm Sparta',
      time: '20/12/2021',
      price: '2.500.000',
      imageCourse: 'assets/images/quynhh.jpg',
      online: false),
  CourseModel(
      id: 5,
      nameCourse: 'Toán tư duy',
      address: 'Trung tâm Sparta',
      time: '20/12/2021',
      price: '2.500.000',
      imageCourse: 'assets/images/quynhh.jpg',
      online: true),
];
