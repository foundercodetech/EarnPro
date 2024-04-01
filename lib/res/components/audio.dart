import 'package:just_audio/just_audio.dart';

class Audio {
  static AudioPlayer audioPlayers = AudioPlayer();
  static AudioPlayer audioPlayer = AudioPlayer();


  static Future<void> depositmusic() async {
    var duration = await audioPlayers.setAsset('assets/music/mp3.mp3');
    audioPlayers.play();
    audioPlayers.setLoopMode(LoopMode.off);
    return Future.delayed(duration ?? Duration.zero);
  }
  static Future<void> aviatorplanmusic() async {
    var duration = await audioPlayers.setAsset('assets/music/aviatorplan.mp3');
    audioPlayers.play();
    audioPlayers.setLoopMode(LoopMode.off);
    return Future.delayed(duration ?? Duration.zero);
  }
  static Future<void> WingoTimermusic() async {
    var duration = await audioPlayers.setAsset('assets/music/wingoFiveTimer.mp3');
    audioPlayers.play();
    audioPlayers.setLoopMode(LoopMode.off);
    return Future.delayed(duration ?? Duration.zero);
  }
  static Future<void> WingoTimerone() async {
    var duration = await audioPlayers.setAsset('assets/music/countdownone.mp3');
    audioPlayers.play();
    audioPlayers.setLoopMode(LoopMode.off);
    return Future.delayed(duration ?? Duration.zero);
  }
  static Future<void> WingoTimertwo() async {
    var duration = await audioPlayers.setAsset('assets/music/countdowntwo.mp3');
    audioPlayers.play();
    audioPlayers.setLoopMode(LoopMode.off);
    return Future.delayed(duration ?? Duration.zero);
  }
  static Future<void> TRXTimerone() async {
    var duration = await audioPlayers.setAsset('assets/music/countdownone.mp3');
    audioPlayers.play();
    audioPlayers.setLoopMode(LoopMode.off);
    return Future.delayed(duration ?? Duration.zero);
  }
  static Future<void> TRXTimertwo() async {
    var duration = await audioPlayers.setAsset('assets/music/countdowntwo.mp3');
    audioPlayers.play();
    audioPlayers.setLoopMode(LoopMode.off);
    return Future.delayed(duration ?? Duration.zero);
  }
  static Future<void> DragonWin() async {
    var duration = await audioPlayer.setAsset('assets/sound/dragon_soundtrack.mp3');
    audioPlayer.play();
    audioPlayer.setLoopMode(LoopMode.off);
    return Future.delayed(duration ?? Duration.zero);
  }

  static Future<void> TigerWin() async {
    var duration = await audioPlayer.setAsset('assets/sound/tiger_roar_soundtrack.mp3');
    audioPlayer.play();
    audioPlayer.setLoopMode(LoopMode.off);
    return Future.delayed(duration ?? Duration.zero);
  }
  static Future<void> DragonbgSound() async {
    var duration = await audioPlayer.setAsset('assets/sound/dragonbackground.mp3');
    audioPlayer.play();
    audioPlayer.setLoopMode(LoopMode.all);
    return Future.delayed(duration ?? Duration.zero);
  }

}
