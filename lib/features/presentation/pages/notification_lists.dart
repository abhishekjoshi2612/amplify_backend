import 'package:flutter/material.dart';

class NotificationLists extends StatelessWidget {
  const NotificationLists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 150.0),
      child: Column(
        children: [
          Container(
            child: _sellerList(),
          ),
        ],
      ),
    );
  }

  Widget _sellerList() {
    return Expanded(
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  height: 100,
                  child: Column(children: [
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, left: 10, right: 20),
                            child: Container(
                              child: Image.asset(
                                "assets/32 (1).png",
                                alignment: Alignment.center,
                                fit: BoxFit.fill,
                              ),
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                  color: Colors.orange, shape: BoxShape.circle),
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Floyd Miles",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 20),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Text(
                              "Haha that's terrifying",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white54,
                                  fontSize: 16),
                              maxLines: 5,
                            ),
                          ],
                        ),
                        Expanded(child: SizedBox(height: 16)),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Positioned(
                              top: 5,
                              left: 13,
                              child: Text(
                                '11:32AM',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.white54,
                                    fontFamily: 'Inter',
                                    fontSize: 16,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w400,
                                    height: 1.1428571428571428),
                              )),
                        ),
                      ],
                    ),
                  ]),
                )
              ],
            );
          }),
    );
  }
}
