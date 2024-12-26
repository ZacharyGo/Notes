package com.fujitsu.intarfrm.skeletons.commons.framework;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * <p>
 * 画面タイプを定義するアノテーション。
 * </p>
 */
@Retention(RetentionPolicy.RUNTIME)
@Target({ ElementType.TYPE })
public @interface ViewTypeAnnotation {

    /**
     *  画面タイプの値  
     */
    public String value();
}