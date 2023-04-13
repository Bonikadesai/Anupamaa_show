import 'package:flutter/material.dart';

import 'second_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const Homepage(),
        "secondpage": (context) => const secondpage(),
      },
    ),
  );
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Map> data = [
    //1

    {
      'image': "assets/image/r11.jpg",
      'image2': "assets/image/r6.jpg",
      'text': "Rupali Ganguli",
      'text2': "Anupama",
      'per':
          '''Rupali Ganguly (born 5 April 1977) is an Indian actress. Born to film director Anil Ganguly, Ganguly started her acting career as a child, making her debut at age seven in her father's film Saaheb (1985). Following appearances in less favourably received films; Angaara (1996), and Do Ankhen Barah Hath (1997), as a teenager, Ganguly had her career breakthrough, after venturing into television with her portrayal of medical intern Dr. Simran Chopra in the Star Plus medical drama series Sanjivani (2002). She received further recognition with her portrayal of Monisha (née Manisha) Singh Sarabhai in the cult sitcom Sarabhai vs Sarabhai (2004).''',
    },

    //2

    {
      'image': "assets/image/g1.jpg",
      'image2': "assets/image/g2.jpg",
      'text': "Gaurav Khanna",
      'text2': "Anuj",
      'per':
          "Gaurav Khanna is an Indian actor and model. He is known for his roles of Neil in Jeevan Saathi, Inspector Kavin in CID, and Akshay in Tere Bin. He currently portrays Anuj Kapadia in Star Plus's Anupamaa. "
    },

    //3

    {
      'image': "assets/image/p1.jpg",
      'image2': "assets/image/p2.jpg",
      'text': "Paras Kalnawat",
      'text2': "Samar",
      'per': "Kalnawat belonging to a Brahmin family was born to a Nagpur-based businessman Bhushan Kalnawat and Anita Kalnawat on 9 November 1996 at Bhandara, a district near Nagpur and has an elder sister named Pragati Kalnawat Sharma also. He completed his schooling from a local school in Nagpur and later joined S.K."
          "Paras Kalnawat is an Indian model and actor best known for portraying Sanjay Singh Ahlawat in Meri Durga, Faraz Sheikh in Ishq Aaj Kal and Samar Shah in Anupamaa."
    },

    //4

    {
      'image': "assets/image/m1.jpg",
      'image2': "assets/image/m2.jpg",
      'text': "Muskaan Bamne",
      'text2': "Pakhi",
      'per':
          "Her appearances in TV shows, serials, and short films have made her into fame in a short time. She is noted by many eminent directors and waiting for the right and best opportunity in Bollywood and the overall entertainment industry in India.The little girl from Madhya Pradesh is the talk of Bollywood and making waves on social media sites. Know more about this young talent’s age, career, family, lover, marriage, and other facts in this biography article.",
    },

    //5

    {
      'image': "assets/image/pari1.jpg",
      'image2': "assets/image/pari2.jpg",
      'text': "Aashish Mehrotra",
      'text2': "Paritosh",
      'per':
          "Aashish Mehrotra was born on 12 April 1990 in Delhi. He is the younger son of Kedarnath and Niti Mehrotra. Apart from him in the family, he also has an elder sister Mini Chopra. Mini is married. After completing graduation from Amaty university, Aashish came to Mumbai to work in the film industry. He started his career with the Channel V show Paanch 5 Wrongs Make A Right. In the show, he played the role of Yudi aka Yudhishtir Kharbanda. ",
    },

    //6

    {
      'image': "assets/image/n1.jpg",
      'image2': "assets/image/n2.jpg",
      'text': "Nidhi Shah",
      'text2': "Kinjal",
      'per':
          "Nidhi Shah is an Indian television actress best known for her portrayal of Poorva Sharma Shetty in Tu Aashiqui and Kinjal Dave Shah in Anupamaa. Nidhi Shah. Born. Mumbai, Maharashtra, India.Nidhi Shah is an Indian television actress. She is known for her character Kinjal Paritosh Shah in Star Plus’ popular television serial Anupamaa. She also acted in the television shows Kavach, Kartik Purnima and Jaana Na Dil Se Door. ",
    },

    //7

    {
      'image': "assets/image/s1.jpg",
      'image2': "assets/image/s2.jpg",
      'text': "Madalsa Sharma",
      'text2': "Kavya",
      'per':
          "Madalsa Sharma was born to actress Sheela Sharma and film producer and director Subhash Sharma on 26 September 1991. After completing her schooling from Marble Arch school, she studied English literature at the Mithibai College, Mumbai. She became interested in acting as a career at an early age. ",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Anupama Show",
          style: TextStyle(fontSize: 30, color: Colors.grey.shade300),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            height: 1000,
            color: Colors.black,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: data
                    .map(
                      (e) => Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          height: 500,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade600,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade600,
                                offset: const Offset(2, 2),
                                blurRadius: 2,
                              ),
                              BoxShadow(
                                color: Colors.grey.shade600,
                                offset: const Offset(-2, -2),
                                blurRadius: 2,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment(-0, -1.2),
                                child: Image.asset(
                                  "${e['image']}",
                                  height: 330,
                                  width: 330,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              // SizedBox(
                              //   height: 40,
                              // ),
                              Spacer(),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "${e['text2']}",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade300,
                                  ),
                                ),
                              ),
                              //
                              Spacer(),
                              Align(
                                alignment: Alignment.center,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Navigator.of(context).pushNamed(
                                          "secondpage",
                                          arguments: e);
                                    });
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 170,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "KNOW MORE",
                                      style: TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.w500),
                                    )),
                                  ),
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//second page
