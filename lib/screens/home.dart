import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 80,
        centerTitle: true,
        leading: const Icon(Icons.menu),
        title: const Text(
          'Al Hadith',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            width: 22,
            height: 22,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/search.png'),
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                width: size.width,
                height: size.height * 0.4,
                decoration: const ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.00, -1.00),
                    end: Alignment(0, 1),
                    colors: [
                      Color(0xFF19A382),
                      Color(0xFF2BB896),
                      Color(0xFF0E8367),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    'assets/arabic.png',
                    height: size.height * 0.4,
                    width: size.width,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    'assets/union.png',
                    height: size.height * 0.2,
                    width: size.width,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.06,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  width: size.width * 0.8,
                  child: const Text(
                    '“A slave [of Allah] may utter a word without giving it much thought by which he slips into the fire a distance further than that between east and west.”',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Hind Siliguri',
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 4,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
