package net.codejava;

public class OrderDetail {
    private String productName;
    private float subtotal;
    private float shipping;
    private float tax;
    private float total;
    private String orderId;

    public OrderDetail(String productName, String subtotal, String shipping, String tax, String total, String orderId) {
        this.productName = productName;
        this.subtotal = parseFloatOrDefault(subtotal);
        this.shipping = parseFloatOrDefault(shipping);
        this.tax = parseFloatOrDefault(tax);
        this.total = parseFloatOrDefault(total);
        this.orderId = orderId;
    }

    private float parseFloatOrDefault(String value) {
        if (value != null) {
            try {
                return Float.parseFloat(value);
            } catch (NumberFormatException e) {
                // Handle the exception or log it if needed
            }
        }
        return 0.0f; // Return a default value if parsing fails or the input is null
    }

    public String getProductName() {
        return productName;
    }

    public String getSubtotal() {
        return String.format("%.2f", subtotal);
    }

    public String getShipping() {
        return String.format("%.2f", shipping);
    }

    public String getTax() {
        return String.format("%.2f", tax);
    }

    public String getTotal() {
        return String.format("%.2f", total);
    }

    public String getOrderId() {
        return orderId;
    }
}
