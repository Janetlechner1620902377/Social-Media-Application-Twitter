
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'tweet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Twitter",
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Twitter(),
    );
  }
}

class Twitter extends StatefulWidget {
  const Twitter({super.key});

  @override
  State<Twitter> createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  var tweetList = [];
  var range = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  var count = 0;
  var tweetList_pr = [
    Tweet(
      state: true,
      time: "16s",
      name: '@Jayy',
      avatar_url:
          'https://scontent.fbkk2-8.fna.fbcdn.net/v/t1.6435-9/106993919_2467981593492111_7982786695368030397_n.jpg?stp=dst-jpg_p206x206&_nc_cat=100&ccb=1-7&_nc_sid=da31f3&_nc_ohc=oNvAKjYJu74AX_WIZND&_nc_ht=scontent.fbkk2-8.fna&oh=00_AfC6WcumE9ZcdULeV78KlwX-5IjBgfhZUxw9w5Q6MwfOYg&oe=63A99A67',
      postText: ' Hi my name is Janet Lechner 1620902377 i study at Bangkok University, Engineering ',
      avatar_pro:
          'https://scontent.fbkk2-8.fna.fbcdn.net/v/t1.6435-9/106993919_2467981593492111_7982786695368030397_n.jpg?stp=dst-jpg_p206x206&_nc_cat=100&ccb=1-7&_nc_sid=da31f3&_nc_ohc=oNvAKjYJu74AX_WIZND&_nc_ht=scontent.fbkk2-8.fna&oh=00_AfC6WcumE9ZcdULeV78KlwX-5IjBgfhZUxw9w5Q6MwfOYg&oe=63A99A67',
    ),
    Tweet(
      state: false,
      time: "17s",
      name: '@Jayy',
      avatar_url:
          'https://th.bing.com/th/id/R.f6af23905aee6adc117ef0eb02f998f3?rik=O2SjKtiY%2fIxYrw&pid=ImgRaw&r=0',
      postText:  'ดิฉันนางสาว เจเน็ต เล็คช์เนอร์ 1620902377 เรียนอยู่ที่ม.กรุงเทพ คณะวิศวะกรรมศาสตร์ สาขามัลติมีเดีย ชั้นปี 4',
      avatar_pro:
          'https://scontent.fbkk2-8.fna.fbcdn.net/v/t1.6435-9/106993919_2467981593492111_7982786695368030397_n.jpg?stp=dst-jpg_p206x206&_nc_cat=100&ccb=1-7&_nc_sid=da31f3&_nc_ohc=oNvAKjYJu74AX_WIZND&_nc_ht=scontent.fbkk2-8.fna&oh=00_AfC6WcumE9ZcdULeV78KlwX-5IjBgfhZUxw9w5Q6MwfOYg&oe=63A99A67',
    ),
    Tweet(
      state: true,
      time: "18s",
      name: '@Jayy',
      avatar_url:
          'https://media-exp1.licdn.com/dms/image/C4D22AQHKdYgh3mrbug/feedshare-shrink_2048_1536/0/1669475677880?e=1672272000&v=beta&t=qqlNW9hQWg22rBxywDDqdbCEwPp0r2WFhzw-TAnCOpc',
      postText: 'นี่คือผลงานออกแบบชิ้นแรกที่สร้างรายได้ให้ตัวเองค่ะ ออกแบบฉลาก โลโก้ และสร้างแบบจำลอง3Dของสินค้า',
      avatar_pro:
          'https://scontent.fbkk2-8.fna.fbcdn.net/v/t1.6435-9/106993919_2467981593492111_7982786695368030397_n.jpg?stp=dst-jpg_p206x206&_nc_cat=100&ccb=1-7&_nc_sid=da31f3&_nc_ohc=oNvAKjYJu74AX_WIZND&_nc_ht=scontent.fbkk2-8.fna&oh=00_AfC6WcumE9ZcdULeV78KlwX-5IjBgfhZUxw9w5Q6MwfOYg&oe=63A99A67',
    ),
    Tweet(
      state: false,
      time: "19s",
      name: '@Jayy',
      avatar_url:
          'https://th.bing.com/th/id/R.f6af23905aee6adc117ef0eb02f998f3?rik=O2SjKtiY%2fIxYrw&pid=ImgRaw&r=0',
      postText: 'เคยออกแบบ Ui สำหรับ App จองที่จอดรถด้วยนะคะ',
      avatar_pro:
          'https://scontent.fbkk2-8.fna.fbcdn.net/v/t1.6435-9/106993919_2467981593492111_7982786695368030397_n.jpg?stp=dst-jpg_p206x206&_nc_cat=100&ccb=1-7&_nc_sid=da31f3&_nc_ohc=oNvAKjYJu74AX_WIZND&_nc_ht=scontent.fbkk2-8.fna&oh=00_AfC6WcumE9ZcdULeV78KlwX-5IjBgfhZUxw9w5Q6MwfOYg&oe=63A99A67',
    ),
    Tweet(
      state: true,
      time: "20s",
      name: '@Jayy',
      avatar_url:
          'https://media-exp1.licdn.com/dms/image/C4D22AQF1XGsgRXaZ1w/feedshare-shrink_800/0/1669475716375?e=1672272000&v=beta&t=qF8H39vW7cYYaOzmTmEwbgXT7qC-FU-OLo9mpIPWZdo',
      postText: '',
      avatar_pro:
          'https://scontent.fbkk2-8.fna.fbcdn.net/v/t1.6435-9/106993919_2467981593492111_7982786695368030397_n.jpg?stp=dst-jpg_p206x206&_nc_cat=100&ccb=1-7&_nc_sid=da31f3&_nc_ohc=oNvAKjYJu74AX_WIZND&_nc_ht=scontent.fbkk2-8.fna&oh=00_AfC6WcumE9ZcdULeV78KlwX-5IjBgfhZUxw9w5Q6MwfOYg&oe=63A99A67',
    ),
    Tweet(
      state: false,
      time: "21s",
      name: '@Jayy',
      avatar_url:
          'https://th.bing.com/th/id/R.f6af23905aee6adc117ef0eb02f998f3?rik=O2SjKtiY%2fIxYrw&pid=ImgRaw&r=0',
      postText: 'เคยทำโปรเจคเกมส์ 2D ด้วยค่ะ ชื่อเกมส์ Brink breakie Game',
      avatar_pro:
          'https://scontent.fbkk2-8.fna.fbcdn.net/v/t1.6435-9/106993919_2467981593492111_7982786695368030397_n.jpg?stp=dst-jpg_p206x206&_nc_cat=100&ccb=1-7&_nc_sid=da31f3&_nc_ohc=oNvAKjYJu74AX_WIZND&_nc_ht=scontent.fbkk2-8.fna&oh=00_AfC6WcumE9ZcdULeV78KlwX-5IjBgfhZUxw9w5Q6MwfOYg&oe=63A99A67',
    ),
    Tweet(
      state: true,
      time: "23s",
      name: '@Jayy',
      avatar_url:
          'https://media-exp1.licdn.com/dms/image/C4D22AQFghqOW3ykcgw/feedshare-shrink_800/0/1669476028296?e=1672272000&v=beta&t=nUlohoPqAKNTvwWLmMnjvAzKZcF1Q6xfdqByeplUiBE',
      postText: 'เป็นเกมส์ 2D ที่ต้องให้แผ่นกระเด้งลูกบอลให้ชนกับอิฐเพื่อเก็บคะแนน มีชีวิตได้3ครั้ง ถ้าครั้งที่สามตายจะต้องเริ่มเล่นเกมส์ใหม่',
      avatar_pro:
          'https://scontent.fbkk2-8.fna.fbcdn.net/v/t1.6435-9/106993919_2467981593492111_7982786695368030397_n.jpg?stp=dst-jpg_p206x206&_nc_cat=100&ccb=1-7&_nc_sid=da31f3&_nc_ohc=oNvAKjYJu74AX_WIZND&_nc_ht=scontent.fbkk2-8.fna&oh=00_AfC6WcumE9ZcdULeV78KlwX-5IjBgfhZUxw9w5Q6MwfOYg&oe=63A99A67',
    ),
    Tweet(
      state: true,
      time: "24s",
      name: '@Jayy',
      avatar_url:
          'https://media-exp1.licdn.com/dms/image/C4D22AQGHOr5brKC0iw/feedshare-shrink_800/0/1669476009459?e=1672272000&v=beta&t=WDFbsgKP8HtnHESsbkDZ2_7hEde8p6sAU-2ZlG4ggz0',
      postText: 'Open house 2020 ทำ Ai ที่มีชื่อว่าเณอลีน เป็นAi ที่พูดคุยตอบโต้กับนักเรียนที่มาร่วมงานผ่านจอ monitor ขนาดใหญ่ได้ ',
      avatar_pro:
          'https://scontent.fbkk2-8.fna.fbcdn.net/v/t1.6435-9/106993919_2467981593492111_7982786695368030397_n.jpg?stp=dst-jpg_p206x206&_nc_cat=100&ccb=1-7&_nc_sid=da31f3&_nc_ohc=oNvAKjYJu74AX_WIZND&_nc_ht=scontent.fbkk2-8.fna&oh=00_AfC6WcumE9ZcdULeV78KlwX-5IjBgfhZUxw9w5Q6MwfOYg&oe=63A99A67',
    ),
    Tweet(
      state: true,
      time: "25s",
      name: '@Jayy',
      avatar_url:
          'https://media-exp1.licdn.com/dms/image/C4D22AQGsp_6CaEKM1A/feedshare-shrink_800/0/1669476974378?e=1672272000&v=beta&t=o9GSf6Q-pbDj-8nG_UslngQBxRAQPJhD8P_SlOiQ9Ts',
      postText: 'มีช่อง Youtube เป็นของตัวเอง ชื่อช่อง Khumjingpa ทำ Cover เพลงและ Vlog พาท่องเที่ยว มียอดผู้ติดตาม 97 คน',
      avatar_pro:
          'https://scontent.fbkk2-8.fna.fbcdn.net/v/t1.6435-9/106993919_2467981593492111_7982786695368030397_n.jpg?stp=dst-jpg_p206x206&_nc_cat=100&ccb=1-7&_nc_sid=da31f3&_nc_ohc=oNvAKjYJu74AX_WIZND&_nc_ht=scontent.fbkk2-8.fna&oh=00_AfC6WcumE9ZcdULeV78KlwX-5IjBgfhZUxw9w5Q6MwfOYg&oe=63A99A67',
    ),
    Tweet(
      state: false,
      time: "26s",
      name: '@Jayy',
      avatar_url:
          'https://th.bing.com/th/id/R.f6af23905aee6adc117ef0eb02f998f3?rik=O2SjKtiY%2fIxYrw&pid=ImgRaw&r=0',
      postText: 'ผลงานต่างๆที่ได้ทำออกมาเป็นชิ้นงานถึงแม้มันจะยากและท้อแค่ไหน แต่พอเราทำจนสำเร็จเราก็รู้สึกภูมิใจในตัวเอง แม้อาจจะไม่ได้เก่งเทียบเท่าคนอื่นแต่อย่างน้อย มันก็ทำให้เรามีความสามารถในด้านต่างๆมากขึ้น',
      avatar_pro:
          'https://scontent.fbkk2-8.fna.fbcdn.net/v/t1.6435-9/106993919_2467981593492111_7982786695368030397_n.jpg?stp=dst-jpg_p206x206&_nc_cat=100&ccb=1-7&_nc_sid=da31f3&_nc_ohc=oNvAKjYJu74AX_WIZND&_nc_ht=scontent.fbkk2-8.fna&oh=00_AfC6WcumE9ZcdULeV78KlwX-5IjBgfhZUxw9w5Q6MwfOYg&oe=63A99A67',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          // ignore: prefer_const_constructors
          margin: const EdgeInsets.all(10.0),
          // ignore: prefer_const_constructors
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://scontent.fbkk2-8.fna.fbcdn.net/v/t1.6435-9/106993919_2467981593492111_7982786695368030397_n.jpg?stp=dst-jpg_p206x206&_nc_cat=100&ccb=1-7&_nc_sid=da31f3&_nc_ohc=oNvAKjYJu74AX_WIZND&_nc_ht=scontent.fbkk2-8.fna&oh=00_AfC6WcumE9ZcdULeV78KlwX-5IjBgfhZUxw9w5Q6MwfOYg&oe=63A99A67'),
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: Text(
          "Home",
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildIconButton(Icons.home, Colors.blue),
            buildIconButton(Icons.search_outlined, Colors.grey),
            buildIconButton(Icons.notifications_outlined, Colors.grey),
            buildIconButton(Icons.email_outlined, Colors.grey),
          ],
        ),
      ),
      body: listofTweet(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(FontAwesomeIcons.pen),
        onPressed: () {
          setState(() {
            if (count == 9) {
              tweetList.insert(0, tweetList_pr[9]);
            } else {
              tweetList.insert(0, tweetList_pr[count]);
              count++;
            }
          });
        },
      ),
    );
  }

  Widget listofTweet() {
    return Container(
        color: Colors.white,
        child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return tweetList[index];
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
                  height: 10,
                ),
            itemCount: tweetList.length));
  }

  Widget buildIconButton(IconData icon, Color color) {
    return IconButton(
      icon: Icon(
        icon,
        color: color,
      ),
      onPressed: () {},
    );
  }
}