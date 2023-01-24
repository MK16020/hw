import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2b47ad),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(color: const Color(0xfff9fafc), borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: [
              Container(
                height: 55,
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Image(
                      image: AssetImage('assets/images/Logo.png'),
                    ),
                    Icon(Icons.menu)
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: const [
                        Text(
                          'Welcome Back',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xff0f2643)),
                        ),
                        Text(
                          'Valeria',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xff2561ed)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const CardMember(),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                      padding: const EdgeInsets.all(10),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: const [
                            Text(
                              'Total Availability .',
                              style: TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                            Icon(
                              Icons.info_outlined,
                              color: Colors.grey,
                              size: 16,
                            ),
                          ],
                        ),
                        const Divider(),
                      ]),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardMember extends StatelessWidget {
  const CardMember({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: const [
              Text(
                'Total Team Members .',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              Icon(
                Icons.info_outlined,
                color: Colors.grey,
                size: 16,
              ),
            ],
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                '86',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xff0f2643)),
              ),
              Image(
                width: 128,
                height: 100,
                image: AssetImage('assets/images/Team.png'),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xff0f2643),
              borderRadius: BorderRadius.circular(24),
            ),
            padding: const EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Add Team Members .',
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.person_add_alt_1_outlined,
                  color: Colors.white,
                  size: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
