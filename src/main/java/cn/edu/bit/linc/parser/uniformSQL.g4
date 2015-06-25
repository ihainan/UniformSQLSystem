grammar uniformSQL;


fragment A_ :	'a' | 'A';
fragment B_ :	'b' | 'B';
fragment C_ :	'c' | 'C';
fragment D_ :	'd' | 'D';
fragment E_ :	'e' | 'E';
fragment F_ :	'f' | 'F';
fragment G_ :	'g' | 'G';
fragment H_ :	'h' | 'H';
fragment I_ :	'i' | 'I';
fragment J_ :	'j' | 'J';
fragment K_ :	'k' | 'K';
fragment L_ :	'l' | 'L';
fragment M_ :	'm' | 'M';
fragment N_ :	'n' | 'N';
fragment O_ :	'o' | 'O';
fragment P_ :	'p' | 'P';
fragment Q_ :	'q' | 'Q';
fragment R_ :	'r' | 'R';
fragment S_ :	's' | 'S';
fragment T_ :	't' | 'T';
fragment U_ :	'u' | 'U';
fragment V_ :	'v' | 'V';
fragment W_ :	'w' | 'W';
fragment X_ :	'x' | 'X';
fragment Y_ :	'y' | 'Y';
fragment Z_ :	'z' | 'Z';

TRUE : 	T_ R_ U_ E_ ;
FALSE : F_ A_ L_ S_ E_;
ALL : A_ L_ L_ ;
NOT : N_ O_ T_ | '!';
LIKE : L_ I_ K_ E_ ;

IF : I_ F_ ;
EXISTS : E_ X_ I_ S_ T_ S_ ;

