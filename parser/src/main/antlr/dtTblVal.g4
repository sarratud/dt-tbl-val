grammar dtTblVal;

validationSet	:	header sources ;
header			:	Version Description ;
Version			:	'version 0.1' ;
Description		:	[^;]* ';' ;
sources			:	(sourceHeader sourceDesc)+ ;
sourceHeader	:	SourceName	SourceType ;
SourceName		:	's' [^;]+ ';' ;
SourceType		:	( 'csv' | 'jdbc' ) ';' ;
sourceDesc		:	NumColumns columns ;
NumColumns		:	'columns' PosNZInt ;
PosNZInt		:	[1-9]+[0-9]* ;
columns			:	(	position NewLine |
						columnName NewLine |
						position ':' columnName NewLine )+ ;
position		:	PosNZInt ;
columnName		:	StringLit ;
StringLit		:	[A-z]+ ;
NewLine			:	( '\n' | '\r\n' ) ;
/*
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
Rule ::= UniqueRule
UniqueRule ::= "isUnique"
*/ 
