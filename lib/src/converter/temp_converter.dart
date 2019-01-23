class TempConverter {

  double mFarenheit,mKelvin,mCelsius;

  double convertCelsiusToFarenhet(int temp){
    return mFarenheit = (9.0/5.0) * temp + 32;
  }

  double convertCelsiusToKelvin(int temp){
    return mKelvin = temp + 273.16;
  }

  double convertFahrenheitToCelsius(int temp){
    return mCelsius = (temp - 32) * 5.0/9.0;
  }

  double convertFarenheitToKelvin(int temp){
    return mKelvin = (5/9 * (temp - 32) + 273);
  }

  double convertKelvinToCelsius(int temp){
    return mCelsius = temp - 273.16;
  }

  double convertKelvinToFarenheit(int temp){
    return mFarenheit = (((temp - 273) * 9/5) + 32);
  }
}