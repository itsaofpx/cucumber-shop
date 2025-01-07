package ku.shop;

public class Product {
    private String name;
    private double price;
    private int stock;

    public Product(String name, double price, int stock) {
        this.name = name;
        this.price = price;
        this.stock = stock;
    }

    public double getPrice() {
        return price;
    }

    public String getName() {
        return name;
    }

    public int getStock() {
        return stock;
    }

    public void cutStock(int quantity) {
        if (quantity > stock) {
            throw new IllegalArgumentException("Not enough stock for product: " + name);
        }
        stock -= quantity;
    }
}
