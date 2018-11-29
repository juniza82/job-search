package egovframework.searchNet.common;

public class WNCollection {

//	public static String SEARCH_IP = "127.0.0.1";
	// 현개발서
	public static String SEARCH_IP = "dev.truetech.info";
	public static int SEARCH_PORT=7000;
//	public static String MANAGER_IP = "127.0.0.1";
	public static String MANAGER_IP = "dev.truetech.info";
	public static int MANAGER_PORT=7800;

	/**
	 *
	 * 통합검색 : 구인구직, 교육훈련, 일자리지원, 미니잡매칭
	 *     구인구직 카테고리 : 채용정보, 공공일자리, 공공기관채용정보, 공채속보, 일자리정책·사업, 전남우수기업, 게시판
	 *     교육훈련 카테고리 : 기관소개, 교육훈련정보, 게시판
	 *     일자리지원 카테고리 : 사업장, 게시판
	 *     미니잡매칭 카테고리 : 채용정보, 게시판
	 */

	public static String[] COLLECTIONS = new String[]{"recruitInformation", "employmentInformation", "educationTraining", "localBusiness", "jobNews"};
	public static String[] COLLECTIONS_NAME = new String[]{"recruitInformation", "employmentInformation", "educationTraining", "localBusiness", "jobNews"};
	public static String[] MERGE_COLLECTIONS = new String[]{""};
	public String[][] MERGE_COLLECTION_INFO = null;
	public String[][] COLLECTION_INFO = null;
	public WNCollection(){
		COLLECTION_INFO = new String[][] {
			{
				"recruitInformation", // set index name
				"recruitInformation", // set collection name
				"0,3",  // set pageinfo (start,count)
				"1,0,0,0,0", // set query analyzer (useKMA,isCase,useOriginal,useSynonym, duplcated detection)
				"RANK/DESC,DATE/DESC",  // set sort field (field,order) multi sort '/'
				"basic,rpfmo,100",  // set sort field (field,order) multi sort '/'
				"TITLE/100,HOPE_WORK_DETAIL/30,KEYWORD/50",// set search field
				"DOCID,SEX,USER_NM,AGE,TITLE,HOPE_WORK_DETAIL,CAREER_YEAR,CAREER_MONTH,DEGREE,HOPE_PAY_TYPE,HOPE_LOCATION,KEYWORD,ALIAS",// set document field
				"", // set date range
				"", // set rank range
				"", // set prefix query, example: <fieldname:contains:value1>|<fieldname:contains:value2>/1,  (fieldname:contains:value) and ' ', or '|', not '!' / operator (AND:1, OR:0)
				"", // set collection query (<fieldname:contains:value^weight | value^weight>/option...) and ' ', or '|'
				"", // set boost query (<fieldname:contains:value> | <field3:contains:value>...) and ' ', or '|'
				"", // set filter operation (<fieldname:operator:value>)
				"", // set groupby field(field, count)
				"", // set sort field group(field/order,field/order,...)
				"", // set categoryBoost(fieldname,matchType,boostID,boostKeyword)
				"", // set categoryGroupBy (fieldname:value)
				"", // set categoryQuery (fieldname:value)
				"", // set property group (fieldname,min,max, groupcount)
				"", // use check prefix query filed
				"", // set use check fast access field
				"", // set multigroupby field
				"", // set auth query (Auth Target Field, Auth Collection, Auth Reference Field, Authority Query)
				"", // set Duplicate Detection Criterion Field, RANK/DESC,DATE/DESC
				"인재정보" // collection display name
			},
			{
				"employmentInformation", // set index name
				"employmentInformation", // set collection name
				"0,3",  // set pageinfo (start,count)
				"1,0,0,0,0", // set query analyzer (useKMA,isCase,useOriginal,useSynonym, duplcated detection)
				"RANK/DESC,DATE/DESC",  // set sort field (field,order) multi sort '/'
				"basic,rpfmo,100",  // set sort field (field,order) multi sort '/'
				"TITLE/100,COMPANY_NAME/30,KEYWORD/50",// set search field
				"DOCID,COMPANY_NAME,TITLE,WORK_DETAIL,LOCATION,CAREER_TERMS,NO_EDUCATION,HIRE_MONEY_TYPE,ACCEPT_END_TYPE,ACCEPT_END_DAY,KEYWORD,NOTE,ALIAS",// set document field
				"", // set date range
				"", // set rank range
				"", // set prefix query, example: <fieldname:contains:value1>|<fieldname:contains:value2>/1,  (fieldname:contains:value) and ' ', or '|', not '!' / operator (AND:1, OR:0)
				"", // set collection query (<fieldname:contains:value^weight | value^weight>/option...) and ' ', or '|'
				"", // set boost query (<fieldname:contains:value> | <field3:contains:value>...) and ' ', or '|'
				"", // set filter operation (<fieldname:operator:value>)
				"", // set groupby field(field, count)
				"", // set sort field group(field/order,field/order,...)
				"", // set categoryBoost(fieldname,matchType,boostID,boostKeyword)
				"", // set categoryGroupBy (fieldname:value)
				"", // set categoryQuery (fieldname:value)
				"", // set property group (fieldname,min,max, groupcount)
				"", // use check prefix query filed
				"", // set use check fast access field
				"", // set multigroupby field
				"", // set auth query (Auth Target Field, Auth Collection, Auth Reference Field, Authority Query)
				"", // set Duplicate Detection Criterion Field, RANK/DESC,DATE/DESC
				"채용정보" // collection display name
			},
			{
				"educationTraining", // set index name
				"educationTraining", // set collection name
				"0,3",  // set pageinfo (start,count)
				"1,0,0,0,0", // set query analyzer (useKMA,isCase,useOriginal,useSynonym, duplcated detection)
				"RANK/DESC,DATE/DESC",  // set sort field (field,order) multi sort '/'
				"basic,rpfmo,100",  // set sort field (field,order) multi sort '/'
				"TITLE/100,INSTITUTION_NAME/30",// set search field
				"DOCID,INSTITUTION_NAME,TITLE,RECRUIT_END,RECRUIT_START,EDU_MAX_COUNT,EDU_TIME,LOCATION,ALIAS",// set document field
				"", // set date range
				"", // set rank range
				"", // set prefix query, example: <fieldname:contains:value1>|<fieldname:contains:value2>/1,  (fieldname:contains:value) and ' ', or '|', not '!' / operator (AND:1, OR:0)
				"", // set collection query (<fieldname:contains:value^weight | value^weight>/option...) and ' ', or '|'
				"", // set boost query (<fieldname:contains:value> | <field3:contains:value>...) and ' ', or '|'
				"", // set filter operation (<fieldname:operator:value>)
				"", // set groupby field(field, count)
				"", // set sort field group(field/order,field/order,...)
				"", // set categoryBoost(fieldname,matchType,boostID,boostKeyword)
				"", // set categoryGroupBy (fieldname:value)
				"", // set categoryQuery (fieldname:value)
				"", // set property group (fieldname,min,max, groupcount)
				"", // use check prefix query filed
				"", // set use check fast access field
				"", // set multigroupby field
				"", // set auth query (Auth Target Field, Auth Collection, Auth Reference Field, Authority Query)
				"", // set Duplicate Detection Criterion Field, RANK/DESC,DATE/DESC
				"교육훈련" // collection display name
			},
			{
				"localBusiness", // set index name
				"localBusiness", // set collection name
				"0,3",  // set pageinfo (start,count)
				"1,0,0,0,0", // set query analyzer (useKMA,isCase,useOriginal,useSynonym, duplcated detection)
				"RANK/DESC,DATE/DESC",  // set sort field (field,order) multi sort '/'
				"basic,rpfmo,100",  // set sort field (field,order) multi sort '/'
				"TITLE/100,CONTENT/30",// set search field
				"DOCID,BD_ID,BOARD_ID,BOARD_NM,TITLE,CONTENT/200,RDATE,WRITER,ALIAS",// set document field
				"", // set date range
				"", // set rank range
				"", // set prefix query, example: <fieldname:contains:value1>|<fieldname:contains:value2>/1,  (fieldname:contains:value) and ' ', or '|', not '!' / operator (AND:1, OR:0)
				"", // set collection query (<fieldname:contains:value^weight | value^weight>/option...) and ' ', or '|'
				"", // set boost query (<fieldname:contains:value> | <field3:contains:value>...) and ' ', or '|'
				"", // set filter operation (<fieldname:operator:value>)
				"", // set groupby field(field, count)
				"", // set sort field group(field/order,field/order,...)
				"", // set categoryBoost(fieldname,matchType,boostID,boostKeyword)
				"", // set categoryGroupBy (fieldname:value)
				"", // set categoryQuery (fieldname:value)
				"", // set property group (fieldname,min,max, groupcount)
				"", // use check prefix query filed
				"", // set use check fast access field
				"", // set multigroupby field
				"", // set auth query (Auth Target Field, Auth Collection, Auth Reference Field, Authority Query)
				"", // set Duplicate Detection Criterion Field, RANK/DESC,DATE/DESC
				"지원사업안내" // collection display name
			},
			{
				"jobNews", // set index name
				"jobNews", // set collection name
				"0,3",  // set pageinfo (start,count)
				"1,0,0,0,0", // set query analyzer (useKMA,isCase,useOriginal,useSynonym, duplcated detection)
				"RANK/DESC,DATE/DESC",  // set sort field (field,order) multi sort '/'
				"basic,rpfmo,100",  // set sort field (field,order) multi sort '/'
				"TITLE/100,CONTENT/30",// set search field
				"DOCID,BD_ID,BOARD_ID,BOARD_NM,TITLE,CONTENT/300,RDATE,WRITER,ALIAS",// set document field
				"", // set date range
				"", // set rank range
				"", // set prefix query, example: <fieldname:contains:value1>|<fieldname:contains:value2>/1,  (fieldname:contains:value) and ' ', or '|', not '!' / operator (AND:1, OR:0)
				"", // set collection query (<fieldname:contains:value^weight | value^weight>/option...) and ' ', or '|'
				"", // set boost query (<fieldname:contains:value> | <field3:contains:value>...) and ' ', or '|'
				"", // set filter operation (<fieldname:operator:value>)
				"", // set groupby field(field, count)
				"", // set sort field group(field/order,field/order,...)
				"", // set categoryBoost(fieldname,matchType,boostID,boostKeyword)
				"", // set categoryGroupBy (fieldname:value)
				"", // set categoryQuery (fieldname:value)
				"", // set property group (fieldname,min,max, groupcount)
				"", // use check prefix query filed
				"", // set use check fast access field
				"", // set multigroupby field
				"", // set auth query (Auth Target Field, Auth Collection, Auth Reference Field, Authority Query)
				"", // set Duplicate Detection Criterion Field, RANK/DESC,DATE/DESC
				"일자리뉴스" // collection display name
			}
		};
	}
}