import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'input_helpersign.dart';

typedef void CaretMoved(Offset globalCaretPosition);
typedef void TextChanged(String text);

// Helper widget to track caret position.
class TrackingTextInputphone extends StatefulWidget {
  TrackingTextInputphone(
      {Key key,
        this.onCaretMoved,
        this.onTextChanged,
        this.hint,
        this.label,
        this.isObscured = false, TextInputType keyboardType})
      : super(key: key);
  final CaretMoved onCaretMoved;
  final TextChanged onTextChanged;
  final String hint;
  final String label;
  final bool isObscured;
  @override
  _TrackingTextInputState createState() => _TrackingTextInputState();
}

class _TrackingTextInputState extends State<TrackingTextInputphone> {
  final GlobalKey _fieldKey = GlobalKey();
  final TextEditingController _textController = TextEditingController();
  Timer _debounceTimer;
  @override
  initState() {
    _textController.addListener(() {
      // We debounce the listener as sometimes the caret position is updated after the listener
      // this assures us we get an accurate caret position.
      if (_debounceTimer?.isActive ?? false) _debounceTimer.cancel();
      _debounceTimer = Timer(const Duration(milliseconds: 100), () {
        if (_fieldKey.currentContext != null) {
          // Find the render editable in the field.
          final RenderObject fieldBox =
          _fieldKey.currentContext.findRenderObject();
          Offset caretPosition = getCaretPosition(fieldBox);

          if (widget.onCaretMoved != null) {
            widget.onCaretMoved(caretPosition);
          }
        }
      });
      if (widget.onTextChanged != null) {
        widget.onTextChanged(_textController.text);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: TextFormField(
        keyboardType: TextInputType.phone,


        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(start: 0.0),
            child:Icon(Icons.phone,
              color:  Color(0xffFF2400),),// myIcon is a 48px-wide widget.
          ),
          hintText: widget.hint,
          labelText: widget.label,
        ),
        key: _fieldKey,
        controller: _textController,
        obscureText: widget.isObscured,
        validator: (value) {},

      ),
    );
  }
}