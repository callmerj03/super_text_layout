import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui' as ui;

import 'infrastructure/blink_controller.dart';
import 'text_layout.dart';

class TextLayoutCaret extends StatefulWidget {
  
  const TextLayoutCaret({
    Key? key,
    required this.textLayout,
    this.blinkController,
    this.blinkCaret = true,
    required this.style,
    required this.position,
    this.caretTracker,
    required this.textSize,
    required this.value,
  }) : super(key: key);

  final TextLayout textLayout;
  final BlinkController? blinkController;
  final bool blinkCaret;
  final CaretStyle style;
  final TextPosition? position;
  final LayerLink? caretTracker;
  final double textSize;
  final String value;

  @override
  State<TextLayoutCaret> createState() => TextLayoutCaretState();
}

@visibleForTesting
class TextLayoutCaretState extends State<TextLayoutCaret> with TickerProviderStateMixin {
  late BlinkController _blinkController;

  @override
  void initState() {
    super.initState();
    _blinkController = widget.blinkController ?? BlinkController(tickerProvider: this);
    if (widget.blinkCaret) {
      _blinkController.startBlinking();
    }
  }

  @override
  void didUpdateWidget(TextLayoutCaret oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.blinkController != oldWidget.blinkController) {
      if (oldWidget.blinkController == null) {
        // Dispose the old internal BlinkController. We do this in a post-frame callback
        // so that the CaretPainter has time to detach itself as a listener from the old
        // BlinkController before we dispose it. If we dispose immediately, then the
        // CaretPainter will throw an exception when it deregister itself.
        // TODO: ask the Flutter community if there's a common solution to this situation
        final oldBlinkController = _blinkController;
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          oldBlinkController.dispose();
        });
      }
      _blinkController = widget.blinkController ?? BlinkController(tickerProvider: this);
    }

    if (widget.position != oldWidget.position && widget.blinkCaret) {
      // The caret moved to a new position. Go back to a fully opaque
      // caret and start the blink timer over again.
      _blinkController.jumpToOpaque();
    }
  }

  @override
  void dispose() {
    if (widget.blinkController == null) {
      _blinkController.dispose();
    }

    super.dispose();
  }

  @visibleForTesting
  bool get isCaretPresent => widget.position != null && widget.position!.offset >= 0;

  @override
  Widget build(BuildContext context) {
    final offset = isCaretPresent ? widget.textLayout.getOffsetForCaret(widget.position!) : null;
    final height = isCaretPresent
        ? widget.textLayout.getHeightForCaret(widget.position!) ?? widget.textLayout.getLineHeightAtPosition(widget.position!)
        : null;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned.fill(
          child: CustomPaint(
            size: Size(widget.style.width, height ?? 0),
            painter: CaretPainter(
              blinkController: _blinkController,
              caretStyle: widget.style,
              offset: offset,
              height: (height! * 1),
              textSize: widget.textSize,
              value: widget.value,
            ),
          ),
        ),
        if (widget.caretTracker != null && offset != null)
          Positioned(
            left: offset.dx,
            top: offset.dy,
            width: widget.style.width,
            height: height,
            child: CompositedTransformTarget(
              link: widget.caretTracker!,
            ),
          ),
      ],
    );
  }
}

class CaretPainter extends CustomPainter {
  CaretPainter({
    this.blinkController,
    required String value,
    required CaretStyle caretStyle,
    required double textSize,
    this.offset,
    required double? height,
  })  : _caretStyle = caretStyle,
        _height = height,
        _textSize = textSize,
        _value = value,
        super(repaint: blinkController);

  @visibleForTesting
  final BlinkController? blinkController;
  final CaretStyle _caretStyle;
  @visibleForTesting
  final Offset? offset;
  final double? _height;
  final double? _textSize;
  final String _value;

  @override
  void paint(Canvas canvas, Size size) {
    if (offset == null || _height == null) {
      return;
    }

    final textStyle = ui.TextStyle(color: Colors.red, fontSize: _textSize, fontWeight: FontWeight.bold);
    final paragraphStyle = ui.ParagraphStyle(
      textDirection: TextDirection.ltr,
    );
    final paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
      ..pushStyle(textStyle)
      ..addText('${_value}');
    final constraints = ui.ParagraphConstraints(width: 300);
    final paragraph = paragraphBuilder.build();
    paragraph.layout(constraints);
    canvas.drawParagraph(paragraph, offset!);

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(offset!.dx, offset!.dy, 0, _height!),
        _caretStyle.borderRadius.resolve(TextDirection.ltr).topLeft,
      ),
      Paint()..color = _caretStyle.color,
    );
  }

  @override
  bool shouldRepaint(CaretPainter oldDelegate) {
    return blinkController != oldDelegate.blinkController ||
        _caretStyle != oldDelegate._caretStyle ||
        offset != oldDelegate.offset ||
        _height != oldDelegate._height;
  }
}

class CaretStyle {
  const CaretStyle({
    this.color = const Color(0xFF000000),
    this.width = 2,
    this.textSize = 20,
    this.borderRadius = BorderRadius.zero,
  });

  final Color color;
  final double width;
  final double textSize;
  final BorderRadiusGeometry borderRadius;

  CaretStyle copyWith({
    Color? color,
    double? width,
    BorderRadiusGeometry? borderRadius,
  }) {
    return CaretStyle(
      color: color ?? this.color,
      width: width ?? this.width,
      textSize: textSize ?? this.textSize,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }
}
