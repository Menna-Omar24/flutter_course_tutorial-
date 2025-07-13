class Movie {
  String title;
  String studio;
  String rating;

  Movie({required this.title, required this.studio, this.rating = 'PG'});

  static List<Movie> getPG(List<Movie> movies) {
    List<Movie> pgMovies = [];
    for (Movie movie in movies) {
      if (movie.rating.contains('PG')) {
        pgMovies.add(movie);
      }
    }
    return pgMovies;
  }

  @override
  String toString() {
    return 'Title: $title, Studio: $studio, Rating: $rating';
  }
}

void main() {
  Movie movie1 =
      Movie(title: 'Casino Royale', studio: 'Eon Productions', rating: 'PG13');
  Movie movie2 = Movie(title: 'The Lion King', studio: 'Disney', rating: 'PG');
  Movie movie3 = Movie(title: 'Toy Story', studio: 'Pixar', rating: 'G');
  Movie movie4 = Movie(title: 'Finding Nemo', studio: 'Pixar', rating: 'PG');
  Movie movie5 =
      Movie(title: 'Inception', studio: 'Warner Bros', rating: 'PG13');

  // Testing getPG method
  List<Movie> movies = [movie1, movie2, movie3, movie4, movie5];
  List<Movie> pgMovies = Movie.getPG(movies);

  print('Movies with PG rating:');
  for (Movie movie in pgMovies) {
    print(movie);
  }
}
