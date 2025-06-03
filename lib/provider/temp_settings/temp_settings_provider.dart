
import 'package:equatable/equatable.dart';
import 'package:state_notifier/state_notifier.dart';

part 'temp_settings_state.dart';

class TempSettingProvider extends StateNotifier<TempSettingsState> {

  TempSettingProvider() : super(TempSettingsState.initial());

  void toggleTempUnit() {
    state = state.copyWith(tempUnit: state.tempUnit == TempUnit.celsius ? TempUnit.fahrenheit : TempUnit.celsius);
    print('temp unit: $state');
  }
}