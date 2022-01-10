import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:tieuluan/main_screen.dart';


class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Detail(),
    );
  }
}

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: mainColor,
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
                onPressed: (){},
        ),
          title: const Text(
          "Chi tiết sản phẩm",
            style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 15.0),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Iphone 13',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Image.network('https://imgs.viettelstore.vn/Images/Product/ProductImage/dien-thoai/Apple/iPhone%2013%20Pro%20Max/iPhone-13-Pro-Max-2.jpg',
            height: 150.0,
            width: 100.0,
            fit: BoxFit.contain
            ),
          ),
          const SizedBox(height: 20.0),
          const Center(
            child: Text('Giá sản phẩm: 31999000 VNĐ',
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)
            ),
          ),
          const SizedBox(height: 10.0),
          const Center(
            child: Text('Cấu hình sản phẩm:',
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)
            ),
          ),
          const SizedBox(height: 10.0),
          const Center(
            child: Text(
                'Màn hình: 6.7", Super Retina XDR, Camera: 12.0 MP',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Varela',
                    fontSize: 16.0)),
          ),
          const SizedBox(height: 10.0),
          const Center(
            child: Text(
                'CPU: A15 Bionic, Dung lượng: 128 GB',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Varela',
                    fontSize: 16.0)),
          ),
          const SizedBox(height: 10.0),
          const Center(
            child: Text(
                'Giới thiệu sản phẩm:',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Varela',
                    fontSize: 16.0,
                fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 20.0),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              child: const Text('iPhone 13 Pro Max xứng đáng là một chiếc iPhone lớn nhất, mạnh mẽ nhất và có thời lượng pin dài nhất từ trước đến nay sẽ cho bạn trải nghiệm tuyệt vời, từ những tác vụ bình thường cho đến các ứng dụng chuyên nghiệp.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 16.0,
                color: Colors.white
              )),
            ),
          )

        ],
      ),
    );
  }
}


