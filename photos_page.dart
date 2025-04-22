//Моб апп А2
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhotosPage extends StatefulWidget {
  const PhotosPage({super.key});

  @override
  _PhotosPageState createState() => _PhotosPageState();
}

class _PhotosPageState extends State<PhotosPage> {
  int currentPage = 1;
  int totalPages = 1;
  List<Map<String, dynamic>> images = [];

  @override
  void initState() {
    super.initState();
    loadPhotos();
  }

  Future<void> loadPhotos() async {
    final String response = await rootBundle.loadString('images/photos.json');
    final List<dynamic> data = json.decode(response);
    setState(() {
      images = data.map((e) => e as Map<String, dynamic>).toList();
      totalPages = (images.length / 6).ceil();
    });
  }

  void changePage(int page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> displayedImages =
        images.skip((currentPage - 1) * 6).take(6).toList();

    return Scaffold(
      appBar: AppBar(title: Text('Photos')),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: displayedImages.length,
              itemBuilder: (context, index) {
                var photo = displayedImages[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => FullScreenImagePage(imageUrl: photo['url']),
                      ),
                    );
                  },
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.asset(photo['url'], fit: BoxFit.cover),
                      Container(
                        color: Colors.black54,
                        padding: EdgeInsets.all(4),
                        child: Text(
                          "Просмотры: ${photo['views']} | Популярность: ${photo['popularity']}",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

class FullScreenImagePage extends StatelessWidget {
  final String imageUrl;

  const FullScreenImagePage({Key? key, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.transparent, iconTheme: IconThemeData(color: Colors.white),),
      body: Center(
        child: InteractiveViewer(
          child: Image.asset(imageUrl, fit: BoxFit.contain),
        ),
      ),
    );
  }
}

/*class PhotosPage extends StatefulWidget {
  const PhotosPage({super.key});

  @override
  _PhotosPageState createState() => _PhotosPageState();
}

class _PhotosPageState extends State<PhotosPage> {
  List<bool> isLikedList = List.filled(6, false);
  List<bool> isDislikedList = List.filled(6, false);

  void toggleLike(int index) {
    setState(() {
      isLikedList[index] = !isLikedList[index];
      if (isLikedList[index]) isDislikedList[index] = false;
    });
  }

  void toggleDislike(int index) {
    setState(() {
      isDislikedList[index] = !isDislikedList[index];
      if (isDislikedList[index]) isLikedList[index] = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photos'),
        backgroundColor: Colors.greenAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 150,
                  height: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300],
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (_) => FullScreenImagePage(
                                      imageUrl: 'images/luffi1.jpg',
                                    ),
                              ),
                            );
                          },
                          child: Image.asset(
                            'images/luffi1.jpg',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Positioned(
                            top: 2,
                            left: 2,
                            child: IconButton(
                              onPressed: () => toggleLike(0),
                              icon: Icon(
                                Icons.favorite,
                                color:
                                    isLikedList[0] ? Colors.red : Colors.white,
                                size: 28,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 2,
                            right: 2,
                            child: IconButton(
                              onPressed: () => toggleDislike(0),
                              icon: Icon(
                                Icons.thumb_down,
                                color:
                                    isDislikedList[0]
                                        ? Colors.black12
                                        : Colors.white,
                                size: 28,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 10,
                            bottom: 8,
                            child: Icon(
                              Icons.download,
                              color: Colors.black,
                              size: 28,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  height: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300],
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (_) => FullScreenImagePage(
                                      imageUrl: 'images/shanks.jpg',
                                    ),
                              ),
                            );
                          },
                          child: Image.asset(
                            'images/shanks.jpg',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 2,
                        left: 2,
                        child: IconButton(
                          onPressed: () => toggleLike(1),
                          icon: Icon(
                            Icons.favorite,
                            color: isLikedList[1] ? Colors.red : Colors.white,
                            size: 28,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 2,
                        right: 2,
                        child: IconButton(
                          onPressed: () => toggleDislike(1),
                          icon: Icon(
                            Icons.thumb_down,
                            color:
                                isDislikedList[1]
                                    ? Colors.black12
                                    : Colors.white,
                            size: 28,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 10,
                        bottom: 8,
                        child: Icon(
                          Icons.download,
                          color: Colors.black,
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 150,
                  height: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300],
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (_) => FullScreenImagePage(
                                      imageUrl: 'images/zoro1.jpg',
                                    ),
                              ),
                            );
                          },
                          child: Image.asset(
                            'images/zoro1.jpg',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 2,
                        left: 2,
                        child: IconButton(
                          onPressed: () => toggleLike(2),
                          icon: Icon(
                            Icons.favorite,
                            color: isLikedList[2] ? Colors.red : Colors.white,
                            size: 28,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 2,
                        right: 2,
                        child: IconButton(
                          onPressed: () => toggleDislike(2),
                          icon: Icon(
                            Icons.thumb_down,
                            color:
                                isDislikedList[2]
                                    ? Colors.black12
                                    : Colors.white,
                            size: 28,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 10,
                        bottom: 8,
                        child: Icon(
                          Icons.download,
                          color: Colors.black,
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  height: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300],
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (_) => FullScreenImagePage(
                                      imageUrl: 'images/dark.jpg',
                                    ),
                              ),
                            );
                          },
                          child: Image.asset(
                            'images/dark.jpg',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 2,
                        left: 2,
                        child: IconButton(
                          onPressed: () => toggleLike(3),
                          icon: Icon(
                            Icons.favorite,
                            color: isLikedList[3] ? Colors.red : Colors.white,
                            size: 28,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 2,
                        right: 2,
                        child: IconButton(
                          onPressed: () => toggleDislike(3),
                          icon: Icon(
                            Icons.thumb_down,
                            color:
                                isDislikedList[3]
                                    ? Colors.black12
                                    : Colors.white,
                            size: 28,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 10,
                        bottom: 8,
                        child: Icon(
                          Icons.download,
                          color: Colors.black,
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 150,
                  height: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300],
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (_) => FullScreenImagePage(
                                      imageUrl: 'images/ishigo.jpg',
                                    ),
                              ),
                            );
                          },
                          child: Image.asset(
                            'images/ishigo.jpg',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 2,
                        left: 2,
                        child: IconButton(
                          onPressed: () => toggleLike(4),
                          icon: Icon(
                            Icons.favorite,
                            color: isLikedList[4] ? Colors.red : Colors.white,
                            size: 28,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 2,
                        right: 2,
                        child: IconButton(
                          onPressed: () => toggleDislike(4),
                          icon: Icon(
                            Icons.thumb_down,
                            color:
                                isDislikedList[4]
                                    ? Colors.black12
                                    : Colors.white,
                            size: 28,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 10,
                        bottom: 8,
                        child: Icon(
                          Icons.download,
                          color: Colors.black,
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  height: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300],
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (_) => FullScreenImagePage(
                                      imageUrl: 'images/sanji.jpg',
                                    ),
                              ),
                            );
                          },
                          child: Image.asset(
                            'images/sanji.jpg',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 2,
                        left: 2,
                        child: IconButton(
                          onPressed: () => toggleLike(5),
                          icon: Icon(
                            Icons.favorite,
                            color: isLikedList[5] ? Colors.red : Colors.white,
                            size: 28,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 2,
                        right: 2,
                        child: IconButton(
                          onPressed: () => toggleDislike(5),
                          icon: Icon(
                            Icons.thumb_down,
                            color:
                                isDislikedList[5]
                                    ? Colors.black12
                                    : Colors.white,
                            size: 28,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 10,
                        bottom: 8,
                        child: Icon(
                          Icons.download,
                          color: Colors.black,
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FullScreenImagePage extends StatelessWidget {
  final String imageUrl;

  const FullScreenImagePage({Key? key, required this.imageUrl})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      body: Center(
        child: InteractiveViewer(
          child: Image.asset(imageUrl, fit: BoxFit.contain),
        ),
      ),
    );
  }
}*/