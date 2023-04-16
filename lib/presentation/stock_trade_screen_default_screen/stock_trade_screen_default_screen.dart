import 'package:flutter/material.dart';
import 'package:stock_market/core/utils/color_constant.dart';
import 'package:stock_market/core/utils/image_constant.dart';
import 'package:stock_market/core/utils/size_utils.dart';
import 'package:stock_market/theme/app_decoration.dart';
import 'package:stock_market/theme/app_style.dart';
import 'package:stock_market/widgets/app_bar/appbar_image.dart';
import 'package:stock_market/widgets/app_bar/custom_app_bar.dart';
import 'package:stock_market/widgets/custom_button.dart';
import 'package:stock_market/widgets/custom_floating_edit_text.dart';
import 'package:stock_market/widgets/custom_image_view.dart';
import 'package:stock_market/widgets/custom_radio_button.dart';


class StockTradeScreenDefaultScreen extends StatelessWidget {
  TextEditingController priceController = TextEditingController();

  TextEditingController priceOneController = TextEditingController();

  TextEditingController priceTwoController = TextEditingController();

  String radioGroup = "";

  String radioGroup1 = "";

  String radioGroup2 = "";

  String radioGroup3 = "";

  List<String> radioList = ["lbl_average", "lbl_delivery"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  168,
                ),
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: getVerticalSize(
                          155,
                        ),
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle,
                              height: getVerticalSize(
                                155,
                              ),
                              width: getHorizontalSize(
                                360,
                              ),
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: getPadding(
                                  left: 8,
                                  top: 12,
                                  right: 16,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomAppBar(
                                      height: getVerticalSize(
                                        46,
                                      ),
                                      title: Padding(
                                        padding: getPadding(
                                          left: 8,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                AppbarImage(
                                                  height: getSize(
                                                    22,
                                                  ),
                                                  width: getSize(
                                                    12,
                                                  ),
                                                  svgPath:
                                                      ImageConstant.imgOffer,
                                                  margin: getMargin(
                                                    top: 3,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    bottom: 1,
                                                  ),
                                                  child: Text(
                                                    "TATA MOTORS",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtDarkerGrotesqueBold22,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: getPadding(
                                                  left: 28,
                                                  right: 42,
                                                ),
                                                child: Text(
                                                  "Exchange - NSE",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanRegular12,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      actions: [
                                        CustomImageView(
                                          svgPath: ImageConstant.imgTriangle,
                                          height: getVerticalSize(
                                            4,
                                          ),
                                          width: getHorizontalSize(
                                            10,
                                          ),
                                          radius: BorderRadius.circular(
                                            getHorizontalSize(
                                              1,
                                            ),
                                          ),
                                          margin: getMargin(
                                            left: 16,
                                            top: 16,
                                            right: 16,
                                            bottom: 8,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 1,
                                            top: 10,
                                            right: 16,
                                            bottom: 4,
                                          ),
                                          child: Text(
                                            "+12.58%",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtDarkerGrotesqueBold10
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.1,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: getVerticalSize(
                                            25,
                                          ),
                                          width: getHorizontalSize(
                                            82,
                                          ),
                                          margin: getMargin(
                                            left: 4,
                                            top: 4,
                                            right: 32,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              AppbarImage(
                                                height: getSize(
                                                  24,
                                                ),
                                                width: getSize(
                                                  24,
                                                ),
                                                svgPath: ImageConstant
                                                    .imgOverflowmenu,
                                                margin: getMargin(
                                                  left: 58,
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: Padding(
                                                  padding: getPadding(
                                                    right: 23,
                                                  ),
                                                  child: Text(
                                                    "1444.25",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtDarkerGrotesqueBold18
                                                        .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                        0.1,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 8,
                                        top: 14,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomFloatingEditText(
                                            width: getHorizontalSize(
                                              104,
                                            ),
                                            focusNode: FocusNode(),
                                            controller: priceController,
                                            labelText: "buy at",
                                            hintText: "₹ 1400 - ₹ 1440",
                                          ),
                                          CustomFloatingEditText(
                                            width: getHorizontalSize(
                                              104,
                                            ),
                                            focusNode: FocusNode(),
                                            controller: priceOneController,
                                            labelText: "sell at",
                                            hintText: "₹ 1500",
                                            margin: getMargin(
                                              left: 8,
                                            ),
                                          ),
                                          CustomFloatingEditText(
                                            width: getHorizontalSize(
                                              104,
                                            ),
                                            focusNode: FocusNode(),
                                            controller: priceTwoController,
                                            labelText: "stop loss to",
                                            hintText: "₹ 1300",
                                            margin: getMargin(
                                              left: 8,
                                            ),
                                            textInputAction:
                                                TextInputAction.done,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: getMargin(
                          left: 36,
                          top: 144,
                          right: 36,
                        ),
                        padding: getPadding(
                          left: 7,
                          top: 5,
                          right: 7,
                          bottom: 5,
                        ),
                        decoration: AppDecoration.fillLime800.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder4,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgSearch,
                              height: getSize(
                                14,
                              ),
                              width: getSize(
                                14,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 4,
                                bottom: 1,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "94%",
                                      style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(
                                          10,
                                        ),
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    TextSpan(
                                      text: " of such calls are accurate",
                                      style: TextStyle(
                                        color: ColorConstant.yellow100,
                                        fontSize: getFontSize(
                                          10,
                                        ),
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: getPadding(
                                top: 2,
                                bottom: 1,
                              ),
                              child: Text(
                                "Learn more",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRomanRegular8,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowright,
                              height: getSize(
                                8,
                              ),
                              width: getSize(
                                8,
                              ),
                              margin: getMargin(
                                left: 4,
                                top: 3,
                                bottom: 3,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: getPadding(
                      left: 15,
                      top: 22,
                      bottom: 266,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: getVerticalSize(
                            82,
                          ),
                          width: getHorizontalSize(
                            344,
                          ),
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  padding: getPadding(
                                    left: 11,
                                    top: 8,
                                    right: 11,
                                    bottom: 8,
                                  ),
                                  decoration: AppDecoration.fillBlue50.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderTL12,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          bottom: 39,
                                        ),
                                        child: Text(
                                          "strategy",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtDarkerGrotesqueBold18Bluegray900
                                              .copyWith(
                                            letterSpacing: getHorizontalSize(
                                              0.1,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgLightbulb,
                                height: getVerticalSize(
                                  43,
                                ),
                                width: getHorizontalSize(
                                  30,
                                ),
                                alignment: Alignment.topRight,
                                margin: getMargin(
                                  top: 8,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  width: getHorizontalSize(
                                    308,
                                  ),
                                  margin: getMargin(
                                    left: 11,
                                    bottom: 11,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "This is a ",
                                          style: TextStyle(
                                            color: ColorConstant.blueGray700,
                                            fontSize: getFontSize(
                                              12,
                                            ),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: getHorizontalSize(
                                              0.1,
                                            ),
                                          ),
                                        ),
                                        TextSpan(
                                          text: "Short Term Call ",
                                          style: TextStyle(
                                            color: ColorConstant.blueGray700,
                                            fontSize: getFontSize(
                                              12,
                                            ),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w700,
                                            letterSpacing: getHorizontalSize(
                                              0.1,
                                            ),
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              "i.e. time duration between entry and exit is within a range of few days to few weeks",
                                          style: TextStyle(
                                            color: ColorConstant.blueGray700,
                                            fontSize: getFontSize(
                                              12,
                                            ),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: getHorizontalSize(
                                              0.1,
                                            ),
                                          ),
                                        ),
                                        TextSpan(
                                          text: " ",
                                          style: TextStyle(
                                            color: ColorConstant.blueGray700,
                                            fontSize: getFontSize(
                                              12,
                                            ),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w700,
                                            letterSpacing: getHorizontalSize(
                                              0.1,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 18,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "risk-reward ratio ",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtDarkerGrotesqueBold18Bluegray900
                                        .copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.1,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: getHorizontalSize(
                                      273,
                                    ),
                                    margin: getMargin(
                                      top: 3,
                                    ),
                                    child: Text(
                                      "For this call, the risk-reward ratio is two units of expected return for every one unit of additional risk. ",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRobotoRomanRegular12Bluegray700,
                                    ),
                                  ),
                                ],
                              ),
                              CustomButton(
                                height: getVerticalSize(
                                  56,
                                ),
                                width: getHorizontalSize(
                                  60,
                                ),
                                text: "1:2",
                                margin: getMargin(
                                  top: 1,
                                  bottom: 6,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: getPadding(
                              top: 15,
                              right: 32,
                            ),
                            child: Text(
                              "Current Profit ₹1460 ",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSourceSansProRegular10,
                            ),
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            47,
                          ),
                          width: getHorizontalSize(
                            332,
                          ),
                          margin: getMargin(
                            top: 1,
                          ),
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: getVerticalSize(
                                    14,
                                  ),
                                  width: getHorizontalSize(
                                    96,
                                  ),
                                  margin: getMargin(
                                    top: 2,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                        getHorizontalSize(
                                          2,
                                        ),
                                      ),
                                      bottomLeft: Radius.circular(
                                        getHorizontalSize(
                                          2,
                                        ),
                                      ),
                                    ),
                                    gradient: LinearGradient(
                                      begin: Alignment(
                                        0,
                                        0.5,
                                      ),
                                      end: Alignment(
                                        1,
                                        0.5,
                                      ),
                                      colors: [
                                        ColorConstant.deepOrangeA200,
                                        ColorConstant.deepOrange50,
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: getVerticalSize(
                                    14,
                                  ),
                                  width: getHorizontalSize(
                                    60,
                                  ),
                                  margin: getMargin(
                                    left: 96,
                                    top: 2,
                                  ),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(
                                        0,
                                        0.5,
                                      ),
                                      end: Alignment(
                                        1,
                                        0.5,
                                      ),
                                      colors: [
                                        ColorConstant.teal300,
                                        ColorConstant.blue200,
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: getPadding(
                                    left: 96,
                                    bottom: 15,
                                  ),
                                  child: Text(
                                    "Buy Range",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtSourceSansProRegular10Black900,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: getPadding(
                                    left: 96,
                                    bottom: 2,
                                  ),
                                  child: Text(
                                    "₹1400 to ₹1440",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtSourceSansProRegular10Gray700,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  height: getVerticalSize(
                                    14,
                                  ),
                                  width: getHorizontalSize(
                                    176,
                                  ),
                                  margin: getMargin(
                                    top: 2,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(
                                        getHorizontalSize(
                                          2,
                                        ),
                                      ),
                                      bottomRight: Radius.circular(
                                        getHorizontalSize(
                                          2,
                                        ),
                                      ),
                                    ),
                                    gradient: LinearGradient(
                                      begin: Alignment(
                                        1,
                                        0.5,
                                      ),
                                      end: Alignment(
                                        0,
                                        0.5,
                                      ),
                                      colors: [
                                        ColorConstant.lime80001,
                                        ColorConstant.yellowA100,
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: SizedBox(
                                  height: getVerticalSize(
                                    18,
                                  ),
                                  child: VerticalDivider(
                                    width: getHorizontalSize(
                                      2,
                                    ),
                                    thickness: getVerticalSize(
                                      2,
                                    ),
                                    color: ColorConstant.red900,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding: getPadding(
                                    right: 59,
                                  ),
                                  child: SizedBox(
                                    height: getVerticalSize(
                                      18,
                                    ),
                                    child: VerticalDivider(
                                      width: getHorizontalSize(
                                        2,
                                      ),
                                      thickness: getVerticalSize(
                                        2,
                                      ),
                                      color: ColorConstant.greenA700,
                                    ),
                                  ),
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgOfferLightBlue900,
                                height: getSize(
                                  11,
                                ),
                                width: getSize(
                                  11,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    1,
                                  ),
                                ),
                                alignment: Alignment.topLeft,
                                margin: getMargin(
                                  left: 90,
                                  top: 3,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgDownload,
                                height: getSize(
                                  11,
                                ),
                                width: getSize(
                                  11,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    1,
                                  ),
                                ),
                                alignment: Alignment.topLeft,
                                margin: getMargin(
                                  left: 150,
                                  top: 3,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Max Loss = ₹100",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtSourceSansProRegular10Black900,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 1,
                                      ),
                                      child: Text(
                                        "Stop loss @ ₹1300",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtSourceSansProRegular10Gray700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Max Profit = ₹100",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtSourceSansProRegular10Black900,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: getPadding(
                                    bottom: 3,
                                  ),
                                  child: Text(
                                    "Sell @ ₹1500",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtSourceSansProRegular10Gray700,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: SizedBox(
                                  height: getVerticalSize(
                                    18,
                                  ),
                                  child: VerticalDivider(
                                    width: getHorizontalSize(
                                      2,
                                    ),
                                    thickness: getVerticalSize(
                                      2,
                                    ),
                                    color: ColorConstant.lime900,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 34,
                          ),
                          child: Text(
                            "trailing targets ",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtDarkerGrotesqueBold18Bluegray900
                                .copyWith(
                              letterSpacing: getHorizontalSize(
                                0.1,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 3,
                          ),
                          child: Text(
                            "Book profits when any of these targets are met ",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRomanRegular12Bluegray7001,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 9,
                            right: 16,
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: getPadding(
                                  all: 8,
                                ),
                                decoration:
                                    AppDecoration.fillLightgreen50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder4,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomRadioButton(
                                      text: "₹ 385",
                                      value: "lbl_385" "",
                                      groupValue: radioGroup,
                                      fontStyle:
                                          RadioFontStyle.RobotoRomanMedium14,
                                      onChange: (value) {
                                        radioGroup = value;
                                      },
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 1,
                                      ),
                                      child: Text(
                                        "23 Mar 09:15 AM",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoRomanRegular10Bluegray500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowrightGray500,
                                height: getSize(
                                  12,
                                ),
                                width: getSize(
                                  12,
                                ),
                                margin: getMargin(
                                  left: 6,
                                  top: 18,
                                  bottom: 18,
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 6,
                                ),
                                padding: getPadding(
                                  all: 8,
                                ),
                                decoration:
                                    AppDecoration.fillLightgreen50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder4,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomRadioButton(
                                      text: "₹ 770",
                                      value: "lbl_770" "",
                                      groupValue: radioGroup1,
                                      fontStyle:
                                          RadioFontStyle.RobotoRomanMedium14,
                                      onChange: (value) {
                                        radioGroup1 = value;
                                      },
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 1,
                                      ),
                                      child: Text(
                                        "23 Mar 10:01 AM",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoRomanRegular10Bluegray500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowrightGray500,
                                height: getSize(
                                  12,
                                ),
                                width: getSize(
                                  12,
                                ),
                                margin: getMargin(
                                  left: 6,
                                  top: 18,
                                  bottom: 18,
                                ),
                              ),
                              Container(
                                width: getSize(
                                  16,
                                ),
                                margin: getMargin(
                                  left: 6,
                                  top: 16,
                                  bottom: 16,
                                ),
                                padding: getPadding(
                                  left: 5,
                                  top: 1,
                                  right: 5,
                                  bottom: 1,
                                ),
                                decoration:
                                    AppDecoration.txtOutlineGray800.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.txtCircleBorder8,
                                ),
                                child: Text(
                                  "3",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRomanSemiBold10,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 4,
                                  top: 15,
                                  bottom: 15,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "₹",
                                        style: TextStyle(
                                          color: ColorConstant.gray800,
                                          fontSize: getFontSize(
                                            10,
                                          ),
                                          fontFamily: 'Darker Grotesque',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " 1150",
                                        style: TextStyle(
                                          color: ColorConstant.gray800,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Darker Grotesque',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowrightGray500,
                                height: getSize(
                                  12,
                                ),
                                width: getSize(
                                  12,
                                ),
                                margin: getMargin(
                                  left: 6,
                                  top: 18,
                                  bottom: 18,
                                ),
                              ),
                              Container(
                                width: getSize(
                                  16,
                                ),
                                margin: getMargin(
                                  left: 6,
                                  top: 14,
                                  bottom: 17,
                                ),
                                padding: getPadding(
                                  left: 5,
                                  top: 1,
                                  right: 5,
                                  bottom: 1,
                                ),
                                decoration:
                                    AppDecoration.txtOutlineGray800.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.txtCircleBorder8,
                                ),
                                child: Text(
                                  "4",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRomanSemiBold10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 19,
                          ),
                          child: Text(
                            "stop loss (2)",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtDarkerGrotesqueBold18Bluegray900
                                .copyWith(
                              letterSpacing: getHorizontalSize(
                                0.1,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            301,
                          ),
                          margin: getMargin(
                            top: 2,
                            right: 42,
                          ),
                          child: Text(
                            "Minimize risk using stop loss targets and make informed decisions when buying or selling stocks",
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRomanRegular12Bluegray700,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 7,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: getPadding(
                                  all: 8,
                                ),
                                decoration: AppDecoration.fillGray100.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder4,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomRadioButton(
                                      text: "₹ 380",
                                      value: "lbl_380" "",
                                      groupValue: radioGroup2,
                                      fontStyle:
                                          RadioFontStyle.RobotoRomanMedium14,
                                      onChange: (value) {
                                        radioGroup2 = value;
                                      },
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 1,
                                      ),
                                      child: Text(
                                        "23 Mar 09:32 AM",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoRomanRegular10Bluegray500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowrightGray500,
                                height: getSize(
                                  12,
                                ),
                                width: getSize(
                                  12,
                                ),
                                margin: getMargin(
                                  left: 6,
                                  top: 17,
                                  bottom: 19,
                                ),
                              ),
                              Container(
                                width: getSize(
                                  16,
                                ),
                                margin: getMargin(
                                  left: 6,
                                  top: 14,
                                  bottom: 17,
                                ),
                                padding: getPadding(
                                  left: 5,
                                  top: 1,
                                  right: 5,
                                  bottom: 1,
                                ),
                                decoration:
                                    AppDecoration.txtOutlineGray800.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.txtCircleBorder8,
                                ),
                                child: Text(
                                  "2",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRomanSemiBold10,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 4,
                                  top: 14,
                                  bottom: 16,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "₹",
                                        style: TextStyle(
                                          color: ColorConstant.gray800,
                                          fontSize: getFontSize(
                                            10,
                                          ),
                                          fontFamily: 'Darker Grotesque',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " 1150",
                                        style: TextStyle(
                                          color: ColorConstant.gray800,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Darker Grotesque',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 20,
                            right: 18,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "volume analysis",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtDarkerGrotesqueBold18Bluegray900
                                    .copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.1,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 5,
                                  bottom: 6,
                                ),
                                child: Row(
                                  children: [
                                    CustomRadioButton(
                                      text: "Average",
                                      iconSize: getHorizontalSize(
                                        12,
                                      ),
                                      value: radioList[0],
                                      groupValue: radioGroup3,
                                      fontStyle:
                                          RadioFontStyle.RobotoRomanSemiBold10,
                                      onChange: (value) {
                                        radioGroup3 = value;
                                      },
                                    ),
                                    CustomRadioButton(
                                      text: "Delivery %",
                                      iconSize: getHorizontalSize(
                                        12,
                                      ),
                                      value: radioList[1],
                                      groupValue: radioGroup3,
                                      margin: getMargin(
                                        left: 11,
                                      ),
                                      fontStyle:
                                          RadioFontStyle.RobotoRomanSemiBold10,
                                      onChange: (value) {
                                        radioGroup3 = value;
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "NSE + BSE",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRomanRegular10Bluegray700,
                        ),
                        Padding(
                          padding: getPadding(
                            left: 1,
                            top: 16,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 80,
                                  bottom: 74,
                                ),
                                child: Text(
                                  "Volume".toUpperCase(),
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRomanRegular10Gray600
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      1.5,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: getPadding(
                                  left: 12,
                                  top: 14,
                                  right: 12,
                                  bottom: 14,
                                ),
                                decoration: AppDecoration.fillGray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL12,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 24,
                                        bottom: 25,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "50K",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSourceSansProRegular12Gray90001,
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 40,
                                            ),
                                            child: Text(
                                              "40K",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtSourceSansProRegular12Gray90001,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 40,
                                            ),
                                            child: Text(
                                              "30K",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtSourceSansProRegular12Gray90001,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 30,
                                        top: 2,
                                        bottom: 6,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: getMargin(
                                              left: 6,
                                            ),
                                            decoration: AppDecoration
                                                .fillTeal30001
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderLR20,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Container(
                                                  height: getVerticalSize(
                                                    86,
                                                  ),
                                                  width: getHorizontalSize(
                                                    10,
                                                  ),
                                                  margin: getMargin(
                                                    top: 59,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.teal900,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 11,
                                            ),
                                            child: Text(
                                              "1 day",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanRegular10Gray90001
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(
                                                  0.08,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 36,
                                        bottom: 9,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant.imgBar2,
                                            height: getVerticalSize(
                                              146,
                                            ),
                                            width: getHorizontalSize(
                                              10,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 10,
                                            ),
                                            child: Text(
                                              "1 week",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanRegular10Gray90001
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(
                                                  0.08,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 37,
                                        top: 2,
                                        bottom: 7,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: getMargin(
                                              left: 13,
                                              right: 12,
                                            ),
                                            decoration: AppDecoration
                                                .fillTeal30001
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderLR20,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Container(
                                                  height: getVerticalSize(
                                                    101,
                                                  ),
                                                  width: getHorizontalSize(
                                                    10,
                                                  ),
                                                  margin: getMargin(
                                                    top: 44,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.teal900,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 10,
                                            ),
                                            child: Text(
                                              "1 month",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanRegular10Gray90001
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(
                                                  0.08,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 35,
                                        top: 6,
                                        bottom: 3,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant.imgBar2,
                                            height: getVerticalSize(
                                              146,
                                            ),
                                            width: getHorizontalSize(
                                              10,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 10,
                                            ),
                                            child: Text(
                                              "3 months",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanRegular10Gray90001
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(
                                                  0.08,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: getPadding(
                              top: 21,
                              right: 138,
                            ),
                            child: Text(
                              "TIme".toUpperCase(),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanRegular10Gray600
                                  .copyWith(
                                letterSpacing: getHorizontalSize(
                                  1.5,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 24,
                          ),
                          child: Text(
                            "technical analysis",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtDarkerGrotesqueBold18Bluegray900,
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            321,
                          ),
                          margin: getMargin(
                            top: 5,
                            right: 22,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      "analyzed market data to identify patterns and trends in order to make predictions about future price movements based on ",
                                  style: TextStyle(
                                    color: ColorConstant.blueGray700,
                                    fontSize: getFontSize(
                                      12,
                                    ),
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: "various parameters.",
                                  style: TextStyle(
                                    color: ColorConstant.indigo900,
                                    fontSize: getFontSize(
                                      12,
                                    ),
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 16,
                            right: 16,
                            bottom: 40,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 63,
                                  bottom: 8,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Sell",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRomanBold12,
                                    ),
                                    Container(
                                      width: getHorizontalSize(
                                        37,
                                      ),
                                      margin: getMargin(
                                        top: 96,
                                      ),
                                      child: Text(
                                        "Strong\nSell",
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle
                                            .txtRobotoRomanBold12Bluegray900,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Neutral",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRomanBold12,
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      192,
                                    ),
                                    width: getHorizontalSize(
                                      194,
                                    ),
                                    margin: getMargin(
                                      top: 4,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant.imgMinimize,
                                          height: getVerticalSize(
                                            59,
                                          ),
                                          width: getHorizontalSize(
                                            81,
                                          ),
                                          radius: BorderRadius.circular(
                                            getHorizontalSize(
                                              3,
                                            ),
                                          ),
                                          alignment: Alignment.bottomRight,
                                          margin: getMargin(
                                            right: 18,
                                            bottom: 27,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                            height: getSize(
                                              118,
                                            ),
                                            width: getSize(
                                              118,
                                            ),
                                            margin: getMargin(
                                              bottom: 16,
                                            ),
                                            decoration:
                                                AppDecoration.outlineTeal30033,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                    height: getSize(
                                                      118,
                                                    ),
                                                    width: getSize(
                                                      118,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .lightGreen50,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        getHorizontalSize(
                                                          59,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "STRONG BUY",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRomanBold12Green900,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgPath1,
                                          height: getVerticalSize(
                                            72,
                                          ),
                                          width: getHorizontalSize(
                                            32,
                                          ),
                                          alignment: Alignment.bottomLeft,
                                        ),
                                        CustomImageView(
                                          svgPath:
                                              ImageConstant.imgCheckmarkRed700,
                                          height: getVerticalSize(
                                            77,
                                          ),
                                          width: getHorizontalSize(
                                            43,
                                          ),
                                          alignment: Alignment.topLeft,
                                          margin: getMargin(
                                            top: 32,
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgShare,
                                          height: getVerticalSize(
                                            59,
                                          ),
                                          width: getHorizontalSize(
                                            79,
                                          ),
                                          alignment: Alignment.topCenter,
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgReply,
                                          height: getVerticalSize(
                                            77,
                                          ),
                                          width: getHorizontalSize(
                                            43,
                                          ),
                                          alignment: Alignment.topRight,
                                          margin: getMargin(
                                            top: 32,
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant
                                              .imgCheckmarkGreen900,
                                          height: getVerticalSize(
                                            72,
                                          ),
                                          width: getHorizontalSize(
                                            32,
                                          ),
                                          alignment: Alignment.bottomRight,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 59,
                                  bottom: 6,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Buy",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRomanBold12,
                                    ),
                                    Container(
                                      width: getHorizontalSize(
                                        37,
                                      ),
                                      margin: getMargin(
                                        top: 99,
                                      ),
                                      child: Text(
                                        "Strong\nBuy",
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle
                                            .txtRobotoRomanBold12Bluegray900,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // bottomNavigationBar:
      ),
    );
  }
}
