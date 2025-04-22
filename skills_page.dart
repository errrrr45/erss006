//Моб апп А2
import 'package:flutter/material.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({super.key});

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  void _incrementViewCount() {
    showDialog(
      context: context,
      builder:
          (context) => Dialog(
            backgroundColor: Colors.transparent, // Фонды мөлдір ету
            child: GestureDetector(
              onTap:
                  () => Navigator.pop(
                    context,
                  ), // Диалогты жабу үшін кез келген жерді басу
              child: Container(
                width: 350,
                height: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Skill Name', style: TextStyle(fontSize: 20)),
                      SizedBox(height: 10),
                      Text(
                        'Гоку сражается с воинами других вселенных в "Dragon Ball Super" во время Турнира Силы (Tournament of Power). Это арка "Вселенская Выживаемость" (Universe Survival Saga), которая идет с эпизода 77 по 131.На этом турнире бойцы из разных вселенных сражаются за выживание своей вселенной, и проигравшие вселенные стираются Зен-О. В ходе турнира Гоку впервые использует Ультра Инстинкт (Ultra Instinct) и сражается с сильнейшими бойцами, включая Джирена (Jiren) из Вселенной 11.',
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(height: 15),
                      Container(
                        width: 220,
                        height: 220,
                        color: Colors.grey[300],
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            'Image Of Skill',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                        bottom: 0,
                        right: 0,
                        child: MaterialButton(
                          onPressed: () {},
                          color: Colors.grey[300],
                          child: Text('Next', style: TextStyle(fontSize: 12)),
                        ),
                      ),
                ],
              ),),
            ),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skills List'),
        backgroundColor: Colors.greenAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 150,
                height: 30,
                color: Colors.grey[300],
                child: Text('Skill Type Title', style: TextStyle(fontSize: 15)),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ), // Қара шекара
                    ),
                    child: Row(
                      children: [
                        Text('Skill Name', style: TextStyle(fontSize: 15)),
                        IconButton(
                          onPressed: _incrementViewCount,
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ), // Қара шекара
                    ),
                    child: Row(
                      children: [
                        Text('Skill Name', style: TextStyle(fontSize: 15)),
                        IconButton(
                          onPressed: _incrementViewCount,
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ), // Қара шекара
                    ),
                    child: Row(
                      children: [
                        Text('Skill Name', style: TextStyle(fontSize: 15)),
                        IconButton(
                          onPressed: _incrementViewCount,
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ), // Қара шекара
                    ),
                    child: Row(
                      children: [
                        Text('Skill Name', style: TextStyle(fontSize: 15)),
                        IconButton(
                          onPressed: _incrementViewCount,
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: 10),
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ), // Қара шекара
                    ),
                    child: Row(
                      children: [
                        Text('Skill Name', style: TextStyle(fontSize: 15)),
                        IconButton(
                          onPressed: _incrementViewCount,
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ), // Қара шекара
                    ),
                    child: Row(
                      children: [
                        Text('Skill Name', style: TextStyle(fontSize: 15)),
                        IconButton(
                          onPressed: _incrementViewCount,
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ), // Қара шекара
                    ),
                    child: Row(
                      children: [
                        Text('Skill Name', style: TextStyle(fontSize: 15)),
                        IconButton(
                          onPressed: _incrementViewCount,
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: 10),
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ), // Қара шекара
                    ),
                    child: Row(
                      children: [
                        Text('Skill Name', style: TextStyle(fontSize: 15)),
                        IconButton(
                          onPressed: _incrementViewCount,
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ), // Қара шекара
                    ),
                    child: Row(
                      children: [
                        Text('Skill Name', style: TextStyle(fontSize: 15)),
                        IconButton(
                          onPressed: _incrementViewCount,
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                width: 150,
                height: 30,
                color: Colors.grey[300],
                child: Text('Skill Type Title', style: TextStyle(fontSize: 15)),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ), // Қара шекара
                    ),
                    child: Row(
                      children: [
                        Text('Skill Name', style: TextStyle(fontSize: 15)),
                        IconButton(
                          onPressed: _incrementViewCount,
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ), // Қара шекара
                    ),
                    child: Row(
                      children: [
                        Text('Skill Name', style: TextStyle(fontSize: 15)),
                        IconButton(
                          onPressed: _incrementViewCount,
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ), // Қара шекара
                    ),
                    child: Row(
                      children: [
                        Text('Skill Name', style: TextStyle(fontSize: 15)),
                        IconButton(
                          onPressed: _incrementViewCount,
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ), // Қара шекара
                    ),
                    child: Row(
                      children: [
                        Text('Skill Name', style: TextStyle(fontSize: 15)),
                        IconButton(
                          onPressed: _incrementViewCount,
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: 10),
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ), // Қара шекара
                    ),
                    child: Row(
                      children: [
                        Text('Skill Name', style: TextStyle(fontSize: 15)),
                        IconButton(
                          onPressed: _incrementViewCount,
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ), // Қара шекара
                    ),
                    child: Row(
                      children: [
                        Text('Skill Name', style: TextStyle(fontSize: 15)),
                        IconButton(
                          onPressed: _incrementViewCount,
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ), // Қара шекара
                    ),
                    child: Row(
                      children: [
                        Text('Skill Name', style: TextStyle(fontSize: 15)),
                        IconButton(
                          onPressed: _incrementViewCount,
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: 10),
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ), // Қара шекара
                    ),
                    child: Row(
                      children: [
                        Text('Skill Name', style: TextStyle(fontSize: 15)),
                        IconButton(
                          onPressed: _incrementViewCount,
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ), // Қара шекара
                    ),
                    child: Row(
                      children: [
                        Text('Skill Name', style: TextStyle(fontSize: 15)),
                        IconButton(
                          onPressed: _incrementViewCount,
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                width: 150,
                height: 30,
                color: Colors.grey[300],
                child: Text('Skill Type Title', style: TextStyle(fontSize: 15)),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ), // Қара шекара
                    ),
                    child: Row(
                      children: [
                        Text('Skill Name', style: TextStyle(fontSize: 15)),
                        IconButton(
                          onPressed: _incrementViewCount,
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ), // Қара шекара
                    ),
                    child: Row(
                      children: [
                        Text('Skill Name', style: TextStyle(fontSize: 15)),
                        IconButton(
                          onPressed: _incrementViewCount,
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ), // Қара шекара
                    ),
                    child: Row(
                      children: [
                        Text('Skill Name', style: TextStyle(fontSize: 15)),
                        IconButton(
                          onPressed: _incrementViewCount,
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ), // Қара шекара
                    ),
                    child: Row(
                      children: [
                        Text('Skill Name', style: TextStyle(fontSize: 15)),
                        IconButton(
                          onPressed: _incrementViewCount,
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: 10),
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ), // Қара шекара
                    ),
                    child: Row(
                      children: [
                        Text('Skill Name', style: TextStyle(fontSize: 15)),
                        IconButton(
                          onPressed: _incrementViewCount,
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ), // Қара шекара
                    ),
                    child: Row(
                      children: [
                        Text('Skill Name', style: TextStyle(fontSize: 15)),
                        IconButton(
                          onPressed: _incrementViewCount,
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ), // Қара шекара
                    ),
                    child: Row(
                      children: [
                        Text('Skill Name', style: TextStyle(fontSize: 15)),
                        IconButton(
                          onPressed: _incrementViewCount,
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: 10),
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ), // Қара шекара
                    ),
                    child: Row(
                      children: [
                        Text('Skill Name', style: TextStyle(fontSize: 15)),
                        IconButton(
                          onPressed: _incrementViewCount,
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ), // Қара шекара
                    ),
                    child: Row(
                      children: [
                        Text('Skill Name', style: TextStyle(fontSize: 15)),
                        IconButton(
                          onPressed: _incrementViewCount,
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


