import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class ESNZZ19KeiyakuSikyDTO {
	/** serialVersionUID */
    private static final long serialVersionUID = 1L;

    /** ��ЃR�[�h */
    private String kaishaCd;

    /** �󒍌_��ԍ� */
    private String juchuKeiyakuNo;

    /** �󒍌_��ύX�ԍ� */
    private String juchuKeiyakuHenkoNo;

    /** �֘A�󒍌_��ԍ� */
    private String kanrenJuchuKeiyakuNo;

    /** �󒍏����敪 */
    private String juchuShoriKbn;

    /** �Ɩ��J�n�N���� */
    private LocalDate gyomuKaishiYmd;

    /** �ώZ�Ǘ����ڑ區�ڃR�[�h */
    private String sksnKnrKomokuDikmkCd;

    /** �ώZ�Ǘ����ڒ����ڃR�[�h */
    private String sksnKnrKomokuChkmkCd;

    /** ��O�Ҏx���A�� */
    private String daisanshaShiharaiSn;

    /** �K�p�J�n�N���� */
    private LocalDate tekiyoKaishiYmd;

    /** �K�p�I���N���� */
    private LocalDate tekiyoShuryoYmd;

    /** �_�񗿋��A�� */
    private String keiyakuRyokinSn;

    /** �x�����@�A�� */
    private String shiharaiHohoSn;

    /** �_�񒷊��Վ��敪 */
    private String keiyakuChokiRinjiKbn;

    /** �����敪 */
    private String ryokinKbn;

    /** �W�v�旿���敪 */
    private String shukeisakiRyokinKbn;

    /** �����_�񗿋��p�������敪 */
    private String chkKiykRyknKizkSikyKbn;

    /** �_�񗿋�������敪 */
    private String keiyakuRyokinSeikyusakiKbn;

    /** �_�񗿋����z */
    private long keiyakuRyokinAmt;

    /** ������ʌ_�񗿋����z */
    private Long xSikyskBtsKiykRyknAmt;

    /** �_��敪 */
    private String keiyakuKbn;

    /** ���������O�������z */
    private Long hiwariChoseimaeSeikyuAmt;

    /** �[�����������������O�������z */
    private Long hsChsizkHwrChsimeSikyAmt;

    /** ���������㐿�����z */
    private Long hiwariChoseigoSeikyuAmt;

    /** �������׈󎚃t���O */
    private String hiwariMeisaiInjiFlg;

    /** �N�z�[�������� */
    private String nengakuHasuChoseiM;

    /** �N�z�[���������z */
    private Long xNengakuHasuChoseiAmt;

    /** ���z���Z���z */
    private Long getsugakuKansanAmt;

    /** ����ŋ敪 */
    private String shohizeiKbn;

    /** ESNZZ19SikyShhZirtsDTO */
  //  private List<ESNZZ19SikyShhZirtsDTO> esnzz19sikyshhzirtsdto = new ArrayList<>();

    /** ����ŋ��z */
    private Long shohizeiAmt;

    /** �����`�ԋ敪 */
    private String seikyuKeitaiKbn;

    /** �����`�ԋN�_�� */
    private String seikyuKeitaiKitenM;

    /** �������@�敪 */
    private String seikyuHohoKbn;

    /** �x�������敪 */
    private String shiharaiJokenKbn;

    /** �ڋq�x�����@�敪 */
    private String kokyakuShiharaiHohoKbn;

    /** �x���� */
    private String shiharaiD;

    /** �������Ԓ��� */
    private String seikyuKikanShimeD;

    /** �����񐔐��� */
    private int bunkatsuKaisuSuryo;

    /** �����萔�����z */
    private long bunkatsuTesuryoAmt;

    /** ����������z */
    private long bunkatsuShokaiAmt;

    /** �����Q��ڈȍ~���z */
    private long bunkatsu2KaimeIkoAmt;

    /** ������s�Ǘ��ԍ� */
    private String seikyuDaikoKanriNo;

    /** ������s�˗����ԍ� */
    private String seikyuDaikoIraishoNo;

    /** ������s�˗��������R�[�h */
    private String sikyDikIrimtTrhkskCd;

    /** ������s�˗�������R�[�h */
    private String sikyDikIriskTrhkskCd;

    /** ������s�˗�������O���[�v��Ѓt���O */
    private String skydkIrskTrhskGrpKisFlg;

    /** ������s�萔���v�Z���@�敪 */
    private String sikyDikTsryKisnHhKbn;

    /** ������s�萔���� */
    private BigDecimal seikyuDaikoTesuryoRitsu;

    /** ������s�萔�����z */
    private Long seikyuDaikoTesuryoAmt;

    /** ������s�萔���x�����@�敪 */
    private String sikyDikTsryShhriHhKbn;

    /** ������s�x�������敪 */
    private String sikyDikShhriJknKbn;

    /** ����������R�[�h */
    private String seikyusakiTorihikisakiCd;

    /** ������ʃe���v���[�g�A�� */
    private String seikyusakibetsuTemplateSn;

    /** �������\���Ώۃt���O */
    private String xSeikyushoHyojiTaishoFlg;

    /** �����x���R�[�h */
    private String seikyuShiharaiCd;

    /** �����x���R�[�h���� */
    private String seikyuShiharaiCdNm;

    /** ���ƃZ�O�����g�R�[�h */
    private String jigyoSegmentCd;

    /** �������萔���p�����x���R�[�h */
    private String xBnktbriTsryySikyShhriCd;

    /** �������萔���p���������ה��l */
    private String xBnktbriTsryySikysyMisiBiko;

    /** �������萔���p����ŋ敪 */
    private String xBnktbriTsryySyhziKbn;

	public String getKaishaCd() {
		return kaishaCd;
	}

	public void setKaishaCd(String kaishaCd) {
		this.kaishaCd = kaishaCd;
	}

	public String getJuchuKeiyakuNo() {
		return juchuKeiyakuNo;
	}

	public void setJuchuKeiyakuNo(String juchuKeiyakuNo) {
		this.juchuKeiyakuNo = juchuKeiyakuNo;
	}

	public String getJuchuKeiyakuHenkoNo() {
		return juchuKeiyakuHenkoNo;
	}

	public void setJuchuKeiyakuHenkoNo(String juchuKeiyakuHenkoNo) {
		this.juchuKeiyakuHenkoNo = juchuKeiyakuHenkoNo;
	}

	public String getKanrenJuchuKeiyakuNo() {
		return kanrenJuchuKeiyakuNo;
	}

	public void setKanrenJuchuKeiyakuNo(String kanrenJuchuKeiyakuNo) {
		this.kanrenJuchuKeiyakuNo = kanrenJuchuKeiyakuNo;
	}

	public String getJuchuShoriKbn() {
		return juchuShoriKbn;
	}

	public void setJuchuShoriKbn(String juchuShoriKbn) {
		this.juchuShoriKbn = juchuShoriKbn;
	}

	public LocalDate getGyomuKaishiYmd() {
		return gyomuKaishiYmd;
	}

	public void setGyomuKaishiYmd(LocalDate gyomuKaishiYmd) {
		this.gyomuKaishiYmd = gyomuKaishiYmd;
	}

	public String getSksnKnrKomokuDikmkCd() {
		return sksnKnrKomokuDikmkCd;
	}

	public void setSksnKnrKomokuDikmkCd(String sksnKnrKomokuDikmkCd) {
		this.sksnKnrKomokuDikmkCd = sksnKnrKomokuDikmkCd;
	}

	public String getSksnKnrKomokuChkmkCd() {
		return sksnKnrKomokuChkmkCd;
	}

	public void setSksnKnrKomokuChkmkCd(String sksnKnrKomokuChkmkCd) {
		this.sksnKnrKomokuChkmkCd = sksnKnrKomokuChkmkCd;
	}

	public String getDaisanshaShiharaiSn() {
		return daisanshaShiharaiSn;
	}

	public void setDaisanshaShiharaiSn(String daisanshaShiharaiSn) {
		this.daisanshaShiharaiSn = daisanshaShiharaiSn;
	}

	public LocalDate getTekiyoKaishiYmd() {
		return tekiyoKaishiYmd;
	}

	public void setTekiyoKaishiYmd(LocalDate tekiyoKaishiYmd) {
		this.tekiyoKaishiYmd = tekiyoKaishiYmd;
	}

	public LocalDate getTekiyoShuryoYmd() {
		return tekiyoShuryoYmd;
	}

	public void setTekiyoShuryoYmd(LocalDate tekiyoShuryoYmd) {
		this.tekiyoShuryoYmd = tekiyoShuryoYmd;
	}

	public String getKeiyakuRyokinSn() {
		return keiyakuRyokinSn;
	}

	public void setKeiyakuRyokinSn(String keiyakuRyokinSn) {
		this.keiyakuRyokinSn = keiyakuRyokinSn;
	}

	public String getShiharaiHohoSn() {
		return shiharaiHohoSn;
	}

	public void setShiharaiHohoSn(String shiharaiHohoSn) {
		this.shiharaiHohoSn = shiharaiHohoSn;
	}

	public String getKeiyakuChokiRinjiKbn() {
		return keiyakuChokiRinjiKbn;
	}

	public void setKeiyakuChokiRinjiKbn(String keiyakuChokiRinjiKbn) {
		this.keiyakuChokiRinjiKbn = keiyakuChokiRinjiKbn;
	}

	public String getRyokinKbn() {
		return ryokinKbn;
	}

	public void setRyokinKbn(String ryokinKbn) {
		this.ryokinKbn = ryokinKbn;
	}

	public String getShukeisakiRyokinKbn() {
		return shukeisakiRyokinKbn;
	}

	public void setShukeisakiRyokinKbn(String shukeisakiRyokinKbn) {
		this.shukeisakiRyokinKbn = shukeisakiRyokinKbn;
	}

	public String getChkKiykRyknKizkSikyKbn() {
		return chkKiykRyknKizkSikyKbn;
	}

	public void setChkKiykRyknKizkSikyKbn(String chkKiykRyknKizkSikyKbn) {
		this.chkKiykRyknKizkSikyKbn = chkKiykRyknKizkSikyKbn;
	}

	public String getKeiyakuRyokinSeikyusakiKbn() {
		return keiyakuRyokinSeikyusakiKbn;
	}

	public void setKeiyakuRyokinSeikyusakiKbn(String keiyakuRyokinSeikyusakiKbn) {
		this.keiyakuRyokinSeikyusakiKbn = keiyakuRyokinSeikyusakiKbn;
	}

	public long getKeiyakuRyokinAmt() {
		return keiyakuRyokinAmt;
	}

	public void setKeiyakuRyokinAmt(long keiyakuRyokinAmt) {
		this.keiyakuRyokinAmt = keiyakuRyokinAmt;
	}

	public Long getxSikyskBtsKiykRyknAmt() {
		return xSikyskBtsKiykRyknAmt;
	}

	public void setxSikyskBtsKiykRyknAmt(Long xSikyskBtsKiykRyknAmt) {
		this.xSikyskBtsKiykRyknAmt = xSikyskBtsKiykRyknAmt;
	}

	public String getKeiyakuKbn() {
		return keiyakuKbn;
	}

	public void setKeiyakuKbn(String keiyakuKbn) {
		this.keiyakuKbn = keiyakuKbn;
	}

	public Long getHiwariChoseimaeSeikyuAmt() {
		return hiwariChoseimaeSeikyuAmt;
	}

	public void setHiwariChoseimaeSeikyuAmt(Long hiwariChoseimaeSeikyuAmt) {
		this.hiwariChoseimaeSeikyuAmt = hiwariChoseimaeSeikyuAmt;
	}

	public Long getHsChsizkHwrChsimeSikyAmt() {
		return hsChsizkHwrChsimeSikyAmt;
	}

	public void setHsChsizkHwrChsimeSikyAmt(Long hsChsizkHwrChsimeSikyAmt) {
		this.hsChsizkHwrChsimeSikyAmt = hsChsizkHwrChsimeSikyAmt;
	}

	public Long getHiwariChoseigoSeikyuAmt() {
		return hiwariChoseigoSeikyuAmt;
	}

	public void setHiwariChoseigoSeikyuAmt(Long hiwariChoseigoSeikyuAmt) {
		this.hiwariChoseigoSeikyuAmt = hiwariChoseigoSeikyuAmt;
	}

	public String getHiwariMeisaiInjiFlg() {
		return hiwariMeisaiInjiFlg;
	}

	public void setHiwariMeisaiInjiFlg(String hiwariMeisaiInjiFlg) {
		this.hiwariMeisaiInjiFlg = hiwariMeisaiInjiFlg;
	}

	public String getNengakuHasuChoseiM() {
		return nengakuHasuChoseiM;
	}

	public void setNengakuHasuChoseiM(String nengakuHasuChoseiM) {
		this.nengakuHasuChoseiM = nengakuHasuChoseiM;
	}

	public Long getxNengakuHasuChoseiAmt() {
		return xNengakuHasuChoseiAmt;
	}

	public void setxNengakuHasuChoseiAmt(Long xNengakuHasuChoseiAmt) {
		this.xNengakuHasuChoseiAmt = xNengakuHasuChoseiAmt;
	}

	public Long getGetsugakuKansanAmt() {
		return getsugakuKansanAmt;
	}

	public void setGetsugakuKansanAmt(Long getsugakuKansanAmt) {
		this.getsugakuKansanAmt = getsugakuKansanAmt;
	}

	public String getShohizeiKbn() {
		return shohizeiKbn;
	}

	public void setShohizeiKbn(String shohizeiKbn) {
		this.shohizeiKbn = shohizeiKbn;
	}
/*
	public List<ESNZZ19SikyShhZirtsDTO> getEsnzz19sikyshhzirtsdto() {
		return esnzz19sikyshhzirtsdto;
	}

	public void setEsnzz19sikyshhzirtsdto(List<ESNZZ19SikyShhZirtsDTO> esnzz19sikyshhzirtsdto) {
		this.esnzz19sikyshhzirtsdto = esnzz19sikyshhzirtsdto;
	}
*/
	public Long getShohizeiAmt() {
		return shohizeiAmt;
	}

	public void setShohizeiAmt(Long shohizeiAmt) {
		this.shohizeiAmt = shohizeiAmt;
	}

	public String getSeikyuKeitaiKbn() {
		return seikyuKeitaiKbn;
	}

	public void setSeikyuKeitaiKbn(String seikyuKeitaiKbn) {
		this.seikyuKeitaiKbn = seikyuKeitaiKbn;
	}

	public String getSeikyuKeitaiKitenM() {
		return seikyuKeitaiKitenM;
	}

	public void setSeikyuKeitaiKitenM(String seikyuKeitaiKitenM) {
		this.seikyuKeitaiKitenM = seikyuKeitaiKitenM;
	}

	public String getSeikyuHohoKbn() {
		return seikyuHohoKbn;
	}

	public void setSeikyuHohoKbn(String seikyuHohoKbn) {
		this.seikyuHohoKbn = seikyuHohoKbn;
	}

	public String getShiharaiJokenKbn() {
		return shiharaiJokenKbn;
	}

	public void setShiharaiJokenKbn(String shiharaiJokenKbn) {
		this.shiharaiJokenKbn = shiharaiJokenKbn;
	}

	public String getKokyakuShiharaiHohoKbn() {
		return kokyakuShiharaiHohoKbn;
	}

	public void setKokyakuShiharaiHohoKbn(String kokyakuShiharaiHohoKbn) {
		this.kokyakuShiharaiHohoKbn = kokyakuShiharaiHohoKbn;
	}

	public String getShiharaiD() {
		return shiharaiD;
	}

	public void setShiharaiD(String shiharaiD) {
		this.shiharaiD = shiharaiD;
	}

	public String getSeikyuKikanShimeD() {
		return seikyuKikanShimeD;
	}

	public void setSeikyuKikanShimeD(String seikyuKikanShimeD) {
		this.seikyuKikanShimeD = seikyuKikanShimeD;
	}

	public int getBunkatsuKaisuSuryo() {
		return bunkatsuKaisuSuryo;
	}

	public void setBunkatsuKaisuSuryo(int bunkatsuKaisuSuryo) {
		this.bunkatsuKaisuSuryo = bunkatsuKaisuSuryo;
	}

	public long getBunkatsuTesuryoAmt() {
		return bunkatsuTesuryoAmt;
	}

	public void setBunkatsuTesuryoAmt(long bunkatsuTesuryoAmt) {
		this.bunkatsuTesuryoAmt = bunkatsuTesuryoAmt;
	}

	public long getBunkatsuShokaiAmt() {
		return bunkatsuShokaiAmt;
	}

	public void setBunkatsuShokaiAmt(long bunkatsuShokaiAmt) {
		this.bunkatsuShokaiAmt = bunkatsuShokaiAmt;
	}

	public long getBunkatsu2KaimeIkoAmt() {
		return bunkatsu2KaimeIkoAmt;
	}

	public void setBunkatsu2KaimeIkoAmt(long bunkatsu2KaimeIkoAmt) {
		this.bunkatsu2KaimeIkoAmt = bunkatsu2KaimeIkoAmt;
	}

	public String getSeikyuDaikoKanriNo() {
		return seikyuDaikoKanriNo;
	}

	public void setSeikyuDaikoKanriNo(String seikyuDaikoKanriNo) {
		this.seikyuDaikoKanriNo = seikyuDaikoKanriNo;
	}

	public String getSeikyuDaikoIraishoNo() {
		return seikyuDaikoIraishoNo;
	}

	public void setSeikyuDaikoIraishoNo(String seikyuDaikoIraishoNo) {
		this.seikyuDaikoIraishoNo = seikyuDaikoIraishoNo;
	}

	public String getSikyDikIrimtTrhkskCd() {
		return sikyDikIrimtTrhkskCd;
	}

	public void setSikyDikIrimtTrhkskCd(String sikyDikIrimtTrhkskCd) {
		this.sikyDikIrimtTrhkskCd = sikyDikIrimtTrhkskCd;
	}

	public String getSikyDikIriskTrhkskCd() {
		return sikyDikIriskTrhkskCd;
	}

	public void setSikyDikIriskTrhkskCd(String sikyDikIriskTrhkskCd) {
		this.sikyDikIriskTrhkskCd = sikyDikIriskTrhkskCd;
	}

	public String getSkydkIrskTrhskGrpKisFlg() {
		return skydkIrskTrhskGrpKisFlg;
	}

	public void setSkydkIrskTrhskGrpKisFlg(String skydkIrskTrhskGrpKisFlg) {
		this.skydkIrskTrhskGrpKisFlg = skydkIrskTrhskGrpKisFlg;
	}

	public String getSikyDikTsryKisnHhKbn() {
		return sikyDikTsryKisnHhKbn;
	}

	public void setSikyDikTsryKisnHhKbn(String sikyDikTsryKisnHhKbn) {
		this.sikyDikTsryKisnHhKbn = sikyDikTsryKisnHhKbn;
	}

	public BigDecimal getSeikyuDaikoTesuryoRitsu() {
		return seikyuDaikoTesuryoRitsu;
	}

	public void setSeikyuDaikoTesuryoRitsu(BigDecimal seikyuDaikoTesuryoRitsu) {
		this.seikyuDaikoTesuryoRitsu = seikyuDaikoTesuryoRitsu;
	}

	public Long getSeikyuDaikoTesuryoAmt() {
		return seikyuDaikoTesuryoAmt;
	}

	public void setSeikyuDaikoTesuryoAmt(Long seikyuDaikoTesuryoAmt) {
		this.seikyuDaikoTesuryoAmt = seikyuDaikoTesuryoAmt;
	}

	public String getSikyDikTsryShhriHhKbn() {
		return sikyDikTsryShhriHhKbn;
	}

	public void setSikyDikTsryShhriHhKbn(String sikyDikTsryShhriHhKbn) {
		this.sikyDikTsryShhriHhKbn = sikyDikTsryShhriHhKbn;
	}

	public String getSikyDikShhriJknKbn() {
		return sikyDikShhriJknKbn;
	}

	public void setSikyDikShhriJknKbn(String sikyDikShhriJknKbn) {
		this.sikyDikShhriJknKbn = sikyDikShhriJknKbn;
	}

	public String getSeikyusakiTorihikisakiCd() {
		return seikyusakiTorihikisakiCd;
	}

	public void setSeikyusakiTorihikisakiCd(String seikyusakiTorihikisakiCd) {
		this.seikyusakiTorihikisakiCd = seikyusakiTorihikisakiCd;
	}

	public String getSeikyusakibetsuTemplateSn() {
		return seikyusakibetsuTemplateSn;
	}

	public void setSeikyusakibetsuTemplateSn(String seikyusakibetsuTemplateSn) {
		this.seikyusakibetsuTemplateSn = seikyusakibetsuTemplateSn;
	}

	public String getxSeikyushoHyojiTaishoFlg() {
		return xSeikyushoHyojiTaishoFlg;
	}

	public void setxSeikyushoHyojiTaishoFlg(String xSeikyushoHyojiTaishoFlg) {
		this.xSeikyushoHyojiTaishoFlg = xSeikyushoHyojiTaishoFlg;
	}

	public String getSeikyuShiharaiCd() {
		return seikyuShiharaiCd;
	}

	public void setSeikyuShiharaiCd(String seikyuShiharaiCd) {
		this.seikyuShiharaiCd = seikyuShiharaiCd;
	}

	public String getSeikyuShiharaiCdNm() {
		return seikyuShiharaiCdNm;
	}

	public void setSeikyuShiharaiCdNm(String seikyuShiharaiCdNm) {
		this.seikyuShiharaiCdNm = seikyuShiharaiCdNm;
	}

	public String getJigyoSegmentCd() {
		return jigyoSegmentCd;
	}

	public void setJigyoSegmentCd(String jigyoSegmentCd) {
		this.jigyoSegmentCd = jigyoSegmentCd;
	}

	public String getxBnktbriTsryySikyShhriCd() {
		return xBnktbriTsryySikyShhriCd;
	}

	public void setxBnktbriTsryySikyShhriCd(String xBnktbriTsryySikyShhriCd) {
		this.xBnktbriTsryySikyShhriCd = xBnktbriTsryySikyShhriCd;
	}

	public String getxBnktbriTsryySikysyMisiBiko() {
		return xBnktbriTsryySikysyMisiBiko;
	}

	public void setxBnktbriTsryySikysyMisiBiko(String xBnktbriTsryySikysyMisiBiko) {
		this.xBnktbriTsryySikysyMisiBiko = xBnktbriTsryySikysyMisiBiko;
	}

	public String getxBnktbriTsryySyhziKbn() {
		return xBnktbriTsryySyhziKbn;
	}

	public void setxBnktbriTsryySyhziKbn(String xBnktbriTsryySyhziKbn) {
		this.xBnktbriTsryySyhziKbn = xBnktbriTsryySyhziKbn;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
