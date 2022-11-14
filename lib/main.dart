import 'package:flutter/material.dart';
import 'package:p_1/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cafe Moca',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 10, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hai Wisnu',
                          style: primaryTextStyle.copyWith(
                              fontSize: 24, fontWeight: semiBold),
                        ),
                        Text(
                          'waktunya makan!',
                          style: primaryTextStyle.copyWith(
                              fontSize: 10, fontWeight: medium),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.search,
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 30, right: 13),
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    image: DecorationImage(
                      image: AssetImage('assets/map.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_pin),
                      Column(
                        children: [
                          Text(
                            'Alamat pengirimanmu',
                            style: primaryTextStyle.copyWith(
                                fontSize: 13, fontWeight: medium),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            'Jl Ngagel Jaya Wetan no 25, Surabaya',
                            style: primaryTextStyle.copyWith(
                                fontSize: 13, fontWeight: semiBold),
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                      SizedBox(width: 30),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Kategori',
                      style: primaryTextStyle.copyWith(
                          fontSize: 15, fontWeight: semiBold),
                    ),
                    Text(
                      'Lihat Semua',
                      style: secondaryTextStyle.copyWith(
                          fontSize: 12, fontWeight: semiBold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 238, 246, 255),
                          image: DecorationImage(
                            image: AssetImage('assets/minuman.png'),
                            scale: 20,
                            alignment: Alignment.bottomRight,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Minuman',
                            style: primaryTextStyle.copyWith(
                                fontSize: 10, fontWeight: semiBold),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 100,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Color.fromARGB(255, 224, 223, 224),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Makanan',
                            style: primaryTextStyle.copyWith(
                                fontSize: 10, fontWeight: semiBold),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 100,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Color.fromARGB(255, 245, 230, 255)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Snack',
                            style: primaryTextStyle.copyWith(
                                fontSize: 10, fontWeight: semiBold),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 100,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Color.fromARGB(255, 245, 230, 255)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Es Krim',
                            style: primaryTextStyle.copyWith(
                                fontSize: 10, fontWeight: semiBold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
