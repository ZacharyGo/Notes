import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class Starter {

	public static void main(String[] args) {
		//System.out.println(CN_CHK_KIYK_RYKN_KIZK_SIKY_KBN.conditionValueOf(CN_CHK_KIYK_RYKN_KIZK_SIKY_KBN.KEIZOKU_RYOKIN_GETSUGAKU.name()).orElse(CN_CHK_KIYK_RYKN_KIZK_SIKY_KBN.TAISYOGAI));
		CN_CHK_KIYK_RYKN_KIZK_SIKY_KBN cN_CHK_KIYK_RYKN_KIZK_SIKY_KBN = CN_CHK_KIYK_RYKN_KIZK_SIKY_KBN.ICHIJI_RYOKIN;
		System.out.println(CN_CHK_KIYK_RYKN_KIZK_SIKY_KBN.showall());
		System.out.println(cN_CHK_KIYK_RYKN_KIZK_SIKY_KBN.KEIZOKU_RYOKIN_GETSUGAKU);
		
	}

		public void stream() {
			List<ESNZZ19KeiyakuSikyDTO> source = new ArrayList<ESNZZ19KeiyakuSikyDTO>();
			ESNZZ19KeiyakuSikyDTO temp = new ESNZZ19KeiyakuSikyDTO();
			temp.setSeikyusakibetsuTemplateSn("abc");	
			temp.setChkKiykRyknKizkSikyKbn("It's me");
			source.add(temp);
			temp = new ESNZZ19KeiyakuSikyDTO();
			temp.setSeikyusakibetsuTemplateSn("def");		
			source.add(temp);
			List<ESNZZ19KeiyakuSikyDTO> seikyuMeisaiKeiyakuList = source.stream().filter(s -> s.getSeikyusakibetsuTemplateSn() =="def").collect(Collectors.toList());
			ESNZZ19KeiyakuSikyDTO seikyuMeisaiKeiyaku = seikyuMeisaiKeiyakuList.get(0);
			
			String seikyuKbn = seikyuMeisaiKeiyaku.getChkKiykRyknKizkSikyKbn();
			System.out.println(seikyuKbn);
		}
}
