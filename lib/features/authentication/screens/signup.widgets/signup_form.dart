import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/signup.widgets/terms_conditions_checkbox.dart';
import 'package:t_store/utils/constants/text_strings.dart';

import  '../../../../../utils/constants/sizes.dart';
// ignore: unused_import
import  '../../../../../utils/helpers/text_strings.dart';
import  '../../../../../utils/constants/colors.dart';
import  '../../../../../utils/helpers/helper_functions.dart';


class TSignupForm extends StatelessWidget{
  const TSignupForm({
    super.key,
});

  @override
  Widget build(BuildContext context){
    final dark = THelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
              children: [
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(labelText: TTexts.firstName, prefixIcon: Icon(Iconsax.user)),
                  ),
                ),
                const SizedBox(width: TSizes.spaceBtwInputFields),
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(labelText: TTexts.lastName, prefixIcon: Icon(Iconsax.user)),
                  ),
                ),
              ]
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          ///Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(labelText: TTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          ///Email
          TextFormField(
            decoration: const InputDecoration(labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          ///phone number
          TextFormField(
            decoration: const InputDecoration(labelText: TTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          ///Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(width: TSizes.spaceBtwItems),

          /// Terms&Conditions Checkbox
          const TTermsAndConditionCheckbox(),
          const SizedBox(width: TSizes.spaceBtwItems),

           /// Sign Up Button
           SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text(TTexts.createAccount),),)
        ],
      ),
    );
  }
}
