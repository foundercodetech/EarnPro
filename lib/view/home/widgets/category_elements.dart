import 'package:earnpro/generated/assets.dart';
import 'package:earnpro/main.dart';
import 'package:earnpro/res/components/text_widget.dart';
import 'package:earnpro/test.dart';
import 'package:earnpro/utils/routes/routes_name.dart';
import 'package:earnpro/view/home/cassino/Dragon_tiger/dragon_tiger_Assets.dart';
import 'package:earnpro/view/home/cassino/Dragon_tiger/homepageDragon.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:earnpro/view/home/lottery/trx/trx_screen.dart';
import 'package:flutter/services.dart';

class CategoryElement extends StatefulWidget {
  final int selectedCategoryIndex;
  const CategoryElement({super.key, required this.selectedCategoryIndex});

  @override
  State<CategoryElement> createState() => _CategoryElementState();
}

class _CategoryElementState extends State<CategoryElement> {
  @override
  Widget build(BuildContext context) {
    
    List<LotteryModel> lotteryList = [
      LotteryModel(
          titleText: 'Win Go',
          subTitleText: 'Guess Number',
          gameText: 'Green/Red/Violet to win',
          decorationImage: Assets.imagesDecorationFirst,
          decoImage: "",
          member: 'zbttdtnh',
          memberImage: Assets.person1,
          winAmount: '196.00',
          onTap: (){
            Navigator.pushNamed(context, RoutesName.winGoScreen);
        }
      ),
      // LotteryModel(
      //     titleText: 'K3 Lotre',
      //     subTitleText: 'Guess Number',
      //     gameText: 'Big/Small/Odd/Even',
      //     decorationImage: Assets.imagesDecorationSecond,
      //     decoImage: Assets.imagesDecoSecond,
      //     member: 'zeejnngs',
      //     memberImage: Assets.person2,
      //     winAmount: '188.16',
      //     onTap: (){
      //       // Utils.showImageComming(context);
      //       Navigator.push(context, MaterialPageRoute(builder: (context)=>const ScreenK3()));
      //
      //     }
      // ),
      // LotteryModel(
      //     titleText: '5D Lotre',
      //     subTitleText: 'Guess Number',
      //     gameText: 'Big/Small/Odd/Even',
      //     decorationImage: Assets.imagesDecorationFour,
      //     decoImage: Assets.imagesDecoThird,
      //     member: 'lxqldcer',
      //     memberImage: Assets.person3,
      //     winAmount: '194.00',
      //     onTap: (){
      //       Utils.showImageComming(context);
      //       // Navigator.push(context, MaterialPageRoute(builder: (context)=>const Screen5d()));
      //
      //
      //     }
      //     ),
      LotteryModel(
          titleText: 'Trx Win',
          subTitleText: 'Guess Number',
          gameText: 'Green/Red/Purple to win',
          decorationImage: Assets.imagesDecorationThirdPurple,
          decoImage: Assets.imagesDecoFour,
          member: 'zsifarlr',
          memberImage: Assets.person4,
          winAmount: '1960.00',
          onTap: (){
            // Utils.showImageComming(context);
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const TrxScreen()));
          }

      ),
    ];
    List<MiniGameModel> miniGameList = [
      MiniGameModel(
          titleText: 'AVIATOR',
          image: Assets.imagesAviatorFirst,onTap: (){
        Navigator.pushNamed(context, RoutesName.aviatorGame);
      }),
      // MiniGameModel(image: Assets.imagesMiniDice),
    ];

    List<CassinoModel> cassinoList = [
      CassinoModel(
          titleText: 'DRAGON TIGER',
          image:AppAssets.dragontigerdragontigergif,onTap: (){
            // if(kIsWeb){
            //   SystemChrome.setPreferredOrientations([
            //     DeviceOrientation.landscapeLeft,
            //     DeviceOrientation.landscapeRight,
            //   ]);
            //   Navigator.push(context, MaterialPageRoute(builder: (context)=>const DragontigerPage()));
            // } else{
            //   Navigator.push(context, MaterialPageRoute(builder: (context)=>const DragontigerPage()));
            // }

            Navigator.push(context, MaterialPageRoute(builder: (context)=>const DragontigerPage()));
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>const DragontigerPageTest()));

      }),
    ];

    return widget.selectedCategoryIndex == 0
        ? ListView.builder(
            shrinkWrap: true,
            itemCount: lotteryList.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 25, 10, 0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap:lotteryList[index].onTap,
                          child: Container(
                            width: width,
                            height: height * 0.17,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),
                              image: DecorationImage(
                                  image: AssetImage(
                                      lotteryList[index].decorationImage),
                                  fit: BoxFit.fill),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 15, 0, 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  textWidget(
                                      text: lotteryList[index].titleText,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 30,
                                      ),
                                  SizedBox(height: height*0.02,),
                                  textWidget(
                                      text: lotteryList[index].subTitleText,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      ),
                                  textWidget(
                                      text: lotteryList[index].gameText,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: height*0.02,),

                      ],
                    ),
                  ),
                  Positioned(
                      top: 39,
                      right: 119,
                      child: InkWell(
                          onTap:lotteryList[index].onTap,
                          child: Image.asset(Assets.imagesClickhere,height: height*0.08)),),

                 Positioned(
                 top: 15,
                 right: 10,
                  child: Image.asset(lotteryList[index].decoImage==null?"":lotteryList[index].decoImage.toString(),height: 70)
                 )
                ],
              );
            })
        : widget.selectedCategoryIndex == 1?Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: miniGameList.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: miniGameList[index].onTap,
                    child: Container(
                      height: height*0.15,
                      width: width,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),
                          image: DecorationImage(
                              image: AssetImage(miniGameList[index].image),fit: BoxFit.fill)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: textWidget(
                              text: miniGameList[index].titleText,
                              fontWeight: FontWeight.w600,
                              fontSize: width*0.05,
                            ),
                          ),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Image.asset(Assets.imagesClickhere,height: height*0.08)),
                        ],
                      ) ,
                    ),
                  );
                }),
          ):
        kIsWeb==true?Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(Assets.imagesCommingsoon,height: height*0.20,),
                  ):
         Padding(
      padding: const EdgeInsets.fromLTRB(10, 25, 10, 5),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: cassinoList.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Stack(
              children: [
                GestureDetector(
                  onTap: cassinoList[index].onTap,
                  child: Container(
                    height: height*0.15,
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),

                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: textWidget(
                                  text: cassinoList[index].titleText,
                                  fontWeight: FontWeight.w600,
                                  fontSize: width*0.05,
                                  color: Colors.white
                              ),
                            ),
                            Align(
                                alignment: Alignment.topRight,
                                child: Image.asset(cassinoList[index].image,height: height*0.15,)),
                          ],
                        ),


                      ],
                    ) ,
                  ),
                ),
                Positioned(
                  top: 25,
                  right: 132,
                  child: InkWell(
                      onTap:cassinoList[index].onTap,
                      child: Image.asset(Assets.imagesClickhere,height: height*0.08)),),
              ],
            );
          }),
    );
    // widget.selectedCategoryIndex == 2?
    // Padding(
    //   padding: const EdgeInsets.fromLTRB(10, 25, 10, 5),
    //   child: ListView.builder(
    //       shrinkWrap: true,
    //       itemCount: cassinoList.length,
    //       physics: const NeverScrollableScrollPhysics(),
    //       itemBuilder: (context, index) {
    //         return Stack(
    //           children: [
    //             GestureDetector(
    //               onTap: cassinoList[index].onTap,
    //               child: Container(
    //                 height: height*0.15,
    //                 width: width,
    //                 decoration: BoxDecoration(
    //                   color: Colors.deepOrange,
    //                     borderRadius: const BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),
    //
    //                 ),
    //                 child: Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     Row(
    //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                         Padding(
    //                           padding: const EdgeInsets.all(8.0),
    //                           child: textWidget(
    //                             text: cassinoList[index].titleText,
    //                             fontWeight: FontWeight.w600,
    //                             fontSize: width*0.05,
    //                             color: Colors.white
    //                           ),
    //                         ),
    //                         Align(
    //                             alignment: Alignment.topRight,
    //                             child: Image.asset(cassinoList[index].image,height: height*0.15,)),
    //                       ],
    //                     ),
    //
    //
    //                   ],
    //                 ) ,
    //               ),
    //             ),
    //             Positioned(
    //               top: 25,
    //               right: 132,
    //               child: InkWell(
    //                   onTap:lotteryList[index].onTap,
    //                   child: Image.asset(Assets.imagesClickhere,height: height*0.08)),),
    //           ],
    //         );
    //       }),
    // ):
    //    Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: Image.asset(Assets.imagesCommingsoon,height: height*0.20,),
    //       );
  }
}

class LotteryModel {
  final String titleText;
  final String subTitleText;
  final String gameText;
  final String? member;
  final String? memberImage;
  final String decorationImage;
  final String? decoImage;
  final String? winAmount;
  final VoidCallback? onTap;
  LotteryModel(
      {required this.titleText,
      required this.subTitleText,
      required this.gameText,
      this.member,
      this.memberImage,
      required this.decorationImage,
      this.decoImage,
      this.winAmount,
      this.onTap});
}

class MiniGameModel {
  final String titleText;

  final String image;
  final VoidCallback? onTap;
  MiniGameModel({required this.titleText,required this.image,this.onTap});
}

class CassinoModel {
  final String titleText;
  final String image;
  final VoidCallback? onTap;
  CassinoModel({required this.titleText,required this.image,this.onTap});
}
