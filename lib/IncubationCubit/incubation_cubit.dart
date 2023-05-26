import 'package:bloc/bloc.dart';
import 'package:hadantty/Cache_Helper.dart';
import 'package:hadantty/Screens/Components/Components.dart';
import 'package:hadantty/dio_helper.dart';
import 'package:hadantty/models/Incubation.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
part 'incubation_state.dart';

class IncubationCubit extends Cubit<IncubationState> {
  IncubationCubit() : super(IncubationInitial()){
    getIncubations ();
  }
  List<Incubation> incubations=[];

  void getIncubations()async {
    incubations=[];
    try{
      emit(IncubationLoadingState());
      String Token = CacheHelper.getData(key: 'token');
      print(Token);

      var headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $Token',
      };
      http.Response request = await http.get(Uri.parse('http://sayedazp-001-site1.gtempurl.com/api/Incubator'),headers:{
        'Authorization': 'Bearer $Token'
      } );

print(request.body);
      List<dynamic> decode = jsonDecode(request.body);
      decode.forEach((e) {

        incubations.add(Incubation.fromJson(e));
      });
      // printFullText(decode);
      emit(IncubationSuccessState());
    }
    catch (e)
    {
     print(e);
     emit(IncubationErrorState());
    }
  }
}
