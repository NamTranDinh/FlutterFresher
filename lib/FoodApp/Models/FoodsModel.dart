class FoodsModel {
  late int idFood;
  late int idCategory = -1;
  late String nameFood;
  late String imgFood;
  late List<String> ingredientList;
  late Duration durationTodo;
  late Complexity complexity;
  late List<String> formula;
  late String describe;

  FoodsModel(
      {required this.idFood,
      required this.idCategory,
      required this.nameFood,
      required this.imgFood,
      required this.ingredientList,
      required this.durationTodo,
      required this.complexity,
      required this.formula,
      required this.describe});
}

enum Complexity { Simple, Medium, Hard }
