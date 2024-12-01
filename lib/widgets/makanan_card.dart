import 'package:aslabtif_travel/models/makanan_model.dart';
import 'package:flutter/material.dart';

class MakananCard extends StatelessWidget {
  final MakananModel makananModel;

  const MakananCard({super.key, required this.makananModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      elevation: 20,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: ListTile(
          leading: Image.network(makananModel.strMealThumb),
          title: Text(
            makananModel.strMeal,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
