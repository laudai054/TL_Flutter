import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color mainColor = const Color(0xFF4DD0E1);
Color backgroundColor = const Color(0xFF006064);

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var txt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Text(
          "Quản lí thiết bị di động",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        color: backgroundColor,
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(5, 15, 5, 15),
                child: TextFormField(
                  controller: txt,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Nhập sản phẩm cần tìm kiếm",
                    hintStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    filled: true,
                    fillColor: mainColor,
                    contentPadding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    suffixIcon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    )
                  ),
                ),
            ),
            Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      item(
                        'https://imgs.viettelstore.vn/Images/Product/ProductImage/dien-thoai/Apple/iPhone%2013%20Pro%20Max/iPhone-13-Pro-Max-2.jpg',
                        'Iphone 13',
                         '31999000',
                        'Còn hàng',
                      ),
                      item(
                        'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRvpsMyzYKhGZD1oqTas11-oXolUdlPLTG39oGMyzSn52OVP_QR',
                        'OPPO Reno6 Z 5G',
                        '9499000',
                        'Còn hàng',
                      ),
                      item(
                        'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-11-lite-5g-014_1.jpg',
                        'Xiaomi 11 Lite',
                        '8490000',
                        'Cháy hàng',
                      ),
                      item(
                        'https://images.samsung.com/pk/smartphones/galaxy-z-fold3-5g/buy/zfold3_carousel_mainsinglekv_mo.jpg',
                        'Samsung Galaxy Z',
                        '41990000',
                        'Cháy hàng',
                      )
                    ],
                  ),
                )
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box),
              label: 'Thêm sản phẩm',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.edit),
              label: 'Chỉnh sửa sản phẩm',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.delete_forever),
              label: 'Xóa sản phẩm',
            ),
          ]
      ),
    );
  }

  Widget item(String img, String name, String price, String status){
    return Container(
      decoration: BoxDecoration(
        color: mainColor,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(14),
      ),
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
      margin: const EdgeInsets.all(5),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Image.network(
              img,
              fit: BoxFit.fitHeight,
              height: 75,
              width: 75,
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  title("Tên sản phẩm: ", name),
                  const SizedBox(height: 5),
                  title("Giá: ", price),
                  const SizedBox(height: 5),
                  title("Trạng thái: ", status)
                ],
              )
          )
        ],
      ),
    );
  }

  Widget title(String title, String content){
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        Text(
          content,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}

