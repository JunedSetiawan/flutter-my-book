import 'package:flutter/material.dart';
import 'package:myapp/book.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'), 
      ),
      body: SingleChildScrollView(
        child: Padding(padding: 
        const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Let's learn\nAnd Make Your App",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),
                ),
                Image.asset(
                  "../images/banner.png",
                  width: 100,
                )
              ],
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              "Book",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),
            ),
            ),
            ListView.builder(
              itemCount: listBook.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder:(context, index) {
                final book = listBook[index];
                return GestureDetector(
                  onTap: () {},
                  child:
                Container(
                  width: double.infinity,
                  height: 90,
                  padding: EdgeInsets.all(8),
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 6.0,
                        offset: Offset(0, 1),
                      ),
                    ]
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "../images/buku-vpn.png",
                        width: 64,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Judul Buku"),
                          Text("Categori Buku")
                        ],
                      )
                    ],
                  ),
                ),
                );
              },
              
            ),
          ],
        ),
        ),
      ),
    );
  }
}
