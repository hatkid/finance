package com.lvzhi.test.poi;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;

public class ReadExcel {

	
	
	
	
	
	@org.junit.Test
	public void test2() throws Exception{
		String path = "F:\\2.xlsx";
		InputStream is = new FileInputStream(new File(path));
		List<String> listString = readExcel(is,1);
		if(listString != null){
			for(String str : listString){
				System.out.println(str);
			}
		}else{
			System.out.println("listString is null .");
		}
	}
	
	
	@org.junit.Test
	public void test4() throws Exception{
		String path = "F:\\2.xlsx";
		InputStream is = new FileInputStream(new File(path));
		List<String> listString = readExcel(is,true);
		if(listString != null){
			for(String str : listString){
				System.out.println(str);
			}
		}else{
			System.out.println("listString is null .");
		}
	}
	
	
	
	@org.junit.Test
	public void test3() throws Exception{
		String path = "F:\\2.xlsx";
		InputStream is = new FileInputStream(new File(path));
		List<String> listString = readExcel(is, true);
		if(listString != null){
			for(String str : listString){
				System.out.println(str);
			}
		}else{
			System.out.println("listString is null .");
		}
	}

	
	/**
	 * 默认取第一个sheet，判断null
	 * @param is
	 * @return
	 */
	public static List<String> readExcel(InputStream is){
		return readExcel(is, false);
	}
	
	
	/**
	 * 
	 * @param is
	 * @param flag
	 * @return
	 */
	public static List<String> readExcel(InputStream is, boolean flag){
		
		if(!flag){
			return readExcel(is, 0);
		}
		Workbook book = null;
		try {
			book = WorkbookFactory.create(is);
		} catch (EncryptedDocumentException e) {
			e.printStackTrace();
		} catch (InvalidFormatException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		if(book == null){
			return null;
		}
		
		int sheetCount = book.getNumberOfSheets();
		if(sheetCount == 0){
			return null;
		}
		
		
		List<String> result = new ArrayList<>();
		
		for(int sheetIndex = 0; sheetIndex < sheetCount; sheetIndex ++){
			List<String> sheetResult = new ArrayList<>();
			Sheet sheet = book.getSheetAt(sheetIndex);
			int rows = sheet.getPhysicalNumberOfRows();
			for (int rowIndex = 0; rowIndex < rows; rowIndex++) {
				Row row = sheet.getRow(rowIndex);
				if (row != null) {
					int cells = row.getPhysicalNumberOfCells();
					String value = "";
					for (int cellIndex = 0; cellIndex < cells; cellIndex++) {
						Cell cell = row.getCell(cellIndex);
						cell.setCellType(Cell.CELL_TYPE_STRING);
						value += cell.getStringCellValue() + ",";
						
					}
					sheetResult.add(value);
					
				}
			}
			
			if(sheetResult == null || sheetResult.isEmpty()){
				System.out.println("异常!!!");
				return null;
			}
			
			result.addAll(sheetResult);
			
		}
		
		return result;
		
		
	}
	
	
	/**
	 * 结果需要判断是否为null
	 * @param is
	 * @param sheetCount
	 * @return
	 */
	public static List<String> readExcel(InputStream is, int sheetIndex){
		
		try {
			Workbook book = WorkbookFactory.create(is);
			
			if(book == null){
				return null;
			}
			List<String> result = new ArrayList<>();
			Sheet sheet = book.getSheetAt(sheetIndex);
			int rows = sheet.getPhysicalNumberOfRows();
			for (int rowIndex = 0; rowIndex < rows; rowIndex++) {
				Row row = sheet.getRow(rowIndex);
				if (row != null) {
					int cells = row.getPhysicalNumberOfCells();
					String value = "";
					for (int cellIndex = 0; cellIndex < cells; cellIndex++) {
						Cell cell = row.getCell(cellIndex);
						cell.setCellType(Cell.CELL_TYPE_STRING);
						value += cell.getStringCellValue() + ",";
						
					}
					result.add(value);
					
				}
			}
			
			if(result.size() == 0 ){
				return null;
			}
			
			return result;
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	
	

}
