import 'package:flutter/material.dart';

class secondpage extends StatefulWidget {
  const secondpage({Key? key}) : super(key: key);

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Anupama Character",
          style: TextStyle(fontSize: 25, color: Colors.grey.shade300),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              //1

              Container(
                alignment: Alignment.centerRight,
                height: 450,
                width: 600,
                decoration: BoxDecoration(
                    color: Colors.grey.shade600,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        // color: Colors.grey.shade600,
                        offset: const Offset(-5, -5),
                        blurRadius: 8,
                      ),
                      BoxShadow(
                        //color: Colors.grey,
                        color: Colors.grey.shade600,
                        offset: const Offset(5, 5),
                        blurRadius: 8,
                      ),
                    ]),
                child: Image.asset(
                  data["image2"],
                  height: size.height,
                  width: size.width,
                  fit: BoxFit.cover,
                ),
              ),

              //2

              SizedBox(
                height: 30,
              ),
              Container(
                height: 100,
                width: 600,
                decoration: BoxDecoration(
                    color: Colors.grey.shade600,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        // color: Colors.grey.shade600,
                        offset: const Offset(-5, -5),
                        blurRadius: 8,
                      ),
                      BoxShadow(
                        //color: Colors.grey,
                        color: Colors.grey.shade600,
                        offset: const Offset(5, 5),
                        blurRadius: 8,
                      ),
                    ]),
                child: Center(
                  child: Text(
                    data["text"],
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
              ),

              //3

              SizedBox(
                height: 30,
              ),
              Container(
                height: 600,
                width: 600,
                decoration: BoxDecoration(
                    color: Colors.grey.shade600,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        // color: Colors.grey.shade600,
                        offset: const Offset(-5, -5),
                        blurRadius: 8,
                      ),
                      BoxShadow(
                        //color: Colors.grey,
                        color: Colors.grey.shade600,
                        offset: const Offset(5, 5),
                        blurRadius: 8,
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    data["per"],
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
