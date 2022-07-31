import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tabata_timer/screens/edit_screen/exercise_card.dart';
import 'package:tabata_timer/tabata_app_bar.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({Key? key}) : super(key: key);

  @override
  State<EditScreen> createState() => _EditScreen();
}

class _EditScreen extends State<EditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TabataAppBar(),
      body: Center(
        child: ListView(
          children: const <Widget>[
            //All card have place to write numbers in format 00:00
            //Operation cards
            OperationCard(operation: 'Series'),
            OperationCard(operation: 'Break between series'),
            OperationCard(operation: 'Prepare break'),
            OperationCard(operation: 'Cooldown break'),
            //Add card has on row, 2 columns - 2 pluses -> + workout, + break, it is slightly smaller
            Card(child: Text('Add card card')),
            //Those can be removed (menu icon -> delete, edit description, edit name, duplicate)
            //Exercise cards
            Card(child: Text('Exercise card')),
            Card(child: Text('Break card')),
          ],
        ),
      ),
    );
  }
}

class OperationCard extends StatelessWidget {
  final String operation;

  const OperationCard({
    Key? key,
    required this.operation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red[200],
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListTile(
            subtitle: Row(
              children: [
                const Icon(
                  Icons.handyman_outlined,
                  size: 40.0,
                ),
                const SizedBox(
                  width: 30,
                ),
                Text(
                  operation,
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                const TimeInputField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TimeInputField extends StatefulWidget {
  const TimeInputField({Key? key}) : super(key: key);

  @override
  State<TimeInputField> createState() => _TimeInputField();
}

class _TimeInputField extends State<TimeInputField> {
  final TextEditingController _txtTimeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.center,
      controller: _txtTimeController,
      keyboardType: const TextInputType.numberWithOptions(decimal: false),
      decoration: InputDecoration(
        hintStyle: const TextStyle(fontSize: 24.0),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.0),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black54, width: 1.0),
        ),
        hintMaxLines: 1,
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * .30,
        ),
        alignLabelWithHint: true,
        hintText: '00:00',
      ),
      inputFormatters: <TextInputFormatter>[TimeTextInputFormatter()],
    );
  }
}

class TimeTextInputFormatter extends TextInputFormatter {
  late RegExp _exp;
  TimeTextInputFormatter() {
    _exp = RegExp(r'^[0-9:]+$');
  }

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // TODO: implement formatEditUpdate
    throw UnimplementedError();
  }
}
