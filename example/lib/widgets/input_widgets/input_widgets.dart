import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sample_flutter_design_ui/sample_flutter_design_ui.dart';

List<Widget> inputFields = [
  verticalSpaceSmall,
  DesignText.body('Normal'),
  verticalSpaceSmall,
  DesignInputField(
    controller: TextEditingController(),
    placeholder: 'Enter Password',
  ),
  verticalSpaceSmall,
  DesignText.body('Leading Icon'),
  verticalSpaceSmall,
  DesignInputField(
    controller: TextEditingController(),
    leading: const Icon(Icons.reset_tv),
    placeholder: 'Enter TV Code',
  ),
  verticalSpaceSmall,
  DesignText.body('Trailing Icon'),
  verticalSpaceSmall,
  const TrailingIconInputField(),
  verticalSpaceSmall,
  DesignText.body('Password'),
  verticalSpaceSmall,
  const PasswordInputField(),
  verticalSpaceSmall,
  DesignText.body('Displaying an error'),
  verticalSpaceSmall,
  const ErrorInputField(),
  verticalSpaceLarge,
];

/// ##########################################
///
/// More specialized components
///
/// ##########################################

class ErrorInputField extends HookWidget {
  const ErrorInputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = useTextEditingController();
    final _text = useState('');
    final _errorText = useState<String?>('');

    _errorText.value = useValueChanged<String, String?>(
      _text.value,
      (oldValue, oldResult) {
        if (_text.value.isEmpty) {
          return 'Can\'t be empty';
        }
        if (_text.value.length < 4) {
          return 'Too short. Should be greater than 4';
        }
        // return null if the text is valid
        return null;
      },
    );

    useEffect(() {
      _controller.addListener(() {
        _text.value = _controller.text;
      });

      return null;
    }, [_controller]);

    return DesignInputField(
      controller: _controller,
      placeholder: 'Enter text to see error',
      errorText: _errorText.value,
    );
  }
}

class TrailingIconInputField extends HookWidget {
  const TrailingIconInputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = useTextEditingController();

    return DesignInputField(
      controller: _controller,
      trailing: const MouseRegion(
        // https://www.youtube.com/watch?v=1oF3pI5umck&ab_channel=Flutter
        child: Icon(Icons.clear_outlined),
        cursor: SystemMouseCursors.click,
      ),
      trailingTapped: () {
        _controller.clear();
      },
      placeholder: 'Search for things',
    );
  }
}

class PasswordInputField extends HookWidget {
  const PasswordInputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _isPasswordVisible = useState(false);
    final _controller = useTextEditingController();

    return DesignInputField(
      controller: _controller,
      trailing: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: _isPasswordVisible.value
            ? const Icon(Icons.visibility)
            : const Icon(Icons.visibility_off),
      ),
      isPassword: !_isPasswordVisible.value,
      trailingTapped: () {
        _isPasswordVisible.value = !_isPasswordVisible.value;
      },
      placeholder: 'Enter password',
    );
  }
}
