import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train/core/constants/appColorsConstants.dart';
import 'package:train/views/registerPage/controller/register_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:train/views/registerPage/controller/register_state.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    final RegisterCubit cubit = context.read<RegisterCubit>();
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (BuildContext context, state) {
        final isLoading = state is RegisterLoading;

        return Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: AbsorbPointer(
            absorbing: isLoading,
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
                fillColor: AppColors.dodgerBlue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                elevation: 0,
                onPressed: isLoading
                    ? null
                    : () => cubit.register(context),

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
                            'singUpButton'.tr(),
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