ASC : A_ S_ C_ ;
DESC : D_ E_ S_ C_ ;
ORDER : O_ R_ D_ E_ R_ ;
GROUP : G_ R_ O_ U_ P_ ;
BY : B_ Y_ ;
HAVING : H_ A_ V_ I_ N_ G_ ;
WHERE : W_ H_ E_ R_ E_ ;
FROM : F_ R_ O_ M_ ;
AS : A_ S_ ;
SELECT : S_ E_ L_ E_ C_ T_ ;
DISTINCT : D_ I_ S_ T_ I_ N_ C_ T_ ;
INSERT : I_ N_ S_ E_ R_ T_ ;
OVERWRITE : O_ V_ E_ R_ W_ R_ I_ T_ E_ ;
OUTER : O_ U_ T_ E_ R_ ;
UNIQUEJOIN : U_ N_ I_ Q_ U_ E_ J_ O_ I_ N_ ;
PRESERVE : P_ R_ E_ S_ E_ R_ V_ E_ ;
JOIN : J_ O_ I_ N_ ;
LEFT : L_ E_ F_ T_ ;
RIGHT : R_ I_ G_ H_ T_ ;
FULL : F_ U_ L_ L_ ;
ON : O_ N_ ;
PARTITION : P_ A_ R_ T_ I_ T_ I_ O_ N_ ;
PARTITIONS : P_ A_ R_ T_ I_ T_ I_ O_ N_ S_ ;
TABLE: T_ A_ B_ L_ E_ ;
TABLES: T_ A_ B_ L_ E_ S_ ;
COLUMNS: C_ O_ L_ U_ M_ N_ S_ ;
INDEX: I_ N_ D_ E_ X_ ;
INDEXES: I_ N_ D_ E_ X_ E_ S_ ;
REBUILD: R_ E_ B_ U_ I_ L_ D_ ;
FUNCTIONS: F_ U_ N_ C_ T_ I_ O_ N_ S_ ;
SHOW: S_ H_ O_ W_ ;
MSCK: M_ S_ C_ K_ ;
REPAIR: R_ E_ P_ A_ I_ R_ ;
DIRECTORY: D_ I_ R_ E_ C_ T_ O_ R_ Y_ ;
LOCAL: L_ O_ C_ A_ L_ ;
TRANSFORM : T_ R_ A_ N_ S_ F_ O_ R_ M_ ;
USING: U_ S_ I_ N_ G_ ;
CLUSTER: C_ L_ U_ S_ T_ E_ R_ ;
DISTRIBUTE: D_ I_ S_ T_ R_ I_ B_ U_ T_ E_ ;
SORT: S_ O_ R_ T_ ;
UNION: U_ N_ I_ O_ N_ ;
LOAD: L_ O_ A_ D_ ;
EXPORT: E_ X_ P_ O_ R_ T_ ;
IMPORT: I_ M_ P_ O_ R_ T_ ;
DATA: D_ A_ T_ A_ ;
INPATH: I_ N_ P_ A_ T_ H_ ;
IS: I_ S_ ;
NULL: N_ U_ L_ L_ ;
CREATE: C_ R_ E_ A_ T_ E_ ;
EXTERNAL: E_ X_ T_ E_ R_ N_ A_ L_ ;
ALTER: A_ L_ T_ E_ R_ ;
CHANGE: C_ H_ A_ N_ G_ E_ ;
COLUMN: C_ O_ L_ U_ M_ N_ ;
FIRST: F_ I_ R_ S_ T_ ;
AFTER: A_ F_ T_ E_ R_ ;
DESCRIBE: D_ E_ S_ C_ R_ I_ B_ E_ ;
DROP: D_ R_ O_ P_ ;
RENAME: R_ E_ N_ A_ M_ E_ ;
IGNORE: I_ G_ N_ O_ R_ E_ ;
PROTECTION: P_ R_ O_ T_ E_ C_ T_ I_ O_ N_ ;
TO: T_ O_ ;
COMMENT: C_ O_ M_ M_ E_ N_ T_ ;
BOOLEAN: B_ O_ O_ L_ E_ A_ N_ ;
TINYINT: T_ I_ N_ Y_ I_ N_ T_ ;
SMALLINT: S_ M_ A_ L_ L_ I_ N_ T_ ;
INT: I_ N_ T_ ;
BIGINT: B_ I_ G_ I_ N_ T_ ;
FLOAT: F_ L_ O_ A_ T_ ;
DOUBLE: D_ O_ U_ B_ L_ E_ ;
DATE: D_ A_ T_ E_ ;
DATETIME: D_ A_ T_ E_ T_ I_ M_ E_ ;
TIMESTAMP: T_ I_ M_ E_ S_ T_ A_ M_ P_ ;
DECIMAL: D_ E_ C_ I_ M_ A_ L_ ;
STRING: S_ T_ R_ I_ N_ G_ ;
VARCHAR: V_ A_ R_ C_ H_ A_ R_ ;
ARRAY: A_ R_ R_ A_ Y_ ;
STRUCT: S_ T_ R_ U_ C_ T_ ;
MAP: M_ A_ P_ ;
UNIONTYPE: U_ N_ I_ O_ N_ T_ Y_ P_ E_ ;
REDUCE: R_ E_ D_ U_ C_ E_ ;
PARTITIONED: P_ A_ R_ T_ I_ T_ I_ O_ N_ E_ D_ ;
CLUSTERED: C_ L_ U_ S_ T_ E_ R_ E_ D_ ;
SORTED: S_ O_ R_ T_ E_ D_ ;
INTO: I_ N_ T_ O_ ;
BUCKETS: B_ U_ C_ K_ E_ T_ S_ ;
ROW: R_ O_ W_ ;
ROWS: R_ O_ W_ S_ ;
FORMAT: F_ O_ R_ M_ A_ T_ ;
DELIMITED: D_ E_ L_ I_ M_ I_ T_ E_ D_ ;
FIELDS: F_ I_ E_ L_ D_ S_ ;
TERMINATED: T_ E_ R_ M_ I_ N_ A_ T_ E_ D_ ;
ESCAPED: E_ S_ C_ A_ P_ E_ D_ ;
COLLECTION: C_ O_ L_ L_ E_ C_ T_ I_ O_ N_ ;
ITEMS: I_ T_ E_ M_ S_ ;
KEYS: K_ E_ Y_ S_ ;
KEY:  K_ E_ Y_ ;
LINES: L_ I_ N_ E_ S_ ;
STORED: S_ T_ O_ R_ E_ D_ ;
FILEFORMAT: F_ I_ L_ E_ F_ O_ R_ M_ A_ T_ ;
SEQUENCEFILE: S_ E_ Q_ U_ E_ N_ C_ E_ F_ I_ L_ E_ ;
TEXTFILE: T_ E_ X_ T_ F_ I_ L_ E_ ;
RCFILE: R_ C_ F_ I_ L_ E_ ;
ORCFILE: O_ R_ C_ F_ I_ L_ E_ ;
INPUTFORMAT: I_ N_ P_ U_ T_ F_ O_ R_ M_ A_ T_ ;
OUTPUTFORMAT: O_ U_ T_ P_ U_ T_ F_ O_ R_ M_ A_ T_ ;
INPUTDRIVER: I_ N_ P_ U_ T_ D_ R_ I_ V_ E_ R_ ;
OUTPUTDRIVER: O_ U_ T_ P_ U_ T_ D_ R_ I_ V_ E_ R_ ;
OFFLINE: O_ F_ F_ L_ I_ N_ E_ ;
ENABLE: E_ N_ A_ B_ L_ E_ ;
DEFAULT: D_ E_ F_ A_ U_ L_ T_ ;
DISABLE: D_ I_ S_ A_ B_ L_ E_ ;
READONLY: R_ E_ A_ D_ O_ N_ L_ Y_ ;
//NO_DROP: N_ O_ __ D_ R_ O_ P_ ;   TODO:检验是否需要？
LOCATION: L_ O_ C_ A_ T_ I_ O_ N_ ;
TABLESAMPLE: T_ A_ B_ L_ E_ S_ A_ M_ P_ L_ E_ ;
BUCKET: B_ U_ C_ K_ E_ T_ ;
OUT: O_ U_ T_ ;
OF: O_ F_ ;
PERCENT: P_ E_ R_ C_ E_ N_ T_ ;
CAST: C_ A_ S_ T_ ;
ADD: A_ D_ D_ ;
REPLACE: R_ E_ P_ L_ A_ C_ E_ ;
RLIKE: R_ L_ I_ K_ E_ ;
REGEXP: R_ E_ G_ E_ X_ P_ ;
TEMPORARY: T_ E_ M_ P_ O_ R_ A_ R_ Y_ ;
FUNCTION: F_ U_ N_ C_ T_ I_ O_ N_ ;
MACRO: M_ A_ C_ R_ O_ ;
EXPLAIN: E_ X_ P_ L_ A_ I_ N_ ;
EXTENDED: E_ X_ T_ E_ N_ D_ E_ D_ ;
FORMATTED: F_ O_ R_ M_ A_ T_ T_ E_ D_ ;
PRETTY: P_ R_ E_ T_ T_ Y_ ;
DEPENDENCY: D_ E_ P_ E_ N_ D_ E_ N_ C_ Y_ ;
LOGICAL: L_ O_ G_ I_ C_ A_ L_ ;
SERDE: S_ E_ R_ D_ E_ ;
WITH: W_ I_ T_ H_ ;
DEFERRED: D_ E_ F_ E_ R_ R_ E_ D_ ;
SERDEPROPERTIES: S_ E_ R_ D_ E_ P_ R_ O_ P_ E_ R_ T_ I_ E_ S_ ;
DBPROPERTIES: D_ B_ P_ R_ O_ P_ E_ R_ T_ I_ E_ S_ ;
LIMIT: L_ I_ M_ I_ T_ ;
SET: S_ E_ T_ ;
UNSET: U_ N_ S_ E_ T_ ;
TBLPROPERTIES: T_ B_ L_ P_ R_ O_ P_ E_ R_ T_ I_ E_ S_ ;
IDXPROPERTIES: I_ D_ X_ P_ R_ O_ P_ E_ R_ T_ I_ E_ S_ ;
//VALUE_TYPE: $_ V_ A_ L_ U_ E_ $_ ;    //TODO:  检验需不需要？
//ELEM_TYPE: $_ E_ L_ E_ M_ $_ ;
CASCADED: C_ A_ S_ C_ A_ D_ E_ D_ ;
CASE: C_ A_ S_ E_ ;
WHEN: W_ H_ E_ N_ ;
THEN: T_ H_ E_ N_ ;
ELSE: E_ L_ S_ E_ ;
END: E_ N_ D_ ;
MAPJOIN: M_ A_ P_ J_ O_ I_ N_ ;
STREAMTABLE: S_ T_ R_ E_ A_ M_ T_ A_ B_ L_ E_ ;
//HOLD_DDLTIME: H_ O_ L_ D_ __ D_ D_ L_ T_ I_ M_ E_ ;
CLUSTERSTATUS: C_ L_ U_ S_ T_ E_ R_ S_ T_ A_ T_ U_ S_ ;
UTC: U_ T_ C_ ;
//UTCTIMESTAMP: U_ T_ C_ __ T_ M_ E_ S_ T_ A_ M_ P_ ;
LONG: L_ O_ N_ G_ ;
DELETE: D_ E_ L_ E_ T_ E_ ;
FETCH: F_ E_ T_ C_ H_ ;
INTERSECT: I_ N_ T_ E_ R_ S_ E_ C_ T_ ;
VIEW: V_ I_ E_ W_ ;
IN: I_ N_ ;
DATABASE: D_ A_ T_ A_ B_ A_ S_ E_ ;
DATABASES: D_ A_ T_ A_ B_ A_ S_ E_ S_ ;
MATERIALIZED: M_ A_ T_ E_ R_ I_ A_ L_ I_ Z_ E_ D_ ;
SCHEMA: S_ C_ H_ E_ M_ A_ ;
SCHEMAS: S_ C_ H_ E_ M_ A_ S_ ;
GRANT: G_ R_ A_ N_ T_ ;
REVOKE: R_ E_ V_ O_ K_ E_ ;
SSL: S_ S_ L_ ;
UNDO: U_ N_ D_ O_ ;
LOCK: L_ O_ C_ K_ ;
LOCKS: L_ O_ C_ K_ S_ ;
UNLOCK: U_ N_ L_ O_ C_ K_ ;
SHARED: S_ H_ A_ R_ E_ D_ ;
EXCLUSIVE: E_ X_ C_ L_ U_ S_ I_ V_ E_ ;
PROCEDURE: P_ R_ O_ C_ E_ D_ U_ R_ E_ ;
UNSIGNED: U_ N_ S_ I_ G_ N_ E_ D_ ;
WHILE: W_ H_ I_ L_ E_ ;
READ: R_ E_ A_ D_ ;
READS: R_ E_ A_ D_ S_ ;
PURGE: P_ U_ R_ G_ E_ ;
RANGE: R_ A_ N_ G_ E_ ;
ANALYZE: A_ N_ A_ L_ Y_ Z_ E_ ;
BEFORE: B_ E_ F_ O_ R_ E_ ;
BETWEEN: B_ E_ T_ W_ E_ E_ N_ ;
BOTH: B_ O_ T_ H_ ;
BINARY: B_ I_ N_ A_ R_ Y_ ;
CROSS: C_ R_ O_ S_ S_ ;
CONTINUE: C_ O_ N_ T_ I_ N_ U_ E_ ;
CURSOR: C_ U_ R_ S_ O_ R_ ;
TRIGGER: T_ R_ I_ G_ G_ E_ R_ ;
RECORDREADER: R_ E_ C_ O_ R_ D_ R_ E_ A_ D_ E_ R_ ;
RECORDWRITER: R_ E_ C_ O_ R_ D_ W_ R_ I_ T_ E_ R_ ;
LATERAL: L_ A_ T_ E_ R_ A_ L_ ;
TOUCH: T_ O_ U_ C_ H_ ;
ARCHIVE: A_ R_ C_ H_ I_ V_ E_ ;
UNARCHIVE: U_ N_ A_ R_ C_ H_ I_ V_ E_ ;
COMPUTE: C_ O_ M_ P_ U_ T_ E_ ;
STATISTICS: S_ T_ A_ T_ I_ S_ T_ I_ C_ S_ ;
USE: U_ S_ E_ ;
OPTION: O_ P_ T_ I_ O_ N_ ;
CONCATENATE: C_ O_ N_ C_ A_ T_ E_ N_ A_ T_ E_ ;
// SHOW_DATABASE: S_ H_ O_ W_ __ D_ A_ T_ A_ B_ A_ S_ E_ ;
UPDATE: U_ P_ D_ A_ T_ E_ ;
RESTRICT: R_ E_ S_ T_ R_ I_ C_ T_ ;
CASCADE: C_ A_ S_ C_ A_ D_ E_ ;
SKEWED: S_ K_ E_ W_ E_ D_ ;
ROLLUP: R_ O_ L_ L_ U_ P_ ;
CUBE: C_ U_ B_ E_ ;
DIRECTORIES: D_ I_ R_ E_ C_ T_ O_ R_ I_ E_ S_ ;
FOR: F_ O_ R_ ;
WINDOW: W_ I_ N_ D_ O_ W_ ;
UNBOUNDED: U_ N_ B_ O_ U_ N_ D_ E_ D_ ;
PRECEDING: P_ R_ E_ C_ E_ D_ I_ N_ G_ ;
FOLLOWING: F_ O_ L_ L_ O_ W_ I_ N_ G_ ;
CURRENT: C_ U_ R_ R_ E_ N_ T_ ;
LESS: L_ E_ S_ S_ ;
MORE: M_ O_ R_ E_ ;
OVER: O_ V_ E_ R_ ;
GROUPING: G_ R_ O_ U_ P_ I_ N_ G_ ;
SETS: S_ E_ T_ S_ ;
TRUNCATE: T_ R_ U_ N_ C_ A_ T_ E_ ;
NOSCAN: N_ O_ S_ C_ A_ N_ ;
PARTIALSCAN: P_ A_ R_ T_ I_ A_ L_ S_ C_ A_ N_ ;
USER: U_ S_ E_ R_ ;
ROLE: R_ O_ L_ E_ ;
INNER: I_ N_ N_ E_ R_ ;
EXCHANGE: E_ X_ C_ H_ A_ N_ G_ E_ ;



