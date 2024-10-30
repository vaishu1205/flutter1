// First, let's create a Music model to handle our music data
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';

class Music {
  final String title;
  final String artist;
  final String coverUrl;
  final String audioUrl;
  final String category;

  Music({
    required this.title,
    required this.artist,
    required this.coverUrl,
    required this.audioUrl,
    required this.category,
  });
}

// Updated MusicScreen with cards
class MusicScreen extends StatefulWidget {
  const MusicScreen({super.key});

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  // Sample music data
  final List<Music> musicList = [
    Music(
      title: 'Trance',
      artist: 'Metro Boomin\'',
      coverUrl: 'assets/metro.jpg',
      audioUrl: 'assets/testing.mp3', //MUST BE IN ASSETS OR ELSE WONT WORK
      category: 'Classical',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A0129),
      appBar: AppBar(
        backgroundColor: Color(0xFF1A0129),
        centerTitle: true,
        title: Text(
          'Music',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            color: Colors.white.withOpacity(0.95),
            fontSize: 24,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.white,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [_buildCategorySection('Classical')],
      ),
    );
  }

  Widget _buildCategorySection(String category) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8),
          child: Text(
            category,
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 110,
          child: ListView.builder(
            itemCount: musicList.where((m) => m.category == category).length,
            itemBuilder: (context, index) {
              return MusicCard(
                music: musicList[index],
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlayerScreen(music: musicList[index]),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class MusicCard extends StatelessWidget {
  final Music music;
  final VoidCallback onTap;

  const MusicCard({
    required this.music,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  music.coverUrl,
                  height: 100, // Fixed height for the image
                  width: 100, // Fixed width for the image
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 12), // Space between image and text
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      music.title,
                      style: GoogleFonts.poppins(
                        fontSize:
                            16, // Increased font size for better visibility
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4), // Space between title and artist
                    Text(
                      music.artist,
                      style: GoogleFonts.poppins(
                        fontSize:
                            14, // Increased font size for better visibility
                        color: Colors.white70,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Player Screen
class PlayerScreen extends StatefulWidget {
  final Music music;

  const PlayerScreen({
    required this.music,
    super.key,
  });

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  late AudioPlayer _audioPlayer;
  bool _isPlaying = false;
  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _setupAudioPlayer();
  }

  Future<void> _setupAudioPlayer() async {
    try {
      await _audioPlayer.setAudioSource(
        AudioSource.asset(widget.music.audioUrl),
      );
      _audioPlayer.durationStream.listen((d) {
        setState(() => _duration = d ?? Duration.zero);
      });
      _audioPlayer.positionStream.listen((p) {
        setState(() => _position = p);
      });
      _audioPlayer.playerStateStream.listen((state) {
        setState(() => _isPlaying = state.playing);
      });
    } catch (e) {
      print("Error loading audio source: $e");
    }
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A0129),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Album Art
            Container(
              height: 280,
              width: 280,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 15,
                    offset: Offset(0, 8),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  widget.music.coverUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 32),

            // Title and Artist
            Text(
              widget.music.title,
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              widget.music.artist,
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 32),

            // Progress Bar
            SliderTheme(
              data: SliderThemeData(
                trackHeight: 4,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 6),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 14),
                activeTrackColor: Colors.purple,
                inactiveTrackColor: Colors.white24,
                thumbColor: Colors.white,
                overlayColor: Colors.purple.withOpacity(0.2),
              ),
              child: Slider(
                value: _position.inSeconds.toDouble(),
                max: _duration.inSeconds.toDouble(),
                onChanged: (value) {
                  _audioPlayer.seek(Duration(seconds: value.toInt()));
                },
              ),
            ),

            // Duration Labels
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _formatDuration(_position),
                    style: TextStyle(color: Colors.white70),
                  ),
                  Text(
                    _formatDuration(_duration),
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),

            // Control Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    _audioPlayer.seek(
                      Duration(seconds: _position.inSeconds - 10),
                    );
                  },
                  icon: Icon(Icons.replay_10),
                  color: Colors.white,
                  iconSize: 40,
                ),
                SizedBox(width: 24),
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purple.withOpacity(0.3),
                        blurRadius: 15,
                        offset: Offset(0, 8),
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {
                      if (_isPlaying) {
                        _audioPlayer.pause();
                      } else {
                        _audioPlayer.play();
                      }
                    },
                    icon: Icon(
                      _isPlaying ? Icons.pause : Icons.play_arrow,
                      size: 40,
                    ),
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 24),
                IconButton(
                  onPressed: () {
                    _audioPlayer.seek(
                      Duration(seconds: _position.inSeconds + 10),
                    );
                  },
                  icon: Icon(Icons.forward_10),
                  color: Colors.white,
                  iconSize: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
