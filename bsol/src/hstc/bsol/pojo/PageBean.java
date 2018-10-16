package hstc.bsol.pojo;

import java.util.List;

public class PageBean<T> {
	//当前页码,默认为第一页
	private int currentPageNo = 1;
	//总页数
	private int totalPageCount;
	//总记录数
	private int totalCount;
	//每页显示的条目数
	private int pageSize = 6;
	//上一页页码
	private int upPageNo;
	//下一页页码
	private int nextPageNo;
	//每一页结果集
	private List<T> list;
	public int getCurrentPageNo() {
		return currentPageNo;
	}
	//如果当前页码>0,才设置当前页码值
	public void setCurrentPageNo(int currentPageNo) {
		if(currentPageNo>0){
			this.currentPageNo = currentPageNo;
		}
	}
	//总页数
	public void setTotalPageCount() {
		int count = this.getTotalCount()/this.pageSize;
		if(this.getTotalCount()%this.pageSize==0){
			this.totalPageCount = count;
		}else if(this.getTotalCount()%this.pageSize>0){
			this.totalPageCount = count+1;
		}else{
			this.totalPageCount = 1;
		}
	}
	public int getTotalPageCount() {
		return totalPageCount;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		if(totalCount>0){
			this.totalCount = totalCount;
		}
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		if(pageSize>0){
			this.pageSize = pageSize;
		}
	}
	public int getUpPageNo() {
		return upPageNo;
	}
	public void setUpPageNo() {
		//如果当前页>1
		if(this.currentPageNo>1){
			this.upPageNo = this.currentPageNo-1;
		}
	}
	public int getNextPageNo() {
		return nextPageNo;
	}
	public void setNextPageNo() {
		//如果当前页>0并且小于总页数
		if(this.currentPageNo>0 && this.currentPageNo<this.totalPageCount){
			this.nextPageNo = this.currentPageNo+1;
		}
	}
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	@Override
	public String toString() {
		return "PageBean [currentPageNo=" + currentPageNo + ", totalPageCount="
				+ totalPageCount + ", totalCount=" + totalCount + ", pageSize="
				+ pageSize + ", upPageNo=" + upPageNo + ", nextPageNo="
				+ nextPageNo + ", list=" + list + "]";
	}
	
}
