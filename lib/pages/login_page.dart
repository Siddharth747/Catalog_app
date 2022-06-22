import 'package:flutter/material.dart';

import 'package:flutter_ecommerce_app/utils/routes.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changebutton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            "assets/images/read_image.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Welcome $name",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Enter Username", labelText: "Username"),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: () async {
              setState(() {
                changebutton = true;
              });
              await Future.delayed(const Duration(seconds: 1));
              Navigator.pushNamed(context, Myroutes.homeroute);
            },
            child: AnimatedContainer(
              width: changebutton ? 50 : 150,
              height: 50,
              duration: const Duration(seconds: 1),
              alignment: Alignment.center,
              child: changebutton
                  ? const Icon(
                      Icons.done,
                      color: Colors.white,
                    )
                  : const Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changebutton ? 70 : 8)),
            ),
          )
          // ElevatedButton(
          //     onPressed: () {
          //       devtools.log("Login");
          //       Navigator.pushNamed(context, Myroutes.homeroute);
          //     },
          //     style: TextButton.styleFrom(minimumSize: const Size(130, 50)),
          //     child: const Text("Login")),
        ]),
      ),
    );
  }
}
