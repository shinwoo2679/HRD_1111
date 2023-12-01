package mylib;

import java.util.Date;

public class Money {
	
	int custno;
	int saleno;
	int pcost;
	int amount;
	int price;
	String pcode;
	Date sdate;
	public Money() {
		// TODO Auto-generated constructor stub
	}
	public Money(int custno, int saleno, int pcost, int amount, int price, String pcode, Date sdate) {
		super();
		this.custno = custno;
		this.saleno = saleno;
		this.pcost = pcost;
		this.amount = amount;
		this.price = price;
		this.pcode = pcode;
		this.sdate = sdate;
	}
	public int getCustno() {
		return custno;
	}
	public void setCustno(int custno) {
		this.custno = custno;
	}
	public int getSaleno() {
		return saleno;
	}
	public void setSaleno(int saleno) {
		this.saleno = saleno;
	}
	public int getPcost() {
		return pcost;
	}
	public void setPcost(int pcost) {
		this.pcost = pcost;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getPcode() {
		return pcode;
	}
	public void setPcode(String pcode) {
		this.pcode = pcode;
	}
	public Date getSdate() {
		return sdate;
	}
	public void setSdate(Date sdate) {
		this.sdate = sdate;
	}
	@Override
	public String toString() {
		return "Member [custno=" + custno + ", saleno=" + saleno + ", pcost=" + pcost + ", amount=" + amount
				+ ", price=" + price + ", pcode=" + pcode + ", sdate=" + sdate + "]";
	}
}
