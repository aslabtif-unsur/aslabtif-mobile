import 'package:aslabtif_travel/const.dart';
import 'package:aslabtif_travel/models/destination_model.dart';
import 'package:aslabtif_travel/widgets/popular_destination.dart';
import 'package:aslabtif_travel/widgets/rekomendasi_destination.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<TravelDestination> popular = listDestination
      .where((element) => element.category == "popular")
      .toList();
  List<TravelDestination> rekomendasi = listDestination
      .where((element) => element.category == "rekomendasi")
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          buildAppBar(),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tempat Populer",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: "NunitoSans",
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                Text(
                  "Lihat Semua",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "NunitoSans",
                    color: blueTextColor,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(bottom: 20, left: 15),
            child: Row(
              children: List.generate(
                popular.length,
                (index) => Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: GestureDetector(
                    onTap: () {},
                    child: PopularDestination(
                      destination: popular[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Rekomendasi Untuk Kamu",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: "NunitoSans",
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                Text(
                  "Lihat Semua",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "NunitoSans",
                    color: blueTextColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: List.generate(
                  rekomendasi.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: GestureDetector(
                      onTap: () {},
                      child: RekomendasiDestination(
                        destination: rekomendasi[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildAppBar() {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              spreadRadius: 5,
              blurRadius: 10,
              offset: Offset(0, 5)),
        ],
      ),
      child: SafeArea(
          child: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 20, left: 15, right: 15),
          child: buildSearchButton(),
        ),
      )),
    );
  }

  Widget buildSearchButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
          color: kButtonColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ]),
      child: const Row(
        children: [
          Icon(Icons.search, color: Colors.white54, size: 28),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              'cari destinasi...',
              style: TextStyle(
                  color: Colors.white54,
                  fontSize: 18,
                  fontFamily: "NunitoSans"),
            ),
          ),
        ],
      ),
    );
  }
}