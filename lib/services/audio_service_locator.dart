import 'package:audio_service/audio_service.dart';
import 'package:cc_audio_app/services/audio_handler.dart';
import 'package:cc_audio_app/services/page_manager.dart';
import 'package:cc_audio_app/services/playlist_repository.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  getIt.registerSingleton<AudioHandler>(await initAudioService());

  getIt.registerLazySingleton<PlaylistRepository>(() => DemoPlaylist());
  getIt.registerLazySingleton<PageManager>(() => PageManager());
}