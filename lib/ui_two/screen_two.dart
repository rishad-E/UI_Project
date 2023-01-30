import 'package:flutter/material.dart';
import 'package:ui_projects/ui_two/bottom_screen_two.dart';

class SCreenTwoUi extends StatelessWidget {
  const SCreenTwoUi({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title:
            const Text('Manage Store', style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        color: const Color.fromARGB(255, 242, 238, 238),
        child: Column(
          children: [
            Row(
              children: [
                cardBody(
                    storeText1: 'Marketing',
                    storeIcon: Icons.campaign_outlined,
                    storeText2: 'Designs',
                    iconCOlor: const Color.fromARGB(255, 240, 153, 24)),
                cardBody(
                    storeIcon: Icons.currency_rupee,
                    storeText1: 'Online',
                    storeText2: 'Payment',
                    iconCOlor: const Color.fromARGB(255, 126, 211, 128))
              ],
            ),
            const SizedBox(
              height: 13,
            ),
            Row(
              children: [
                cardBody(
                    storeText1: 'Discount',
                    storeIcon: Icons.discount,
                    storeText2: 'Coupons',
                    iconCOlor: const Color.fromARGB(255, 235, 183, 107)),
                cardBody(
                    storeText1: 'My',
                    storeText2: 'Customers',
                    storeIcon: Icons.group_outlined,
                    iconCOlor: const Color.fromARGB(255, 54, 194, 191))
              ],
            ),
            const SizedBox(
              height: 13,
            ),
            Row(
              children: [
                cardBody(
                    storeText1: 'Store QR',
                    storeText2: 'Code',
                    storeIcon: Icons.qr_code_scanner,
                    iconCOlor: const Color.fromARGB(255, 151, 147, 147)),
                cardBody(
                    storeText1: 'Extra',
                    storeText2: 'Charges',
                    storeIcon: Icons.payment,
                    iconCOlor: const Color.fromARGB(255, 149, 23, 192))
              ],
            ),
            const SizedBox(
              height: 13,
            ),
            Row(
              children: [
                Card(
                  child: Container(
                    height: 130,
                    width: 170,
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.notes,
                                size: 40,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: const Color.fromARGB(214, 183, 8, 134),
                              ),
                            ),
                            const SizedBox(
                              width: 69,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: Colors.green),
                              height: 20,
                              width: 38,
                              padding: const EdgeInsets.all(3),
                              child: Text(
                                'New',
                                style: TextStyle(color: Colors.white),
                              ),
                              alignment: Alignment.topRight,
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Order',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        const Text(
                          'Form',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: bottomScreenTwo(),
    );
  }

  Widget cardBody(
      {String? storeText1,
      String? storeText2,
      IconData? storeIcon,
      Color? iconCOlor}) {
    return Card(
      child: Container(
        height: 130,
        width: 170,
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Icon(
                storeIcon,
                size: 40,
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: iconCOlor),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              storeText1!,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            Text(
              storeText2!,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
