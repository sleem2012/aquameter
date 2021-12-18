

import 'package:flutter/material.dart';

Size getMediaQuerySize(BuildContext context) {
  return MediaQuery.of(context).size;
}

double setHeight(BuildContext context, double heightPercentage) {
  return getMediaQuerySize(context).height * heightPercentage;
}

double setWidth(BuildContext context, double widthPercentage) {
  return getMediaQuerySize(context).width * widthPercentage;
}

navigateTo(BuildContext context, createPage) {
  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
    return createPage;
  }));
}

navigateToWithReplacement(BuildContext context, createPage) {
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (BuildContext context) {
    return createPage;
  }));
}

hideKeyboard(BuildContext context) {
  FocusScopeNode currentFocus = FocusScope.of(context);
  if (!currentFocus.hasPrimaryFocus) {
    currentFocus.unfocus();
  }
}


