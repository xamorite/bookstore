import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    Gradient orangeGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFFFA500), // Light orange color
        Color(0xFFFF4500), // Dark orange color
      ],
    );

    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      foregroundColor: Colors.black87, backgroundColor: Colors.orange[500],
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 5),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'My Profile',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: orangeGradient,
                  ),
                  height: 160,
                  // color: Colors.orange,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25),
                child: Center(
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            children: [
              _buildGridItem(Colors.orange, Icons.edit, 'Edit Profile', (){}),
              _buildGridItem(Colors.orange, Icons.shopping_cart, 'My Orders', (){}),
              _buildGridItem(Colors.orange, Icons.payment, 'Payment',(){}),
              _buildGridItem(Colors.orange, Icons.card_giftcard, 'Rewards',(){}),
            ],
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: ElevatedButton.icon(
              onPressed:(){
                },
              label: const Text('Log-out', style: TextStyle(color:Colors.white,fontSize:18)),
              icon: const Icon(Icons.login_outlined, color:Colors.white),
              style: raisedButtonStyle ,

            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGridItem(Color color, IconData icon, String text, Function function ) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        // color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), // Adjust the shadow color and opacity
            spreadRadius: 5, // Adjust the spread radius
            blurRadius: 10, // Adjust the blur radius
            offset: const Offset(0, 3), // Adjust the shadow offset
          ),
        ],
        gradient: LinearGradient(
          colors: [
            Colors.orange.withOpacity(0.3), // Adjust the gradient start color and opacity
            Colors.orange.withOpacity(0.1), // Adjust the gradient end color and opacity
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: color,
            size: 40,
          ),
          const SizedBox(height: 10),
          TextButton(onPressed: () => function(), child:Text(
            text,
            style: TextStyle(
              color: color,
              fontSize: 18,
            ),
          ), )

        ],
      ),
    );
  }
}