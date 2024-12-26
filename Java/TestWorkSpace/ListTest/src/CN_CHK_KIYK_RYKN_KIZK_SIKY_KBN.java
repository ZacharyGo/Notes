import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.stream.Stream;

import groovy.transform.ToString;
import lombok.AllArgsConstructor;

@AllArgsConstructor

@ToString
public enum CN_CHK_KIYK_RYKN_KIZK_SIKY_KBN implements NjdCondition {
	/** �l�F0 �W��l�F�ΏۊO */
    TAISYOGAI("0", "�ΏۊO"),
    /** �l�F1 �W��l�F�ꎞ���� */
    ICHIJI_RYOKIN("1", "�ꎞ����"),
    /** �l�F2 �W��l�F�p�������i���z�j */
    KEIZOKU_RYOKIN_GETSUGAKU("2", "�p�������i���z�j"),
    /** �l�F3 �W��l�F�p�������i�N�z�j */
    KEIZOKU_RYOKIN_NENGAKU("3", "�p�������i�N�z�j");
    /** �R���f�B�V�����l */
    private String value;
    /** �W��l */
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