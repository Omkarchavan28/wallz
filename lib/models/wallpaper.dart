class Wallpaper {
  final int id;
  final String photograper;
  final Source src;
  final String url;
  Wallpaper(this.id, this.photograper, this.src, this.url);
}

class Source {
  final String orignal;
  final String large2x;
  final String large;
  final String medium;
  final String small;
  final String portrait;

  Source(this.orignal, this.large2x, this.large, this.medium, this.small,
      this.portrait);
}
