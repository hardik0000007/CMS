package com.example.enje.service;

import java.text.DateFormat;
import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

@Service
public class UtilityService {

	public List<Integer> getLastFourYear() {
		int year = Calendar.getInstance().get(Calendar.YEAR);
		List<Integer> yearList = new ArrayList<Integer>();
		for (int i = 0; i < 4; i++) {
			yearList.add(year - i);
		}
		System.out.println(yearList);
		return yearList;
	}

	public Map getMonthOfYear(int selectedYear) {

		DateFormat dtMM = new SimpleDateFormat("MM");
		DateFormat dtYY = new SimpleDateFormat("yyyy");

		int mm = Integer.parseInt(dtMM.format(new java.util.Date()));
		int yy = Integer.parseInt(dtYY.format(new java.util.Date()));
		Map<Integer, String> monthMap = new HashMap<Integer, String>();
		int cnt = 0;

		System.out.println("selectedYear-->" + selectedYear);
		mm = (selectedYear == yy) ? mm : 12;
		while (cnt < mm) {
			String monthName = getMonthForInt(cnt);
			monthMap.put(cnt + 1, monthName);
			cnt++;
		}
		return monthMap;
	}

	public static String getMonthForInt(int num) {
		String month = "wrong";
		DateFormatSymbols dfs = new DateFormatSymbols();
		String[] months = dfs.getMonths();
		if (num >= 0 && num <= 11) {
			month = months[num];
		}
		return month;
	}
}
