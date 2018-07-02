package com.fangdean.goodsserver.util;

import java.util.concurrent.atomic.AtomicLong;

public class Squence {

    private static AtomicLong value;

    public static void setValue(Long vValue) {
        value.set(vValue);
    }

    public static Long getNext() {
        return value.addAndGet(1);
    }

}
