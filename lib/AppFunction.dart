import 'package:flutter/material.dart';
import 'package:usb_checkout_system/Drawer/Setting.dart';
import 'package:usb_checkout_system/EasterEgg/EasterEggEasy_end.dart';
import 'package:usb_checkout_system/EasterEgg/EasterEggHard_end.dart';
import 'package:usb_checkout_system/EasterEgg/EasterEggImpossible_end.dart';
import 'package:usb_checkout_system/EasterEgg/Easter_Egg_Easy.dart';
import 'package:usb_checkout_system/EasterEgg/Easter_Egg_Hard.dart';
import 'package:usb_checkout_system/EasterEgg/Easter_Egg_Impossible.dart';
import 'package:usb_checkout_system/Hammond/Period2.dart';
import 'package:usb_checkout_system/Hammond/Period4.dart';
import 'package:usb_checkout_system/Hammond/PickPeriod.dart';
import 'package:usb_checkout_system/Reed/Period2.dart';
import 'package:usb_checkout_system/Reed/Period3.dart';
import 'package:usb_checkout_system/Reed/Period4.dart';
import 'package:usb_checkout_system/Reed/PickPeriod.dart';

  void goToSettingPage(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const Setting()));
  }



  void goToHPickPeriodPage(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const HPickPeriod()));
  }

  void goToHPeriod2Page(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const HPeriod2()));
  }

  void goToHPeriod4Page(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const HPeriod3()));
  }



  void goToRPickPeriodPage(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const RPickPeriod()));
  }

  void goToRPeriod2Page(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const RPeriod2()));
  }

  void goToRPeriod3Page(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const RPeriod3()));
  }

  void goToRPeriod4Page(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const RPeriod4()));
  }



  void goToEasterEasyPage(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const EasterEggEasy()));
  }

  void goToEasterEEndPage(BuildContext context) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const EasterEggEasyEndPage()));
  }

  void goToEasterHardPage(BuildContext context) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const EasterEggHard()));
  }

  void goToEasterHEndPage(BuildContext context) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const EasterEggHardEndPage()));
  }

  void goToEasterImpossiblePage(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const EasterEggImpossible()));
  }

  void goToEasterIEndPage(BuildContext context) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const EasterEggImpossibleEndPage()));
  }