// basic token definition ------------------------------------------------------------

DIVIDE	: (  D_ I_ V_ ) | '/' ;
MOD	: (  M_ O_ D_ ) | '%' ;
OR	: (  O_ R_ ) | '||';
AND	: (  A_ N_ D_ ) | '&&';

ARROW	: '=>' ;
EQ	: '=' | '<=>' ;
NOT_EQ	: '<>' | '!=' | '~='| '^=';
LET	: '<=' ;
GET	: '>=' ;
SET_VAR	: ':=' ;
SHIFT_LEFT	: '<<' ;
SHIFT_RIGHT	: '>>' ;
ALL_FIELDS	: '.*' ;

SEMI	: ';' ;
COLON	: ':' ;
DOT	: '.' ;
COMMA	: ',' ;
ASTERISK: '*' ;
RPAREN	: ')' ;
LPAREN	: '(' ;
RBRACK	: ']' ;
LBRACK	: '[' ;
PLUS	: '+' ;
MINUS	: '-' ;
NEGATION: '~' ;
VERTBAR	: '|' ;
BITAND	: '&' ;
POWER_OP: '^' ;
GTH	: '>' ;
LTH	: '<' ;



INTEGER_NUM		: ('0'..'9')+ ;

fragment HEX_DIGIT_FRAGMENT: ( 'a'..'f' | 'A'..'F' | '0'..'9' ) ;
HEX_DIGIT:
	(  '0x'     (HEX_DIGIT_FRAGMENT)+  )
	|
	(  'X' '\'' (HEX_DIGIT_FRAGMENT)+ '\''  )
