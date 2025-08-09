class CategoriesModel {
  final String title;
  final String coursesCount;
  final String iconPath;

  CategoriesModel({
    required this.title,
    required this.coursesCount,
    required this.iconPath,
  });
}

final List<CategoriesModel> categoryList = [
  CategoriesModel(
    title: "Accounting",
    coursesCount: "20 Courses",
    iconPath: "image/ic_explore_categories1.png",
  ),
  CategoriesModel(
    title: "Biology",
    coursesCount: "15 Courses",
    iconPath: "image/ic_explore_categories2.png",
  ),
  CategoriesModel(
    title: "Photography",
    coursesCount: "25 Courses",
    iconPath: "image/ic_explore_categories3.png",
  ),
  CategoriesModel(
    title: "Marketing",
    coursesCount: "18 Courses",
    iconPath: "image/ic_explore_categories4.png",
  ),
  CategoriesModel(
    title: "IT & Software",
    coursesCount: "32 Courses",
    iconPath: "image/ic_explore_categories5.png",
  ),
  CategoriesModel(
    title: "Science",
    coursesCount: "12 Courses",
    iconPath: "image/ic_explore_categories6.png",
  ),
];
