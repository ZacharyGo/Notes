
package com.fujitsu.intarfrm.skeletons.inherits;

import com.fujitsu.intarfrm.helpers.commons.messages.MessageInfo;
import com.fujitsu.intarfrm.helpers.commons.messages.FrameworkMessageManager;
import com.fujitsu.intarfrm.helpers.commons.messages.MessageBasicInfo;

/**
 * <p>メッセージの設計情報を定義するクラス</p>
 * このクラスは継承ファイルのクラスです。
 * 
 * @author INTARFRM継承ファイル
 */
public class MessageInfos extends FrameworkMessageManager {

    /**
     * 唯一のインスタンス
     */
    public static final MessageInfos ITEM = new MessageInfos();

    /**
     * コンストラクタ
     */
    private MessageInfos() {
        super();
    }
    
    /**
     * 初期化メソッド
     */
    public void initialize() {
    }
    
    /**
     * メッセージID:E001
     * メッセージタイプ:エラー
     * 「ログインIDとパスワードの組み合わせが正しくありません。」
     */
    @MessageBasicInfo(messageId = "E001", messageType = 3)
    public  MessageInfo E001;
    /**
     * メッセージID:I001
     * メッセージタイプ:インフォメーション
     * 「入力された従業員番号、従業員名に該当するユーザーを削除しました。」
     */
    @MessageBasicInfo(messageId = "I001", messageType = 2)
    public  MessageInfo I001;
    /**
     * メッセージID:S001
     * メッセージタイプ:システム
     * 「エラー個所があります。確認して下さい。」
     */
    @MessageBasicInfo(messageId = "S001", messageType = 1)
    public  MessageInfo S001;
    /**
     * メッセージID:S002
     * メッセージタイプ:システム
     * 「無効なファンクションキーが押されました。」
     */
    @MessageBasicInfo(messageId = "S002", messageType = 1)
    public  MessageInfo S002;
    /**
     * メッセージID:S003
     * メッセージタイプ:システム
     * 「前ページがありません。」
     */
    @MessageBasicInfo(messageId = "S003", messageType = 1)
    public  MessageInfo S003;
    /**
     * メッセージID:S004
     * メッセージタイプ:システム
     * 「次ページがありません。」
     */
    @MessageBasicInfo(messageId = "S004", messageType = 1)
    public  MessageInfo S004;
    /**
     * メッセージID:S005
     * メッセージタイプ:システム
     * 「しばらくお待ちください。」
     */
    @MessageBasicInfo(messageId = "S005", messageType = 1)
    public  MessageInfo S005;
    /**
     * メッセージID:S006
     * メッセージタイプ:システム
     * 「該当コードはマスタに登録されていません。」
     */
    @MessageBasicInfo(messageId = "S006", messageType = 1)
    public  MessageInfo S006;
    /**
     * メッセージID:S007
     * メッセージタイプ:システム
     * 「入力内容に誤りがあります。」
     */
    @MessageBasicInfo(messageId = "S007", messageType = 1)
    public  MessageInfo S007;
    /**
     * メッセージID:S008
     * メッセージタイプ:システム
     * 「コード変換出来ない文字が含まれています。」
     */
    @MessageBasicInfo(messageId = "S008", messageType = 1)
    public  MessageInfo S008;
    /**
     * メッセージID:S009
     * メッセージタイプ:システム
     * 「データのサイズが制限値を超えています。」
     */
    @MessageBasicInfo(messageId = "S009", messageType = 1)
    public  MessageInfo S009;
    /**
     * メッセージID:S101
     * メッセージタイプ:システム
     * 「「%IT_CAPTION%」は%IT_LENGTH%桁以下で入力してください。」
     */
    @MessageBasicInfo(messageId = "S101", messageType = 1)
    public  MessageInfo S101;
    /**
     * メッセージID:S102
     * メッセージタイプ:システム
     * 「「%IT_CAPTION%」は小数部%IT_DECIMAL%桁以下で入力してください。」
     */
    @MessageBasicInfo(messageId = "S102", messageType = 1)
    public  MessageInfo S102;
    /**
     * メッセージID:S103
     * メッセージタイプ:システム
     * 「「%IT_CAPTION%」は必ず入力してください。」
     */
    @MessageBasicInfo(messageId = "S103", messageType = 1)
    public  MessageInfo S103;
    /**
     * メッセージID:S104
     * メッセージタイプ:システム
     * 「「%IT_CAPTION%」は必ず入力してください。（%IT_REQUIRED%桁以上）」
     */
    @MessageBasicInfo(messageId = "S104", messageType = 1)
    public  MessageInfo S104;
    /**
     * メッセージID:S105
     * メッセージタイプ:システム
     * 「「%IT_CAPTION%」は%AT_NAME%を入力してください。」
     */
    @MessageBasicInfo(messageId = "S105", messageType = 1)
    public  MessageInfo S105;
    /**
     * メッセージID:S106
     * メッセージタイプ:システム
     * 「「%IT_CAPTION%」は%AT_NAME%を入力してください。（%AT_BIKO%）」
     */
    @MessageBasicInfo(messageId = "S106", messageType = 1)
    public  MessageInfo S106;
    /**
     * メッセージID:S107
     * メッセージタイプ:システム
     * 「「%IT_CAPTION%」に入力したコード [%VALUE%] は見つかりませんでした。」
     */
    @MessageBasicInfo(messageId = "S107", messageType = 1)
    public  MessageInfo S107;
    /**
     * メッセージID:S108
     * メッセージタイプ:システム
     * 「「%IT_CAPTION%」は日付として認識できません。」
     */
    @MessageBasicInfo(messageId = "S108", messageType = 1)
    public  MessageInfo S108;
    /**
     * メッセージID:S109
     * メッセージタイプ:システム
     * 「「%IT_CAPTION%」は数値として認識できません。」
     */
    @MessageBasicInfo(messageId = "S109", messageType = 1)
    public  MessageInfo S109;
    /**
     * メッセージID:S110
     * メッセージタイプ:システム
     * 「「%IT_CAPTION%」は整数部%IT_INTEGER%桁以下で入力してください。」
     */
    @MessageBasicInfo(messageId = "S110", messageType = 1)
    public  MessageInfo S110;
    /**
     * メッセージID:S111
     * メッセージタイプ:システム
     * 「「%IT_CAPTION%」は%IT_REQUIRED%桁以上で入力してください。」
     */
    @MessageBasicInfo(messageId = "S111", messageType = 1)
    public  MessageInfo S111;
    /**
     * メッセージID:S112
     * メッセージタイプ:システム
     * 「ログオンされていません。ログオンページにてログオンを行ってください。」
     */
    @MessageBasicInfo(messageId = "S112", messageType = 1)
    public  MessageInfo S112;
    /**
     * メッセージID:S113
     * メッセージタイプ:システム
     * 「正しい画面遷移ではありません。（「お気に入り」等から直接起動されました。）」
     */
    @MessageBasicInfo(messageId = "S113", messageType = 1)
    public  MessageInfo S113;
    /**
     * メッセージID:S114
     * メッセージタイプ:システム
     * 「「%IT_CAPTION%」は%IT_MAX_VAL%より小さくなければなりません。」
     */
    @MessageBasicInfo(messageId = "S114", messageType = 1)
    public  MessageInfo S114;
    /**
     * メッセージID:S115
     * メッセージタイプ:システム
     * 「「%IT_CAPTION%」は%IT_MAX_VAL%以下でなければなりません。」
     */
    @MessageBasicInfo(messageId = "S115", messageType = 1)
    public  MessageInfo S115;
    /**
     * メッセージID:S116
     * メッセージタイプ:システム
     * 「「%IT_CAPTION%」は%IT_MIN_VAL%より大きくなければなりません。」
     */
    @MessageBasicInfo(messageId = "S116", messageType = 1)
    public  MessageInfo S116;
    /**
     * メッセージID:S117
     * メッセージタイプ:システム
     * 「「%IT_CAPTION%」は%IT_MIN_VAL%以上でなければなりません。」
     */
    @MessageBasicInfo(messageId = "S117", messageType = 1)
    public  MessageInfo S117;
    /**
     * メッセージID:S118
     * メッセージタイプ:システム
     * 「「%IT_CAPTION%」は%IT_MIN_VAL%より大きく、%IT_MAX_VAL%より小さくなければなりません。」
     */
    @MessageBasicInfo(messageId = "S118", messageType = 1)
    public  MessageInfo S118;
    /**
     * メッセージID:S119
     * メッセージタイプ:システム
     * 「「%IT_CAPTION%」は%IT_MIN_VAL%以上、%IT_MAX_VAL%より小さくなければなりません。」
     */
    @MessageBasicInfo(messageId = "S119", messageType = 1)
    public  MessageInfo S119;
    /**
     * メッセージID:S120
     * メッセージタイプ:システム
     * 「「%IT_CAPTION%」は%IT_MIN_VAL%より大きく、%IT_MAX_VAL%以下でなければなりません。」
     */
    @MessageBasicInfo(messageId = "S120", messageType = 1)
    public  MessageInfo S120;
    /**
     * メッセージID:S121
     * メッセージタイプ:システム
     * 「「%IT_CAPTION%」は%IT_MIN_VAL%以上、%IT_MAX_VAL%以下でなければなりません。」
     */
    @MessageBasicInfo(messageId = "S121", messageType = 1)
    public  MessageInfo S121;
    /**
     * メッセージID:S122
     * メッセージタイプ:システム
     * 「「%IT_CAPTION%」に使用できない文字が含まれています。『%1』」
     */
    @MessageBasicInfo(messageId = "S122", messageType = 1)
    public  MessageInfo S122;
    /**
     * メッセージID:S123
     * メッセージタイプ:システム
     * 「「%IT_CAPTION%」は時間として認識できません。」
     */
    @MessageBasicInfo(messageId = "S123", messageType = 1)
    public  MessageInfo S123;
    /**
     * メッセージID:S124
     * メッセージタイプ:システム
     * 「「%IT_CAPTION%」に使用できない文字が含まれています。」
     */
    @MessageBasicInfo(messageId = "S124", messageType = 1)
    public  MessageInfo S124;
    /**
     * メッセージID:S125
     * メッセージタイプ:システム
     * 「「%IT_CAPTION%」は%IT_MIN_VAL%以上、%IT_MAX_VAL%以下でなければなりません。」
     */
    @MessageBasicInfo(messageId = "S125", messageType = 1)
    public  MessageInfo S125;
    /**
     * メッセージID:S126
     * メッセージタイプ:システム
     * 「「%IT_CAPTION%」は不正な値が選択されています。」
     */
    @MessageBasicInfo(messageId = "S126", messageType = 1)
    public  MessageInfo S126;
    /**
     * メッセージID:S301
     * メッセージタイプ:システム
     * 「%LST_ROW_IDX%行目の「%IT_CAPTION%」は%IT_LENGTH%桁以下で入力してください。」
     */
    @MessageBasicInfo(messageId = "S301", messageType = 1)
    public  MessageInfo S301;
    /**
     * メッセージID:S302
     * メッセージタイプ:システム
     * 「%LST_ROW_IDX%行目の「%IT_CAPTION%」は小数部%IT_DECIMAL%桁以下で入力してください。」
     */
    @MessageBasicInfo(messageId = "S302", messageType = 1)
    public  MessageInfo S302;
    /**
     * メッセージID:S303
     * メッセージタイプ:システム
     * 「%LST_ROW_IDX%行目の「%IT_CAPTION%」は必ず入力してください。」
     */
    @MessageBasicInfo(messageId = "S303", messageType = 1)
    public  MessageInfo S303;
    /**
     * メッセージID:S304
     * メッセージタイプ:システム
     * 「%LST_ROW_IDX%行目の「%IT_CAPTION%」は必ず入力してください。（%IT_REQUIRED%桁以上）」
     */
    @MessageBasicInfo(messageId = "S304", messageType = 1)
    public  MessageInfo S304;
    /**
     * メッセージID:S305
     * メッセージタイプ:システム
     * 「%LST_ROW_IDX%行目の「%IT_CAPTION%」は%AT_NAME%を入力してください。」
     */
    @MessageBasicInfo(messageId = "S305", messageType = 1)
    public  MessageInfo S305;
    /**
     * メッセージID:S306
     * メッセージタイプ:システム
     * 「%LST_ROW_IDX%行目の「%IT_CAPTION%」は%AT_NAME%を入力してください。（%AT_BIKO%）」
     */
    @MessageBasicInfo(messageId = "S306", messageType = 1)
    public  MessageInfo S306;
    /**
     * メッセージID:S307
     * メッセージタイプ:システム
     * 「%LST_ROW_IDX%行目の「%IT_CAPTION%」に入力したコード [%VALUE%] は見つかりませんでした。」
     */
    @MessageBasicInfo(messageId = "S307", messageType = 1)
    public  MessageInfo S307;
    /**
     * メッセージID:S308
     * メッセージタイプ:システム
     * 「%LST_ROW_IDX%行目の「%IT_CAPTION%」は日付として認識できません。」
     */
    @MessageBasicInfo(messageId = "S308", messageType = 1)
    public  MessageInfo S308;
    /**
     * メッセージID:S309
     * メッセージタイプ:システム
     * 「%LST_ROW_IDX%行目の「%IT_CAPTION%」は数値として認識できません。」
     */
    @MessageBasicInfo(messageId = "S309", messageType = 1)
    public  MessageInfo S309;
    /**
     * メッセージID:S310
     * メッセージタイプ:システム
     * 「%LST_ROW_IDX%行目の「%IT_CAPTION%」は整数部%IT_INTEGER%桁以下で入力してください。」
     */
    @MessageBasicInfo(messageId = "S310", messageType = 1)
    public  MessageInfo S310;
    /**
     * メッセージID:S311
     * メッセージタイプ:システム
     * 「%LST_ROW_IDX%行目の「%IT_CAPTION%」は%IT_REQUIRED%桁以上で入力してください。」
     */
    @MessageBasicInfo(messageId = "S311", messageType = 1)
    public  MessageInfo S311;
    /**
     * メッセージID:S314
     * メッセージタイプ:システム
     * 「%LST_ROW_IDX%行目の「%IT_CAPTION%」は%IT_MAX_VAL%より小さくなければなりません。」
     */
    @MessageBasicInfo(messageId = "S314", messageType = 1)
    public  MessageInfo S314;
    /**
     * メッセージID:S315
     * メッセージタイプ:システム
     * 「%LST_ROW_IDX%行目の「%IT_CAPTION%」は%IT_MAX_VAL%以下でなければなりません。」
     */
    @MessageBasicInfo(messageId = "S315", messageType = 1)
    public  MessageInfo S315;
    /**
     * メッセージID:S316
     * メッセージタイプ:システム
     * 「%LST_ROW_IDX%行目の「%IT_CAPTION%」は%IT_MIN_VAL%より大きくなければなりません。」
     */
    @MessageBasicInfo(messageId = "S316", messageType = 1)
    public  MessageInfo S316;
    /**
     * メッセージID:S317
     * メッセージタイプ:システム
     * 「%LST_ROW_IDX%行目の「%IT_CAPTION%」は%IT_MIN_VAL%以上でなければなりません。」
     */
    @MessageBasicInfo(messageId = "S317", messageType = 1)
    public  MessageInfo S317;
    /**
     * メッセージID:S318
     * メッセージタイプ:システム
     * 「%LST_ROW_IDX%行目の「%IT_CAPTION%」は%IT_MIN_VAL%より大きく、%IT_MAX_VAL%より小さくなければなりません。」
     */
    @MessageBasicInfo(messageId = "S318", messageType = 1)
    public  MessageInfo S318;
    /**
     * メッセージID:S319
     * メッセージタイプ:システム
     * 「%LST_ROW_IDX%行目の「%IT_CAPTION%」は%IT_MIN_VAL%以上、%IT_MAX_VAL%より小さくなければなりません。」
     */
    @MessageBasicInfo(messageId = "S319", messageType = 1)
    public  MessageInfo S319;
    /**
     * メッセージID:S320
     * メッセージタイプ:システム
     * 「%LST_ROW_IDX%行目の「%IT_CAPTION%」は%IT_MIN_VAL%より大きく、%IT_MAX_VAL%以下でなければなりません。」
     */
    @MessageBasicInfo(messageId = "S320", messageType = 1)
    public  MessageInfo S320;
    /**
     * メッセージID:S321
     * メッセージタイプ:システム
     * 「%LST_ROW_IDX%行目の「%IT_CAPTION%」は%IT_MIN_VAL%以上、%IT_MAX_VAL%以下でなければなりません。」
     */
    @MessageBasicInfo(messageId = "S321", messageType = 1)
    public  MessageInfo S321;
    /**
     * メッセージID:S322
     * メッセージタイプ:システム
     * 「%LST_ROW_IDX%行目の「%IT_CAPTION%」に使用できない文字が含まれています。『%1』」
     */
    @MessageBasicInfo(messageId = "S322", messageType = 1)
    public  MessageInfo S322;
    /**
     * メッセージID:S323
     * メッセージタイプ:システム
     * 「%LST_ROW_IDX%行目の「%IT_CAPTION%」は時間として認識できません。」
     */
    @MessageBasicInfo(messageId = "S323", messageType = 1)
    public  MessageInfo S323;
    /**
     * メッセージID:S324
     * メッセージタイプ:システム
     * 「%LST_ROW_IDX%行目の「%IT_CAPTION%」に使用できない文字が含まれています。」
     */
    @MessageBasicInfo(messageId = "S324", messageType = 1)
    public  MessageInfo S324;
    /**
     * メッセージID:S325
     * メッセージタイプ:システム
     * 「%LST_ROW_IDX%行目の「%IT_CAPTION%」は%IT_MIN_VAL%以上、%IT_MAX_VAL%以下でなければなりません。」
     */
    @MessageBasicInfo(messageId = "S325", messageType = 1)
    public  MessageInfo S325;
    /**
     * メッセージID:S326
     * メッセージタイプ:システム
     * 「%LST_ROW_IDX%行目の「%IT_CAPTION%」は不正な値が選択されています。」
     */
    @MessageBasicInfo(messageId = "S326", messageType = 1)
    public  MessageInfo S326;
    /**
     * メッセージID:S401
     * メッセージタイプ:システム
     * 「%CURRENT_PAGE% / %FULL_PAGE% ページ %LST_ROW_IDX%行目の「%IT_CAPTION%」は%IT_LENGTH%桁以下で入力してください。」
     */
    @MessageBasicInfo(messageId = "S401", messageType = 1)
    public  MessageInfo S401;
    /**
     * メッセージID:S402
     * メッセージタイプ:システム
     * 「%CURRENT_PAGE% / %FULL_PAGE% ページ %LST_ROW_IDX%行目の「%IT_CAPTION%」は小数部%IT_DECIMAL%桁以下で入力してください。」
     */
    @MessageBasicInfo(messageId = "S402", messageType = 1)
    public  MessageInfo S402;
    /**
     * メッセージID:S403
     * メッセージタイプ:システム
     * 「%CURRENT_PAGE% / %FULL_PAGE% ページ %LST_ROW_IDX%行目の「%IT_CAPTION%」は必ず入力してください。」
     */
    @MessageBasicInfo(messageId = "S403", messageType = 1)
    public  MessageInfo S403;
    /**
     * メッセージID:S404
     * メッセージタイプ:システム
     * 「%CURRENT_PAGE% / %FULL_PAGE% ページ %LST_ROW_IDX%行目の「%IT_CAPTION%」は必ず入力してください。（%IT_REQUIRED%桁以上）」
     */
    @MessageBasicInfo(messageId = "S404", messageType = 1)
    public  MessageInfo S404;
    /**
     * メッセージID:S405
     * メッセージタイプ:システム
     * 「%CURRENT_PAGE% / %FULL_PAGE% ページ %LST_ROW_IDX%行目の「%IT_CAPTION%」は%AT_NAME%を入力してください。」
     */
    @MessageBasicInfo(messageId = "S405", messageType = 1)
    public  MessageInfo S405;
    /**
     * メッセージID:S406
     * メッセージタイプ:システム
     * 「%CURRENT_PAGE% / %FULL_PAGE% ページ %LST_ROW_IDX%行目の「%IT_CAPTION%」は%AT_NAME%を入力してください。（%AT_BIKO%）」
     */
    @MessageBasicInfo(messageId = "S406", messageType = 1)
    public  MessageInfo S406;
    /**
     * メッセージID:S407
     * メッセージタイプ:システム
     * 「%CURRENT_PAGE% / %FULL_PAGE% ページ %LST_ROW_IDX%行目の「%IT_CAPTION%」に入力したコード [%VALUE%] は見つかりませんでした。」
     */
    @MessageBasicInfo(messageId = "S407", messageType = 1)
    public  MessageInfo S407;
    /**
     * メッセージID:S408
     * メッセージタイプ:システム
     * 「%CURRENT_PAGE% / %FULL_PAGE% ページ %LST_ROW_IDX%行目の「%IT_CAPTION%」は日付として認識できません。」
     */
    @MessageBasicInfo(messageId = "S408", messageType = 1)
    public  MessageInfo S408;
    /**
     * メッセージID:S409
     * メッセージタイプ:システム
     * 「%CURRENT_PAGE% / %FULL_PAGE% ページ %LST_ROW_IDX%行目の「%IT_CAPTION%」は数値として認識できません。」
     */
    @MessageBasicInfo(messageId = "S409", messageType = 1)
    public  MessageInfo S409;
    /**
     * メッセージID:S410
     * メッセージタイプ:システム
     * 「%CURRENT_PAGE% / %FULL_PAGE% ページ %LST_ROW_IDX%行目の「%IT_CAPTION%」は整数部%IT_INTEGER%桁以下で入力してください。」
     */
    @MessageBasicInfo(messageId = "S410", messageType = 1)
    public  MessageInfo S410;
    /**
     * メッセージID:S411
     * メッセージタイプ:システム
     * 「%CURRENT_PAGE% / %FULL_PAGE% ページ %LST_ROW_IDX%行目の「%IT_CAPTION%」は%IT_REQUIRED%桁以上で入力してください。」
     */
    @MessageBasicInfo(messageId = "S411", messageType = 1)
    public  MessageInfo S411;
    /**
     * メッセージID:S414
     * メッセージタイプ:システム
     * 「%CURRENT_PAGE% / %FULL_PAGE% ページ %LST_ROW_IDX%行目の「%IT_CAPTION%」は%IT_MAX_VAL%より小さくなければなりません。」
     */
    @MessageBasicInfo(messageId = "S414", messageType = 1)
    public  MessageInfo S414;
    /**
     * メッセージID:S415
     * メッセージタイプ:システム
     * 「%CURRENT_PAGE% / %FULL_PAGE% ページ %LST_ROW_IDX%行目の「%IT_CAPTION%」は%IT_MAX_VAL%以下でなければなりません。」
     */
    @MessageBasicInfo(messageId = "S415", messageType = 1)
    public  MessageInfo S415;
    /**
     * メッセージID:S416
     * メッセージタイプ:システム
     * 「%CURRENT_PAGE% / %FULL_PAGE% ページ %LST_ROW_IDX%行目の「%IT_CAPTION%」は%IT_MIN_VAL%より大きくなければなりません。」
     */
    @MessageBasicInfo(messageId = "S416", messageType = 1)
    public  MessageInfo S416;
    /**
     * メッセージID:S417
     * メッセージタイプ:システム
     * 「%CURRENT_PAGE% / %FULL_PAGE% ページ %LST_ROW_IDX%行目の「%IT_CAPTION%」は%IT_MIN_VAL%以上でなければなりません。」
     */
    @MessageBasicInfo(messageId = "S417", messageType = 1)
    public  MessageInfo S417;
    /**
     * メッセージID:S418
     * メッセージタイプ:システム
     * 「%CURRENT_PAGE% / %FULL_PAGE% ページ %LST_ROW_IDX%行目の「%IT_CAPTION%」は%IT_MIN_VAL%より大きく、%IT_MAX_VAL%より小さくなければなりません。」
     */
    @MessageBasicInfo(messageId = "S418", messageType = 1)
    public  MessageInfo S418;
    /**
     * メッセージID:S419
     * メッセージタイプ:システム
     * 「%CURRENT_PAGE% / %FULL_PAGE% ページ %LST_ROW_IDX%行目の「%IT_CAPTION%」は%IT_MIN_VAL%以上、%IT_MAX_VAL%より小さくなければなりません。」
     */
    @MessageBasicInfo(messageId = "S419", messageType = 1)
    public  MessageInfo S419;
    /**
     * メッセージID:S420
     * メッセージタイプ:システム
     * 「%CURRENT_PAGE% / %FULL_PAGE% ページ %LST_ROW_IDX%行目の「%IT_CAPTION%」は%IT_MIN_VAL%より大きく、%IT_MAX_VAL%以下でなければなりません。」
     */
    @MessageBasicInfo(messageId = "S420", messageType = 1)
    public  MessageInfo S420;
    /**
     * メッセージID:S421
     * メッセージタイプ:システム
     * 「%CURRENT_PAGE% / %FULL_PAGE% ページ %LST_ROW_IDX%行目の「%IT_CAPTION%」は%IT_MIN_VAL%以上、%IT_MAX_VAL%以下でなければなりません。」
     */
    @MessageBasicInfo(messageId = "S421", messageType = 1)
    public  MessageInfo S421;
    /**
     * メッセージID:S422
     * メッセージタイプ:システム
     * 「%CURRENT_PAGE% / %FULL_PAGE% ページ %LST_ROW_IDX%行目の「%IT_CAPTION%」に使用できない文字が含まれています。『%1』」
     */
    @MessageBasicInfo(messageId = "S422", messageType = 1)
    public  MessageInfo S422;
    /**
     * メッセージID:S423
     * メッセージタイプ:システム
     * 「%CURRENT_PAGE% / %FULL_PAGE% ページ 「%IT_CAPTION%」は時間として認識できません。」
     */
    @MessageBasicInfo(messageId = "S423", messageType = 1)
    public  MessageInfo S423;
    /**
     * メッセージID:S424
     * メッセージタイプ:システム
     * 「%CURRENT_PAGE% / %FULL_PAGE% ページ %LST_ROW_IDX%行目の「%IT_CAPTION%」に使用できない文字が含まれています。」
     */
    @MessageBasicInfo(messageId = "S424", messageType = 1)
    public  MessageInfo S424;
    /**
     * メッセージID:S425
     * メッセージタイプ:システム
     * 「%CURRENT_PAGE% / %FULL_PAGE% ページ %LST_ROW_IDX%行目の「%IT_CAPTION%」は%IT_MIN_VAL%以上、%IT_MAX_VAL%以下でなければなりません。」
     */
    @MessageBasicInfo(messageId = "S425", messageType = 1)
    public  MessageInfo S425;
    /**
     * メッセージID:S426
     * メッセージタイプ:システム
     * 「%CURRENT_PAGE% / %FULL_PAGE% ページ %LST_ROW_IDX%行目の「%IT_CAPTION%」は不正な値が選択されています。」
     */
    @MessageBasicInfo(messageId = "S426", messageType = 1)
    public  MessageInfo S426;
    /**
     * メッセージID:S900
     * メッセージタイプ:システム
     * 「%1」
     */
    @MessageBasicInfo(messageId = "S900", messageType = 1)
    public  MessageInfo S900;
    /**
     * メッセージID:S999
     * メッセージタイプ:システム
     * 「」
     */
    @MessageBasicInfo(messageId = "S999", messageType = 1)
    public  MessageInfo S999;
}
