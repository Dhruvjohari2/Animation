import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;
  late Animation<double> _radiusAnimation;

  @override
  void initState() {
    super.initState();
    //animation controller
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..forward();

    // Rotation animation
    _radiusAnimation = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
    // radius animation = from circle to square
    _radiusAnimation = Tween(begin: 450.0, end: 10.0)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _controller.addListener(() {
      setState(() {});
    });
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Transform.rotate(
              angle: 2.0,
              child: Container(
                width: 225,
                height: 225,
                decoration: BoxDecoration(
                  color: const Color(0xFF692D94),
                  borderRadius: BorderRadius.all(
                    Radius.circular(_radiusAnimation.value),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF692D94).withOpacity(0.8),
                      offset: const Offset(-6.0, -6.0),
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: const Offset(6.0, 6.0),
                    ),
                  ],
                ),
              ),
            ),
            Transform.rotate(
              angle: 2.2,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: const Color(0xFF4527A0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(_radiusAnimation.value),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF4527A0).withOpacity(0.8),
                      offset: const Offset(-6.0, -6.0),
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: const Offset(6.0, 6.0),
                    ),
                  ],
                ),
              ),
            ),
            Transform.rotate(
              angle: 2.4,
              child: Container(
                width: 175,
                height: 175,
                decoration: BoxDecoration(
                  color: const Color(0xFF512DA8),
                  borderRadius: BorderRadius.all(
                    Radius.circular(_radiusAnimation.value),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF512DA8).withOpacity(0.8),
                      offset: const Offset(-6.0, -6.0),
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: const Offset(6.0, 6.0),
                    ),
                  ],
                ),
              ),
            ),
            Transform.rotate(
              angle: 2.6,
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: const Color(0xFF5E35B1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(_radiusAnimation.value),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF5E35B1).withOpacity(0.8),
                      offset: const Offset(-6.0, -6.0),
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: const Offset(6.0, 6.0),
                    ),
                  ],
                ),
              ),
            ),
            Transform.rotate(
              angle: 2.8,
              child: Container(
                width: 125,
                height: 125,
                decoration: BoxDecoration(
                  color: const Color(0xFF673AB7),
                  borderRadius: BorderRadius.all(
                    Radius.circular(_radiusAnimation.value),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF673AB7).withOpacity(0.8),
                      offset: const Offset(-6.0, -6.0),
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: const Offset(6.0, 6.0),
                    ),
                  ],
                ),
              ),
            ),
            Transform.rotate(
              angle: 3.0,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color(0xFF7E57C2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(_radiusAnimation.value),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF7E57C2).withOpacity(0.8),
                      offset: const Offset(-6.0, -6.0),
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: const Offset(6.0, 6.0),
                    ),
                  ],
                ),
              ),
            ),
            Transform.rotate(
              angle: 3.2,
              child: Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  color: const Color(0xFF7E57C2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(_radiusAnimation.value),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF7E57C2).withOpacity(0.8),
                      offset: const Offset(-6.0, -6.0),
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: const Offset(6.0, 6.0),
                    ),
                  ],
                ),
              ),
            ),
            Transform.rotate(
              angle: 3.4,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF9575CD),
                  borderRadius: BorderRadius.all(
                    Radius.circular(_radiusAnimation.value),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF9575CD).withOpacity(0.8),
                      offset: const Offset(-6.0, -6.0),
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: const Offset(6.0, 6.0),
                    ),
                  ],
                ),
              ),
            ),
            Transform.rotate(
              angle: 3.6,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  color: const Color(0xFFB39DDB),
                  borderRadius: BorderRadius.all(
                    Radius.circular(_radiusAnimation.value),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFFB39DDB).withOpacity(0.8),
                      offset: const Offset(-6.0, -6.0),
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: const Offset(6.0, 6.0),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
