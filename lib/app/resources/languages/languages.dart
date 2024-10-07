import 'package:get/get.dart';

class Languages extends Translations{
  @override

  Map<String, Map<String, String>> get keys => {
    'en_US':{
      //onBoarding screen
      'poultryBazaar':'Poultry Bazaar',
      'description':'Description Text Here like a message or description  ',
//Profile Screen
    'userProfile':'User Profile',
    'notification':'Notification',
    'subscriptionPlan':'Subscription Plan',
    'faqs':'FAQs',
    'aboutUs':'About us',
    'contactUs':'Contact us',
    'help':'Help',
    'rateApp':'Rate App',
    'shareApp':'Share App',
    'logOut':'Log out',

    }
  };

}