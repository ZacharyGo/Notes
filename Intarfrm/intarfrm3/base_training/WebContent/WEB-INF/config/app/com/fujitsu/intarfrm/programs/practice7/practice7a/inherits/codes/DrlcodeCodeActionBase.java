// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.practice7.practice7a.inherits.codes;


import com.fujitsu.intarfrm.codes.product_cod.Product_codCodeActions;

/**
 * <p>項目[DRLCODE]に割り当てたコード定義クラス。</p>
 *
 * 項目名：[DRLCODE]（標題：Dropdown using Code (key value display)）<br>
 * コードID：[PRODUCT_COD]、コード名：[PRODUCT_COD]（標題：）<br>
 * 
 * @author INTARFRM継承ファイル
 */
public class DrlcodeCodeActionBase
        extends Product_codCodeActions.Product_codDrlAction {
    
    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;
    
    /**
     * <p>コンストラクタ。</p>
     */
    public DrlcodeCodeActionBase() {
        this(new Product_codCodeActions());
    }

    /**
     * <p>コンストラクタ。</p>
     */
    public DrlcodeCodeActionBase(Product_codCodeActions actions) {
        // 既存のコード処理で初期化する
		actions.super();
    }
}
