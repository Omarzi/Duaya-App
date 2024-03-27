import 'package:duaya_app/utils/constants/exports.dart';
import 'package:duaya_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';
import 'package:url_launcher/url_launcher.dart';

class DConstants {

  static List<String> brandImage = [
    DImages.sanofiBrand,
    DImages.merckBrand,
    DImages.gskBrand,
    DImages.sanofiBrand,
    DImages.merckBrand,
    DImages.gskBrand,
  ];

  static List<String> brandTitle = [
    "Sanofi",
    "Merck",
    "Gsk",
    "Sanofi",
    "Merck",
    "Gsk",
  ];

  static List<String> restaurantImages = [
    'https://www.foodmanufacture.co.uk/var/wrbm_gb_food_pharma/storage/images/_aliases/wrbm_large/1/5/5/1/1091551-1-eng-GB/KFC-prepares-for-growth-with-40M-investment.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Burger_King_logo_%281999%29.svg/2024px-Burger_King_logo_%281999%29.svg.png',
    'https://www.foodmanufacture.co.uk/var/wrbm_gb_food_pharma/storage/images/_aliases/wrbm_large/1/5/5/1/1091551-1-eng-GB/KFC-prepares-for-growth-with-40M-investment.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Burger_King_logo_%281999%29.svg/2024px-Burger_King_logo_%281999%29.svg.png',
    'https://www.foodmanufacture.co.uk/var/wrbm_gb_food_pharma/storage/images/_aliases/wrbm_large/1/5/5/1/1091551-1-eng-GB/KFC-prepares-for-growth-with-40M-investment.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Burger_King_logo_%281999%29.svg/2024px-Burger_King_logo_%281999%29.svg.png',
    'https://www.foodmanufacture.co.uk/var/wrbm_gb_food_pharma/storage/images/_aliases/wrbm_large/1/5/5/1/1091551-1-eng-GB/KFC-prepares-for-growth-with-40M-investment.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Burger_King_logo_%281999%29.svg/2024px-Burger_King_logo_%281999%29.svg.png',
    'https://www.foodmanufacture.co.uk/var/wrbm_gb_food_pharma/storage/images/_aliases/wrbm_large/1/5/5/1/1091551-1-eng-GB/KFC-prepares-for-growth-with-40M-investment.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Burger_King_logo_%281999%29.svg/2024px-Burger_King_logo_%281999%29.svg.png',
    'https://www.foodmanufacture.co.uk/var/wrbm_gb_food_pharma/storage/images/_aliases/wrbm_large/1/5/5/1/1091551-1-eng-GB/KFC-prepares-for-growth-with-40M-investment.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Burger_King_logo_%281999%29.svg/2024px-Burger_King_logo_%281999%29.svg.png',
  ];

  static List<String> bannersList = [
    DImages.banner,
    DImages.banner2,
    DImages.banner3,
  ];

  static List<String> texts = [
    'Be a partner',
    'Technical support',
    'Help center',
    'Submit proposals',
    'Terms of Use',
    'Terms and conditions',
    'Share the app',
    'Application language',
  ];

  static List<String> images = [
    'assets/images/logoIcon.png',
    'assets/images/chatIcon.png',
    'assets/images/informationIcon.png',
    'assets/images/auditIcon.png',
    'assets/images/fileIcon.png',
    'assets/images/fileIcon.png',
    'assets/images/sharingIcon.png',
    'assets/images/translateIcon.png',
  ];

  static List<String> imageMedicalService = [
    DImages.mobileApps,
    DImages.webApps,
  ];


  static List<String> categoryImage = [
    DImages.medicine,
    DImages.medicalSupplies,
    DImages.beautyTools,
  ];

  static List<String> textOfMenu = [
    'Wallet',
    'My Ads',
    'Customer Ads',
    'My Order',
    'My Notebook',
    'Medical Services',
    'Expired Product',
    'Favorite',
    'Chat Us',
    'Return Request',
  ];

  static List<IconData> iconOfMenu = [
    Iconsax.wallet,
    Icons.ads_click,
    Icons.ads_click,
    Iconsax.shopping_cart,
    Iconsax.note,
    Icons.medical_services,
    Iconsax.clock,
    Icons.favorite_border,
    Iconsax.message,
    Icons.reset_tv_outlined,
  ];

  static List<String> titleSetting = [
    'Profile Info',
    'Pharmacy Info',
    'Language',
    'Egypt',
    'About App',
    'Log Out',
  ];

  static List<IconData> iconsSetting = [
    Icons.person,
    Icons.local_pharmacy,
    Icons.language,
    Icons.flag,
    Icons.favorite,
    Icons.logout,
  ];

  static List<String> desSetting = [
    'Make Changes to your account',
    'Make Changes to your pharmacy',
    'Change the language of the application',
    'Change your location',
    'About of us Company',
    'Further secure your account for safety',
  ];

  static launchFacebookProfile({required String faceLink}) async {
    String facebookUrl = faceLink;

    if (await canLaunch(facebookUrl)) {
      await launch(facebookUrl);
    } else {
      throw 'Could not launch $facebookUrl';
    }
  }

  static openWhatsAppChat({required String num, required String urlLink}) async {
    String phoneNumber = num;
    String url = urlLink;

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static Future<void> openInstagram() async {
    const url = 'https://www.instagram.com'; // Instagram URL
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  /// Make Stars
  static buildRatingStars(int rating) {
    String stars ='';
    for(int i=0;i<rating ;i++){
      stars +='⭐ ';
    }
    stars.trim();
    return Text(stars);
  }

}