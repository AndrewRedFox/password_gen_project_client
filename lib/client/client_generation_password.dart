import 'dart:math';

class GenerationPassword { 
  int _lenghtPass = 0;
  bool _useDigits = false;
  bool _useSymbols = false;
  bool _useUpperCase = false;
  bool _useLowerCase = false;
  String _password = "";

  Generate(int lenghtPass, bool useDigits, bool useSymbols, bool useUpperCase, bool useLowerCase){
    this._lenghtPass = lenghtPass;
    this.useDigits = useDigits;
    this._useSymbols = useSymbols;
    this.useUpperCase = useUpperCase;
    this.useLowerCase = useLowerCase;
  }

  String generatePassword(){
    String _upper = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    String _lower = 'abcdefghijklmnopqrstuvwxyz';
    String _numbers = '1234567890';
    String _symbols = '!@#\$%^&*()<>,./';
    String _seed = "";
    _password = "";

    if(_useDigits) _seed += _numbers;
    if(_useSymbols) _seed += _symbols;
    if(_useUpperCase) _seed += _upper;
    if(_useLowerCase) _seed += _lower;

    List<String> list = _seed.split('').toList();
    Random rand = Random();

    for (int i = 0; i < _lenghtPass; i++) {
    int index = rand.nextInt(list.length);
    _password += list[index];
    }

    return _password;
  }

 int get lenghtPass => this._lenghtPass;

 set lenghtPass(int value) => this._lenghtPass = value;

  get useDigits => this._useDigits;

 set useDigits( value) => this._useDigits = value;

  get useSynbols => this._useSymbols;

 set useSynbols( value) => this._useSymbols = value;

  get useUpperCase => this._useUpperCase;

 set useUpperCase( value) => this._useUpperCase = value;

  get useLowerCase => this._useLowerCase;

 set useLowerCase( value) => this._useLowerCase = value;

}