import 'package:amplified_todo/features/presentation/widgets/button.dart';
import 'package:flutter/material.dart';

class AllReviewPage extends StatefulWidget {
  const AllReviewPage({Key? key}) : super(key: key);

  @override
  State<AllReviewPage> createState() => _AllReviewPageState();
}

class _AllReviewPageState extends State<AllReviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("3 Review"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: 50,
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        child: Image.asset(
                          "assets/pro2.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        "Seven-eleven",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      SizedBox(
                        height: 18,
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            Image.asset("assets/Star 11.png"),
                            const SizedBox(width: 5),
                            Image.asset("assets/Star 11.png"),
                            const SizedBox(width: 5),
                            Image.asset("assets/Star 11.png"),
                            const SizedBox(width: 5),
                            Image.asset("assets/Star 11.png"),
                            const SizedBox(width: 5),
                            Image.asset("assets/Star 11.png"),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites. ",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 156, 154, 154),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: 50,
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        child: Image.asset(
                          "assets/pro2.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        "WOW MOMOS",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      SizedBox(
                        height: 18,
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            Image.asset("assets/Star 11.png"),
                            const SizedBox(width: 5),
                            Image.asset("assets/Star 11.png"),
                            const SizedBox(width: 5),
                            Image.asset("assets/Star 11.png"),
                            const SizedBox(width: 5),
                            Image.asset("assets/Star 15.png"),
                            const SizedBox(width: 5),
                            Image.asset("assets/Star 15.png"),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "This is really amazing product, i like the design of product, I hope can buy it again!",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 156, 154, 154),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: 50,
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        child: Image.asset(
                          "assets/pro2.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        "Devone Lane",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      SizedBox(
                        height: 18,
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            Image.asset("assets/Star 11.png"),
                            const SizedBox(width: 5),
                            Image.asset("assets/Star 11.png"),
                            const SizedBox(width: 5),
                            Image.asset("assets/Star 11.png"),
                            const SizedBox(width: 5),
                            Image.asset("assets/Star 11.png"),
                            const SizedBox(width: 5),
                            Image.asset("assets/Star 15.png"),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "This is really amazing product, i like the design of product, I hope can buy it again!",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 156, 154, 154),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ButtonWidget(text: "Write Review", onTap: () {}),
    );
  }
}
