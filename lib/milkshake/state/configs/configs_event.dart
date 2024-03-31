part of 'configs_bloc.dart';

abstract class ConfigsEvent extends Equatable {
  const ConfigsEvent();
}

class GetConfigsEvent extends ConfigsEvent {
  const GetConfigsEvent();

  @override
  List<Object> get props => [];
}
