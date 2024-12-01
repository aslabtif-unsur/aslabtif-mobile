class MakananModel {
  final String idMeal;
  final String strMeal;
  final String strMealThumb;

  MakananModel(
      {required this.idMeal,
      required this.strMeal,
      required this.strMealThumb});

  // Mengkonversi data JSON ke objek Meal
  factory MakananModel.fromJson(Map<String, dynamic> json) {
    return MakananModel(
      idMeal: json['idMeal'],
      strMeal: json['strMeal'],
      strMealThumb: json['strMealThumb'],
    );
  }
}
