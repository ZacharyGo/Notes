package myEnum;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

public class main {
    public enum RedirectAttrsKey {
        /** �󒍌_��ԍ� */
        JUCHU_KEIYAKU_NO,
        /** �󒍌_��ύX�ԍ� */
        JUCHU_KEIYAKU_HENKO_NO,
        /** �y�σ��b�N�h�c */
        X_OPTIMISTIC_LOCK_ID,
        /** �\�����F�ԍ� */
        SHINSEI_SHONIN_NO,
        /** �\�����F�R�t�e�[�u���L�[ */
        SHNSI_SHNN_HMZK_TABLE_KEY,
        /** �\�����F�X�e�[�^�X�敪 */
        SHINSEI_SHONIN_STATUS_KBN
    }


    private static final String JUCHU_KEIYAKU_NO = "juchuKeiyakuNo";

    /** �I���W�i���}�b�v�L�[ �󒍌_��ύX�ԍ� */
    private static final String JUCHU_KEIYAKU_HENKO_NO = "juchuKeiyakuHenkoNo";

    /** �I���W�i���}�b�v�L�[ �\�����F�ԍ� */
    private static final String SHINSEI_SHONIN_NO = "shinseiShoninNo";

    /** �I���W�i���}�b�v�L�[ �\�����F�R�t�e�[�u���L�[ */
    private static final String SHNSI_SHNN_HMZK_TABLE_KEY = "shnsiShnnHmzkTableKey";

    /** �I���W�i���}�b�v�L�[ �\�����F�X�e�[�^�X�敪 */
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
