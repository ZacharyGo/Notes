
package com.fujitsu.intarfrm.programs.tyu010we;

/**
 * <p>繧｢繝励Μ繧ｱ繝ｼ繧ｷ繝ｧ繝ｳ蜀�驛ｨ縺ｧ菴ｿ逕ｨ縺吶ｋ繧ｭ繝ｼ諠�蝣ｱ繧定ｨｭ螳壹☆繧九◆繧√�ｮ繧ｯ繝ｩ繧ｹ縺ｧ縺吶��</p>
 * 
 * @author INTARFRM
 */
public final class Tyu010weConstants {

    /**
	 * 繧ｭ繝ｼ縺ｮ謗･鬆ｭ霎�
	 */
	private static final String PREFIX = "TYU010WE";
	public static final String MODE = "MODE";
	public static final String ADD = "ADD";
	public static final String EDIT = "EDIT";
	public static final String DATA_ROW = "data_row";
	
	/**
	 * 讌ｭ蜍吶〒繝励Ο繧ｰ繝ｩ繝�蜈ｱ騾壹�ｮ繝�繝ｼ繧ｿ繧剃ｻｮ諠ｳ繧ｻ繝�繧ｷ繝ｧ繝ｳ縺ｫ菫晄戟縺吶ｋ縺溘ａ縺ｮ繧ｭ繝ｼ繧剃ｿ晄戟縺吶ｋ繧ｯ繝ｩ繧ｹ縺ｧ縺吶��
	 *
	 * 繧ｵ繝ｳ繝励Ν�ｼ壹く繝ｼ繧貞ｮ夂ｾｩ縺吶ｋ縺ｨ縺阪�ｯ荳玖ｨ倥�ｮ繧医≧縺ｫ險倩ｿｰ縺励∪縺吶��<br>
	 * public static final String [繧ｭ繝ｼ縺ｮ繝輔ぅ繝ｼ繝ｫ繝牙錐] = Key + [繧ｭ繝ｼ蜷江
	 */
	public static class VirtualSessionKey {
		// 繧ｵ繝ｳ繝励Ν
		public static final String VIRTUAL_MODE = PREFIX + MODE;
	}
	
	/**
	 * 蜷Гontext縺ｮ蛟､繧貞叙蠕�/險ｭ螳壹☆繧矩圀縺ｮ繧ｭ繝ｼ繧剃ｿ晄戟縺吶ｋ繧ｯ繝ｩ繧ｹ縺ｧ縺吶��
	 * 繝励Ο繧ｰ繝ｩ繝�蜀�縺ｧ蜷�繧ｳ繝ｳ繝�繧ｭ繧ｹ繝医↓蛟､繧貞叙蠕�/險ｭ螳壹☆繧区凾縺ｯ縺薙�ｮ繧ｯ繝ｩ繧ｹ縺ｫ繧ｭ繝ｼ繧貞ｮ夂ｾｩ縺励※縺上□縺輔＞縲�
	 * 
	 * 繧ｵ繝ｳ繝励Ν�ｼ壹く繝ｼ繧貞ｮ夂ｾｩ縺吶ｋ縺ｨ縺阪�ｯ荳玖ｨ倥�ｮ繧医≧縺ｫ險倩ｿｰ縺励∪縺吶��<br>
	 * public static final String [繧ｭ繝ｼ縺ｮ繝輔ぅ繝ｼ繝ｫ繝牙錐] = Key + [繧ｭ繝ｼ蜷江
	 */
	public static class ContextMapKey {
		// 繧ｵ繝ｳ繝励Ν
		public static final String TEST = PREFIX + "TEST";
		public static final String ADD = PREFIX + "ADD";
		public static final String EDIT = PREFIX + "EDIT";
		public static final String CUSTOMERID = PREFIX + "CUSID";
		public static final String MODE = PREFIX + "MODE";
	}
}