;

BIT_NUM:
	(  '0b'    ('0'|'1')+  )
	|
	(  B_ '\'' ('0'|'1')+ '\''  )
;

REAL_NUMBER:
	(  INTEGER_NUM DOT INTEGER_NUM | INTEGER_NUM DOT | DOT INTEGER_NUM | INTEGER_NUM  )
	(  ('E'|'e') ( PLUS | MINUS )? INTEGER_NUM  )?
;

TEXT_STRING:
	( N_ | ('_' U_ T_ F_ '8') )?
	(
		(  '\'' ( ('\\' '\\') | ('\'' '\'') | ('\\' '\'') | ~('\'') )* '\''  )
		|
		(  '\"' ( ('\\' '\\') | ('\"' '\"') | ('\\' '\"') | ~('\"') )* '\"'  )
	)
;

ID:
	( 'A'..'Z' | 'a'..'z' | '_' | '$') ( 'A'..'Z' | 'a'..'z' | '_' | '$' | '0'..'9' )*
;

USER_VAR:
	'@' (USER_VAR_SUBFIX1 | USER_VAR_SUBFIX2 | USER_VAR_SUBFIX3 | USER_VAR_SUBFIX4)
;
fragment USER_VAR_SUBFIX1:	(  '`' (~'`' )+ '`'  ) ;
fragment USER_VAR_SUBFIX2:	( '\'' (~'\'')+ '\'' ) ;
fragment USER_VAR_SUBFIX3:	( '\"' (~'\"')+ '\"' ) ;
fragment USER_VAR_SUBFIX4:	( 'A'..'Z' | 'a'..'z' | '_' | '$' | '0'..'9' | DOT )+ ;

WHITE_SPACE	: ( ' '|'\r'|'\t'|'\n' ) -> skip ;

// http://dev.mysql.com/doc/refman/5.6/en/comments.html
SL_COMMENT	: ( ('--'|'#') ~('\n'|'\r')* '\r'? '\n' ) -> skip ;
//ML_COMMENT	: '/*' ( options {greedy=false;} : . )* '*/' {$channel=HIDDEN;} ;





//-----------------------------------------------------------------Parser part----------------------------------------------------------------------
// data type definition ------------------------------------------------------------------------------
integer_types:
| TINYINT
| SMALLINT
| INT
| BIGINT
| BOOLEAN
| FLOAT
| DOUBLE
| DATE
| DATETIME
| TIMESTAMP
| STRING
| VARCHAR
| BINARY
| DECIMAL
| STRUCT
| MAP
;






// basic type definition -----------------------------------------------------------------------
// basic type definition -----------------------------------------------------------------------
relational_op:
	EQ | LTH | GTH | NOT_EQ | LET | GET  ;

charset_name:
	  ARMSCII8
	| ASCII
	| BIG5
	| BINARY
	| CP1250
	| CP1251
	| CP1256
	| CP1257
	| CP850
	| CP852
	| CP866
	| CP932
	| DEC8
	| EUCJPMS
	| EUCKR
	| GB2312
	| GBK
	| GEOSTD8
	| GREEK
	| HEBREW
	| HP8
	| KEYBCS2
	| KOI8R
	| KOI8U
	| LATIN1
	| LATIN2
	| LATIN5
	| LATIN7
	| MACCE
	| MACROMAN
	| SJIS
	| SWE7
	| TIS620
	| UCS2
	| UJIS
	| UTF8;

