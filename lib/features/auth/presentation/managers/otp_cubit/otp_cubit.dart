import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'otp_state.dart';
part 'otp_cubit.freezed.dart';

@injectable
class OtpCubit extends Cubit<OtpState> {
  OtpCubit() : super(OtpState.initial());
}
