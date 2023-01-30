import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:ui_projects/ui_three/items_three.dart';

class ScreenThreeUi extends StatelessWidget {
  const ScreenThreeUi({super.key});

  Widget divider({double? dividerSize}) {
    return SizedBox(
      height: dividerSize,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Payments',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            letterSpacing: 1,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Transaction Limit',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      divider(dividerSize: 10),
                      const Text(
                        '''A free limit up to which you will receive the online payments Directly in your bank  ''',
                        style: TextStyle(
                          color: Color.fromARGB(
                            255,
                            140,
                            135,
                            135,
                          ),
                        ),
                      ),
                      divider(dividerSize: 10),
                      const StepProgressIndicator(
                        totalSteps: 100,
                        currentStep: 35,
                        size: 8,
                        padding: 0,
                        roundedEdges: Radius.circular(
                          10,
                        ),
                        unselectedColor: Color.fromARGB(255, 206, 205, 205),
                      ),
                      divider(dividerSize: 5),
                      const Text(
                        '36,668 left out of ₹50,000',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      divider(dividerSize: 20),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Increase limit',
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Text(
                'Default Method',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 15,
                    letterSpacing: 0.5),
              ),
              trailing: Text(
                'Online Payments',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 12,
                ),
              ),
            ),
            ListTile(
              leading: Text(
                'Payment Profile',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 15,
                    letterSpacing: 0.5),
              ),
              trailing: Text(
                'Bank Account',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 12,
                ),
              ),
            ),
            const Divider(
              color: Colors.black,
              thickness: 0.2,
              indent: 5,
              endIndent: 5,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Text(
                          'Payment Overview',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          'Life Time',
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 100,
                          width: 180,
                          child: Card(
                            color: Colors.amber[700],
                            child: Padding(
                              padding: const EdgeInsets.all(
                                8.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'AMOUNT ON HOLD',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '₹0',
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 100,
                          width: 180,
                          child: Card(
                            color: Colors.green,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'AMUONT RECEVIED',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '₹13,332',
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: const [
                    Text(
                      'Transactions',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text('On Hold'),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 218, 215, 215),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)))),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Payouts(15)'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text('Refunds'),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 219, 217, 217),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ))),
                  ],
                ),
                itemsThree(
                  item: '#1688068',
                  subitem: 'jul 12, 02:06 PM',
                  image:
                      'https://contents.mediadecathlon.com/p1484240/ab565f3675dbdd7e3c486175e2c16583/p1484240.jpg',
                  trail: '₹799',
                ),
                itemsThree(
                  item: '#1454068',
                  subitem: 'Apr 26, 07:47 AM',
                  image:
                      'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hvZXN8ZW58MHx8MHx8&w=1000&q=80',
                  trail: '₹400',
                ),
                itemsThree(
                  item: '#1434068',
                  subitem: 'Apr 11, 10:54 AM',
                  image:
                      'https://media.istockphoto.com/photos/white-mug-isolated-picture-id821282266?k=20&m=821282266&s=612x612&w=0&h=vc7HPB6Te8fSX-_TUFCXp5PYWQUtzTHdbiUJwybjRAA=',
                  trail: '₹634',
                ),
                itemsThree(
                  item: '#1385068',
                  subitem: 'Apr 2, 11:29 AM',
                  image:
                      'https://media.istockphoto.com/photos/luxury-watch-isolated-on-white-background-with-clipping-path-for-or-picture-id1180244659?k=20&m=1180244659&s=612x612&w=0&h=kC3xPwi_AXqWqapmeVro6GhvQ2wcslD6WMgzdJbqZjE=',
                  trail: '₹423',
                ),
                itemsThree(
                  item: '#1385068',
                  subitem: 'Apr 1, 10:37 AM',
                  image:
                      'https://media.istockphoto.com/photos/brown-teddy-bear-isolated-in-front-of-a-white-background-picture-id909772478?k=20&m=909772478&s=612x612&w=0&h=mzLuJ7ywrSDHmpchf9spOeNF2Ovr2aQBw1z57Szx17g=',
                  trail: '₹556',
                ),
                itemsThree(
                  item: '#1688068',
                  subitem: 'jul 12, 02:06 PM',
                  image:
                      'https://st.depositphotos.com/1455321/1564/i/950/depositphotos_15645257-stock-photo-yellow-toy-car.jpg',
                  trail: '₹799',
                ),
                itemsThree(
                  item: '#1688068',
                  subitem: 'jul 12, 02:06 PM',
                  image:
                      'https://contents.mediadecathlon.com/p1484240/ab565f3675dbdd7e3c486175e2c16583/p1484240.jpg',
                  trail: '₹799',
                ),
                itemsThree(
                  item: '#1454068',
                  subitem: 'Apr 26, 07:47 AM',
                  image:
                      'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hvZXN8ZW58MHx8MHx8&w=1000&q=80',
                  trail: '₹400',
                ),
                itemsThree(
                  item: '#1434068',
                  subitem: 'Apr 11, 10:54 AM',
                  image:
                      'https://media.istockphoto.com/photos/white-mug-isolated-picture-id821282266?k=20&m=821282266&s=612x612&w=0&h=vc7HPB6Te8fSX-_TUFCXp5PYWQUtzTHdbiUJwybjRAA=',
                  trail: '₹634',
                ),
                itemsThree(
                  item: '#1385068',
                  subitem: 'Apr 2, 11:29 AM',
                  image:
                      'https://media.istockphoto.com/photos/luxury-watch-isolated-on-white-background-with-clipping-path-for-or-picture-id1180244659?k=20&m=1180244659&s=612x612&w=0&h=kC3xPwi_AXqWqapmeVro6GhvQ2wcslD6WMgzdJbqZjE=',
                  trail: '₹423',
                ),
                itemsThree(
                  item: '#1385068',
                  subitem: 'Apr 1, 10:37 AM',
                  image:
                      'https://media.istockphoto.com/photos/brown-teddy-bear-isolated-in-front-of-a-white-background-picture-id909772478?k=20&m=909772478&s=612x612&w=0&h=mzLuJ7ywrSDHmpchf9spOeNF2Ovr2aQBw1z57Szx17g=',
                  trail: '₹556',
                ),
                itemsThree(
                  item: '#1688068',
                  subitem: 'jul 12, 02:06 PM',
                  image:
                      'https://st.depositphotos.com/1455321/1564/i/950/depositphotos_15645257-stock-photo-yellow-toy-car.jpg',
                  trail: '₹799',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}