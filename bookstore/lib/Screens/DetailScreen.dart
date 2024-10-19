import 'package:bookstore/Classes/book.dart';
import 'package:bookstore/Res/color.dart';
import 'package:bookstore/Section/DetailBottomAppBar.dart';
import 'package:bookstore/Section/ExpandableText.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';



class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    final Book book = ModalRoute.of(context)!.settings.arguments as Book;
    var formatter = NumberFormat('#,###');

    return Scaffold(
        appBar: AppBar(
          title: const Text("DETAIL", style: TextStyle(fontWeight: FontWeight.bold),),
          automaticallyImplyLeading: true,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                icon: const Icon(Icons.shopping_cart_outlined),
                onPressed: () {
                  Navigator.pushNamed(context, '/Cart');
                },
              ),
            ),
          ],
        ),

       
        bottomNavigationBar: Detailbottomappbar(book: book),
        body: ListView(children: [
          Expanded(
            child: Image.asset(
              book.path,
              fit: BoxFit.contain, // Đảm bảo ảnh không bị méo hoặc tràn
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${formatter.format(book.price)}đ",
                  style:  TextStyle(color: colorAppBar, fontSize: 20, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  book.title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 245, 221, 8),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("4.6"), // Sau có thể chỉnh sửa tùy theo lượt đánh giá
                    Text(" / 5 "),
                    Text(
                      "(30)",
                      style: TextStyle(color: Colors.blueGrey),
                    ), // Sau có thể chỉnh sửa tùy theo lượt đánh giá
                  ],
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                
                const Text("Mô tả", style: TextStyle(fontWeight: FontWeight.w500),),
                const SizedBox(
                  height: 5,
                ),
                const ExpandableText(textToShow:  "Think Again: The Power of Knowing What You Don't Know của Adam Grant là một cuốn sách khám phá sức mạnh của việc thay đổi tư duy và tầm quan trọng của việc suy nghĩ lại về những niềm tin và quan điểm mà chúng ta giữ. Grant, một nhà tâm lý học và giáo sư tại Đại học Wharton, nhấn mạnh rằng khả năng linh hoạt trong tư duy không chỉ giúp cá nhân phát triển mà còn tạo ra môi trường tích cực hơn trong các mối quan hệ và tổ chức. Cuốn sách được chia thành ba phần chính. Phần đầu tiên tập trung vào việc phát hiện những sai lầm trong tư duy của chúng ta, nơi Grant khuyến khích độc giả thách thức những giả định và quan điểm đã ăn sâu trong tư duy của mình. Ông trình bày các ví dụ thực tế từ các lĩnh vực khác nhau để minh họa cho sức mạnh của việc nghi ngờ và suy nghĩ lại. Phần thứ hai của cuốn sách khám phá cách giúp người khác thay đổi quan điểm. Grant giới thiệu các chiến lược giao tiếp hiệu quả để khuyến khích sự hợp tác và thảo luận, từ đó giúp mọi người mở lòng hơn với các ý tưởng mới. Cuối cùng, phần ba tập trung vào việc xây dựng một văn hóa tư duy phản biện trong tổ chức. Grant lập luận rằng những tổ chức thành công thường là những nơi mà việc suy nghĩ lại và học hỏi từ sai lầm được khuyến khích, từ đó dẫn đến sự đổi mới và phát triển bền vững. Think Again không chỉ là một cuốn sách về tư duy mà còn là một lời kêu gọi mạnh mẽ cho việc chấp nhận sự không chắc chắn và mở rộng tầm nhìn của bản thân. Grant đã tạo ra một tác phẩm có sức hấp dẫn lớn, khuyến khích mọi người xem xét lại không chỉ những gì họ nghĩ mà còn cách họ nghĩ về những điều đó."
                        
                ),
               
              ],
            ),
          )
        ]));
  }
}
