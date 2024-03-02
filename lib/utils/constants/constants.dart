import 'package:duaya_app/utils/constants/exports.dart';
import 'package:duaya_app/utils/constants/image_strings.dart';
import 'package:image_picker/image_picker.dart';
import 'package:url_launcher/url_launcher.dart';

class DConstants {

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
    DImages.banner4,
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

}