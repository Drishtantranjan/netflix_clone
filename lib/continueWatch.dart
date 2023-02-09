import 'package:flutter/material.dart';

class ContinueWatching extends StatelessWidget {
  final String showTitle;
  final String showImage;
  final String showDescription;
  final int episodeNumber;
  final int seasonNumber;

  ContinueWatching({
    required this.showTitle,
    required this.showImage,
    required this.showDescription,
    required this.episodeNumber,
    required this.seasonNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(showImage),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.7),
                    Colors.transparent,
                  ],
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      showTitle,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      'Season $seasonNumber Episode $episodeNumber',
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Button(
                        onPressed: () {},
                        child: Text(
                          'Continue Watching',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            showDescription,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
