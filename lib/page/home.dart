import 'package:flutter/material.dart';
import 'package:kuis/page/login.dart';

class HomePage extends StatefulWidget {
  final String username;
  const HomePage({super.key, required this.username});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hallo, ${widget.username}!"),
        backgroundColor: const Color.fromARGB(255, 247, 207, 255),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }), (route) => false);
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        child: Center(
          child: Column(
            children: [
              const Text(
                "Mau makan apa hari ini?",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }

  Widget _card() {
    return Card(
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [Image(image: AssetImage('assets/image/img_food1.png'))],
      ),
    );
  }

  // Widget _buildForm() {
  //   return Column(
  //     children: [
  //       const SizedBox(height: 12),
  //       _formInput(
  //           hint: "Masukkan Nama Lengkap",
  //           label: "Nama *",
  //           setStateInput: (value) {
  //             setState(() {
  //               _namaLengkap = value;
  //             });
  //           }),
  //       const SizedBox(height: 12),
  //       _formInput(
  //           hint: "Masukkan Email",
  //           label: "Email *",
  //           setStateInput: (value) {
  //             setState(() {
  //               _email = value;
  //             });
  //           }),
  //       const SizedBox(height: 12),
  //       _formInput(
  //           hint: "Masukkan No Hp",
  //           label: "Nomor Hp *",
  //           setStateInput: (value) {
  //             setState(() {
  //               _noHandphone = value;
  //             });
  //           }),
  //       const SizedBox(height: 12),
  //       _formInput(
  //         hint: "Masukkan Alamat",
  //         label: "Alamat *",
  //         setStateInput: (value) {
  //           setState(
  //             () {
  //               _alamatRumah = value;
  //             },
  //           );
  //         },
  //         maxLines: 3,
  //       ),
  //     ],
  //   );
  // }
}
