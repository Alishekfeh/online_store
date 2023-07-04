import 'package:flutter/material.dart';
class BadgeItem extends StatelessWidget {
  const BadgeItem({Key? key, required this.title, required this.iconData, required this.colorText, required this.colorBadge}) : super(key: key);
  final String title;
  final IconData iconData;
  final Color colorText;
  final Color colorBadge;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: colorBadge
        ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style: TextStyle(color: colorText,fontWeight: FontWeight.w500),),
            Icon(iconData,size: 18,),

          ],
        ),

      ),
    );
  }
}
