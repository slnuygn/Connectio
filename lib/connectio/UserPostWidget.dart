import 'package:flutter/material.dart';

class UserPostWidget extends StatefulWidget {
  const UserPostWidget({Key? key});

  @override
  _UserPostState createState() => _UserPostState();
}

class _UserPostState extends State<UserPostWidget> {
  @override
  Widget build(BuildContext context) {
    bool isLiked = false; // Declare _isLiked here
    int likeCount = 0;
    int selectedIndex = 0;

    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Align(
        alignment: Alignment.center,
        child: Stack(
          children: [
            Container(
              width: 375.0, // Fixed width
              decoration: BoxDecoration(
                color: const Color(0x546E3333),
                borderRadius: BorderRadius.circular(9.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: null,
                        ),
                      ),
                      SizedBox(width: 5.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: Text(
                              'User Name',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            '@user_id',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 360.0, // Fixed width
                      decoration: BoxDecoration(
                        color: const Color(0x546E3333),
                        borderRadius: BorderRadius.circular(9.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                        child: Text(
                          'Text Sample',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5.0, 5.0, 10.0, 5.0),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isLiked = !isLiked;
                              likeCount += isLiked ? 1 : -1;
                            });
                          },
                          icon: Icon(
                            isLiked ? Icons.favorite : Icons.favorite_border,
                            color: isLiked ? Colors.red : Colors.white,
                          ),
                        ),
                        const SizedBox(width: 5.0),
                        Text(
                          likeCount.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 10.0,
              right: 1.0,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}