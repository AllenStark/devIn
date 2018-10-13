package hstc.bsol.pojo;

import java.text.DecimalFormat;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;

public class Cart {
	//使用map集合的目的就是为了避免在购物车中出现重复的商品
		private Map<Long,CartItem> map = new LinkedHashMap<>();
		//记录购物车中所有商品的总价格
		private double countPrice;
		public Map<Long, CartItem> getMap() {
			return map;
		}
		public void setMap(Map<Long, CartItem> map) {
			this.map = map;
		}
		//得到购物车中商品的总价格
		public double getCountPrice() {
			double totalPrice = 0;
			for(Entry<Long,CartItem> entry : map.entrySet()){
				CartItem item = entry.getValue();
				totalPrice += item.getSubtotal();
				//数字格式化操作
				DecimalFormat df = new DecimalFormat("0.00");
				String strTotalPrice = df.format(totalPrice);
				totalPrice = Double.parseDouble(strTotalPrice);
			}
			this.countPrice = totalPrice;
			return countPrice;
		}
		public void setCountPrice(double countPrice) {
			this.countPrice = countPrice;
		}
}
