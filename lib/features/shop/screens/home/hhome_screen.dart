import 'package:e_commerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce/common/widgets/layout/grid_layout.dart';
import 'package:e_commerce/common/widgets/product/cart/product_card_vertical.dart';
import 'package:e_commerce/common/widgets/text/section_heading.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HhomeScreen extends StatelessWidget {
  const HhomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
              child: Column(
                children: [
                  const CPrimaryHeaderContainer(
                    child: Column(
                      children: [
                        ///appbar
                        CHomeAppBar(),
                        SizedBox(height: CSizes.spaceBtnSections,),

                        ///search bar
                        CSearchContainer(text: 'Search In Store', showBackground: true, showBorder: true,),
                        SizedBox(height: CSizes.defaultSpace,),

                        ///categories
                        Padding(
                          padding: EdgeInsets.only(left: CSizes.defaultSpace),
                          child: Column(
                            children: [
                              ///heading
                              CSectionHeading(title: 'Popular Categories',showActiveButton: false,textColor: Colors.white,),
                              SizedBox(height: CSizes.spaceBtnItems,),

                              ///Categories
                              CHomeCategories(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  ///body
                  Padding(
                    padding: const EdgeInsets.all(CSizes.defaultSpace),
                    child: Column(
                      children: [

                        const CPromoSlider(banner: [
                          CImageStrings.x,
                          CImageStrings.appLogo,
                          CImageStrings.facebook
                        ]),
                        const SizedBox(height: CSizes.spaceBtnSections,),

                        CGridLayout(itemCount: 5, itemBuilder: (_,index) => const CProductCardVertical())
                        
                      ],
                    ),
                  ),
                ],
        ),
      ),
    );
  }
}
