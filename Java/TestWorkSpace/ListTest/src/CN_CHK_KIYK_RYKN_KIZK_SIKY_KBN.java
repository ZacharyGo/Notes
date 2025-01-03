import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.stream.Stream;

import groovy.transform.ToString;
import lombok.AllArgsConstructor;

@AllArgsConstructor

@ToString
public enum CN_CHK_KIYK_RYKN_KIZK_SIKY_KBN implements NjdCondition {
	/** 値：0 標題値：対象外 */
    TAISYOGAI("0", "対象外"),
    /** 値：1 標題値：一時料金 */
    ICHIJI_RYOKIN("1", "一時料金"),
    /** 値：2 標題値：継続料金（月額） */
    KEIZOKU_RYOKIN_GETSUGAKU("2", "継続料金（月額）"),
    /** 値：3 標題値：継続料金（年額） */
    KEIZOKU_RYOKIN_NENGAKU("3", "継続料金（年額）");
    /** コンディション値 */
    private String value;
    /** 標題値 */
    private String label;
    
	@Override
	public String getValue() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String getLabel() {
		// TODO Auto-generated method stub
		return null;
	}
    public static Optional<CN_CHK_KIYK_RYKN_KIZK_SIKY_KBN> conditionValueOf(String value) {
        return Arrays.stream(values()).filter(e -> e.getValue().equals(value)).findFirst();
    }
    public static Stream<CN_CHK_KIYK_RYKN_KIZK_SIKY_KBN> showall() {
    	return Arrays.stream(values());
    			//.filter(e -> e.getValue().equals(CN_CHK_KIYK_RYKN_KIZK_SIKY_KBN.KEIZOKU_RYOKIN_GETSUGAKU.value)).findFirst().toString();
    }
	private CN_CHK_KIYK_RYKN_KIZK_SIKY_KBN() {
		System.out.println("Constructor called for : " + this.toString());
	}
}