cast_data_type:
	BINARY (INTEGER_NUM)?
	| CHAR (INTEGER_NUM)?
	| DATE
	| DATETIME
	| DECIMAL ( INTEGER_NUM (COMMA INTEGER_NUM)? )?
	| SIGNED (INTEGER)?
	| TIME
	| UNSIGNED (INTEGER)?
;

search_modifier:
	(IN NATURAL LANGUAGE MODE)
	| (IN NATURAL LANGUAGE MODE WITH QUERY EXPANSION)
	| (IN BOOLEAN MODE)
	| (WITH QUERY EXPANSION)
;

transcoding_name:
	  LATIN1
	| UTF8
;

interval_unit:
	  SECOND
	| MINUTE
	| HOUR
	| DAY
	| WEEK
	| MONTH
	| QUARTER
	| YEAR
	| SECOND_MICROSECOND
	| MINUTE_MICROSECOND
	| MINUTE_SECOND
	| HOUR_MICROSECOND
	| HOUR_SECOND
	| HOUR_MINUTE
	| DAY_MICROSECOND
	| DAY_SECOND
	| DAY_MINUTE
	| DAY_HOUR
	| YEAR_MONTH
;

collation_names:
	LATIN1_GENERAL_CS | LATIN1_BIN
;

// basic const data definition ---------------------------------------------------------------
string_literal:		TEXT_STRING ;
number_literal:		(PLUS | MINUS)? (INTEGER_NUM | REAL_NUMBER) ;
//date_time_literal: 	;
hex_literal:		HEX_DIGIT;
boolean_literal:	TRUE | FALSE ;
bit_literal:		BIT_NUM;

literal_value:
        ( string_literal | number_literal | hex_literal | boolean_literal | bit_literal | NULL ) ;



// function defintion ----------------------------------------------------------------------------------
functionList:
	  number_functions
	| char_functions
	| time_functions
	| other_functions
;

number_functions:
	  ABS
	| ACOS
	| ASIN
	| ATAN2
	| ATAN
	| CEIL
	| CEILING
	| CONV
	| COS
	| COT
	| CRC32
	| DEGREES
	| EXP
	| FLOOR
	| LN
	| LOG10
	| LOG2
	| LOG
	| MOD
	| PI
	| POW
	| POWER
	| RADIANS
	| RAND
	| ROUND
	| SIGN
	| SIN
	| SQRT
	| TAN
	| TRUNCATE
;

char_functions:
	  ASCII
	| BIN
	| BIT_LENGTH
	| CHAR_LENGTH
	| CHAR
	| CONCAT_WS
	| CONCAT
	| ELT
	| EXPORT_SET
	| FIELD
	| FIND_IN_SET
	| FORMAT
	| FROM_BASE64
	| HEX
	| INSERT
	| INSTR
	| LEFT
	| LENGTH
	| LOAD_FILE
	| LOCATE
	| LOWER
	| LPAD
	| LTRIM
	| MAKE_SET
	| MID
	| OCT
	| ORD
	| QUOTE
	| REPEAT
	| REPLACE
	| REVERSE
	| RIGHT
	| RPAD
	| RTRIM
	| SOUNDEX
	| SPACE
	| STRCMP
	| SUBSTRING_INDEX
	| SUBSTRING
	| TO_BASE64
	| TRIM
	| UNHEX
	| UPPER
	| WEIGHT_STRING
;

time_functions:
	  ADDDATE
	| ADDTIME
	| CONVERT_TZ
	| CURDATE
	| CURTIME
	| DATE_ADD
	| DATE_FORMAT
	| DATE_SUB
	| DATE
	| DATEDIFF
	| DAYNAME
	| DAYOFMONTH
	| DAYOFWEEK
	| DAYOFYEAR
	| EXTRACT
	| FROM_DAYS
	| FROM_UNIXTIME
	| GET_FORMAT
	| HOUR
	| LAST_DAY
	| MAKEDATE
	| MAKETIME
	| MICROSECOND
	| MINUTE
	| MONTH
	| MONTHNAME
	| NOW
	| PERIOD_ADD
	| PERIOD_DIFF
	| QUARTER
	| SEC_TO_TIME
	| SECOND
	| STR_TO_DATE
	| SUBTIME
	| SYSDATE
	| TIME_FORMAT
	| TIME_TO_SEC
	| TIME
	| TIMEDIFF
	| TIMESTAMP
	| TIMESTAMPADD
	| TIMESTAMPDIFF
	| TO_DAYS
	| TO_SECONDS
	| UNIX_TIMESTAMP
	| UTC_DATE
	| UTC_TIME
	| UTC_TIMESTAMP
	| WEEK
	| WEEKDAY
	| WEEKOFYEAR
	| YEAR
	| YEARWEEK
;

other_functions:
	MAKE_SET | LOAD_FILE
	| IF | IFNULL
	| AES_ENCRYPT | AES_DECRYPT
	| DECODE | ENCODE
	| DES_DECRYPT | DES_ENCRYPT
	| ENCRYPT | MD5
	| OLD_PASSWORD | PASSWORD
	| BENCHMARK | CHARSET | COERCIBILITY | COLLATION | CONNECTION_ID
	| CURRENT_USER | DATABASE | SCHEMA | USER | SESSION_USER | SYSTEM_USER
	| VERSION
	| FOUND_ROWS | LAST_INSERT_ID | DEFAULT
	| GET_LOCK | RELEASE_LOCK | IS_FREE_LOCK | IS_USED_LOCK | MASTER_POS_WAIT
	| INET_ATON | INET_NTOA
	| NAME_CONST
	| SLEEP
	| UUID
	| VALUES
;

