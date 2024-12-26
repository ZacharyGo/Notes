package com.fujitsu.intarfrm.skeletons.commons.logging;

import java.util.Arrays;

import com.fujitsu.intarfrm.helpers.commons.logging.IfmLogLevelType;
import com.fujitsu.intarfrm.helpers.commons.logging.IfmLogSettings;
import com.fujitsu.intarfrm.helpers.commons.logging.IfmTraceLogWriter;

/**
 * 
 * 
 * @author INTARFRM
 */
public class LoggingConstants {
	public static final String LOGNAME_APPLICATION = "ApplicationLog";
	public static final String LOGNAME_FRAMEWORK = "FrameworkLog";
	public static final String LOGNAME_SQL = "SqlLog";

	public static final String DEFAULT_LOG_FORMAT = "%DATETIME% %LEVEL% %CLASSNAME%.%METHOD% [LINE: %LINE%] : %MESSAGE%";

	public static IfmLogSettings createDefaultSetting(String name) {
		return new IfmLogSettings(
				name,
				DEFAULT_LOG_FORMAT,
				Arrays.asList(new IfmLogLevelType[] {IfmLogLevelType.INFO, IfmLogLevelType.WARN, IfmLogLevelType.ERROR, IfmLogLevelType.FATAL}),
				new IfmTraceLogWriter()
				);
	}
}