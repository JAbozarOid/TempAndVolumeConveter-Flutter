import 'package:flutter/material.dart';
import '../converter/temp_converter.dart';
import '../converter/volume_converter.dart';

class TempVolumeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TempVolumeState();
  }
}

class TempVolumeState extends State<TempVolumeScreen>
    with TempConverter, VolumeConverter {
  final mGlobalKey = GlobalKey<FormState>();
  int temp, volume;
  double farenheit, kelvin, celsius, mKelvin, mCelcius, mFarenheit, mililitr,gallon,litr;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.all(20.0),
        child: Form(
          key: mGlobalKey,
          child: ListView(
            children: <Widget>[
              inputTempField(),
              Container(margin: EdgeInsets.only(top: 16.0)),
              celciusToFarenheit(),
              Container(margin: EdgeInsets.only(top: 16.0)),
              celciusToKelvin(),
              Container(margin: EdgeInsets.only(top: 16.0)),
              farenheitToCelsius(),
              Container(margin: EdgeInsets.only(top: 16.0)),
              farenheitToKelvin(),
              Container(margin: EdgeInsets.only(top: 16.0)),
              kelvinToCelsius(),
              Container(margin: EdgeInsets.only(top: 16.0)),
              kelvinToFarenheit(),
              Container(margin: EdgeInsets.only(top: 16.0)),
              convertTempButton(),
              Container(margin: EdgeInsets.only(top: 32.0)),
              inputVolumeField(),
              Container(margin: EdgeInsets.only(top: 16.0)),
              litToMililitr(),
              Container(margin: EdgeInsets.only(top: 16.0)),
              litrToGallon(),
              Container(margin: EdgeInsets.only(top: 16.0)),
              gallonTolLitr(),
              Container(margin: EdgeInsets.only(top: 16.0)),
              convertVolumeButton(),
            ],
          ),
        ));
  }

  // start temp
  Widget inputTempField() {
    return TextFormField(
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: 'Input Temparature Degree', hintText: 'for example 32'),
      onSaved: (String value) {
        print("value is $value");
        if (value == null) {
          return;
        } else {
          temp = int.parse(value);
          assert(temp is int);
        }
      },
    );
  }

  Widget celciusToFarenheit() {
    return Container(
      child: Row(
        children: <Widget>[
          Text('Celcius To Farenheit : '),
          Text((farenheit ?? 0).toString())
        ],
      ),
    );
  }

  Widget celciusToKelvin() {
    return Container(
      child: Row(
        children: <Widget>[
          Text('Celcius To Kelvin : '),
          Text((kelvin ?? 0).toString())
        ],
      ),
    );
  }

  Widget farenheitToCelsius() {
    return Container(
      child: Row(
        children: <Widget>[
          Text('Farenheit To Celsius : '),
          Text((celsius ?? 0).toString())
        ],
      ),
    );
  }

  Widget farenheitToKelvin() {
    return Container(
      child: Row(
        children: <Widget>[
          Text('Farenheit To Kelvin : '),
          Text((mKelvin ?? 0).toString())
        ],
      ),
    );
  }

  Widget kelvinToCelsius() {
    return Container(
      child: Row(
        children: <Widget>[
          Text('Kelvin To Celsius : '),
          Text((mCelcius ?? 0).toString())
        ],
      ),
    );
  }

  Widget kelvinToFarenheit() {
    return Container(
      child: Row(
        children: <Widget>[
          Text('Kelvin To Farenheit : '),
          Text((mFarenheit ?? 0).toString())
        ],
      ),
    );
  }

  Widget convertTempButton() {
    return RaisedButton(
      color: Colors.blue,
      child: Text('Temp Converter'),
      onPressed: () {
        mGlobalKey.currentState.save();
        setState(() {
          farenheit = convertCelsiusToFarenhet(temp);
          kelvin = convertCelsiusToKelvin(temp);
          celsius = convertFahrenheitToCelsius(temp);
          mKelvin = convertFarenheitToKelvin(temp);
          mCelcius = convertKelvinToCelsius(temp);
          mFarenheit = convertKelvinToFarenheit(temp);
        });
      },
    );
  }

  // end temp

  // start volume
  Widget inputVolumeField() {
    return TextFormField(
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: 'Input Volume', hintText: 'for example 574'),
      onSaved: (String value) {
        if (value == null) {
          return;
        } else {
          volume = int.parse(value);
          assert(volume is int);
        }
      },
    );
  }

  Widget litToMililitr() {
    return Container(
      child: Row(
        children: <Widget>[
          Text('Litr To Mililitr : '),
          Text((mililitr ?? 0).toString())
        ],
      ),
    );
  }

  Widget litrToGallon() {
    return Container(
      child: Row(
        children: <Widget>[
          Text('Litr To Gallon : '),
          Text((gallon ?? 0).toString())
        ],
      ),
    );
  }

  Widget gallonTolLitr() {
    return Container(
      child: Row(
        children: <Widget>[
          Text('Gallon To Litr : '),
          Text((litr ?? 0).toString())
        ],
      ),
    );
  }

  Widget convertVolumeButton() {
    return RaisedButton(
      color: Colors.blue,
      child: Text('Volume Converter'),
      onPressed: () {
        mGlobalKey.currentState.save();
        setState(() {
          mililitr = convertLitrToMiliLitr(volume);
          gallon = convertLitrToGallon(volume);
          litr = convertGallonToLitr(volume);
        });
      },
    );
  }

  // end volume
}
