class CrBaseResponse {
  String? message;
  int? success;

  CrBaseResponse({
    this.message,
    this.success,
  });

  factory CrBaseResponse.fromJson(Map<String, dynamic> json) {
    return CrBaseResponse(
      message: json['message'] as String?,
      success: json['success'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'message': message,
        'success': success,
      };

  CrBaseResponse copyWith({
    String? message,
    int? success,
  }) {
    return CrBaseResponse(
      message: message ?? this.message,
      success: success ?? this.success,
    );
  }
}
