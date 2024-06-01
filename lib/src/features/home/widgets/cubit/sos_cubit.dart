import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sos_state.dart';

class SosCubit extends Cubit<SosState> {
  SosCubit() : super(SosInitial());
}
