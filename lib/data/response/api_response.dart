import 'package:bloc_clean_architecture/utils/enums.dart';

class ApiResponse<D> {

  Status? status;
  String? message;
  D? data;
  ApiResponse(this.status, this.message, this.data);
  ApiResponse.loading() : status = Status.loading;
  ApiResponse.success(this.data) : status = Status.success;
  ApiResponse.failure(this.message) : status = Status.failure;

  @override
  String toString() {
    return 'Status : $status \n Message : $message \n Data : $data';
  }

}