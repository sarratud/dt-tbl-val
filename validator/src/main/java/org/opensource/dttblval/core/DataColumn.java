public interface DataColumn {
	
	public String getColumnTitle();
	public Class getDataType();
	public Object getValueForRow(Long row);
	public Long getRowCount();
	
}
