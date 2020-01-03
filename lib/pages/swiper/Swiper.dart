import 'package:cached_network_image/cached_network_image.dart';
import 'package:delalaw/constants/Asserts.dart';
import 'package:delalaw/pages/widgets/swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class SwiperSlide extends StatefulWidget{
  _SwiperSlide createState()=>_SwiperSlide();
}
class _SwiperSlide extends State<SwiperSlide>{
  final SwiperController  _swiperController = SwiperController();
  final int _pageCount = 3;
  int _currentIndex = 0;
  final List<String> titles = [
    "8 Gb Ram\n cor 8 pc  \n amd graphics design . ",
    "8 Gb Ram\n cor 8 pc  \n amd graphics design .",
    "8 Gb Ram\n cor 8 pc  \n amd graphics design ."
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            child: swiperFun()
        ),
//        SizedBox(height: 10.0),
//        _buildButtons(),
      ],
    );

  }
  swiperFun() {
  return Swiper(
  index: _currentIndex,
  controller: _swiperController,
  itemCount: _pageCount,
  onIndexChanged: (index) {
    setState(() {
      _currentIndex = index;
    });
  },
  loop: false,
  itemBuilder: (context, index){
    return _buildPage(title: titles[index], icon: images[index]);
  },
  pagination: SwiperPagination(
      builder: CustomPaginationBuilder(
          activeColor: Colors.white,
          activeSize: Size(10.0, 20.0),
          size: Size(10.0, 15.0),
          color: Colors.grey.shade600
      )
  ),
);
  }

   _buildPage({String title, String icon}) {
    final TextStyle titleStyle = TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20.0
    );
    return SafeArea(

        child:Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(1.0, 0.0,1.0,0.0),
          padding: const EdgeInsets.all(1.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0.0),
              image: DecorationImage(
                  image: CachedNetworkImageProvider(icon),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black38, BlendMode.multiply)
              )
          ),
          child: Stack(
//            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Align(
          alignment: Alignment.bottomCenter,

            child: Text(title, textAlign: TextAlign.center, style: titleStyle.copyWith(
                  color: Colors.white
              ),),
              ),
//              SizedBox(height: 30),
            ],
          ),
        )
    );
  }

}