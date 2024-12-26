
package com.fujitsu.intarfrm.skeletons.inherits;

import java.lang.reflect.Field;

import com.fujitsu.intarfrm.helpers.commons.items.FormIdentity;
import com.fujitsu.intarfrm.helpers.commons.items.FormIdentityBasicInfo;
import com.fujitsu.intarfrm.helpers.commons.items.InfoException;
import com.fujitsu.intarfrm.helpers.commons.items.ProgramInfo;

/**
 * プログラムIDの一覧を定義するクラスです。
 * 
 * @author INTARFRM
 *
 */
public class ProgramIds {

	/**
	 * 「Customer Master Maintenance」プログラムのID
	 */
	public static ProgramRepository.Tyu010weIdentity tyu010we;
	
	/**
	 * プログラムIDクラス定義を記述するクラス
	 */
	public static class ProgramRepository {

	     /**
	     * <p>
	     * 初期化を実行する。
	     * </p>
	     * <p>
	     * Executes the initialization.
	     * </p>
	     * </EN>
	     */
	     public static void init() {
	        try {
	            Class<?> pgIds  = Class.forName("com.fujitsu.intarfrm.skeletons.inherits.ProgramIds");
	            for (Field field : pgIds.getFields()) {
	                if (field.getType().getSuperclass() == ProgramInfo.class) {
	                    Class<?> pgRep = Class
	                            .forName("com.fujitsu.intarfrm.skeletons.inherits.ProgramIds$ProgramRepository");
	                    field.set(
	                            null,
	                            field.getType() .getDeclaredConstructor(pgRep)
	                                    .newInstance(pgRep.getDeclaredConstructor()
	                                                    .newInstance()));
	                }
	            }
	        } catch (Exception e) {
	            throw new InfoException("Fail to initialize ProgramIds : "+ e.toString());
	        }
	    }

		/**
		 * 「Customer Master Maintenance」プログラムのID定義クラス
		 */
		public class Tyu010weIdentity extends ProgramInfo {

			/**
			 * シリアルバージョンID
			 */
			private static final long serialVersionUID = 1L;
			/**
			 * 「Customer Master Maintenance」フォームのID
			 */
			@FormIdentityBasicInfo(pgId = "tyu010we", formId = "tyu01001")
			public FormIdentity tyu01001;
			
			/**
			 * 「Customer Master List」フォームのID
			 */
			@FormIdentityBasicInfo(pgId = "tyu010we", formId = "tyu01002")
			public FormIdentity tyu01002;
			
			/**
			 * コンストラクタ
			 */
			public Tyu010weIdentity() {
				super("tyu010we", "Customer Master Maintenance", "tyu01002");
			}
		}
	}
}
