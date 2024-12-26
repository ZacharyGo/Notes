package com.fujitsu.intarfrm.skeletons.inherits;

import com.fujitsu.intarfrm.helpers.commons.attributes.AlphabetConversionType;
import com.fujitsu.intarfrm.helpers.commons.attributes.AttributeInfo;
import com.fujitsu.intarfrm.helpers.commons.attributes.AttributeManager;
import com.fujitsu.intarfrm.helpers.commons.attributes.CharCheckTypes;
import com.fujitsu.intarfrm.helpers.commons.attributes.LengthCheckType;

/**
 * <p>属性の設計情報を定義するクラス</p>
 * このクラスは継承ファイルのクラスです。
 * 
 * @author INTARFRM継承ファイル
 */
public class AttributeInherits extends AttributeManager {

    /**
     * 唯一のインスタンス
     */
    public static final AttributeInherits ITEM = new AttributeInherits();

    /**
     * コンストラクタ
     */
    private AttributeInherits() {
        super();

        this.B = new AttributeInfo("B");
        this.B.setName("画面構成項目（ボタン等）");
        super.getInstance().addAttributeInfo(this.B);
    
        this.D = new AttributeInfo("D");
        this.D.setName("日付");
        super.getInstance().addAttributeInfo(this.D);
    
        this.NA = new AttributeInfo("NA");
        this.NA.setName("数字のみ");
        this.NA.setCharCheckType(CharCheckTypes.REGEX);
        this.NA.setLengthCheckType(LengthCheckType.LENGTH);
        this.NA.setAlphabetType(AlphabetConversionType.NONE);
        this.NA.setClientRegexStr("^[0-9]*$");
        this.NA.setServerRegexStr("^[0-9]*$");
        super.getInstance().addAttributeInfo(this.NA);
    
        this.NB = new AttributeInfo("NB");
        this.NB.setName("数字と小数点");
        this.NB.setCharCheckType(CharCheckTypes.REGEX);
        this.NB.setLengthCheckType(LengthCheckType.LENGTH);
        this.NB.setAlphabetType(AlphabetConversionType.NONE);
        this.NB.setClientRegexStr("^[0-9]*[\\.]?[0-9]+$");
        this.NB.setServerRegexStr("^[0-9]*[\\.]?[0-9]+$");
        super.getInstance().addAttributeInfo(this.NB);
    
        this.NC = new AttributeInfo("NC");
        this.NC.setName("数字とマイナス記号と小数点");
        this.NC.setCharCheckType(CharCheckTypes.REGEX);
        this.NC.setLengthCheckType(LengthCheckType.LENGTH);
        this.NC.setAlphabetType(AlphabetConversionType.NONE);
        this.NC.setClientRegexStr("^[\\+|\\-]?[0-9]*[\\.]?[0-9]+$");
        this.NC.setServerRegexStr("^[\\+|\\-]?[0-9]*[\\.]?[0-9]+$");
        super.getInstance().addAttributeInfo(this.NC);
    
        this.SA = new AttributeInfo("SA");
        this.SA.setName("英字のみ");
        this.SA.setCharCheckType(CharCheckTypes.REGEX);
        this.SA.setLengthCheckType(LengthCheckType.LENGTH);
        this.SA.setAlphabetType(AlphabetConversionType.NONE);
        this.SA.setClientRegexStr("^[A-Za-z]*$");
        this.SA.setServerRegexStr("^[A-Za-z]*$");
        super.getInstance().addAttributeInfo(this.SA);
    
        this.SA1 = new AttributeInfo("SA1");
        this.SA1.setName("英字（大文字）のみ");
        this.SA1.setCharCheckType(CharCheckTypes.REGEX);
        this.SA1.setLengthCheckType(LengthCheckType.LENGTH);
        this.SA1.setAlphabetType(AlphabetConversionType.UPPER);
        this.SA1.setClientRegexStr("^[A-Za-z]*$");
        this.SA1.setServerRegexStr("^[A-Za-z]*$");
        super.getInstance().addAttributeInfo(this.SA1);
    
        this.SA2 = new AttributeInfo("SA2");
        this.SA2.setName("英字（小文字）のみ");
        this.SA2.setCharCheckType(CharCheckTypes.REGEX);
        this.SA2.setLengthCheckType(LengthCheckType.LENGTH);
        this.SA2.setAlphabetType(AlphabetConversionType.LOWER);
        this.SA2.setClientRegexStr("^[A-Za-z]*$");
        this.SA2.setServerRegexStr("^[A-Za-z]*$");
        super.getInstance().addAttributeInfo(this.SA2);
    
        this.SB = new AttributeInfo("SB");
        this.SB.setName("英数字のみ");
        this.SB.setCharCheckType(CharCheckTypes.REGEX);
        this.SB.setLengthCheckType(LengthCheckType.LENGTH);
        this.SB.setAlphabetType(AlphabetConversionType.NONE);
        this.SB.setClientRegexStr("^[A-Za-z0-9]*$");
        this.SB.setServerRegexStr("^[A-Za-z0-9]*$");
        super.getInstance().addAttributeInfo(this.SB);
    
        this.SB1 = new AttributeInfo("SB1");
        this.SB1.setName("英数字（大文字）のみ");
        this.SB1.setCharCheckType(CharCheckTypes.REGEX);
        this.SB1.setLengthCheckType(LengthCheckType.LENGTH);
        this.SB1.setAlphabetType(AlphabetConversionType.UPPER);
        this.SB1.setClientRegexStr("^[A-Za-z0-9]*$");
        this.SB1.setServerRegexStr("^[A-Za-z0-9]*$");
        super.getInstance().addAttributeInfo(this.SB1);
    
        this.SB2 = new AttributeInfo("SB2");
        this.SB2.setName("英数字（小文字）のみ");
        this.SB2.setCharCheckType(CharCheckTypes.REGEX);
        this.SB2.setLengthCheckType(LengthCheckType.LENGTH);
        this.SB2.setAlphabetType(AlphabetConversionType.LOWER);
        this.SB2.setClientRegexStr("^[A-Za-z0-9]*$");
        this.SB2.setServerRegexStr("^[A-Za-z0-9]*$");
        super.getInstance().addAttributeInfo(this.SB2);
    
        this.SC = new AttributeInfo("SC");
        this.SC.setName("英数字記号のみ");
        this.SC.setCharCheckType(CharCheckTypes.REGEX);
        this.SC.setLengthCheckType(LengthCheckType.LENGTH);
        this.SC.setAlphabetType(AlphabetConversionType.NONE);
        this.SC.setClientRegexStr("^[A-Za-z0-9 !-/:-@\\[-`\\{-~]*$");
        this.SC.setServerRegexStr("^[A-Za-z0-9 !-/:-@\\[-`\\{-~]*$");
        super.getInstance().addAttributeInfo(this.SC);
    
        this.SD = new AttributeInfo("SD");
        this.SD.setName("英数字記号（&apos;&quot;*%|以外）のみ");
        this.SD.setCharCheckType(CharCheckTypes.REGEX_AND_INVALID_CHAR);
        this.SD.setLengthCheckType(LengthCheckType.LENGTH);
        this.SD.setAlphabetType(AlphabetConversionType.NONE);
        this.SD.setClientRegexStr("^[A-Za-z0-9 !-/:-@\\[-`\\{-~]*$");
        this.SD.setServerRegexStr("^[A-Za-z0-9 !-/:-@\\[-`\\{-~]*$");
        this.SD.setCheckString("\"'*%|");
        super.getInstance().addAttributeInfo(this.SD);
    
        this.SG = new AttributeInfo("SG");
        this.SG.setName("0～9のみ");
        this.SG.setCharCheckType(CharCheckTypes.REGEX);
        this.SG.setLengthCheckType(LengthCheckType.LENGTH);
        this.SG.setAlphabetType(AlphabetConversionType.NONE);
        this.SG.setClientRegexStr("^[0-9]*$");
        this.SG.setServerRegexStr("^[0-9]*$");
        super.getInstance().addAttributeInfo(this.SG);
    
        this.SN1 = new AttributeInfo("SN1");
        this.SN1.setName("ひらがなのみ");
        this.SN1.setCharCheckType(CharCheckTypes.VALID_CHAR);
        this.SN1.setLengthCheckType(LengthCheckType.LENGTH);
        this.SN1.setAlphabetType(AlphabetConversionType.NONE);
        this.SN1.setClientRegexStr("");
        this.SN1.setServerRegexStr("");
        this.SN1.setCheckString("　ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみむめもゃやゅゆょよらりるれろゎわゐゑをんー");
        super.getInstance().addAttributeInfo(this.SN1);
    
        this.SN2 = new AttributeInfo("SN2");
        this.SN2.setName("カタカナのみ");
        this.SN2.setCharCheckType(CharCheckTypes.VALID_CHAR);
        this.SN2.setLengthCheckType(LengthCheckType.LENGTH);
        this.SN2.setAlphabetType(AlphabetConversionType.NONE);
        this.SN2.setClientRegexStr("");
        this.SN2.setServerRegexStr("");
        this.SN2.setCheckString("　ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミムメモャヤュユョヨラリルレロヮワヰヱヲンヴヵヶー");
        super.getInstance().addAttributeInfo(this.SN2);
    
        this.SN3 = new AttributeInfo("SN3");
        this.SN3.setName("全角のみ");
        this.SN3.setCharCheckType(CharCheckTypes.INVALID_CHAR);
        this.SN3.setLengthCheckType(LengthCheckType.LENGTH);
        this.SN3.setAlphabetType(AlphabetConversionType.NONE);
        this.SN3.setClientRegexStr("");
        this.SN3.setServerRegexStr("");
        this.SN3.setCheckString(" !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~｡｢｣､･ｦｧｨｩｪｫｬｭｮｯｰｱｲｳｴｵｶｷｸｹｺｻｼｽｾｿﾀﾁﾂﾃﾄﾅﾆﾇﾈﾉﾊﾋﾌﾍﾎﾏﾐﾑﾒﾓﾔﾕﾖﾗﾘﾙﾚﾛﾜﾝﾞﾟ");
        super.getInstance().addAttributeInfo(this.SN3);
    
        this.SN4 = new AttributeInfo("SN4");
        this.SN4.setName("&apos;&quot;*%|以外");
        this.SN4.setCharCheckType(CharCheckTypes.INVALID_CHAR);
        this.SN4.setLengthCheckType(LengthCheckType.LENGTH);
        this.SN4.setAlphabetType(AlphabetConversionType.NONE);
        this.SN4.setClientRegexStr("");
        this.SN4.setServerRegexStr("");
        this.SN4.setCheckString("\"'*%|");
        super.getInstance().addAttributeInfo(this.SN4);
    
        this.SN5 = new AttributeInfo("SN5");
        this.SN5.setName("全て");
        this.SN5.setCharCheckType(CharCheckTypes.NONE);
        this.SN5.setLengthCheckType(LengthCheckType.LENGTH);
        this.SN5.setAlphabetType(AlphabetConversionType.NONE);
        this.SN5.setClientRegexStr("");
        this.SN5.setServerRegexStr("");
        super.getInstance().addAttributeInfo(this.SN5);
    
        this.SP1 = new AttributeInfo("SP1");
        this.SP1.setName("E-mailアドレス");
        this.SP1.setCharCheckType(CharCheckTypes.REGEX);
        this.SP1.setLengthCheckType(LengthCheckType.LENGTH);
        this.SP1.setAlphabetType(AlphabetConversionType.NONE);
        this.SP1.setClientRegexStr("^([a-zA-Z0-9])+([a-zA-Z0-9\\._-])*@([a-zA-Z0-9_-])+([a-zA-Z0-9\\._-]+)+$");
        this.SP1.setServerRegexStr("^([a-zA-Z0-9])+([a-zA-Z0-9\\._-])*@([a-zA-Z0-9_-])+([a-zA-Z0-9\\._-]+)+$");
        super.getInstance().addAttributeInfo(this.SP1);
    
        this.SP2 = new AttributeInfo("SP2");
        this.SP2.setName("郵便番号");
        this.SP2.setCharCheckType(CharCheckTypes.REGEX);
        this.SP2.setLengthCheckType(LengthCheckType.LENGTH);
        this.SP2.setAlphabetType(AlphabetConversionType.NONE);
        this.SP2.setClientRegexStr("^[0-9]{3}-[0-9]{4}$");
        this.SP2.setServerRegexStr("^[0-9]{3}-[0-9]{4}$");
        super.getInstance().addAttributeInfo(this.SP2);
    
    }
    /**
     * 初期化メソッド
     */
    public void initialize() {

    }

