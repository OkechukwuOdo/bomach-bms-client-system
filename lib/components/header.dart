import 'package:bms_front_end/components/custom_search_field.dart';
import 'package:bms_front_end/components/responsive_widget.dart';
import 'package:bms_front_end/views/styles/colors_style.dart';
import 'package:bms_front_end/views/styles/textstyle.dart';
import 'package:flutter/material.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      color: AppColors.whiteColor,
      height: 70,
      child: Row(
        children: [
          Visibility(
            visible: ResponsiveWidget.isSmallScreen(context),
            child: const Icon(Icons.menu)),
          const SizedBox(
            width: 20,
          ),
          const CustomSearchField(),
          const Spacer(),
          Row(
            children: [
            
              const Icon(Icons.notifications),
              const SizedBox(width: 20,),
              Image.asset('assets/icons/EnglishFlag.png'),
              const SizedBox(width: 16,),
              const Text('English'),
              const SizedBox(width: 10,),
               Image.asset('assets/icons/Drop Down.png'),
              SizedBox(
                width: 180,
                child: ListTile(
                  leading: Container(
                    width: 48,
                    height: 48,
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/icons/profileIcon.png')),
                        // color: AppColors.secondaryColor,
                        shape: BoxShape.circle),
                  ),
                  title: const Text(
                    'Moni Roy',
                    style: AppText.black_600_14,
                  ),
                  subtitle: const Text('Admin'),
                ),
              ),
             Image.asset('assets/icons/arrowDownOutline.png')
            ],
          )
        ],
      ),
    );
  }
}

// class CustomSearch extends StatelessWidget {
//   const CustomSearch({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//         child: SizedBox(
//       height: 38,
//       child: TextField(
//         decoration: InputDecoration(
//             hintText: 'Search',
//             fillColor: const Color(0XFFF5F6FA),
//             filled: true,
//             contentPadding:
//                 const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//             border: OutlineInputBorder(
//                 borderSide: const BorderSide(
//                     color: Color(0XFFD5D5D5), width: 0.6),
//                 borderRadius: BorderRadius.circular(13))),
//       ),
//     ));
//   }
// }