//
//  shakesphere
//  keyboard
//
//  Created by Ngonidzashe Mangudya on 30/03/2024.
//  Copyright (c) 2024 ModestNerds, Co
//

import 'package:flutter/material.dart';

void dismissKeyboard(BuildContext context) {
  if (MediaQuery.of(context).viewInsets.bottom > 0) {
    FocusScope.of(context).requestFocus(FocusNode());
  }
}
