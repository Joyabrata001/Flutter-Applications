import 'package:flutter/material.dart';
import 'clubs_model.dart';

class ClubDetailScreen extends StatelessWidget {
  final Club club;

  const ClubDetailScreen({super.key, required this.club});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(club.name),
          bottom: const TabBar(
            tabs: [
              Tab(text: "Events"),
              Tab(text: "Gallery"),
              Tab(text: "About Us"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Events tab
            const Center(
              child: Text("Events"),
            ),
            // Gallery tab
            const Center(
              child: Text("Gallery"),
            ),
            // About Us tab
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Image.asset(
                      club.logo,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildSocialMediaLinks(context, club),
                  const SizedBox(height: 16),
                  Text(
                    club.description,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialMediaLinks(BuildContext context, Club club) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildSocialMediaLink(
          context,
          'Website',
          Icons.public,
          //club.website,
        ),
        _buildSocialMediaLink(
          context,
          'Instagram',
          Icons.camera_alt_outlined,
          //club.insta,
        ),
        _buildSocialMediaLink(
          context,
          'Facebook',
          Icons.facebook,
          //club.facebook,
        ),
      ],
    );
  }

  Widget _buildSocialMediaLink(
      BuildContext context, String title, IconData icon/*, String link*/) {
    return InkWell(
      //onTap: () => launchUrl(link),
      child: Column(
        children: [
          Icon(
            icon,
            size: 20,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  /*void launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }*/
}
