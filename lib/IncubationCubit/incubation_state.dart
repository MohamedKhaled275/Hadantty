part of 'incubation_cubit.dart';

@immutable
abstract class IncubationState {}

class IncubationInitial extends IncubationState {}

class IncubationLoadingState extends IncubationState{}

class IncubationSuccessState extends IncubationState{}

class IncubationErrorState extends IncubationState{}


