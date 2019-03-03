package com.lvzhi.test.poi;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletOutputStream;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

public class ExportExcel {


	

	public static void createExcel(List<Map<String,Object>> list, List<String> titleName, List<String> keyList, ServletOutputStream out) throws Exception{
		createExcel("sheet", list, titleName, keyList, out);
	}
	
	
	public static void createExcel(String sheetName, List<Map<String,Object>> list, List<String> titleName, List<String> keyList,ServletOutputStream out) throws Exception{
		// 第一步，创建一个webbook，对应一个Excel文件
				HSSFWorkbook wb = new HSSFWorkbook();
				// 第二步，在webbook中添加一个sheet,对应Excel文件中的sheet
				HSSFSheet sheet = wb.createSheet(sheetName);
				// 第三步，在sheet中添加表头第0行,注意老版本poi对Excel的行数列数有限制short
				HSSFRow row = sheet.createRow(0);
				// 第四步，创建单元格，并设置值表头 设置表头居中
				HSSFCellStyle style = wb.createCellStyle();
				style.setAlignment(HSSFCellStyle.ALIGN_CENTER); // 创建一个居中格式

				
				//表头不为null，不为空
				if(titleName != null && titleName.size() > 0 && keyList != null && keyList.size() == titleName.size()){
					for(int titleIndex = 0; titleIndex < titleName.size(); titleIndex ++){
						HSSFCell cell = row.createCell(titleIndex);
						cell.setCellValue(titleName.get(titleIndex).toString());
						cell.setCellStyle(style);
					}
					
					// 第五步，写入实体数据 实际应用中这些数据从数据库得到，
					for (int valueIndex = 0; valueIndex < list.size(); valueIndex++) {
						row = sheet.createRow(valueIndex + 1);
						Map<String,Object> map = list.get(valueIndex);
						// 第四步，创建单元格，并设置值
						for(int cellIndex = 0; cellIndex < keyList.size(); cellIndex ++){
							row.createCell(cellIndex).setCellValue(map.get(keyList.get(valueIndex).toString()).toString());
						}
						
					}
					// 第六步，将文件存到指定位置
					try {
						wb.write(out);
						out.flush();
						out.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
					
				}else{
					System.out.println("error");
				}

				
				
	}
	
	@org.junit.Test
	public void test(){
		String sheetName = "mysheet";
		List<String> titleName = new ArrayList<>();
		titleName.add("第一");
		titleName.add("第二");
		titleName.add("第三");
		titleName.add("第四");
		
		List<String> keyList = new ArrayList<>();
		keyList.add("a");
		keyList.add("b");
		keyList.add("c");
		keyList.add("d");
		
	
		List<Map<String, Object>> list = new ArrayList<>();
		Map<String, Object> map = new HashMap<>();
		map.put("a", "1");
		map.put("b", "2");
		map.put("c", "3");
		map.put("d", "4");
		list.add(map);
		Map<String, Object> map2 = new HashMap<>();
		map2.put("a", "1");
		map2.put("b", "2");
		map2.put("c", "3");
		map2.put("d", "4");
		list.add(map2);
		
		try {
//			createExcel(sheetName, list, titleName, keyList);
		} catch (Exception e) {
			e.printStackTrace();
		}
 	}
	
	
}
