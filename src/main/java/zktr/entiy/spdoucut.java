package zktr.entiy;



public class spdoucut {
    private String name;
    private String config;
    private double price;
    private String imagePath;

    

	@Override
	public String toString() {
		return name +  config + price +  imagePath ;
	}


	public spdoucut(String name, String config, double price, String imagePath) {
        this.name = name;
        this.config = config;
        this.price = price;
        this.imagePath = imagePath;
    }

    public String getName() {
        return name;
    }

    public String getConfig() {
        return config;
    }

    public double getPrice() {
        return price;
    }

    public String getImagePath() {
        return imagePath;
    }
}
