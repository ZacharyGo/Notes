
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
	 * 「演習１」プログラムのID
	 */
	public static ProgramRepository.Practice1Identity practice1;
	
	/**
	 * 「演習２」プログラムのID
	 */
	public static ProgramRepository.Practice2Identity practice2;
	
	/**
	 * 「演習３」プログラムのID
	 */
	public static ProgramRepository.Practice3Identity practice3;
	
	/**
	 * 「演習４」プログラムのID
	 */
	public static ProgramRepository.Practice4Identity practice4;
	
	/**
	 * 「演習５」プログラムのID
	 */
	public static ProgramRepository.Practice5Identity practice5;
	
	/**
	 * 「演習６」プログラムのID
	 */
	public static ProgramRepository.Practice6Identity practice6;
	
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
		 * 「演習１」プログラムのID定義クラス
		 */
		public class Practice1Identity extends ProgramInfo {

			/**
			 * シリアルバージョンID
			 */
			private static final long serialVersionUID = 1L;
			/**
			 * 「演習１－１」フォームのID
			 */
			@FormIdentityBasicInfo(pgId = "practice1", formId = "practice1a")
			public FormIdentity practice1a;
			
			/**
			 * 「演習１－２」フォームのID
			 */
			@FormIdentityBasicInfo(pgId = "practice1", formId = "practice1b")
			public FormIdentity practice1b;
			
			/**
			 * コンストラクタ
			 */
			public Practice1Identity() {
				super("practice1", "演習１", "practice1a");
			}
		}
		/**
		 * 「演習２」プログラムのID定義クラス
		 */
		public class Practice2Identity extends ProgramInfo {

			/**
			 * シリアルバージョンID
			 */
			private static final long serialVersionUID = 1L;
			/**
			 * 「演習２」フォームのID
			 */
			@FormIdentityBasicInfo(pgId = "practice2", formId = "practice2")
			public FormIdentity practice2;
			
			/**
			 * コンストラクタ
			 */
			public Practice2Identity() {
				super("practice2", "演習２", "practice2");
			}
		}
		/**
		 * 「演習３」プログラムのID定義クラス
		 */
		public class Practice3Identity extends ProgramInfo {

			/**
			 * シリアルバージョンID
			 */
			private static final long serialVersionUID = 1L;
			/**
			 * 「演習３－１」フォームのID
			 */
			@FormIdentityBasicInfo(pgId = "practice3", formId = "practice3a")
			public FormIdentity practice3a;
			
			/**
			 * 「演習３－２」フォームのID
			 */
			@FormIdentityBasicInfo(pgId = "practice3", formId = "practice3b")
			public FormIdentity practice3b;
			
			/**
			 * コンストラクタ
			 */
			public Practice3Identity() {
				super("practice3", "演習３", "practice3a");
			}
		}
		/**
		 * 「演習４」プログラムのID定義クラス
		 */
		public class Practice4Identity extends ProgramInfo {

			/**
			 * シリアルバージョンID
			 */
			private static final long serialVersionUID = 1L;
			/**
			 * 「演習４」フォームのID
			 */
			@FormIdentityBasicInfo(pgId = "practice4", formId = "practice4")
			public FormIdentity practice4;
			
			/**
			 * コンストラクタ
			 */
			public Practice4Identity() {
				super("practice4", "演習４", "practice4");
			}
		}
		/**
		 * 「演習５」プログラムのID定義クラス
		 */
		public class Practice5Identity extends ProgramInfo {

			/**
			 * シリアルバージョンID
			 */
			private static final long serialVersionUID = 1L;
			/**
			 * 「演習５」フォームのID
			 */
			@FormIdentityBasicInfo(pgId = "practice5", formId = "practice5")
			public FormIdentity practice5;
			
			/**
			 * コンストラクタ
			 */
			public Practice5Identity() {
				super("practice5", "演習５", "practice5");
			}
		}
		/**
		 * 「演習６」プログラムのID定義クラス
		 */
		public class Practice6Identity extends ProgramInfo {

			/**
			 * シリアルバージョンID
			 */
			private static final long serialVersionUID = 1L;
			/**
			 * 「演習６ー１」フォームのID
			 */
			@FormIdentityBasicInfo(pgId = "practice6", formId = "practice6a")
			public FormIdentity practice6a;
			
			/**
			 * 「演習６－２」フォームのID
			 */
			@FormIdentityBasicInfo(pgId = "practice6", formId = "practice6b")
			public FormIdentity practice6b;
			
			/**
			 * コンストラクタ
			 */
			public Practice6Identity() {
				super("practice6", "演習６", "practice6a");
			}
		}
	}
}