group_functions:
	AVG | COUNT | MAX | MIN | SUM
	| BIT_AND | BIT_OR | BIT_XOR
	| GROUP_CONCAT
	| STD | STDDEV | STDDEV_POP | STDDEV_SAMP
	| VAR_POP | VAR_SAMP | VARIANCE
;




// identifiers --------------------------------------------------------------------------------
schema_name			: ID ;
table_name			: ID ;
engine_name			: ID ;
column_name			: ID ;
view_name			: ID ;
parser_name			: ID ;
index_name			: ID ;
partition_name			: ID ;
partition_logical_name		: ID ;
constraintbol_name		: ID ;
foreign_keybol_name		: ID ;
collation_name			: ID ;
event_name			: ID ;
user_name			: ID ;
function_name			: ID ;
procedure_name			: ID ;
server_name			: ID ;
wrapper_name			: ID ;
alias				: ( AS )? ID ;





// expression statement -------------------------------------------------------------------------------
expression:	exp_factor1 ( OR exp_factor1 )* ;
exp_factor1:	exp_factor2 ( XOR exp_factor2 )* ;
exp_factor2:	exp_factor3 ( AND exp_factor3 )* ;
exp_factor3:	(NOT)? exp_factor4 ;
exp_factor4:	bool_primary ( IS (NOT)? (boolean_literal|NULL) )? ;
bool_primary:
	  ( predicate relational_op predicate )
	| ( predicate relational_op ( ALL | ANY )? subquery )
	| ( NOT? EXISTS subquery )
	| predicate
;
predicate:
	  ( bit_expr (NOT)? IN (subquery | expression_list) )
	| ( bit_expr (NOT)? BETWEEN bit_expr AND predicate )
	| ( bit_expr SOUNDS LIKE bit_expr )
	| ( bit_expr (NOT)? LIKE simple_expr (ESCAPE simple_expr)? )
	| ( bit_expr (NOT)? REGEXP bit_expr )
	| ( bit_expr )
;
bit_expr:
	factor1 ( VERTBAR factor1 )? ;
factor1:
	factor2 ( BITAND factor2 )? ;
factor2:
	factor3 ( (SHIFT_LEFT|SHIFT_RIGHT) factor3 )? ;
factor3:
	factor4 ( (PLUS|MINUS) factor4 )? ;
factor4:
	factor5 ( (ASTERISK|DIVIDE|MOD|POWER_OP) factor5 )? ;
factor5:
	factor6 ( (PLUS|MINUS) interval_expr )? ;
factor6:
	(PLUS | MINUS | NEGATION | BINARY) simple_expr
	| simple_expr ;
factor7:
	simple_expr (COLLATE collation_names)?;
simple_expr:
	literal_value
	| column_spec
	| function_call
	//| param_marker
	| USER_VAR
	| expression_list
	| (ROW expression_list)
	| subquery
	| EXISTS subquery
	//| {identifier expression}
	| match_against_statement
	| case_when_statement
	| interval_expr
;


function_call:
	  (  functionList ( LPAREN (expression (COMMA expression)*)? RPAREN ) ?  )
	| (  CAST LPAREN expression AS cast_data_type RPAREN  )
	| (  CONVERT LPAREN expression COMMA cast_data_type RPAREN  )
	| (  CONVERT LPAREN expression USING transcoding_name RPAREN  )
	| (  group_functions LPAREN ( ASTERISK | ALL | DISTINCT )? bit_expr RPAREN  )
;

case_when_statement:
        case_when_statement1 | case_when_statement2
;
case_when_statement1:
        CASE
        ( WHEN expression THEN bit_expr )+
        ( ELSE bit_expr )?
        END
;
case_when_statement2:
        CASE bit_expr
        ( WHEN bit_expr THEN bit_expr )+
        ( ELSE bit_expr )?
        END
;

match_against_statement:
	MATCH (column_spec (COMMA column_spec)* ) AGAINST (expression (search_modifier)? )
;

column_spec:
	( ( schema_name DOT )? table_name DOT )? column_name ;

expression_list:
	LPAREN expression ( COMMA expression )* RPAREN ;

interval_expr:
	INTERVAL expression interval_unit
;





// JOIN Syntax ----------------------------------------------------------------
table_references:
        table_reference ( COMMA table_reference )*
;
table_reference:
	table_factor1 | table_atom
;
table_factor1:
	table_factor2 (  (INNER | CROSS)? JOIN table_atom (join_condition)?  )?
;
table_factor2:
	table_factor3 (  STRAIGHT_JOIN table_atom (ON expression)?  )?
;
table_factor3:
	table_factor4 (  (LEFT|RIGHT) (OUTER)? JOIN table_factor4 join_condition  )?
;
table_factor4:
	table_atom (  NATURAL ( (LEFT|RIGHT) (OUTER)? )? JOIN table_atom )?
;
table_atom:
	  ( table_spec (partition_clause)? (alias)? (index_hint_list)? )
	| ( subquery alias )
	| ( LPAREN table_references RPAREN )
	| ( OJ table_reference LEFT OUTER JOIN table_reference ON expression )
;
join_condition:
	  (ON expression) | (USING column_list)
;
index_hint_list:
	index_hint (COMMA index_hint)*
;
index_options:
	(INDEX | KEY) (  FOR ((JOIN) | (ORDER BY) | (GROUP BY))  )?
;
index_hint:
	  USE    index_options LPAREN (index_list)? RPAREN
	| IGNORE index_options LPAREN index_list RPAREN
	| FORCE  index_options LPAREN index_list RPAREN
;
index_list:
	index_name (COMMA index_name)*
;
partition_clause:
	PARTITION LPAREN partition_names RPAREN
;
partition_names:	partition_name (COMMA partition_name)* ;





// SQL Statement Syntax -----------------------------------------
root_statement:
	(SHIFT_LEFT SHIFT_RIGHT)?
	( data_manipulation_statements | /*data_definition_statements */  /*| transactional_locking_statements | replication_statements*/ )
	(SEMI)?
