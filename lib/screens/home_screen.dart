import 'package:biye_lunwem/widgets/items.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
            ),
            Flexible(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "어떤 집을 찾고 계신가요?",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: const Color.fromARGB(255, 221, 218, 218),
                            width: 1)),
                    child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "아파트 내놓기",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("가장 빠르고 좋은 가격으로 아파트를 거래해보세요")
                          ],
                        )),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 4,
              child: Column(
                children: [
                  Row(
                    children: const [
                      Items(name: "아파트", icon: Icons.apartment_rounded),
                      SizedBox(
                        width: 30,
                      ),
                      Items(name: "빌라/투룸", icon: Icons.holiday_village_rounded),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      Items(name: "원룸", icon: Icons.home),
                      SizedBox(
                        width: 30,
                      ),
                      Items(name: "오피스텔", icon: Icons.apartment),
                    ],
                  )
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("창업을 고민중이신가요?"),
                  Items(name: "상가", icon: Icons.home)
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  border: BorderDirectional(
                    top: BorderSide(
                      color: Theme.of(context).canvasColor,
                      width: 1,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: const [
                        SizedBox(
                          height: 10,
                        ),
                        Icon(
                          Icons.apartment,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "부동산",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        SizedBox(
                          height: 10,
                        ),
                        Icon(
                          Icons.home,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "나의 집",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
