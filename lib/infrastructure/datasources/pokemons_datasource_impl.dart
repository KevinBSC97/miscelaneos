import 'package:dio/dio.dart';
import 'package:miscelaneos/domain/domain.dart';
import 'package:miscelaneos/infrastructure/mappers/pokemon_mapper.dart';

class PokemonsDatasourceImpl implements PokemonsDatasource{
  final dio = Dio(BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
    ));
  @override
  Future<(Pokemon?, String)> getPokemon(String id) async {

    try {
      final resp = await dio.get('/pokemon/$id');
      final pokemon = PokemonMapper.pokeApiPokemonToEntity(resp.data);
      return (pokemon, 'Data obtenida correctamente');
      
    } catch (e) {
      return (null, 'No se pudo obtener el pokèmon $e');
    }
  }

}