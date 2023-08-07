import 'package:flutter/material.dart';
import 'package:sabak_f10/user_model.dart';

class UserDetailPage extends StatelessWidget {
  const UserDetailPage({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    print(user.atyJonu);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        //title: Text('User Detail Page'),
        title: Text(user.atyJonu),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(user.profilSurot //'https://picsum.photos/200/300?grayscale'
          ),
        ),
        Text(user.kesibi, 
        style: TextStyle(fontSize: 20, color: Colors.deepPurple),
        ),
        Text('${user.jash} jashta', 
        style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 195, 111, 149)),
        ),
        Padding(
          padding: const EdgeInsets.all(70),
          child: Text(user.tajryibaJolu // "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)"
          ),
        )
      ],),
    );
  }
}
