import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_flutter_app/constants.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // It will provide us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.2,
          child: Stack(
            children: [
              Container(
                height: size.height * 0.2 - 27,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36))),
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    height: 54,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50,
                              color: kPrimaryColor.withOpacity(0.23))
                        ]),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search",
                              hintStyle: TextStyle(
                                  color: kPrimaryColor.withOpacity(0.5)),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
                            ),
                          ),
                        ),
                        SvgPicture.asset("assets/icons/search.svg"),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
