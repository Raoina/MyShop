import 'package:shoptask/productCard.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int shirt = 1;
  int shoes = 1;
  int pants = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text("My Shop"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WACard(
                      "Shoes",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMBwr5Y_2tJR2T9Motr01wQNzLdP_K4uubbA&usqp=CAU",
                      shoes, () {
                    setState(() {
                      shoes++;
                    });
                  }, () {
                    setState(() {
                      if (shoes > 1) shoes--;
                    });
                  })
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WACard(
                      "T-shirt",
                      "https://mir-s3-cdn-cf.behance.net/project_modules/fs/06df0a125376943.6117de04b9f8c.jpg",
                      shirt, () {
                    setState(() {
                      shirt++;
                    });
                  }, () {
                    setState(() {
                      if (shirt > 1) shirt--;
                    });
                  })
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WACard(
                      "Pants",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4VVZqDRaRb0E3jY8O59UU2UNNQdZ7ScvfDg&usqp=CAU",
                      pants, () {
                    setState(() {
                      pants++;
                    });
                  }, () {
                    setState(() {
                      if (pants > 1) pants--;
                    });
                  })
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
