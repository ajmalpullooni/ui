import 'package:flutter/material.dart';
import 'package:promilo/const.dart';

class SlideImages extends StatefulWidget {
  @override
  _SlideImagesState createState() => _SlideImagesState();
}

class _SlideImagesState extends State<SlideImages> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: const [
              ImageScrolling(
                description: 'Popular Meetups\n in india',
                imageUrl:
                    'https://kanbanzone.com/wp-content/uploads/2020/10/team-meeting.jpg',
              ),
              ImageScrolling(
                description: 'Popular Meetups\n in italy',
                imageUrl:
                    'https://watermark.lovepik.com/photo/20211201/large/lovepik-business-team-office-talking-about-work-picture_501327053.jpg',
              ),
              ImageScrolling(
                description: 'Popular Meetups\n in Japan',
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpCLkNZUda6jv460IGI6DElmzzTpT1Z8f0Kg&usqp=CAU',
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List<Widget>.generate(3, (int index) {
            return AnimatedContainer(
              duration: Duration(milliseconds: 300),
              width: index == _currentPage ? 10.0 : 8.0,
              height: 10.0,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: index == _currentPage ? Const.main : Colors.grey,
              ),
            );
          }),
        ),
      ],
    );
  }
}

class ImageScrolling extends StatelessWidget {
  final String description;
  final String imageUrl;
  const ImageScrolling({
    super.key,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            imageUrl,
            fit: BoxFit.fill,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              height: 200, // Adjust height as needed
              width: 250, // Adjust width as needed
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.bottomRight,
                  colors: [Colors.black.withOpacity(0.5), Colors.transparent],
                ),
              ), // Adjust the opacity here
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