    /**
     * 属性: B
     * 属性名: 画面構成項目（ボタン等）
     * 備考: 
     */
    public final AttributeInfo B;

    /**
     * 属性: D
     * 属性名: 日付
     * 備考: 
     */
    public final AttributeInfo D;

    /**
     * 属性: NA
     * 属性名: 数字のみ
     * 備考: 
     */
    public final AttributeInfo NA;

    /**
     * 属性: NB
     * 属性名: 数字と小数点
     * 備考: 
     */
    public final AttributeInfo NB;

    /**
     * 属性: NC
     * 属性名: 数字とマイナス記号と小数点
     * 備考: 
     */
    public final AttributeInfo NC;

    /**
     * 属性: SA
     * 属性名: 英字のみ
     * 備考: 
     */
    public final AttributeInfo SA;

    /**
     * 属性: SA1
     * 属性名: 英字（大文字）のみ
     * 備考: 
     */
    public final AttributeInfo SA1;

    /**
     * 属性: SA2
     * 属性名: 英字（小文字）のみ
     * 備考: 
     */
    public final AttributeInfo SA2;

    /**
     * 属性: SB
     * 属性名: 英数字のみ
     * 備考: 
     */
    public final AttributeInfo SB;

    /**
     * 属性: SB1
     * 属性名: 英数字（大文字）のみ
     * 備考: 
     */
    public final AttributeInfo SB1;

