import 'package:flutter/material.dart';

class ReadMoreTextItem extends StatefulWidget {
  const ReadMoreTextItem({Key? key}) : super(key: key);

  @override
  State<ReadMoreTextItem> createState() => _ReadMoreTextItemState();
}

class _ReadMoreTextItemState extends State<ReadMoreTextItem> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      height: isChecked ? 90 : 50,
      padding: const EdgeInsets.all(5),
      curve: Curves.ease,
      child: GestureDetector(
        onTap: () {
          setState(() {
            isChecked = !isChecked;
          });
        },
        child:  SizedBox(
          height: 120,
          width: 300,
          child: Text(
            "MESCAL Laptop, 15.6 1080P ' s "
            "Full HD Display High Performance Quad-Core "
            "IntelElectron N5095 Processors 12GB DDR4 512GB SSD"
            "Full HD Display High Performance Quad-Core "
            "IntelElectron N5095 Processors 12GB DDR4 512GB SSD"
            " Windows 11 Laptop Computers, 2.4G/5G WiFi, Bluetooth "
            "4.2, Long Battery Life",
            style: const  TextStyle(
                fontSize: 16, fontStyle: FontStyle.italic, wordSpacing: 2),
            maxLines: isChecked ? 500 : 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
