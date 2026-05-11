
import 'package:bubble/bubble.dart';
import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/properties/date_time_formatters_property.dart';

class ChatDayWidget extends StatelessWidget {
  final DateTime date;
  const ChatDayWidget({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 10),
        child: Bubble(
          stick: true,
          color: const Color.fromRGBO(212, 234, 244, 1.0),
          child: Text(
            formatDayName(date),
            style: TextStyleProperty.descriptionStyle.copyWith(
              color: ColorConstants.blackColor,
              fontSize: 11,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ),
    );
  }
}