    /**
     * 属性: SB2
     * 属性名: 英数字（小文字）のみ
     * 備考: 
     */
    public final AttributeInfo SB2;

    /**
     * 属性: SC
     * 属性名: 英数字記号のみ
     * 備考: 
     */
    public final AttributeInfo SC;

    /**
     * 属性: SD
     * 属性名: 英数字記号（'\"*%|以外）のみ
     * 備考: 
     */
    public final AttributeInfo SD;

    /**
     * 属性: SG
     * 属性名: 0～9のみ
     * 備考: 
     */
    public final AttributeInfo SG;

    /**
     * 属性: SN1
     * 属性名: ひらがなのみ
     * 備考: 
     */
    public final AttributeInfo SN1;

    /**
     * 属性: SN2
     * 属性名: カタカナのみ
     * 備考: 
     */
    public final AttributeInfo SN2;

    /**
     * 属性: SN3
     * 属性名: 全角のみ
     * 備考: 
     */
    public final AttributeInfo SN3;

    /**
     * 属性: SN4
     * 属性名: '\"*%|以外
     * 備考: 
     */
    public final AttributeInfo SN4;

    /**
     * 属性: SN5
     * 属性名: 全て
     * 備考: 
     */
    public final AttributeInfo SN5;

    /**
     * 属性: SP1
     * 属性名: E-mailアドレス
     * 備考: xxx@xxx.xx
     */
    public final AttributeInfo SP1;

    /**
     * 属性: SP2
     * 属性名: 郵便番号
     * 備考: 999-9999
     */
    public final AttributeInfo SP2;

}
