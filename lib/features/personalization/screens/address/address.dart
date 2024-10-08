import 'package:e_store/commons/widgets/appbar/appbar.dart';
import 'package:e_store/features/personalization/screens/address/add_new_address.dart';
import 'package:e_store/features/personalization/screens/address/widgets/single_address.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: TColors.primary,
          child: const Icon(
            Iconsax.add,
            color: TColors.white,
          ),
          onPressed: () => Get.to(() => const AddNewAddressScreen()),
        ),
        appBar: TAppbar(
          showBackArrow: true,
          title: Text(
            'Addresses',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                TSingleAddress(selectedAddress: true),
                TSingleAddress(selectedAddress: false)
              ],
            ),
          ),
        ));
  }
}
