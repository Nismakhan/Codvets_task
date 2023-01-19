class Messages {
  final List<String> sentByMe;
  final List<String> sentByOther;
  Messages({
    required this.sentByMe,
    required this.sentByOther,
  });

  // factory Messages.fromJson(Map<String, dynamic> json) => Messages(
  //       sentByMe: json["sentByMe"],
  //       sentByOther: json["sentByMe"],
  //     );
  // Map<String, dynamic> toJson() => {
  //       "sentByMe": sentByMe,
  //       "sentByOther": sentByOther,
  //     };
  factory Messages.fromJson(Map<String, dynamic> json) => Messages(
        sentByMe: List<String>.from(json["sentByMe"]),
        sentByOther: List<String>.from(json["sentByOther"]),
      );

  Map<String, dynamic> toJson() => {
        "sentByMe": sentByMe,
        "sentByOther": sentByOther,
      };
}
