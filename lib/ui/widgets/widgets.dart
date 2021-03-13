import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:maktabeh_app/core/app_localizations.dart';

class Loader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator();
  }
}

class ReadMoreText extends StatefulWidget {
  const ReadMoreText(this.text,
      {Key key, this.trimLines = 2, this.textDirection, this.style})
      : assert(text != null),
        super(key: key);

  final String text;
  final int trimLines;
  final TextDirection textDirection;
  final TextStyle style;

  @override
  ReadMoreTextState createState() => ReadMoreTextState();
}

class ReadMoreTextState extends State<ReadMoreText> {
  bool isExpanded = false;

  void _onTapLink() {
    setState(() => isExpanded = !isExpanded);
  }

  @override
  Widget build(BuildContext context) {
    TextSpan readMore = TextSpan(
        text: isExpanded
            ? AppLocalizations.of(context).translate(' read less')
            : AppLocalizations.of(context).translate('read more...'),
        style: TextStyle(
          color: Colors.blue,
        ),
        recognizer: TapGestureRecognizer()..onTap = _onTapLink);
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final readModeSize = calcWidgetSize(readMore, constraints);
        final myTextSize = calcWidgetSize(
            TextSpan(
              text: widget.text,
            ),
            constraints);
        TextPainter textPainter = TextPainter(
          text: TextSpan(
            text: widget.text,
          ),
          textDirection: widget.textDirection,
          maxLines: widget.trimLines,
        )
          ..layout(
            minWidth: constraints.minWidth,
            maxWidth: constraints.maxWidth,
          )
          ..text = TextSpan(
            text: widget.text,
          );
        if (textPainter.didExceedMaxLines) {
          int endIndex = textPainter.getOffsetBefore(
            textPainter
                .getPositionForOffset(
                  Offset(
                    myTextSize.width - readModeSize.width,
                    myTextSize.height,
                  ),
                )
                .offset,
          );
          return RichText(
            softWrap: true,
            text: TextSpan(
              text:
                  isExpanded ? widget.text : widget.text.substring(0, endIndex),
              style: widget.style,
              children: <TextSpan>[readMore],
            ),
          );
        } else {
          return Text(
            widget.text,
            style: widget.style,
          );
        }
      },
    );
  }

  Size calcWidgetSize(TextSpan text, BoxConstraints constraints) {
    TextPainter textPainter = TextPainter(
      text: text,
      textDirection: widget.textDirection,
      maxLines: widget.trimLines,
    );
    textPainter.layout(
      minWidth: constraints.minWidth,
      maxWidth: constraints.maxWidth,
    );
    return textPainter.size;
  }
}
