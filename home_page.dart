import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController tabController;
  late AnimationController controller;
  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 2),
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(50)),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false, // <-- HERE
        showUnselectedLabels: false,
        fixedColor: Colors.amber,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_outlined),
            label: 'Save',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Favorite',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome, Jalal',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
              ),
              const Text(
                'Choice you Best food',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.4,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search food',
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1, color: Colors.amber), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(5)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: TabBar(
                    labelPadding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 10,
                    ),
                    controller: tabController,
                    isScrollable: true,
                    indicatorColor: Colors.amber,
                    labelColor: Colors.grey,
                    unselectedLabelColor: Colors.grey,
                    // indicator: BoxDecoration(
                    //   color: Colors.amber,
                    //   borderRadius: BorderRadius.circular(5.0),
                    // ),
                    tabs: const [
                      Tab(
                        text: 'Donut',
                      ),
                      Tab(text: 'Pink Donut'),
                      Tab(text: 'Floating'),
                    ]),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: TabBarView(controller: tabController, children: [
                  ListView(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                        elevation: 5.0,
                        child: Container(
                          decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(5))),
                          width: 200,
                          height: 150,
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Image(
                                    image: NetworkImage(
                                        'https://img.freepik.com/premium-vector/donut-art-cartoon-vector-isolated_528506-17.jpg?w=2000')),
                              ),
                               Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Tasty Donut',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    'Spicy Tasty Donut family',
                                    style: TextStyle(fontSize: 12, color: Colors.grey),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.attach_money),
                                      Text(
                                        '10.00',
                                        style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Container(
                                        padding: const EdgeInsets.only(top: 20, left: 20, right: 15, bottom: 10),
                                        decoration:
                                            const BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.only(topLeft: Radius.circular(50))),
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        )),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                        elevation: 5.0,
                        child: Container(
                          decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(5))),
                          width: 200,
                          height: 150,
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Image(
                                    image: NetworkImage(
                                        'https://img.freepik.com/premium-vector/donut-art-cartoon-vector-isolated_528506-17.jpg?w=2000')),
                              ),
                               Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Pink Donut',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    'Spicy Tasty Donut family',
                                    style: TextStyle(fontSize: 12, color: Colors.grey),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.attach_money),
                                      Text(
                                        '20.00',
                                        style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Container(
                                        padding: const EdgeInsets.only(top: 20, left: 20, right: 15, bottom: 10),
                                        decoration:
                                            const BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.only(topLeft: Radius.circular(50))),
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        )),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                        elevation: 5.0,
                        child: Container(
                          decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(5))),
                          width: 200,
                          height: 150,
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Image(
                                    image: NetworkImage(
                                        'https://img.freepik.com/premium-vector/donut-art-cartoon-vector-isolated_528506-17.jpg?w=2000')),
                              ),
                               Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Floating Donut',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    'Spicy Tasty Donut family',
                                    style: TextStyle(fontSize: 12, color: Colors.grey),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.attach_money),
                                      Text(
                                        '20.00',
                                        style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Container(
                                        padding: const EdgeInsets.only(top: 20, left: 20, right: 15, bottom: 10),
                                        decoration:
                                            const BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.only(topLeft: Radius.circular(50))),
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        )),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  ListView(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                        elevation: 5.0,
                        child: Container(
                          decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(5))),
                          width: 200,
                          height: 150,
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Image(
                                    image: NetworkImage(
                                        'https://img.freepik.com/premium-vector/donut-art-cartoon-vector-isolated_528506-17.jpg?w=2000')),
                              ),
                               Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Pink Donut',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    'Spicy Tasty Donut family',
                                    style: TextStyle(fontSize: 12, color: Colors.grey),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.attach_money),
                                      Text(
                                        '20.00',
                                        style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Container(
                                        padding: const EdgeInsets.only(top: 20, left: 20, right: 15, bottom: 10),
                                        decoration:
                                            const BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.only(topLeft: Radius.circular(50))),
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        )),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  ListView(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                        elevation: 5.0,
                        child: Container(
                          decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(5))),
                          width: 200,
                          height: 150,
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Image(
                                    image: NetworkImage(
                                        'https://img.freepik.com/premium-vector/donut-art-cartoon-vector-isolated_528506-17.jpg?w=2000')),
                              ),
                               Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Pink Donut',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    'Spicy Tasty Donut family',
                                    style: TextStyle(fontSize: 12, color: Colors.grey),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.attach_money),
                                      Text(
                                        '20.00',
                                        style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Container(
                                        padding: const EdgeInsets.only(top: 20, left: 20, right: 15, bottom: 10),
                                        decoration:
                                            const BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.only(topLeft: Radius.circular(50))),
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        )),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
