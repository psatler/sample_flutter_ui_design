import 'package:flutter/material.dart';
import 'package:sample_flutter_design_ui/src/shared/app_colors.dart';
import 'package:sample_flutter_design_ui/src/shared/styles.dart';

// ripple effect: https://stacksecrets.com/flutter/adding-inkwell-splash-ripple-effect-to-custom-widgets-in-flutter

class DesignButton extends StatelessWidget {
  const DesignButton({
    Key? key,
    required this.title,
    this.disabled = false,
    this.busy = false,
    this.onTap,
    this.leading,
  })  : outline = false,
        super(key: key);

  const DesignButton.outline({
    Key? key,
    required this.title,
    this.onTap,
    this.leading,
    this.busy = false,
    this.disabled = false,
  })  : outline = true,
        super(key: key);

  final String title;
  final bool disabled;
  final bool busy;
  final VoidCallback? onTap;
  final bool outline;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    bool disabledStatus = disabled || onTap == null;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      width: double.infinity,
      height: 48,
      alignment: Alignment.center,
      decoration: !outline
          ? BoxDecoration(
              color: !disabledStatus ? kcPrimaryColor : kcMediumGreyColor,
              borderRadius: BorderRadius.circular(8),
            )
          : BoxDecoration(
              color: !disabledStatus ? Colors.transparent : kcLightGreyColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: !disabledStatus ? kcPrimaryColor : kcMediumGreyColor,
                width: 1,
              ),
            ),
      child: !busy
          ? SizedBox(
              // used SizedBox with double.infinity to allow its child grow so that we have a ripple effect at the whole available space of the AnimatedContainer
              height: double.infinity,
              width: double.infinity,
              child: Material(
                type: MaterialType.transparency,
                child: InkWell(
                  borderRadius: BorderRadius.circular(8),
                  onTap: disabledStatus ? null : () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (leading != null) leading!,
                      if (leading != null) const SizedBox(width: 10),
                      Flexible(
                        // dealing with overflow using Flexible and ellipsis https://stackoverflow.com/a/44580054/13137278
                        child: Text(
                          title,
                          style: bodyStyle.copyWith(
                            fontWeight:
                                !outline ? FontWeight.bold : FontWeight.w400,
                            color: !outline ? Colors.white : kcPrimaryColor,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          : const CircularProgressIndicator(
              strokeWidth: 4,
              valueColor: AlwaysStoppedAnimation(Colors.white),
            ),
    );
  }
}
