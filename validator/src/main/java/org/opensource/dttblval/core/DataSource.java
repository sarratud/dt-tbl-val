import java.util.*;

public interface DataSource {
	
	public String getName();
	public String getType();
	public List<DataTable> getDataTables();
	
}
