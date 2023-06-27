// import 'package:example/typing_robot.dart';
// import 'package:flutter/material.dart';
// import 'package:super_text_layout/super_text_layout.dart';
// import 'package:super_text_layout/super_text_layout_logging.dart';
//
// import 'rainbow_builder.dart';
// import 'rainbow_character_supertext.dart';
// import 'user_label_layer.dart';
//
// void main() {
//   initLoggers(
//     Level.WARNING,
//     {
//       buildsLog,
//       robotLog,
//     },
//   );
//
//   runApp(const SuperTextExampleApp());
// }
//
// class SuperTextExampleApp extends StatelessWidget {
//   const SuperTextExampleApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Super Text Example',
//       home: SuperTextExampleScreen(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
//
// class SuperTextExampleScreen extends StatefulWidget {
//   const SuperTextExampleScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SuperTextExampleScreen> createState() => _SuperTextExampleScreenState();
// }
//
// class _SuperTextExampleScreenState extends State<SuperTextExampleScreen> with TickerProviderStateMixin {
//   static const _text = TextSpan(
//     text: _textMessage,
//     style: _textStyle,
//   );
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Center(
//             child: ConstrainedBox(
//               constraints: const BoxConstraints(maxWidth: 500),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // _buildHeader("Welcome to super_text_layout"),
//                   // SuperTextWithSelection examples
//                   // _buildSubHeader("SuperTextWithSelection Widget"),
//                   // _buildDescription(
//                   //     "SuperTextWithSelection is a product-level widget that renders text with traditional user selections. If you want to build a custom text decoration experience, see SuperText."),
//                   // _buildSuperTextWithSelectionStaticSingle(),
//                   // _buildSuperTextWithSelectionRobot(),
//                   // _buildSuperTextWithSelectionStaticMulti(),
//                   const SizedBox(height: 48),
//                   // SuperText examples
//                   // _buildSubHeader("SuperText Widget"),
//                   // _buildDescription(
//                   //     "SuperText is a platform, upon which you can build various text experiences. A SuperText widget allows you to build an arbitrary UI beneath the text, and above the text."),
//                   // _buildCharacterRainbow(),
//                   // _buildSingleCaret(),
//                   _buildSingleSelectionHighlight(),
//                   _buildSingleSelectionHighlightRainbow(),
//                   _buildMultiUserSelections(),
//                   _buildEmptySelection(),
//                   const SizedBox(height: 48),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildHeader(String text) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 24, bottom: 8.0),
//       child: Text(
//         text,
//         style: const TextStyle(
//           color: Color(0xFF444444),
//           fontSize: 24,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     );
//   }
//
//   Widget _buildSubHeader(String text) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 12, bottom: 8.0),
//       child: Text(
//         text,
//         style: const TextStyle(
//           color: Color(0xFF444444),
//           fontSize: 18,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     );
//   }
//
//   Widget _buildDescription(String text) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 16.0),
//       child: Text(
//         text,
//         style: const TextStyle(
//           color: Color(0xFF444444),
//           fontSize: 14,
//           height: 1.4,
//         ),
//       ),
//     );
//   }
//
//   Widget _buildSuperTextWithSelectionRobot() {
//     return _buildExampleContainer(
//       child: const _TypingRobotExample(),
//     );
//   }
//
//   Widget _buildSuperTextWithSelectionStaticSingle() {
//     return _buildExampleContainer(
//       child: SuperTextWithSelection.single(
//         richText: _text,
//         userSelection: UserSelection(
//           highlightStyle: _primaryHighlightStyle,
//           caretStyle: _primaryCaretStyle,
//           selection: TextSelection(baseOffset: 11, extentOffset: 21),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildSuperTextWithSelectionStaticMulti() {
//     return _buildExampleContainer(
//       child: SuperTextWithSelection.multi(
//         richText: _text,
//         userSelections: [
//           const UserSelection(
//             highlightStyle: _primaryHighlightStyle,
//             caretStyle: _primaryCaretStyle,
//             selection: TextSelection(baseOffset: 11, extentOffset: 21),
//           ),
//           UserSelection(
//             highlightStyle: _johnHighlightStyle,
//             caretStyle: _johnCaretStyle,
//             selection: const TextSelection(baseOffset: 58, extentOffset: 65),
//           ),
//           UserSelection(
//             highlightStyle: _sallyHighlightStyle,
//             caretStyle: _sallyCaretStyle,
//             selection: const TextSelection(baseOffset: 79, extentOffset: 120),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildCharacterRainbow() {
//     return _buildExampleContainer(
//       child: const CharacterRainbowSuperText(
//         text: _text,
//       ),
//     );
//   }
//
//   Widget _buildSingleCaret() {
//     return _buildExampleContainer(
//       child: SuperText(
//         richText: _text,
//         layerAboveBuilder: (context, textLayout) {
//           return Stack(
//             children: [
//
//               TextLayoutCaret( textColor: Colors.blue,
//                 textLayout: textLayout,
//                 style: _primaryCaretStyle,
//                 position: const TextPosition(offset: 21),
//                 textSize: 20, value: '',
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
//
//   Widget _buildSingleSelectionHighlight() {
//     return _buildExampleContainer(
//       child: SuperText(
//         richText: _text,
//         layerAboveBuilder: (context, textLayout) {
//           return Stack(
//             children: [
//
//               TextLayoutCaret( textColor: Colors.blue,
//                 textLayout: textLayout,
//                 style: _primaryCaretStyle,
//                 position: const TextPosition(offset: 21),
//                 textSize: 20, value: '',
//               ),
//             ],
//           );
//         },
//         layerBeneathBuilder: (context, textLayout) {
//           return Stack(
//             children: [
//               TextLayoutSelectionHighlight(
//                 textLayout: textLayout,
//                 style: _primaryHighlightStyle,
//                 selection: const TextSelection(baseOffset: 11, extentOffset: 21),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
//
//   Widget _buildSingleSelectionHighlightRainbow() {
//     return _buildExampleContainer(
//       child: SuperText(
//         richText: _text,
//         layerAboveBuilder: (context, textLayout) {
//           return Stack(
//             children: [
//               RainbowBuilder(builder: (context, color) {
//                 return TextLayoutCaret( textColor: Colors.blue,
//                   textLayout: textLayout,
//                   style: _primaryCaretStyle.copyWith(color: color),
//                   position: const TextPosition(offset: 21),
//                   textSize: 20, value: '',
//                 );
//               }),
//             ],
//           );
//         },
//         layerBeneathBuilder: (context, textLayout) {
//           return Stack(
//             children: [
//               RainbowBuilder(builder: (context, color) {
//                 return TextLayoutSelectionHighlight(
//                   textLayout: textLayout,
//                   style: _primaryHighlightStyle.copyWith(color: color.withOpacity(0.2)),
//                   selection: const TextSelection(baseOffset: 11, extentOffset: 21),
//                 );
//               }),
//             ],
//           );
//         },
//       ),
//     );
//   }
//
//   Widget _buildMultiUserSelections() {
//     return _buildExampleContainer(
//       child: SuperText(
//         richText: _text,
//         layerAboveBuilder: (context, getTextLayout) {
//           return MultiLayerBuilder([
//                 (context, textLayout) {
//               return Stack(
//                 children: [
//                   TextLayoutCaret( textColor: Colors.blue,
//                     textLayout: textLayout,
//                     style: _primaryCaretStyle,
//                     position: const TextPosition(offset: 21),
//                     textSize: 20, value: '',
//                   ),
//                   TextLayoutCaret( textColor: Colors.blue,
//                     textLayout: textLayout,
//                     style: _johnCaretStyle,
//                     position: const TextPosition(offset: 65), textSize: 20, value: '',
//                   ),
//                   TextLayoutCaret( textColor: Colors.blue,
//                     textLayout: textLayout,
//                     style: _sallyCaretStyle,
//                     position: const TextPosition(offset: 120),
//                     textSize: 20, value: '',
//                   ),
//                 ],
//               );
//             },
//                 (context, textLayout) {
//               return Stack(
//                 children: [
//                   TextLayoutUserLabel(
//                     textLayout: textLayout,
//                     style: _johnUserLabelStyle,
//                     label: "John",
//                     position: const TextPosition(offset: 65),
//                   ),
//                   TextLayoutUserLabel(
//                     textLayout: textLayout,
//                     style: _sallyUserLabelStyle,
//                     label: "Sally",
//                     position: const TextPosition(offset: 120),
//                   ),
//                 ],
//               );
//             },
//           ]).build(context, getTextLayout);
//         },
//         layerBeneathBuilder: (context, textLayout) {
//           return Stack(
//             children: [
//               TextLayoutSelectionHighlight(
//                 textLayout: textLayout,
//                 style: _primaryHighlightStyle,
//                 selection: const TextSelection(baseOffset: 11, extentOffset: 21),
//               ),
//               TextLayoutSelectionHighlight(
//                 textLayout: textLayout,
//                 style: _johnHighlightStyle,
//                 selection: const TextSelection(baseOffset: 58, extentOffset: 65),
//               ),
//               TextLayoutSelectionHighlight(
//                 textLayout: textLayout,
//                 style: _sallyHighlightStyle,
//                 selection: const TextSelection(baseOffset: 79, extentOffset: 120),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
//
//   Widget _buildEmptySelection() {
//     return _buildExampleContainer(
//       child: SuperText(
//         richText: const TextSpan(text: "", style: _textStyle),
//         layerAboveBuilder: (context, textLayout) {
//           return TextLayoutEmptyHighlight(
//             textLayout: textLayout,
//             style: _primaryHighlightStyle,
//           );
//         },
//       ),
//     );
//   }
//
//   Widget _buildExampleContainer({
//     required Widget child,
//   }) {
//     return Container(
//       margin: const EdgeInsets.only(top: 30.0, left: 24),
//       padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 16.0),
//       decoration: const BoxDecoration(
//         border: Border(left: BorderSide(width: 5, color: Color(0xFFDDDDDD))),
//       ),
//       child: child,
//     );
//   }
// }
//
// class _TypingRobotExample extends StatefulWidget {
//   const _TypingRobotExample({Key? key}) : super(key: key);
//
//   @override
//   _TypingRobotExampleState createState() => _TypingRobotExampleState();
// }
//
// class _TypingRobotExampleState extends State<_TypingRobotExample> {
//   final _caretLink = LayerLink();
//   late TextEditingController _controller;
//   String _plainText = "";
//   TextSpan _richText = const TextSpan(text: "", style: _textStyle);
//
//   late TypingRobot _robot;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = TextEditingController()
//       ..addListener(() {
//         if (_controller.text != _plainText && mounted) {
//           setState(() {
//             _plainText = _controller.text;
//             _richText = TextSpan(text: _plainText, style: _textStyle);
//           });
//         }
//       });
//
//     _robot = TypingRobot(
//       textEditingController: _controller,
//     )
//       ..placeCaret(const TextPosition(offset: 0))
//       ..typeText(_textMessage)
//       ..start();
//   }
//
//   @override
//   void dispose() {
//     _robot.dispose();
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         SuperTextWithSelection.single(
//           richText: _richText,
//           userSelection: UserSelection(
//             highlightStyle: _primaryHighlightStyle,
//             caretStyle: _primaryCaretStyle,
//             selection: _controller.selection,
//             caretFollower: _caretLink,
//           ),
//         ),
//         CompositedTransformFollower(
//           link: _caretLink,
//           followerAnchor: Alignment.centerLeft,
//           targetAnchor: Alignment.centerRight,
//           showWhenUnlinked: false,
//           child: const UserLabel(
//             label: "iRobot",
//             style: UserLabelStyle(
//               color: Colors.red,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
//
// const defaultSelectionColor = Color(0xFFD3D3D3);
//
// const _textMessage =
//     "Welcome to super_text_layout, which provides a selection of text widgets that support custom carets, selection, and decoration.";
//
// const _textStyle = TextStyle(
//   color: Color(0xFF444444),
//   fontFamily: 'Roboto',
//   fontSize: 20,
//   height: 1.4,
// );
//
// const _primaryCaretStyle = CaretStyle(
//   width: 2.0,
//   color: Colors.black,
// );
// const _primaryHighlightStyle = SelectionHighlightStyle(
//   color: defaultSelectionColor,
// );
// const _johnCaretStyle = CaretStyle(
//   width: 1.0,
//   color: Colors.red,
// );
// final _johnHighlightStyle = SelectionHighlightStyle(
//   color: Colors.red.withOpacity(0.5),
// );
// const _johnUserLabelStyle = UserLabelStyle(
//   color: Colors.red,
//   shape: RoundedRectangleBorder(
//     borderRadius: BorderRadius.only(
//       topLeft: Radius.circular(4),
//       topRight: Radius.circular(16),
//       bottomLeft: Radius.circular(16),
//       bottomRight: Radius.circular(16),
//     ),
//   ),
// );
// const _sallyCaretStyle = CaretStyle(
//   width: 2.0,
//   color: Colors.purpleAccent,
// );
// final _sallyHighlightStyle = SelectionHighlightStyle(
//   color: Colors.purpleAccent.withOpacity(0.5),
// );
// const _sallyUserLabelStyle = UserLabelStyle(
//   color: Colors.purpleAccent,
//   shape: RoundedRectangleBorder(
//     borderRadius: BorderRadius.only(
//       topLeft: Radius.circular(4),
//       topRight: Radius.circular(16),
//       bottomLeft: Radius.circular(16),
//       bottomRight: Radius.circular(16),
//     ),
//   ),
// );
//

import 'package:example/typing_robot.dart';
import 'package:flutter/material.dart';
import 'package:super_text_layout/super_text_layout.dart';
import 'package:super_text_layout/super_text_layout_logging.dart';

import 'rainbow_builder.dart';
import 'rainbow_character_supertext.dart';
import 'user_label_layer.dart';

double textSizeValue = 20;

void main() {
  initLoggers(
    Level.WARNING,
    {
      buildsLog,
      robotLog,
    },
  );

  runApp(const SuperTextExampleApp());
}

class SuperTextExampleApp extends StatelessWidget {
  const SuperTextExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Super Text Example',
      home: SuperTextExampleScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SuperTextExampleScreen extends StatefulWidget {
  const SuperTextExampleScreen({Key? key}) : super(key: key);

  @override
  State<SuperTextExampleScreen> createState() => _SuperTextExampleScreenState();
}

class _SuperTextExampleScreenState extends State<SuperTextExampleScreen> with TickerProviderStateMixin {
  // static const _text = TextSpan(
  //   text: _textMessage,
  //   style: _textStyle,
  // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Stack(
                    children: [
                      const SizedBox(height: 48),
                      // SuperText examples
                      // _buildSubHeader("SuperText Widget"),
                      // _buildDescription(
                      //     "SuperText is a platform, upon which you can build various text experiences. A SuperText widget allows you to build an arbitrary UI beneath the text, and above the text."),
                      // _buildCharacterRainbow(),
                      _buildSingleCaret(),

                      // _buildSingleSelectionHighlight(),
                      // _buildSingleSelectionHighlightRainbow(),
                      // _buildMultiUserSelections(),
                      // _buildEmptySelection(),

                      const SizedBox(height: 48),
                    ],
                  ),
                ),
              ),
            ),
            SliderTheme(
              data: SliderThemeData(thumbColor: Colors.white, thumbShape: RoundSliderThumbShape(enabledThumbRadius: 16 - 2)),
              child: Slider(
                value: textSizeValue,
                activeColor: Colors.blue,
                inactiveColor: Colors.black,
                min: 12,
                max: 40,
                onChanged: (double newValue) {
                  setState(() {
                    textSizeValue = newValue;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 8.0),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF444444),
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildSubHeader(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 8.0),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF444444),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildDescription(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF444444),
          fontSize: 14,
          height: 1.4,
        ),
      ),
    );
  }

  Widget _buildSuperTextWithSelectionRobot() {
    return _buildExampleContainer(
      child: const _TypingRobotExample(),
    );
  }

  // Widget _buildSuperTextWithSelectionStaticSingle() {
  //   return _buildExampleContainer(
  //     child: SuperTextWithSelection.single(
  //       richText: _text,
  //       userSelection: const UserSelection(
  //         highlightStyle: _primaryHighlightStyle,
  //         caretStyle: _primaryCaretStyle,
  //         selection: TextSelection(baseOffset: 11, extentOffset: 21),
  //       ),
  //     ),
  //   );
  // }

  // Widget _buildSuperTextWithSelectionStaticMulti() {
  //   return _buildExampleContainer(
  //     child: SuperTextWithSelection.multi(
  //       richText: _text,
  //       userSelections: [
  //         const UserSelection(
  //           highlightStyle: _primaryHighlightStyle,
  //           caretStyle: _primaryCaretStyle,
  //           selection: TextSelection(baseOffset: 11, extentOffset: 21),
  //         ),
  //         UserSelection(
  //           highlightStyle: _johnHighlightStyle,
  //           caretStyle: _johnCaretStyle,
  //           selection: const TextSelection(baseOffset: 58, extentOffset: 65),
  //         ),
  //         UserSelection(
  //           highlightStyle: _sallyHighlightStyle,
  //           caretStyle: _sallyCaretStyle,
  //           selection: const TextSelection(baseOffset: 79, extentOffset: 120),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // Widget _buildCharacterRainbow() {
  //   return _buildExampleContainer(
  //     child: const CharacterRainbowSuperText(
  //       text: _text,
  //     ),
  //   );
  // }

  Widget _buildSingleCaret() {
    return _buildExampleContainer(
      child: SuperText(
        richText: TextSpan(
          text: '''
A paragraph is a series of sentences that are organized and coherent, and are all related to a single topic. Almost every piece of
writing you do that is longer than a few sentences should be organized into paragraphs. This is because paragraphs show a reader where
the subdivisions of an essay begin and end, and thus help the reader see the organization of the essay and grasp its main points.\n\n\n\n
Paragraphs can contain many different kinds of information. A paragraph could contain a series of brief examples or a single long illustration of a general point. It might describe a place, character, or process; narrate a series of events; compare or contrast two or more things; classify items into categories; or describe causes and effects. Regardless of the kind of information they contain, all paragraphs share certain characteristics. One of the most important of these is a topic sentence.
A well-organized paragraph supports or develops a single controlling idea, which is expressed in a sentence called the topic sentence. A topic sentence has several important functions: it substantiates or supports an essay's thesis statement; it unifies the content of a paragraph and directs the order of the sentences; and it advises the reader of the subject to be discussed and how the paragraph will discuss it. Readers generally look to the first few sentences in a paragraph to determine the subject and perspective of the paragraph. That's why it's often best to put the topic sentence at the very beginning of the paragraph. In some cases, however, it's more effective to place another sentence before the topic sentence—for example, a sentence linking the current paragraph to the previous one, or one providing background information.
Although most paragraphs should have a topic sentence, there are a few situations when a paragraph might not need a topic sentence. For example, you might be able to omit a topic sentence in a paragraph that narrates a series of events, if a paragraph continues developing an idea that you introduced (with a topic sentence) in the previous paragraph, or if all the sentences and details in a paragraph clearly refer—perhaps indirectly—to a main point. The vast majority of your paragraphs, however, should have a topic sentence.
          ''',
          style: TextStyle(
            color: Color(0xFF444444),
            fontFamily: 'Roboto',
            fontSize: textSizeValue,
            height: 2.5,
          ),
        ),
        layerAboveBuilder: (context, textLayout) {
          return Stack(
            children: [
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 2),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 4),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 7),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 12),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 60),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 65),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 70),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 75),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 80),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 85),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 90),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 95),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 100),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 105),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 110),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 60),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 60),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 60),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 60),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 60),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 60),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 60),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 60),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 60),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 60),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 606),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 60),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 60),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 60),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 60),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 60),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 60),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 60),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 60),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 60),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 60),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 60),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
              TextLayoutCaret(
                textColor: Colors.blue,
                textLayout: textLayout,
                style: _primaryCaretStyle,
                position: TextPosition(offset: 60),
                textSize: textSizeValue,
                value: '${textSizeValue.toInt()}',
              ),
            ],
          );
        },
        layerBeneathBuilder: (context, textLayout) {
          return TextLayoutSelectionHighlight(
            textLayout: textLayout,
            style: _primaryHighlightStyle,
            selection: const TextSelection(baseOffset: 60, extentOffset: 21),
          );
        },
      ),
    );
  }

  // Widget _buildSingleSelectionHighlight() {
  //   return _buildExampleContainer(
  //     child: SuperText(
  //       richText: _text,
  //       layerAboveBuilder: (context, textLayout) {
  //         return Stack(
  //           children: [
  //             TextLayoutCaret( textColor: Colors.blue,
  //               textLayout: textLayout,
  //               style: _primaryCaretStyle,
  //               position: const TextPosition(offset: 21),
  //             ),
  //           ],
  //         );
  //       },
  //       layerBeneathBuilder: (context, textLayout) {
  //         return Stack(
  //           children: [
  //             TextLayoutSelectionHighlight(
  //               textLayout: textLayout,
  //               style: _primaryHighlightStyle,
  //               selection: const TextSelection(baseOffset: 11, extentOffset: 21),
  //             ),
  //           ],
  //         );
  //       },
  //     ),
  //   );
  // }

  // Widget _buildSingleSelectionHighlightRainbow() {
  //   return _buildExampleContainer(
  //     child: SuperText(
  //       richText: _text,
  //       layerAboveBuilder: (context, textLayout) {
  //         return Stack(
  //           children: [
  //             RainbowBuilder(builder: (context, color) {
  //               return TextLayoutCaret( textColor: Colors.blue,
  //                 textLayout: textLayout,
  //                 style: _primaryCaretStyle.copyWith(color: color),
  //                 position: const TextPosition(offset: 21),
  //               );
  //             }),
  //           ],
  //         );
  //       },
  //       layerBeneathBuilder: (context, textLayout) {
  //         return Stack(
  //           children: [
  //             RainbowBuilder(builder: (context, color) {
  //               return TextLayoutSelectionHighlight(
  //                 textLayout: textLayout,
  //                 style: _primaryHighlightStyle.copyWith(color: color.withOpacity(0.2)),
  //                 selection: const TextSelection(baseOffset: 11, extentOffset: 21),
  //               );
  //             }),
  //           ],
  //         );
  //       },
  //     ),
  //   );
  // }

  // Widget _buildMultiUserSelections() {
  //   return _buildExampleContainer(
  //     child: SuperText(
  //       richText: _text,
  //       layerAboveBuilder: (context, getTextLayout) {
  //         return MultiLayerBuilder([
  //           (context, textLayout) {
  //             return Stack(
  //               children: [
  //                 TextLayoutCaret( textColor: Colors.blue,
  //                   textLayout: textLayout,
  //                   style: _primaryCaretStyle,
  //                   position: const TextPosition(offset: 21),
  //                 ),
  //                 TextLayoutCaret( textColor: Colors.blue,
  //                   textLayout: textLayout,
  //                   style: _johnCaretStyle,
  //                   position: const TextPosition(offset: 65),
  //                 ),
  //                 TextLayoutCaret( textColor: Colors.blue,
  //                   textLayout: textLayout,
  //                   style: _sallyCaretStyle,
  //                   position: const TextPosition(offset: 120),
  //                 ),
  //               ],
  //             );
  //           },
  //           (context, textLayout) {
  //             return Stack(
  //               children: [
  //                 TextLayoutUserLabel(
  //                   textLayout: textLayout,
  //                   style: _johnUserLabelStyle,
  //                   label: "John",
  //                   position: const TextPosition(offset: 65),
  //                 ),
  //                 TextLayoutUserLabel(
  //                   textLayout: textLayout,
  //                   style: _sallyUserLabelStyle,
  //                   label: "Sally",
  //                   position: const TextPosition(offset: 120),
  //                 ),
  //               ],
  //             );
  //           },
  //         ]).build(context, getTextLayout);
  //       },
  //       layerBeneathBuilder: (context, textLayout) {
  //         return Stack(
  //           children: [
  //             TextLayoutSelectionHighlight(
  //               textLayout: textLayout,
  //               style: _primaryHighlightStyle,
  //               selection: const TextSelection(baseOffset: 11, extentOffset: 21),
  //             ),
  //             TextLayoutSelectionHighlight(
  //               textLayout: textLayout,
  //               style: _johnHighlightStyle,
  //               selection: const TextSelection(baseOffset: 58, extentOffset: 65),
  //             ),
  //             TextLayoutSelectionHighlight(
  //               textLayout: textLayout,
  //               style: _sallyHighlightStyle,
  //               selection: const TextSelection(baseOffset: 79, extentOffset: 120),
  //             ),
  //           ],
  //         );
  //       },
  //     ),
  //   );
  // }
  //
  // Widget _buildEmptySelection() {
  //   return _buildExampleContainer(
  //     child: SuperText(
  //       richText: const TextSpan(text: "", style: _textStyle),
  //       layerAboveBuilder: (context, textLayout) {
  //         return TextLayoutEmptyHighlight(
  //           textLayout: textLayout,
  //           style: _primaryHighlightStyle,
  //         );
  //       },
  //     ),
  //   );
  // }

  Widget _buildExampleContainer({
    required Widget child,
  }) {
    return Container(
      // margin: const EdgeInsets.only(top: 30.0, left: 24),
      padding: const EdgeInsets.all(16),
      // decoration: const BoxDecoration(
      //   border: Border(left: BorderSide(width: 5, color: Color(0xFFDDDDDD))),
      // ),
      child: child,
    );
  }
}

