import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train/core/constants/appColorsConstants.dart';
import 'package:train/views/sellerLoginPage/controller/seller_login_cubit.dart';
import 'package:train/views/sellerLoginPage/controller/seller_login_state.dart';

class signInButton extends StatelessWidget {
  const signInButton({super.key});

  @override
  Widget build(BuildContext context) {
    final SellerLoginCubit sellerLoginCubit = context
        .read<SellerLoginCubit>();

    return BlocBuilder<SellerLoginCubit, SellerLoginState>(
      builder: (BuildContext context, state) {
        final isLoading = state is SellerLoginLoading;

        return AbsorbPointer(
          absorbing: isLoading,
          child: Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3D40BFFF),
                    offset: Offset(0, 10),
                    blurRadius: 30,
                  ),
                ],
              ),
              child: RawMaterialButton(
                fillColor: AppColors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                elevation: 0,
                onPressed: isLoading
                    ? null
                    : () => sellerLoginCubit.login(context),

                child: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: Center(
                    child: isLoading
                        ? const SizedBox(
                            width: 22,
                            height: 22,
                            child: CircularProgressIndicator(
                              strokeWidth: 2.5,
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(
                                    Colors.white,
                                  ),
                            ),
                          )
                        : Text(
                            'singInButton'.tr(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 15,
                            ),
                          ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
