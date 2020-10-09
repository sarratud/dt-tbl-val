public interface ValidationRule {
	
	public String getScope();
	public void run();
	public String getErrorMessage();
	public String getWarningMessage();
	public DataColumn getDataColumn();
	
}
