part of 'helpers_module.dart';

class PhoneFormatter extends TextInputFormatter {
  String _formattedNumber = '';

  bool _isFormatted() {
    return (_formattedNumber.replaceAll(RegExp(AppConstants.symbolsRegExp), '').length > 10);
  }

  String _getFormatNumber() {
    String cleaned = _formattedNumber.replaceAll(RegExp(AppConstants.symbolsRegExp), '');
    if (cleaned.isEmpty) {
      return "";
    } else {
      return cleaned.substring(1, (cleaned.length >= 11) ? 11 : cleaned.length);
    }
  }

  String _formattingNumber(String num) {
    num = num.replaceAll(RegExp(AppConstants.symbolsRegExp), '');
    String phone = '';
    if (num.isEmpty) return phone;
    if (['7', '8', '9'].contains(num[0])) {
      if ('9' == num[0]) {
        num = '7$num';
      }
      String firstSymbol = (num[0] == '8') ? '8' : '+7';

      phone = "$firstSymbol ";

      if (num.length > 1) {
        phone += '(${num.substring(1, (num.length < 5) ? num.length : 4)}';
      }
      if (num.length >= 5) {
        phone += ') ${num.substring(4, (num.length < 7) ? num.length : 7)}';
      }
      if (num.length >= 8) {
        phone += '-${num.substring(7, (num.length < 9) ? num.length : 9)}';
      }
      if (num.length >= 10) {
        phone += '-${num.substring(9, (num.length < 11) ? num.length : 11)}';
      }
      return phone;
    } else {
      return '+$num';
    }
  }

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    String text = newValue.text.replaceAll(RegExp(AppConstants.symbolsRegExp), '');
    int selectionStart = oldValue.selection.end;

    if (text.isEmpty) {
      _formattedNumber = '';
      return TextEditingValue(
        text: _formattedNumber,
        selection: TextSelection(
          baseOffset: _formattedNumber.length,
          extentOffset: _formattedNumber.length,
          affinity: newValue.selection.affinity,
          isDirectional: newValue.selection.isDirectional,
        ),
      );
    }

    if (selectionStart != _formattedNumber.length) {
      _formattedNumber = _formattingNumber(text);
      return TextEditingValue(
        text: _formattedNumber,
        selection: TextSelection(
          baseOffset: newValue.selection.baseOffset,
          extentOffset: newValue.selection.extentOffset,
          affinity: newValue.selection.affinity,
          isDirectional: newValue.selection.isDirectional,
        ),
      );
    }

    _formattedNumber = _formattingNumber(text);
    return TextEditingValue(
      text: _formattedNumber,
      selection: TextSelection(
        baseOffset: _formattedNumber.length,
        extentOffset: _formattedNumber.length,
        affinity: newValue.selection.affinity,
        isDirectional: newValue.selection.isDirectional,
      ),
    );
  }
}
