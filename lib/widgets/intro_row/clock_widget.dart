import 'package:messenger_app/commons/exports.dart';
import 'package:messenger_app/properties/date_time_formatters_property.dart';

class ClockWidget extends StatefulWidget {
  const ClockWidget({super.key});

  @override
  State<ClockWidget> createState() => _ClockWidgetState();
}

class _ClockWidgetState extends State<ClockWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      formatPrettyDate(DateTime.now()),
      style: TextStyle(
        fontSize: 15,
        letterSpacing: 1.0,
        color: ColorConstants.lightGreenColor,
        fontFamily: 'Lato',
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
