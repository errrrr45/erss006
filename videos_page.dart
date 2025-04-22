import 'package:flutter/material.dart';

class VideosPage extends StatelessWidget {
  const VideosPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Videos'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(7),
        child: Row(
          children: [
            // сол жақ панель
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 540,
                    height: 340,
                    color: Colors.black,
                    child: Stack(
                      children: [
                        Center(
                          child: Text(
                            'Video Player',
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ),

                        Positioned(
                          bottom: 20,
                          left: 20,
                          child: Icon(Icons.play_arrow, color: Colors.white, size: 30,),
                        ),

                        Positioned(
                          bottom: 20,
                          right: 20,
                          child: Icon(Icons.volume_up, color: Colors.white, size: 30,),
                        ),

                        Positioned(
                          bottom: 20,
                          left: 80,
                          child: Text(
                            '0:15 / 1:00',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 540,
                    height: 40,
                    color: Colors.grey,
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                    child: Text(
                      'Video Title',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 540,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 440,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Type a comment',
                              border: OutlineInputBorder(),
                              isDense: true,
                              contentPadding: EdgeInsets.all(8),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          height: 40,
                          child: MaterialButton(
                            onPressed: () {},
                            color: Colors.black45,
                            child: Text(
                              'Publish',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '3 comments',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Container(height: 1.5, width: 540, color: Colors.black),
                  SizedBox(height: 5),
                  Text(
                    'From 192.168.*.32',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 4),
                  Text('A very Nice Video', style: TextStyle(color: Colors.black, fontSize: 17),),
                  SizedBox(height: 5),
                  Container(height: 1, width: 540, color: Colors.grey),
                  SizedBox(height: 7),
                  Text(
                    'From 192.168.*.32',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 4),
                  Text('A very Nice Video', style: TextStyle(color: Colors.black, fontSize: 17),),
                  SizedBox(height: 5),
                  Container(height: 1, width: 540, color: Colors.grey),
                  SizedBox(height: 7),
                  Text(
                    'From 192.168.*.32',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 4),
                  Text('A very Nice Video', style: TextStyle(color: Colors.black, fontSize: 17),),
                  SizedBox(height: 5),
                  Container(height: 1, width: 540, color: Colors.grey),
                ],
              ),
            ),
            // оң жақ панель
            SizedBox(width: 5),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'More videos...',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 100,
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey[800],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              Center(
                                child: Text(
                                  'Video Preview',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 8,
                                right: 8,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 6,
                                    vertical: 2,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.black54,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    '1:30',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

