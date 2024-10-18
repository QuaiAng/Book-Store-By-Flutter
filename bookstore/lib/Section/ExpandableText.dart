import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  final String textToShow; 
  final int trimLines; 
  final TextStyle style;

  const ExpandableText({
    super.key,
    required this.textToShow,
    this.trimLines = 3, 
    this.style = const TextStyle(),
  });

  @override
  // ignore: library_private_types_in_public_api
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool isExpanded = false; 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       
        LayoutBuilder(
          builder: (context, size) {
           
            final span = TextSpan(
              text: widget.textToShow,
              style: widget.style, 
            );
           
          
            final tp = TextPainter(
              maxLines: widget.trimLines, 
              textDirection:
                  TextDirection.ltr, 
              text: span,
            );
            tp.layout(
                maxWidth: size
                    .maxWidth); // Đo lường chiều rộng của văn bản dựa trên không gian khả dụng

            // Kiểm tra xem văn bản có vượt quá số dòng tối đa không
            if (tp.didExceedMaxLines) {
              // Nếu văn bản vượt quá số dòng, hiển thị cột chứa văn bản và nút "Xem thêm"/"Rút gọn"
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: <Widget>[
                 
                  Text(
                    widget.textToShow,
                    maxLines: isExpanded ? null : widget.trimLines, 
                    overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis, // Hiển thị "..." khi thu gọn
                  ),

                  InkWell(
                    onTap: () {
                      setState(() {
                        isExpanded =
                            !isExpanded; // Đảo trạng thái mở rộng/thu gọn khi nhấn
                      });
                    },
                    child: Text(
                      isExpanded ? "Rút gọn" : "...Xem thêm", // Hiển thị text dựa trên trạng thái `isExpanded`
                      style: const TextStyle(
                          color: Colors.blue), 
                    ),
                  ),
                ],
              );
            } else {
              // Ngược lại văn bản không vượt quá số dòng tối đa thì hiển thị toàn bộ
              return Text(widget.textToShow, style: widget.style,);
            }
          },
        ),
      ],
    );
  }
}
