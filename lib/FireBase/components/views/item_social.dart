import 'package:flutter/material.dart';

class ItemSocial extends StatelessWidget {
  const ItemSocial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        width: 200,
        height: 136,
        // color: Colors.green,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () => null,
              child: CircleAvatar(
                radius: 16,
                child: Image.asset('assets/login/img_facebook.png'),
              ),
            ),
            InkWell(
              onTap: () => null,
              child: CircleAvatar(
                radius: 16,
                child: Image.asset('assets/login/img_facebook.png'),
              ),
            ),
            InkWell(
              onTap: () => null,
              child: CircleAvatar(
                radius: 16,
                child: Image.asset('assets/login/img_facebook.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
