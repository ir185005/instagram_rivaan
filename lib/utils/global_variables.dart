import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram_rivaan/screens/add_post_screen.dart';
import 'package:instagram_rivaan/screens/feed_screen.dart';
import 'package:instagram_rivaan/screens/profile_screen.dart';
import 'package:instagram_rivaan/screens/search_screen.dart';

const webScreenSize = 600;
List<Widget> homeScreenItems = [
  const FeedScreen(),
  const SearchScreen(),
  const AddPostScreen(),
  const Text('hjh'),
  ProfileScreen(
    uid: FirebaseAuth.instance.currentUser!.uid,
  ),
];
