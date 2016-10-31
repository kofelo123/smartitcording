package com.smartitcording.util;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import net.htmlparser.jericho.Element;
import net.htmlparser.jericho.HTMLElementName;
import net.htmlparser.jericho.Source;

public class NaverTest {
	


              private final String NAVER_URL = "http://www.naver.com/";
              private Element realrank;

              public  Map<Integer,String> naver() {

                            Source source = null;

                            try {
                                          InputStream is = new URL(NAVER_URL).openStream();
                                          source = new Source
                                                                      (new InputStreamReader(is, "utf-8"));
                                          source.fullSequentialParse();
                            } catch (IOException e1) {

                            }
                            realrank = source.getElementById("realrank");
                            // realrank는 실시간 검색어 id

                            List<Element> liTagList = realrank.getAllElements
                                                                                                  (HTMLElementName.LI);
                            // li 태그의 리스트(실시간 검색어 순위 리스트)

                            Map<Integer,String> map = new HashMap<Integer,String>();
                            
                            for (int i = 0; i < liTagList.size() - 1; i++) {
                            // 1위가 한번 더 출력되는 것을 막기 위해 liTagList.size() - 1 로 설정

                                          Element aTag = liTagList.get(i)
                                                                      .getFirstElement(HTMLElementName.A);

                                          String article = aTag.getAttributeValue("title");
                                          // 실시간 검색어 텍스트

                                          String articleHref = aTag.getAttributeValue("href");
                                          // 실시간 검색어 링크
                                          
                                    System.out.println(article + " - " + articleHref);    /*  */
                                          
                                          map.put(i+1, article);
                                          map.put(i+11, articleHref);
                                          
                                          
                            }
                            
                            return map;
              }
              
              public static void main(String[] args) {
            	  NaverTest navertest = new NaverTest();
            	  Map<Integer,String> map = navertest.naver();
            	  
            	  Iterator<Integer> keys2 = map.keySet().iterator();

            	  
            	  while(keys2.hasNext()){
            		  Integer key = keys2.next();
            		  System.out.print("key: "+key);
            		  System.out.print(", value: "+map.get(key)+'\n');
            		  }

			}
	}

