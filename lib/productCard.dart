import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

// ignore: must_be_immutable
class WACard extends StatefulWidget {
  final String label;
  final String img;
  final int data;
  final Function() add;
  Color _iconColor = Colors.white;

  final Function() minus;
  WACard(this.label, this.img, this.data, this.add, this.minus, {Key? key})
      : super(key: key);

  @override
  State<WACard> createState() => _WACardState();
}

class _WACardState extends State<WACard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Color.fromARGB(255, 58, 22, 66),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    IconButton(
                      icon:
                          Icon(Icons.favorite_border, color: widget._iconColor),
                      onPressed: () {
                        setState(() {
                          widget._iconColor = Colors.red;
                        });
                      },
                      iconSize: 15,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 50,
                ),
                Column(
                  children: [
                    Text(
                      widget.label,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 50,
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_shopping_cart,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(children: [
              Container(
                width: 150,
                margin: const EdgeInsets.all(0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    widget.img,
                  ),
                ),
              ),
            ]),
          )),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RawMaterialButton(
                  shape: const CircleBorder(side: BorderSide.none),
                  onPressed: () {
                    widget.minus();
                  },
                  child: const Icon(
                    Icons.remove_circle_outline,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
                Text(
                  "${widget.data}",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                RawMaterialButton(
                  shape: const CircleBorder(side: BorderSide.none),
                  onPressed: () {
                    widget.add();
                  },
                  child: const Icon(
                    Icons.add_circle_outline,
                    color: Colors.white,
                    size: 15,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
