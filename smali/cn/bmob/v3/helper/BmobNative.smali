.class public Lcn/bmob/v3/helper/BmobNative;
.super Ljava/lang/Object;
.source "BmobNative.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    :try_start_0
    const-string v0, "bmob"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :goto_0
    return-void

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native clear()V
.end method

.method public static final native decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native decryptByKey(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native encryptByKey(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native getAcceptId()Ljava/lang/String;
.end method

.method public static final native getAppId()Ljava/lang/String;
.end method

.method public static final native getInterval()Ljava/lang/String;
.end method

.method public static final native hasKey()Z
.end method

.method public static final native init(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public static final native saveInterval(Ljava/lang/String;)V
.end method

.method public static final native saveKey(Ljava/lang/String;)V
.end method
