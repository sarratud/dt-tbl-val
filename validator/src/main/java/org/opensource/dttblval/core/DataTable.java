import java.util.*;

public interface DataTable {
	
	public DataSource getDataSource();
	public List<DataColumn> getColumns();
	public Long getRowCount();
	
}
