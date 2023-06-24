
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int myIndex = 0;
  List<int> count = [0, 0, 0];
  List<Widget> widgetList = const [
    Text('Cart Screen', style: TextStyle(fontSize: 25),),
    Text('Notification Screen', style: TextStyle(fontSize: 25),),
    Text('Favourite Screen', style: TextStyle(fontSize: 25),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: widgetList[myIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        showUnselectedLabels: false,
        onTap: (index){
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: [
          BottomNavigationBarItem(
            icon: Badge(backgroundColor: Colors.red, label: Text(count[0].toString()), textColor: Colors.white, child: const Icon(Icons.shopping_cart,),),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Badge(backgroundColor: Colors.red, label: Text(count[1].toString()), textColor: Colors.white, child: const Icon(Icons.notifications,),),
            label: 'notify',
          ),
          BottomNavigationBarItem(
            icon: Badge(backgroundColor: Colors.red, label: Text(count[2].toString()), textColor: Colors.white, child: const Icon(Icons.favorite,),),
            label: 'favourite',
          ),
        ],
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Column(
            children: [
              const SizedBox(height: 40,),
              ElevatedButton(
                onPressed: (){
                  if(count[myIndex]>=0){
                    count[myIndex]++;
                  }
                  setState(() {

                  });
                },
                child: const Text('Increment', style: TextStyle(fontSize: 30),),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  if(count[myIndex]>0){
                    count[myIndex]--;
                  }
                  setState(() {

                  });
                },
                child: const Text('Decrement', style: TextStyle(fontSize: 30),),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
