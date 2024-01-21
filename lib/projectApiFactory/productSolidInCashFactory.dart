class ProductData {
  final int id;
  final int numberOfProductsNeeded;
  final String dateProductSold;
  final double totalProductCost;
  final double totalProfitObtained;
  final String dateForIssuesInvoice;
  final String updatedAt;
  final String productName;
  final String customerFullName;
  final String supervisor;
  final String shopName;

  ProductData({
    required this.id,
    required this.numberOfProductsNeeded,
    required this.dateProductSold,
    required this.totalProductCost,
    required this.totalProfitObtained,
    required this.dateForIssuesInvoice,
    required this.updatedAt,
    required this.productName,
    required this.customerFullName,
    required this.supervisor,
    required this.shopName,
  });

  factory ProductData.fromJson(Map<String, dynamic> json) {
    return ProductData(
      id: json['id'] ?? 0,
      numberOfProductsNeeded: json['number_of_product_nedeed'] ?? 0,
      dateProductSold: json['date_product_sold'] ?? '',
      totalProductCost: json['total_product_cost'] ?? 0.0,
      totalProfitObtained: json['total_profit_obtained'] ?? 0.0,
      dateForIssuesInvoice: json['date_for_issues_invoice'] ?? '',
      updatedAt: json['updated_at'] ?? '',
      productName: json['product_name'] ?? '',
      customerFullName: json['customer_full_name'] ?? '',
      supervisor: json['supervisor'] ?? '',
      shopName: json['shop_name'] ?? '',
    );
  }
}
