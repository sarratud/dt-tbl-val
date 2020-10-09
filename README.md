# dt-tbl-val

## Objective

This application is meant to be a table-formatted data validator tool that:

1. is simple to use by non-technical users
2. is meant to validate generic table-like data from previously unknown sources, format and contents
3. applies validation rules scoped at different layers:
	+ individual columns
	+ multiple columns
	+ table
	+ columns from multiple tables
4. differentiates between errors and warnings, and can abort processing after exceeding user-defined thresholds
5. generates easy-to-read reports that can both summarize and detail and processing errors and warnings
6. includes at least the following validation rules
	+ uniqueness of values in a column
	+ matching values from a user-defined list
	+ matching regexp patterns
	+ confirming listed data types
7. supports multiple languages

## Proposal

This project will attempt to meet the requirements' criteria by:

* Creating a DSL language that allows any user to define validation rules for a specific data source in a simple text file
* Separating the project into multiple modules for separation of concerns. This will be particularly critical to allow initial basic support, and future expansion to include newer features and support for additional data formats 

## Design

* The project will be separated into the following modules/components:
	- DSL Parser to digest validation rules and create the validation program specific to each data source
	- Data connectors for reading data from different sources such as csv, tsv, fixed length text files, parquet, database tables, etc. This list does not necessarily guarantee support in the end product, nor does it restrict it to the formats mentioned. Data connectors should be independent from each other, and should be 'pluggable' or easy to add
	- Validation engine that applies validation rules previously created by the parser against data sources read by data connectors, and logs all processing for reporting
	- Command-line executable for easy scripting of validation runs
	- GUI interface for quick setup and execution of a validation run
	
## Other considerations

This is a personal project, so please do not expect corporate support or fast development cycles