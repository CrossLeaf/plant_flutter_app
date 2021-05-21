import 'package:flutter/material.dart';

import '../../../constants.dart';

class BottomBtn extends StatelessWidget {
  const BottomBtn({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              width: size.width / 2,
              height: 84,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                        ))),
                child: Text(
                  "Buy Now",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                primary: kTextColor,
              ),
              child: Text(
                "Description",
                style: TextStyle(fontSize: 16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
