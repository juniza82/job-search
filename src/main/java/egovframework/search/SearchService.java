package egovframework.search;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.IntStream;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.search.common.WNDefine;
import egovframework.search.common.WNSearch;

@Service
public class SearchService {

	private final static boolean IS_DEBUG = true;
	private final static boolean IS_UID_SEARCH = false;
	private final static boolean IS_REALTIME_KEYWORD = false;
	private final static boolean USE_SUGGESTED_QUERY = false;

	private static final Logger logger = LoggerFactory.getLogger(SearchService.class);
	
	public Map<String, Object> search(
		String query,
		String[] collections,
		int startCount,
		int viewResultCount
	) {
		
		List<String> collectionNameList = new ArrayList<>(Arrays.asList(collections));
		logger.info(String.format("[SEARCH::SERVICE] PARAM DEBUG MESSAGE => %s,%s,%s,%s", query, collections, startCount, viewResultCount));
		
		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		// 검색 조건 셋팅, 질의, 디버그 
		WNSearch wnsearch = new WNSearch(IS_DEBUG, IS_UID_SEARCH, collections, null, 0);
		collectionNameList.stream().forEach((String collection) -> {
			
			wnsearch.setCollectionInfoValue(collection, WNDefine.PAGE_INFO, String.format("%s,%s", startCount, viewResultCount));
			wnsearch.setCollectionInfoValue(collection, WNDefine.SORT_FIELD, "RANK/DESC");
			
		});
		wnsearch.search(query, IS_REALTIME_KEYWORD, WNDefine.CONNECTION_CLOSE, USE_SUGGESTED_QUERY);
		
		String debugMsg = wnsearch.printDebug() != null ? wnsearch.printDebug().trim() : "";
		logger.info(String.format("[SEARCH::SERVICE] CONDITION DEBUG MESSAGE => %s", debugMsg));

		
		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		// 검색 결과 정리
		
		// 컬랙션별 결과
		Map<String, Object> resultMap = new HashMap<>();
		Map<String, Integer> collectionCountMap = new HashMap<>();
		Map<String, Object> collectionResultMap = new HashMap<>();
		collectionNameList.stream().forEach((String collection) -> {
			
			int count = wnsearch.getResultTotalCount(collection);
			collectionCountMap.put(collection + "Count", count);
			
			int thisTotalCount = wnsearch.getResultCount(collection);
			
			List<Map<String, String>> documentMapList = new ArrayList<Map<String, String>>();
			IntStream.range(0, thisTotalCount).forEach((int index) -> {
				
				List<String> searchResultFieldList = wnsearch.getSearchResultField(collection);
				//if(index == 0) { logger.info(String.format("[SEARCH::SERVICE] result field is => %s", searchResultFieldList)); }
				
				Map<String, String> documentMap = new HashMap<>();
				searchResultFieldList.stream().forEach((String field) -> {
					
					field = field.split("/")[0];
					String result = wnsearch.getField(collection, field, index, false);
					documentMap.put(field, result);
					
				});
				documentMapList.add(documentMap);
				
			});
			collectionResultMap.put(collection + "Result", documentMapList);
			logger.info(String.format("[SEARCH::SERVICE] collection result count is => collection:%s,count:%s,thisTotalCount:%s", 
					collection, count, thisTotalCount));
			
		});
		
		// 전체 결과
		int totalCount = collectionCountMap.entrySet().stream().mapToInt(map -> map.getValue()).sum();
		int lastPaging = totalCount == 0 ? 0 : (int)Math.floor(totalCount / 10) * 10;
		String paging = collectionNameList.size() == 1 ? wnsearch.getPageLinks(startCount, totalCount, viewResultCount, 5) : "";
		
		logger.info(String.format("[SEARCH::SERVICE] RESULT DEBUG MESSAGE => totalCount: %s, collectionCountMap:%s, paging: %s", 
				totalCount, collectionCountMap, paging));
		
		if ( wnsearch != null ) {
			wnsearch.closeServer();
		}
		
		resultMap.put("totalCount", totalCount);
		resultMap.put("lastPaging", lastPaging);
		resultMap.put("collectionCountMap", collectionCountMap);
		resultMap.put("collectionResultMap", collectionResultMap);
		resultMap.put("paging", paging);
		
		return resultMap;
		
	}
	
}
