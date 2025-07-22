import 'package:flutter/material.dart';

class TextFieldExample extends StatefulWidget {
  const TextFieldExample({super.key});

  @override
  State<StatefulWidget> createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  bool numberInputIsValid = true;
  bool _numberInputIsValid = true;
  
  var Fluttertoast;

  Widget _buildNumberTextField() {
    return TextField(
      keyboardType: TextInputType.number,
      style: Theme.of(context).textTheme.headlineMedium,
      decoration: InputDecoration(
        icon: const Icon(Icons.attach_money),
        labelText: "Error, debe ser un número entero",
        errorText: _numberInputIsValid ? null: "Por favor, ingrese un valor de tipo integer",
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
      onSubmitted: (val) => Fluttertoast.showToast(msg:"Tu numero ingresado: ${int.parse(val)}"),
      onChanged: (String val){
        final v = int.tryParse(val);
        debugPrint("Parsed value: $v ");
        if(v == null){
          setState(()  => numberInputIsValid = false);
        } 
          else{
            setState(() => numberInputIsValid = true);
        }
      },
    );          
  }


  final _controller = TextEditingController();
  Widget  _buildMultilineTextField(){
    return TextField(
      controller: this._controller,
      maxLines: 15,
      textCapitalization: TextCapitalization.sentences, 
      decoration: InputDecoration(
        counterText: '${_countWords(text: this._controller.text)} words',
        labelText: 'Enter multiline text: ',
        alignLabelWithHint: true,
        hintText: 'type something...',
        border: const OutlineInputBorder(),
      ),
      onChanged: (text) => setState(() { }),
    );
  }


  int _countWords({required String text}){
    final trimmedText = text.trim();
    if (trimmedText.isEmpty){
      return 0;
    }
      else {
          return trimmedText.split(RegExp("//s+")).length;

    }
  }

  bool _showPassword = false;
    

  Widget _buildPasswordTextFiel(){
    return TextField(
      obscureText:  !this._showPassword,
      decoration: InputDecoration(
        labelText: 'password',
        prefixIcon: const Icon(Icons.security),
        suffixIcon: IconButton(
          icon: Icon(
            Icons.remove_red_eye,
            color: !this._showPassword ? Colors.blue: Colors.grey,
          ),
          onPressed: (){
            setState(() => this._showPassword = !this._showPassword);
          },
        ),
      ),
    );
  }
  
  Widget _builderBorderlessTextField(){
    return const TextField(
      maxLines: 2,
      decoration: InputDecoration.collapsed(hintText: 'borderless input'),
    );
  }

  @override
  Widget build(BuildContext context){
    return ListView(
      padding: const EdgeInsets.all(10.0),
      children: <Widget>[
        const ListTile(
          title: Text("1. Number input field")
        ),
        _buildNumberTextField(),
        const ListTile(title: Text("1. Number input field")),
        _buildNumberTextField(),
        const ListTile(title: Text("2. Number input fileld")),
        _buildNumberTextField(),
        const ListTile(title: Text("4. Number input filed")),
        _buildNumberTextField(),
      ]
    );
  }
}