class _TypingRobotExample extends StatefulWidget {
  const _TypingRobotExample({Key? key}) : super(key: key);

  @override
  _TypingRobotExampleState createState() => _TypingRobotExampleState();
}

class _TypingRobotExampleState extends State<_TypingRobotExample> {
  final _caretLink = LayerLink();
  late TextEditingController _controller;
  String _plainText = "";
  TextSpan _richText = const TextSpan(text: "", style: _textStyle);

  late TypingRobot _robot;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController()
      ..addListener(() {
        if (_controller.text != _plainText && mounted) {
          setState(() {
            _plainText = _controller.text;
            _richText = TextSpan(text: _plainText, style: _textStyle);
          });
        }
      });

    // _robot = TypingRobot(
    //   textEditingController: _controller,
    // )
    //   ..placeCaret(const TextPosition(offset: 0))
    //   ..typeText(_textMessage)
    //   ..start();
  }

  @override
  void dispose() {
    _robot.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SuperTextWithSelection.single(
          richText: _richText,
          userSelection: UserSelection(
            highlightStyle: _primaryHighlightStyle,
            caretStyle: _primaryCaretStyle,
            selection: _controller.selection,
            caretFollower: _caretLink,
          ),
        ),
        CompositedTransformFollower(
          link: _caretLink,
          followerAnchor: Alignment.centerLeft,
          targetAnchor: Alignment.centerRight,
          showWhenUnlinked: false,
          child: const UserLabel(
            label: "iRobot",
            style: UserLabelStyle(
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}

const defaultSelectionColor = Color(0xFFACCEF7);

// const _textMessage =
//     "Welcome to super_text_layout, which provides a selection of text widgets that support custom carets, selection, and decoration.";

const _textStyle = TextStyle(
  color: Color(0xFF444444),
  fontFamily: 'Roboto',
  fontSize: 20,
  height: 3,
);

var _primaryCaretStyle = CaretStyle(width: 5.0, color: Colors.black, textSize: textSizeValue);
const _primaryHighlightStyle = SelectionHighlightStyle(
  color: defaultSelectionColor,
);
