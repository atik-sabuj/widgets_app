import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class PhotoHeroWidget extends StatelessWidget {
  const PhotoHeroWidget(
      {Key? key, required this.photo, required this.onTap, required this.width})
      : super(key: key);

  final String photo;
  final VoidCallback onTap;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Hero(
        tag: photo,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Image.asset(
              photo,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}



class HeroAnimation extends StatelessWidget {
  const HeroAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    timeDilation = 10.0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Hero Widget'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: PhotoHeroWidget(
          photo: 'images/aboy.jpeg',
          width: 300.0,
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute<void>(builder: (BuildContext context) {
              return Scaffold(
                appBar: AppBar(
                  title: const Text('Photo Transition'),
                  backgroundColor: Colors.green,
                ),
                body: Container(
                  // background of 2nd route
                  color: Colors.purple,
                  padding: const EdgeInsets.all(16.0),
                  alignment: Alignment.topLeft,
                  child: PhotoHeroWidget(
                    photo: 'images/aboy.jpeg',
                    width: 100.0,
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              );
            }));
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(home: HeroAnimation()));
}




//new




body: Container(
// background of 2nd route
color: Colors.purple,
padding: const EdgeInsets.all(16.0),
alignment: Alignment.topLeft,
child: PhotoHeroWidget(
photo: 'images/aboy.jpeg',
width: 100.0,
onTap: () {
Navigator.of(context).pop();
},
),
),
);
}));
},
),
),
);
}
}

void main() {


  //new




body: Container(
// background of 2nd route
color: Colors.purple,
padding: const EdgeInsets.all(16.0),
alignment: Alignment.topLeft,
child: PhotoHeroWidget(
photo: 'images/aboy.jpeg',
width: 100.0,
onTap: () {
Navigator.of(context).pop();
},
),
),
);
}));
},
),
),
);
}
}

void main() {
runApp(const MaterialApp(home: HeroAnimation()));
}
runApp(const MaterialApp(home: HeroAnimation()));
}


//new 3

  //new




body: Container(
// background of 2nd route
color: Colors.purple,
padding: const EdgeInsets.all(16.0),
alignment: Alignment.topLeft,
child: PhotoHeroWidget(
photo: 'images/aboy.jpeg',
width: 100.0,
onTap: () {
Navigator.of(context).pop();
},
),
),
);
}));
},
),
),
);
}
}

void main() {
runApp(const MaterialApp(home: HeroAnimation()));
}
runApp(const MaterialApp(home: HeroAnimation()));
}


  //new




body: Container(
// background of 2nd route
color: Colors.purple,
padding: const EdgeInsets.all(16.0),
alignment: Alignment.topLeft,
child: PhotoHeroWidget(
photo: 'images/aboy.jpeg',
width: 100.0,
onTap: () {
Navigator.of(context).pop();
},
),
),
);
}));
},
),
),
);
}
}

void main() {
runApp(const MaterialApp(home: HeroAnimation()));
}
runApp(const MaterialApp(home: HeroAnimation()));
}

  //new




body: Container(
// background of 2nd route
color: Colors.purple,
padding: const EdgeInsets.all(16.0),
alignment: Alignment.topLeft,
child: PhotoHeroWidget(
photo: 'images/aboy.jpeg',
width: 100.0,
onTap: () {
Navigator.of(context).pop();
},
),
),
);
}));
},
),
),
);
}
}

void main() {
runApp(const MaterialApp(home: HeroAnimation()));
}
runApp(const MaterialApp(home: HeroAnimation()));
}


  //new




body: Container(
// background of 2nd route
color: Colors.purple,
padding: const EdgeInsets.all(16.0),
alignment: Alignment.topLeft,
child: PhotoHeroWidget(
photo: 'images/aboy.jpeg',
width: 100.0,
onTap: () {
Navigator.of(context).pop();
},
),
),
);
}));
},
),
),
);
}
}

void main() {
runApp(const MaterialApp(home: HeroAnimation()));
}
runApp(const MaterialApp(home: HeroAnimation()));
}
