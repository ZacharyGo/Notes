// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.practice7.practice7a.inherits.codes;


import com.fujitsu.intarfrm.codes.product_cod.Product_codCodeActions;

/**
 * <p>項目[DRLCODE2]に割り当てたコード定義クラス。</p>
 *
 * 項目名：[DRLCODE2]（標題：Dropdown using Code）<br>
 * コードID：[PRODUCT_COD]、コード名：[PRODUCT_COD]（標題：）<br>
 * 
 * @author INTARFRM継承ファイル
 */
public class Drlcode2CodeActionBase
        extends Product_codCodeActions.Product_codDrlAction {
    
    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;
    
    /**
     * <p>コンストラクタ。</p>
     */
    public Drlcode2CodeActionBase() {
        this(new Product_codCodeActions());
    }

    /**
     * <p>コンストラクタ。</p>
     */
    public Drlcode2CodeActionBase(Product_codCodeActions actions) {
        // 既存のコード処理で初期化する
		actions.super();
    }
}
