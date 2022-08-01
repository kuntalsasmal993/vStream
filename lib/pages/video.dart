import 'package:flutter/material.dart';
class video extends StatelessWidget {
  const video({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Image.network("https://images.unsplash.com/photo-1659340298031-f3e6824f6679?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
        fit: BoxFit.contain,
        width: MediaQuery.of(context).size.width,),
        Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            children: const [CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1659298630743-46ec02e9013f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1NHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
                             radius: 20,
            ),
            Expanded(child: Padding(padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text("This is sample Title Text", style: TextStyle(fontSize: 15)),), ),
            Icon(Icons.more_vert, size: 30)
            ],
          ),
        ),
      ],

    );
  }
}
