// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:netflix_clone/application/downloads/downloads_bloc.dart' as _i5;
import 'package:netflix_clone/domain/downloads/i_dowloads_repo.dart' as _i3;
import 'package:netflix_clone/infrastructure/downloads/downloads_repository.dart'
    as _i4;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IDownloadsRepo>(() => _i4.DownloadsRepository());
    gh.factory<_i5.DownloadsBloc>(
        () => _i5.DownloadsBloc(gh<_i3.IDownloadsRepo>()));
    return this;
  }
}
