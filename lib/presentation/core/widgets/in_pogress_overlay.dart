import 'package:auth_app/presentation/core/constants.dart';
import 'package:flutter/material.dart';

class InProgressOverlay extends StatelessWidget {
  final bool isSaving;
  const InProgressOverlay({
    Key? key,
    required this.isSaving,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: circularProgressIndicatorDuration,
        color: isSaving ? savingInProgressOverlayColor : Colors.transparent,
        child: Visibility(
          visible: isSaving,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const CircularProgressIndicator(
                  color: circularProgressIndicatorColor,
                ),
                const SizedBox(height: commonPadding,),
                Text(
                  'Загружаю',
                  style: Theme.of(context).primaryTextTheme.subtitle1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
