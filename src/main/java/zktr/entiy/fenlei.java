package zktr.entiy;

public class fenlei {
	private int id;
	private String name;
	@Override
	public String toString() {
		return name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public fenlei() {
		super();
	}
	public fenlei(String name) {
		super();
		this.name = name;
	}
	public fenlei(int id) {
		super();
		this.id = id;
	}
	
}
