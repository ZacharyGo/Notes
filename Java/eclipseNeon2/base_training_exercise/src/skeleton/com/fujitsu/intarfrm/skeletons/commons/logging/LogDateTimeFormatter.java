package com.fujitsu.intarfrm.skeletons.commons.logging;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

import com.fujitsu.intarfrm.helpers.commons.logging.ILogDateTimeFormatter;

/**
 * ログ用日付フォーマットを設定するクラスです。
 */
public class LogDateTimeFormatter implements ILogDateTimeFormatter {

	@Override
	public String formatDateTime(Date logTimeUtc) {
        DateFormat dfLocal = new SimpleDateFormat("yyyy-MM-dd");
        dfLocal.setTimeZone(TimeZone.getDefault());
        return dfLocal.format(logTimeUtc);
	}

	@Override
	public String formatDateTimeUtc(Date logTimeUtc) {
        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        DateFormat dfUtc = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS Z");
        dfUtc.setTimeZone(calendar.getTimeZone());
        return dfUtc.format(logTimeUtc);
	}

}
