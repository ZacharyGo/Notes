import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class ESNZZ19KeiyakuSikyDTO {
	/** serialVersionUID */
    private static final long serialVersionUID = 1L;

    /** 会社コード */
    private String kaishaCd;

    /** 受注契約番号 */
    private String juchuKeiyakuNo;

    /** 受注契約変更番号 */
    private String juchuKeiyakuHenkoNo;

    /** 関連受注契約番号 */
    private String kanrenJuchuKeiyakuNo;

    /** 受注処理区分 */
    private String juchuShoriKbn;

    /** 業務開始年月日 */
    private LocalDate gyomuKaishiYmd;

    /** 積算管理項目大項目コード */
    private String sksnKnrKomokuDikmkCd;

    /** 積算管理項目中項目コード */
    private String sksnKnrKomokuChkmkCd;

    /** 第三者支払連番 */
    private String daisanshaShiharaiSn;

    /** 適用開始年月日 */
    private LocalDate tekiyoKaishiYmd;

    /** 適用終了年月日 */
    private LocalDate tekiyoShuryoYmd;

    /** 契約料金連番 */
    private String keiyakuRyokinSn;

    /** 支払方法連番 */
    private String shiharaiHohoSn;

    /** 契約長期臨時区分 */
    private String keiyakuChokiRinjiKbn;

    /** 料金区分 */
    private String ryokinKbn;

    /** 集計先料金区分 */
    private String shukeisakiRyokinKbn;

    /** 長期契約料金継続請求区分 */
    private String chkKiykRyknKizkSikyKbn;

    /** 契約料金請求先区分 */
    private String keiyakuRyokinSeikyusakiKbn;

    /** 契約料金金額 */
    private long keiyakuRyokinAmt;

    /** 請求先別契約料金金額 */
    private Long xSikyskBtsKiykRyknAmt;

    /** 契約区分 */
    private String keiyakuKbn;

    /** 日割調整前請求金額 */
    private Long hiwariChoseimaeSeikyuAmt;

    /** 端数調整月日割調整前請求金額 */
    private Long hsChsizkHwrChsimeSikyAmt;

    /** 日割調整後請求金額 */
    private Long hiwariChoseigoSeikyuAmt;

    /** 日割明細印字フラグ */
    private String hiwariMeisaiInjiFlg;

    /** 年額端数調整月 */
    private String nengakuHasuChoseiM;

    /** 年額端数調整金額 */
    private Long xNengakuHasuChoseiAmt;

    /** 月額換算金額 */
    private Long getsugakuKansanAmt;

    /** 消費税区分 */
    private String shohizeiKbn;

    /** ESNZZ19SikyShhZirtsDTO */
  //  private List<ESNZZ19SikyShhZirtsDTO> esnzz19sikyshhzirtsdto = new ArrayList<>();

    /** 消費税金額 */
    private Long shohizeiAmt;

    /** 請求形態区分 */
    private String seikyuKeitaiKbn;

    /** 請求形態起点月 */
    private String seikyuKeitaiKitenM;

    /** 請求方法区分 */
    private String seikyuHohoKbn;

    /** 支払条件区分 */
    private String shiharaiJokenKbn;

    /** 顧客支払方法区分 */
    private String kokyakuShiharaiHohoKbn;

    /** 支払日 */
    private String shiharaiD;

    /** 請求期間締日 */
    private String seikyuKikanShimeD;

    /** 分割回数数量 */
    private int bunkatsuKaisuSuryo;

    /** 分割手数料金額 */
    private long bunkatsuTesuryoAmt;

    /** 分割初回金額 */
    private long bunkatsuShokaiAmt;

    /** 分割２回目以降金額 */
    private long bunkatsu2KaimeIkoAmt;

    /** 請求代行管理番号 */
    private String seikyuDaikoKanriNo;

    /** 請求代行依頼書番号 */
    private String seikyuDaikoIraishoNo;

    /** 請求代行依頼元取引先コード */
    private String sikyDikIrimtTrhkskCd;

    /** 請求代行依頼先取引先コード */
    private String sikyDikIriskTrhkskCd;

    /** 請求代行依頼先取引先グループ会社フラグ */
    private String skydkIrskTrhskGrpKisFlg;

    /** 請求代行手数料計算方法区分 */
    private String sikyDikTsryKisnHhKbn;

    /** 請求代行手数料率 */
    private BigDecimal seikyuDaikoTesuryoRitsu;

    /** 請求代行手数料金額 */
    private Long seikyuDaikoTesuryoAmt;

    /** 請求代行手数料支払方法区分 */
    private String sikyDikTsryShhriHhKbn;

    /** 請求代行支払条件区分 */
    private String sikyDikShhriJknKbn;

    /** 請求先取引先コード */
    private String seikyusakiTorihikisakiCd;

    /** 請求先別テンプレート連番 */
    private String seikyusakibetsuTemplateSn;

    /** 請求書表示対象フラグ */
    private String xSeikyushoHyojiTaishoFlg;

    /** 請求支払コード */
    private String seikyuShiharaiCd;

    /** 請求支払コード名称 */
    private String seikyuShiharaiCdNm;

    /** 事業セグメントコード */
    private String jigyoSegmentCd;

    /** 分割払手数料用請求支払コード */
    private String xBnktbriTsryySikyShhriCd;

    /** 分割払手数料用請求書明細備考 */
    private String xBnktbriTsryySikysyMisiBiko;

    /** 分割払手数料用消費税区分 */
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
