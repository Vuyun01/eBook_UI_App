import 'package:ebook_app/constants.dart';
import 'package:flutter/material.dart';

class Book{
  final int id;
  final String title;
  final String auth;
  final String image;
  final double rating;

  Book({
    required this.id,
    required this.title, 
    required this.auth, 
    required this.image, 
    required this.rating
  });
}

List<Book> books = [
  Book(
    id: 0, 
    title: "Crushing & Influence", 
    auth: "Gary Venchuk", 
    image: AppAssets.book1, 
    rating: 4.7
  ),
  Book(
    id: 1, 
    title: "Top ten business hacks", 
    auth: "Herman Joel", 
    image: AppAssets.book2, 
    rating: 4.3
  ),
  Book(
    id: 2, 
    title: "How to win friends & influence people", 
    auth: "Harry Bern", 
    image: AppAssets.book3, 
    rating: 4.8
  ),
];