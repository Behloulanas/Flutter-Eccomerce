import  'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unused_import
import  'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/signup.widgets/signup_form.dart';
// ignore: unused_import
import  'package:t_store/utils/constants/colors.dart';
import  'package:t_store/utils/constants/text_strings.dart';
import  '../../../../../utils/constants/sizes.dart';
// ignore: unused_import
import  '../../../../../utils/helpers/helper_functions.dart';

class SingnupScreen extends StatelessWidget {
  const SingnupScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(TTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Form
              TSignupForm(),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Social Buttons
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}