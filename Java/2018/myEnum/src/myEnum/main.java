package myEnum;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

public class main {
    public enum RedirectAttrsKey {
        /** 受注契約番号 */
        JUCHU_KEIYAKU_NO,
        /** 受注契約変更番号 */
        JUCHU_KEIYAKU_HENKO_NO,
        /** 楽観ロックＩＤ */
        X_OPTIMISTIC_LOCK_ID,
        /** 申請承認番号 */
        SHINSEI_SHONIN_NO,
        /** 申請承認紐付テーブルキー */
        SHNSI_SHNN_HMZK_TABLE_KEY,
        /** 申請承認ステータス区分 */
        SHINSEI_SHONIN_STATUS_KBN
    }


    private static final String JUCHU_KEIYAKU_NO = "juchuKeiyakuNo";

    /** オリジナルマップキー 受注契約変更番号 */
    private static final String JUCHU_KEIYAKU_HENKO_NO = "juchuKeiyakuHenkoNo";

    /** オリジナルマップキー 申請承認番号 */
    private static final String SHINSEI_SHONIN_NO = "shinseiShoninNo";

    /** オリジナルマップキー 申請承認紐付テーブルキー */
    private static final String SHNSI_SHNN_HMZK_TABLE_KEY = "shnsiShnnHmzkTableKey";

    /** オリジナルマップキー 申請承認ステータス区分 */
    private static final String SHINSEI_SHONIN_STATUS_KBN = "shinseiShoninStatusKbn";
	public static void main(String[] args) {
		String hello = ")/n";
		System.out.println(hello == ")/n");
		//HasMapSet();


	}


	public static void EnumTest() {
		Map<String, String> model = new LinkedHashMap<>();

		model.put(RedirectAttrsKey.JUCHU_KEIYAKU_NO.name(), "Tom");
		System.out.println(model.get(RedirectAttrsKey.JUCHU_KEIYAKU_NO.name()));

		System.out.println(model.get("JUCHU_KEIYAKU_NO"));


		System.out.println(RedirectAttrsKey.SHNSI_SHNN_HMZK_TABLE_KEY.name());
		System.out.println(RedirectAttrsKey.SHNSI_SHNN_HMZK_TABLE_KEY.toString());
	}

	public static void HasMapSet() {
		// Creating an empty HashMap
        HashMap<Integer, String> hash_map = new HashMap<Integer, String>();

        // Mapping string values to int keys
        hash_map.put(10, "Geeks");
        hash_map.put(15, "4");
        hash_map.put(20, "Geeks");
        hash_map.put(25, "Welcomes");
        hash_map.put(30, "You");

        // Displaying the HashMap
        System.out.println("Initial Mappings are: " + hash_map);

        // Using keySet() to get the set view of keys
        System.out.println("The key set is:       " + hash_map.keySet());
        System.out.println(hash_map.keySet().getClass());
        System.out.println(hash_map.keySet().getClass().getSimpleName());
        System.out.println("The entry set is:     " + hash_map.entrySet());
        System.out.println(hash_map.entrySet().getClass());
        System.out.println(hash_map.entrySet().getClass().getSimpleName());
	}

}
