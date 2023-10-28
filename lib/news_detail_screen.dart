import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; 
import 'app_styles.dart'; 
import 'size_config.dart'; 
import 'widgets/navagation_bar.dart';
import 'profile_screen.dart';
import 'main.dart';

class NewsDetailScreen extends StatelessWidget {
  const NewsDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: kLighterWhite, 
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 50, 
              child: const FullScreenSlider(),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(42),
                    topRight: Radius.circular(42),
                  ),
                  color: Colors.white, 
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16, 
                  vertical: 60,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12), 
                        border: Border.all(
                          color: Colors.white, 
                        ),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: SvgPicture.asset('assets/arrow_back_icon.svg'),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12), 
                        border: Border.all(
                          color: Colors.white, 
                        ),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: SvgPicture.asset('assets/bookmark_white_icon.svg'),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16, 
              ),
              transform: Matrix4.translationValues(0, -14, 0),
              child: const Text(
                'Unravel mysteries\nof the Maldives',
                style: TextStyle(
                  color: Colors.blue, 
                  fontSize: 28, 
                  fontWeight: FontWeight.bold, 
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 16, 
                vertical: 16,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 20, 
              ),
              height: 54,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), 
                border: Border.all(
                  color: Colors.grey, 
                ),
              ),
              child: const Row(
                children: [
                  CircleAvatar(
                    radius: 13,
                    backgroundColor: Colors.blue, 
                    backgroundImage: NetworkImage(
                      'https://ps.w.org/avatar-3d-creator/assets/icon-256x256.png?rev=2648611',
                    ),
                  ),
                  SizedBox(
                    width: 10, 
                  ),
                  Text(
                    'Keanu Carpent May 17 • 8 min read',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.grey, 
                      fontSize: 18, 
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16, 
              ),
              child: Text(
                'Maldives is an archipelagic state located in South Asia, situated in the Indian Ocean...',
                style: TextStyle(
                  fontSize: 24, 
                  color: Colors.blue, 
                ),
              ),
            ),
            const SizedBox(
              height: 20, )

          ],
        ),
      ),
      
      bottomNavigationBar: NavagationBar(
        selectedIndex: 0, 
        onItemTapped: (index) {
       
          if (index == 3) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProfileScreen()),
        );
      } else if (index == 0) {

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MyApp()),
        );
        }
        },
      ),
    );
  }
}

final List<String> imageList = [
  'https://images.unsplash.com/photo-1514282401047-d79a71a590e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1365&q=80',
  'https://images.unsplash.com/photo-1573843981267-be1999ff37cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',
  'https://images.unsplash.com/photo-1540202404-a2f29016b523?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3266&q=80'
];
class FullScreenSlider extends StatefulWidget {
  const FullScreenSlider({Key? key}) : super(key: key);

  @override
  _FullScreenSliderState createState() => _FullScreenSliderState();
}

class _FullScreenSliderState extends State<FullScreenSlider> {
  int _current = 0; 
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            height: SizeConfig.blockSizeVertical! * 50, 
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
            initialPage: _current,
          ),
          items: imageList
              .map(
                (item) => Image.network(
                  item,
                  fit: BoxFit.cover,
                  height: SizeConfig.blockSizeVertical! * 50,
                  width: double.infinity,
                ),
              )
              .toList(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList
                  .asMap()
                  .entries
                  .map(
                    (entry) => GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: SvgPicture.asset(
                          _current == entry.key
                              ? 'assets/carousel_indicator_enabled.svg'
                              : 'assets/carousel_indicator_disabled.svg',
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
