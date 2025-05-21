import 'package:flutter/material.dart';
import 'package:profile_app/info_row.dart';

class ProfileActivity extends StatelessWidget {
  const ProfileActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {},
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'Profile',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: OutlinedButton.icon(
                icon: Icon(Icons.chat_sharp, color: Colors.grey),
                label: Text('support', style: TextStyle(color: Colors.grey)),
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  side: BorderSide(color: Colors.grey, width: 0.5),
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 24.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1640960543409-dbe56ccc30e2?q=80&w=2680&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Andaz Kumar',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Member since Dec, 2020',
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ],
                      ),
                    ),

                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        shape: CircleBorder(),
                        side: BorderSide(color: Colors.grey, width: 1),
                        padding: EdgeInsets.all(8),
                      ),
                      child: Icon(Icons.edit_outlined, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CredGarage(),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    InfoRow(
                      title: 'credit scrore',
                      value: '757',
                      additionalText: ' . REFRESH AVAILABLE',
                      icon: const Icon(
                        Icons.nest_cam_wired_stand_outlined,
                        size: 14,
                      ),
                    ),
                    Divider(color: Colors.grey[850]),
                    InfoRow(
                      title: 'lifetime cashback',
                      value: '\$100',
                      icon: const Icon(Icons.currency_rupee, size: 14),
                    ),
                    Divider(color: Colors.grey[850]),
                    InfoRow(
                      title: 'bank balance',
                      value: 'check',
                      icon: const Icon(Icons.account_balance, size: 14),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),
              Container(
                height: 350.0,
                decoration: BoxDecoration(color: Colors.black),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          'YOUR REWARDS AND BENEFITS',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      InfoRowLast(title: 'cashback balance', value: '\$20'),
                      Divider(color: Colors.grey[850]),
                      InfoRowLast(title: 'coins', value: '26,24,390'),
                      Divider(color: Colors.grey[850]),
                      InfoRowLast(
                        title: 'win upto Rs 1000',
                        value: 'refer and earn',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CredGarage extends StatelessWidget {
  const CredGarage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: Colors.grey[800]!, width: 0.5),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Row(
            children: [
              OutlinedButton(
                onPressed: null,
                style: OutlinedButton.styleFrom(
                  shape: CircleBorder(),
                  side: BorderSide(color: Colors.grey, width: 1),
                ),
                child: Icon(Icons.car_repair, color: Colors.white, size: 24.0),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'get to know your vehicles, inside out',
                    style: TextStyle(color: Colors.white70),
                  ),
                  const SizedBox(width: 4),
                  Row(
                    children: [
                      Text(
                        'CRED garage',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 12.0),
                      const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 16,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