;

data_manipulation_statements:
	  select_statement
//	| delete_statements
//	| insert_statements
//	| update_statements

//	| load_data_statement
//	| replace_statement
;

data_definition_statements:
	  create_database_statement
//	| alter_database_statements
	| drop_database_statement

;



//DQL
// select ------------------------------------
select_statement:
        select_expression ( (UNION (ALL)?) select_expression )*
;

select_expression:
	SELECT

	( ALL | DISTINCT  )?
	(HIGH_PRIORITY)?

	select_list

	(
		FROM table_references
		( partition_clause )?
		( where_clause )?
		( groupby_clause )?
		( having_clause )?
	) ?

	( orderby_clause )?
	( limit_clause )?
	( ( FOR UPDATE))?
;

where_clause:
	WHERE expression
;

groupby_clause:
	GROUP BY groupby_item (COMMA groupby_item)* (WITH ROLLUP)?
;
groupby_item:	column_spec | INTEGER_NUM | bit_expr ;

having_clause:
	HAVING expression
;

orderby_clause:
	ORDER BY orderby_item (COMMA orderby_item)*
;
orderby_item:	groupby_item (ASC | DESC)? ;

limit_clause:
	LIMIT ((offset COMMA)? row_count) | (row_count OFFSET offset)
;
offset:		INTEGER_NUM ;
row_count:	INTEGER_NUM ;

select_list:
	( ( displayed_column ( COMMA displayed_column )*)
	| ASTERISK )
;

column_list:
	LPAREN column_spec (COMMA column_spec)* RPAREN
;

subquery:
	LPAREN select_statement RPAREN
;

table_spec:
	( schema_name DOT )? table_name
;

displayed_column :
	( table_spec DOT ASTERISK )
	|
	( column_spec (alias)? )
	|
	( bit_expr (alias)? )
;





//DML
// insert --------------------------------
insert_statements :
	insert_statement
;

insert_header:
	INSERT (LOW_PRIORITY | HIGH_PRIORITY)? (IGNORE)?
	(INTO)? table_spec
	(partition_clause)?
;

insert_subfix:
	ON DUPLICATE KEY UPDATE column_spec EQ expression (COMMA column_spec EQ expression)*
;

insert_statement:
		insert_header
    	(column_list)?
    	select_expression
    	( insert_subfix )?
;

value_list_clause:	(VALUES | VALUE) column_value_list (COMMA column_value_list)*;
column_value_list:	LPAREN (bit_expr|DEFAULT) (COMMA (bit_expr|DEFAULT) )* RPAREN ;


set_columns_cluase:	SET set_column_cluase ( COMMA set_column_cluase )*;
set_column_cluase:	column_spec EQ (expression|DEFAULT) ;






//DCL
// ----------------------------------------create databases--------------------------------------------------------
create_database_statement:
	CREATE (DATABASE | SCHEMA) (IF NOT EXISTS)? schema_name
	//( create_specification (COMMA create_specification)* )*
;


drop_database_statement:
	DROP (DATABASE | SCHEMA) (IF EXISTS)? schema_name
;



// ----------------------------------------create table--------------------------------------------------------
create_table_statement:
	create_table_statement1 | create_table_statement2 | create_table_statement3
;

create_table_statement1:
	CREATE (TEMPORARY)? TABLE (IF NOT EXISTS)? table_name
	LPAREN create_definition (COMMA create_definition)* RPAREN
	(select_statement)?
;

create_table_statement2:
	CREATE (TEMPORARY)? TABLE (IF NOT EXISTS)? table_name
	select_statement
;

create_table_statement3:
	CREATE (TEMPORARY)? TABLE (IF NOT EXISTS)? table_name
	( (LIKE table_name) | (LPAREN LIKE table_name RPAREN) )
;

create_definition:
	  (  column_name column_definition  )
	| (  (CONSTRAINT (constraintbol_name)?)? PRIMARY KEY (index_type)? LPAREN index_column_name (COMMA index_column_name)* RPAREN (index_option)*  )
	| (  (INDEX|KEY) (index_name)? (index_type)? LPAREN index_column_name (COMMA index_column_name)* RPAREN (index_option)*  )
	| (  (CONSTRAINT (constraintbol_name)?)? UNIQUE (INDEX|KEY)? (index_name)? (index_type)? LPAREN index_column_name (COMMA index_column_name)* RPAREN (index_option)*  )
	| (  (FULLTEXT|SPATIAL) (INDEX|KEY)? (index_name)? LPAREN index_column_name (COMMA index_column_name)* RPAREN (index_option)*  )
	| (  (CONSTRAINT (constraintbol_name)?)? FOREIGN KEY (index_name)? LPAREN index_column_name (COMMA index_column_name)* RPAREN reference_definition  )
	| (  CHECK LPAREN expression RPAREN  )
;

column_definition:
	column_data_type_header
	(AUTO_INCREMENT)? ( (UNIQUE (KEY)?) | (PRIMARY (KEY)?) )?
	(COMMENT TEXT_STRING)?
	(COLUMN_FORMAT (FIXED|DYNAMIC|DEFAULT))?
	(reference_definition)?
;

null_or_notnull:
	(NOT NULL) | NULL
;

