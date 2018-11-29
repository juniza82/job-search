package egovframework.searchNet;

import egovframework.search.common.WNCollection;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/app")
public class SearchNetController {

	private static final Logger logger = LoggerFactory.getLogger(SearchNetController.class);
	
	private final static String COLLECTION_ALL = "ALL";
	private final static String EMPTY_STRING = "";
	private final static String ZERO = "0";
	
	@Autowired SearchNetService searchNetService;
	
	/**
	 * 
	 * @param query 검색어
	 * @param startCount 시작페이지
	 * @return ModelAndView
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/searchNet.do", method={RequestMethod.GET, RequestMethod.POST})
	public ModelAndView search(
		@RequestParam(value = "query", defaultValue = EMPTY_STRING, required = false) String query,
		@RequestParam(value = "collection", defaultValue = COLLECTION_ALL, required = false) String collection,
		@RequestParam(value = "startCount", defaultValue = ZERO, required = false) int startCount
	) {

		int viewCount = COLLECTION_ALL.equals(collection) ? 3 : 10;
		String[] collections = COLLECTION_ALL.equals(collection) ? WNCollection.COLLECTIONS : new String[] { collection };
		logger.info(String.format("[SEARCH::CONTROLLER] PARAM DEBUG MESSAGE => %s,%s,%s", query, collection, startCount));
		
		Map<String, Object> result = searchNetService.search(query, collections, startCount, viewCount);
		
		int totalCount = (int) result.get("totalCount");
		String paging = (String) result.get("paging");
		int lastPaging = (int) result.get("lastPaging");
		Map<String, Integer> collectionCountMap = (Map<String, Integer>) result.get("collectionCountMap");
		Map<String, Object> collectionResultMap = (Map<String, Object>) result.get("collectionResultMap");

		List<String> popKeywords = searchNetService.getPopKeyword();

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("searchNet/search");
		modelAndView.addObject("query", query);
		modelAndView.addObject("collection", collection);
		modelAndView.addObject("totalCount", totalCount);
		modelAndView.addObject("lastPaging", lastPaging);
		modelAndView.addObject("collectionCountMap", collectionCountMap);
		modelAndView.addObject("collectionResultMap", collectionResultMap);
		modelAndView.addObject("paging", paging);
		modelAndView.addObject("startCount", startCount);
		modelAndView.addObject("popKeywords", popKeywords);
		
		return modelAndView;

	}

}
