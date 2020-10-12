# DSL Language for Data Table Validator

The language specification for the validator is to be:

```
	ValidationSet ::= Header Sources Body
	Header ::= Version Description
	Version ::= "version 0.1"
	Description ::= [^;]*;
	Sources ::= SourceHeader SourceDesc
	SourceHeader ::= SourceName SourceType SourceLoadAttr
	SourceName ::= String
	SourceType ::= ( "csv" | "jdbc" | "parquet" )
	SourceLoadAttr ::= SourceAttribute*
	SourceAttribute ::= AttributeName "=" AttributeValue ";"
	AttributeName ::= String
	AttributeValue ::= String
	SourceDesc ::= NumColumnsRule Columns
	NumColumnsRule ::= "columns" PositiveIntLiteral
	Columns ::= (Position NewLine |
				ColumnName NewLine |
				Position ":" ColumnName)+
	Body ::= Rule+
	Rule ::= 
	
```

