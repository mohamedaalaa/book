enum Gender { male, female }

enum RequestOrderStatus { completedRequests, newRequests, currentRequests }

extension OrderStatusExtension on RequestOrderStatus {
  int get orderStatus {
    switch (this) {
      case RequestOrderStatus.newRequests:
        return 1;
      case RequestOrderStatus.currentRequests:
        return 1;
      case RequestOrderStatus.completedRequests:
        return 3;
      // default:
      //   return -1;
    }
  }
}

enum OperationTypeId { buy, replace, buyAccs }

enum ServiceEnum { buy, replace }

extension OperationTypeIdExtension on OperationTypeId {
  int get orderStatus {
    switch (this) {
      case OperationTypeId.buy:
        return 1;
      case OperationTypeId.replace:
        return 2;
      case OperationTypeId.buyAccs:
        return 1;
      // default:
      //   return -1;
    }
  }
}