column_data_type_header:
	  (  BIT(LPAREN length RPAREN)? (null_or_notnull)? (DEFAULT bit_literal)?  )
	| (  TINYINT(LPAREN length RPAREN)? (UNSIGNED)?  (null_or_notnull)? (DEFAULT number_literal)?  )
	| (  SMALLINT(LPAREN length RPAREN)? (UNSIGNED)?  (null_or_notnull)? (DEFAULT number_literal)?  )
	| (  MEDIUMINT(LPAREN length RPAREN)? (UNSIGNED)?  (null_or_notnull)? (DEFAULT number_literal)?  )
	| (  INT(LPAREN length RPAREN)? (UNSIGNED)?  (null_or_notnull)? (DEFAULT number_literal)?  )
	| (  INTEGER(LPAREN length RPAREN)? (UNSIGNED)?  (null_or_notnull)? (DEFAULT number_literal)?  )
	| (  BIGINT(LPAREN length RPAREN)? (UNSIGNED)?  (null_or_notnull)? (DEFAULT number_literal)?  )
	| (  DOUBLE(LPAREN length COMMA number_literal RPAREN)? (UNSIGNED)?  (null_or_notnull)? (DEFAULT number_literal)?  )
	| (  FLOAT(LPAREN length COMMA number_literal RPAREN)? (UNSIGNED)?  (null_or_notnull)? (DEFAULT number_literal)?  )
	| (  DECIMAL(LPAREN length( COMMA number_literal)? RPAREN)? (UNSIGNED)?  (null_or_notnull)? (DEFAULT number_literal)?  )
	| (  DATE (null_or_notnull)? (DEFAULT TEXT_STRING)?  )
	| (  TIME (null_or_notnull)? (DEFAULT TEXT_STRING)?  )
	| (  TIMESTAMP (null_or_notnull)? (DEFAULT TEXT_STRING)?  )
	| (  DATETIME (null_or_notnull)? (DEFAULT TEXT_STRING)?  )
	| (  CHAR   (LPAREN length RPAREN)? (CHARACTER SET charset_name)?  (null_or_notnull)? (DEFAULT TEXT_STRING)?  )
	| (  VARCHAR LPAREN length RPAREN   (CHARACTER SET charset_name)?  (null_or_notnull)? (DEFAULT TEXT_STRING)?  )
	| (  BINARY   (LPAREN length RPAREN)? (null_or_notnull)? (DEFAULT TEXT_STRING)?  )
	| (  VARBINARY LPAREN length RPAREN (null_or_notnull)? (DEFAULT TEXT_STRING)?  )
	| (  SET LPAREN TEXT_STRING (COMMA TEXT_STRING)* RPAREN (CHARACTER SET charset_name)?  (null_or_notnull)? (DEFAULT TEXT_STRING)?  )
;

index_column_name:
	column_name (LPAREN INTEGER_NUM RPAREN)? (ASC | DESC)?
;

reference_definition:
	REFERENCES table_name LPAREN index_column_name (COMMA index_column_name)* RPAREN
	( (MATCH FULL) | (MATCH PARTIAL) | (MATCH SIMPLE) )?
	(ON DELETE reference_option)?
	(ON UPDATE reference_option)?
;
reference_option:
	(RESTRICT) | (CASCADE) | (SET NULL) | (NO ACTION)
;

length	:	INTEGER_NUM;



//---alter table------------------------------------------------------
alter_table_statement:
	ALTER (IGNORE)? TABLE table_name
	( alter_table_specification (COMMA alter_table_specification)* )?
;
alter_table_specification:
	 ( ADD (COLUMN)? column_name column_definition ( (FIRST|AFTER) column_name )? )
	| ( ADD (COLUMN)? LPAREN column_definitions RPAREN )
	| ( ADD (INDEX|KEY) (index_name)? (index_type)? LPAREN index_column_names RPAREN (index_option)* )
	| ( ADD (CONSTRAINT (constraintbol_name)?)? PRIMARY KEY (index_type)? LPAREN index_column_names RPAREN (index_option)* )
	|
		(
		ADD (CONSTRAINT (constraintbol_name)?)? UNIQUE (INDEX|KEY)? (index_name)?
		(index_type)? LPAREN index_column_name (COMMA index_column_name)* RPAREN (index_option)*
		)
	| ( ADD (CONSTRAINT (constraintbol_name)?)? FOREIGN KEY (index_name)? LPAREN index_column_names RPAREN reference_definition )
	| ( ALTER (COLUMN)? column_name ((SET DEFAULT literal_value) | (DROP DEFAULT)) )
	| ( CHANGE (COLUMN)? column_name column_name column_definition (FIRST|AFTER column_name)? )
	| ( DROP (COLUMN)? column_name )
	| ( RENAME (TO|AS)? table_name )
	| ( ORDER BY column_name (COMMA column_name)* )
//  | ( ADD PARTITION LPAREN partition_definition RPAREN )
	| ( DROP PARTITION partition_names )
	| ( TRUNCATE PARTITION (partition_names | ALL) )
;
index_column_names:
	index_column_name (COMMA index_column_name)*;
	
index_type:
	USING (BTREE | HASH)
;

index_option:
	  ( KEY_BLOCK_SIZE (EQ)? INTEGER_NUM )
	| index_type
	| ( WITH PARSER parser_name )
	| ( COMMENT TEXT_STRING )
;

column_definitions:
	column_name column_definition (COMMA column_name column_definition)*
;


rename_table_statement:
	RENAME TABLE
	table_name TO table_name
	(COMMA table_name TO table_name)*
;


drop_table_statement:
	DROP (TEMPORARY)? TABLE (IF EXISTS)?
	table_name (COMMA table_name)*
	(RESTRICT | CASCADE)?
;


truncate_table_statement:
	TRUNCATE (TABLE)? table_name
;

//----create view-----------------------------------------------------------------
create_view_statement:
	CREATE (OR REPLACE)?
	create_view_body
;
create_view_body:
	VIEW view_name (LPAREN column_list RPAREN)?
	AS select_statement
	(WITH (CASCADED | LOCAL)? )?
;

//----alter view-----------------------------------------------------------------
alter_view_statement:
	ALTER
	create_view_body
;

//----drop view-----------------------------------------------------------------
drop_view_statement:
	DROP VIEW (IF EXISTS)?
	view_name (COMMA view_name)*
	(RESTRICT | CASCADE)?
;