import 'package:flutter/material.dart';
import 'clubs_model.dart';
import 'club_main_screen.dart';

class ClubHomePage extends StatelessWidget {
  const ClubHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('College Clubs'),
      ),
      body: _buildClubList(context),
    );
  }

  Widget _buildClubList(BuildContext context) {
    return ListView.builder(
      itemCount: clubs.length,
      itemBuilder: (BuildContext context, int index) {
        final club = clubs[index];
        return _buildClubTile(context, club);
      },
    );
  }

  Widget _buildClubTile(BuildContext context, Club club) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      child: ListTile(
        key: Key(club.name),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => ClubDetailScreen(club: club)),
          );
        },
        leading: GestureDetector(
          onTap: () {
            _showClubDialog(context, club);
          },
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey),
            ),
            child: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(club.logo),
              backgroundColor: Colors.white,
            ),
          ),
        ),
        title: Text(club.name),
      ),
    );
  }

  void _showClubDialog(BuildContext context, Club club) {
    showDialog(
      context: context,
      builder: (BuildContext context) => Dialog(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Image.asset(
                  club.logo,
                  height: null,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                club.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ClubDetailScreen(club: club),
                        ),
                      );
                    },
                    icon: const Icon(Icons.info),
                    label: const Text('Tap to know more'),
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      ),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: const BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
