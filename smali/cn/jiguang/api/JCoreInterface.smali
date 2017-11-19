.class public Lcn/jiguang/api/JCoreInterface;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x1e

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "3; -\u00180:"

    const/4 v0, -0x1

    move-object v4, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gt v5, v7, :cond_2

    :cond_0
    move-object v7, v1

    move v8, v6

    move v11, v5

    move-object v5, v1

    move v1, v11

    :goto_1
    aget-char v10, v5, v6

    rem-int/lit8 v9, v8, 0x5

    packed-switch v9, :pswitch_data_0

    const/16 v9, 0x61

    :goto_2
    xor-int/2addr v9, v10

    int-to-char v9, v9

    aput-char v9, v5, v6

    add-int/lit8 v6, v8, 0x1

    if-nez v1, :cond_1

    move-object v5, v7

    move v8, v6

    move v6, v1

    goto :goto_1

    :cond_1
    move v5, v1

    move-object v1, v7

    :cond_2
    if-gt v5, v6, :cond_0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_1

    aput-object v1, v3, v2

    const/4 v2, 0x1

    const-string v1, "*6,,\u0000.8k*\u00042)\":\u0004`>\'+\u0004!;2y\u001240;<\u0005"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "\n\u001c$+\u0004\t1?<\u0013&>(<"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "#1e3\u00115,#w\u0000.;96\u0008$q\"7\u0015%1?w2\u0014\u0010\u001b\t4\u0013\u0017"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "`/$+\u0015z"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "\u0001<?0\u000e.\u007ffy\u0012%+\u001f<\u00124\u001c$7\u000f\t\u000f\u001b6\u00134\u007f\")["

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "2*%w\u0000#+\"6\u000f"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "!<?0\u000e.\u007ffy\u0012%+\u00024-\u0002\u000c\u000e7\u0000\"3.t\u0002/1?+\u000e,"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, ",=8\u0006\u0013%/$+\u0015\u001f:%8\u0003,:"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "!1/+\u000e);e)\u000422\"*\u0012)0%w \u0003\u001c\u000e\n2\u001f\u0019\u0002\u0017$\u001f\u0013\u0004\u001a \u0014\u0016\u0004\u0017"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "c*%<\u0019#:;-\u0004$\u007ffy\u0013%.><\u00124\u000f.+\u000c),80\u000e.\u007f.c"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "!1/+\u000e);e)\u000422\"*\u0012)0%w3\u0005\u001e\u000f\u00061\u0008\u0010\u0005\u001c>\u0013\u000b\n\r$"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "\u001b-.(\u0014%,?\t\u000422\"*\u0012)0%\u0004A#0%-\u00048+k.\u00003\u007f%,\r,"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "!1/+\u000e);e)\u000422\"*\u0012)0%w6\u0012\u0016\u001f\u001c>\u0005\u0007\u001f\u001c3\u000e\u001e\u0007\u00062\u0014\u0010\u0019\u0018&\u0005"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "0:94\u00083,\"6\u000f3\u0013\"*\u0015z"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "!1/+\u000e);e)\u000422\"*\u0012)0%w3\u0005\u001e\u000f\u0006$\u0018\u000b\u000e\u000b/\u0001\u0013\u0014\n5\u000f\r\n\u001e$"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "!1/+\u000e);e8\u00110q\n:\u0015))\"-\u0018"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "2::,\u00043+\u001b<\u0013-68*\u0008/18"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "\u001b-.(\u0014%,?\t\u000422\"*\u0012)0%\u0004A#0%-\u00048+k4\u00143+k0\u000f3+*7\u0002%0-y #+\"/\u00084&"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "$>?8\u0012"

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_12
    aput-object v1, v3, v2

    const/16 v2, 0x14

    const-string v1, "3:%=\u0005!+*w\u0000#+\"6\u000f"

    const/16 v0, 0x13

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_13
    aput-object v1, v3, v2

    const/16 v2, 0x15

    const-string v1, "#2/"

    const/16 v0, 0x14

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_14
    aput-object v1, v3, v2

    const/16 v2, 0x16

    const-string v1, "51.!\u0002%/?<\u0005`rk:\u000e.+.!\u0015`(**A.*\'5"

    const/16 v0, 0x15

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_15
    aput-object v1, v3, v2

    const/16 v2, 0x17

    const-string v1, "\n\u001c$+\u0004`6%0\u0015`9*0\r%;"

    const/16 v0, 0x16

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_16
    aput-object v1, v3, v2

    const/16 v2, 0x18

    const-string v1, "3:%=\u0013%.><\u00124;*-\u0000n>(-\u0008/1"

    const/16 v0, 0x17

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_17
    aput-object v1, v3, v2

    const/16 v2, 0x19

    const-string v1, "46&<\u000e5+"

    const/16 v0, 0x18

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_18
    aput-object v1, v3, v2

    const/16 v2, 0x1a

    const-string v1, "#1e3\u00115,#w\u0000.;96\u0008$q\"7\u0015%1?w3\u0005\u000c\u001f\u00163\u0005\u000f\u001e\n)"

    const/16 v0, 0x19

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_19
    aput-object v1, v3, v2

    const/16 v2, 0x1b

    const-string v1, "#1e3\u00115,#w\u0000.;96\u0008$q\"7\u0015%1?w(\u000e\u0016\u001f"

    const/16 v0, 0x1a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1a
    aput-object v1, v3, v2

    const/16 v2, 0x1c

    const-string v1, "*6,,\u0000.8k*\u00042)\":\u0004`>\'+\u0004!;2y\u00124>9-\u0004$"

    const/16 v0, 0x1b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1b
    aput-object v1, v3, v2

    const/16 v2, 0x1d

    const-string v1, "\u0001<?0\u000e.\u007ffy\u0008.6?y\u0013%8\"*\u0015%-\u00047\r9e"

    const/16 v0, 0x1c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1c
    aput-object v1, v3, v2

    sput-object v4, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jiguang/api/JCoreInterface;->a:Z

    return-void

    :pswitch_1d
    const/16 v9, 0x40

    goto/16 :goto_2

    :pswitch_1e
    const/16 v9, 0x5f

    goto/16 :goto_2

    :pswitch_1f
    const/16 v9, 0x4b

    goto/16 :goto_2

    :pswitch_20
    const/16 v9, 0x59

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canCallDirect()Z
    .locals 1

    sget-object v0, Lcn/jiguang/b/a;->n:Lcn/jiguang/android/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAesConfig()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getAppKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/jiguang/b/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static getBinderByType(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcn/jiguang/b/a;->n:Lcn/jiguang/android/a;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v1, Lcn/jiguang/b/a;->n:Lcn/jiguang/android/a;

    invoke-interface {v1, p0, p1}, Lcn/jiguang/android/a;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getChannel()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcn/jiguang/api/JCoreInterface;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcn/jiguang/b/a/a;->A()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCommonConfigAppkey()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcn/jiguang/api/JCoreInterface;->a:Z

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcn/jiguang/b/a/a;->z()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getConnectionState(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/jiguang/api/JCoreInterface;->init(Landroid/content/Context;Z)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcn/jiguang/b/a/a;->c(Landroid/content/Context;)Lcn/jiguang/b/b/a;

    move-result-object v1

    sget-object v2, Lcn/jiguang/b/b/a;->a:Lcn/jiguang/b/b/a;

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getDebugMode()Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/b/a;->b:Z

    return v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcn/jiguang/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/jiguang/e/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getHttpConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcn/jiguang/b/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lcn/jiguang/b/d/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/net/HttpUtils;->httpGet(Landroid/content/Context;Ljava/lang/String;)Lcn/jiguang/net/HttpResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/jiguang/net/HttpResponse;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcn/jiguang/net/HttpResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getJCoreSDKVersionInt()I
    .locals 1

    const/16 v0, 0x70

    return v0
.end method

.method public static getNextRid()J
    .locals 2

    sget-boolean v0, Lcn/jiguang/api/JCoreInterface;->a:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lcn/jiguang/b/a/a;->j()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getRegistrationID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/jiguang/api/JCoreInterface;->init(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcn/jiguang/b/a/a;->w()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getReportTime()J
    .locals 4

    sget-boolean v0, Lcn/jiguang/api/JCoreInterface;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lcn/jiguang/b/a/a;->h()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getRuningFlag()Z
    .locals 1

    invoke-static {}, Lcn/jiguang/b/b/b;->a()Z

    move-result v0

    return v0
.end method

.method public static getSid()I
    .locals 1

    sget-boolean v0, Lcn/jiguang/api/JCoreInterface;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcn/jiguang/b/a/a;->F()I

    move-result v0

    goto :goto_0
.end method

.method public static getTestConn()Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/b/a/a;->c:Z

    return v0
.end method

.method public static getUid()J
    .locals 2

    sget-boolean v0, Lcn/jiguang/api/JCoreInterface;->a:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lcn/jiguang/b/a/a;->s()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Z)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-boolean v2, Lcn/jiguang/api/JCoreInterface;->a:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    sget-object v0, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v2, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x16

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Lcn/jiguang/c/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcn/jiguang/a/a/c/a/a;->a()Lcn/jiguang/a/a/c/a/a;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcn/jiguang/a/a/c/a/a;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcn/jiguang/b/a;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v0, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v2, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x17

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Lcn/jiguang/c/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    sput-boolean v0, Lcn/jiguang/api/JCoreInterface;->a:Z

    goto :goto_0
.end method

.method public static initAction(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcn/jiguang/api/JAction;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/jiguang/b/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static initActionExtra(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcn/jiguang/api/JActionExtra;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/jiguang/b/d/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static initCrashHandler(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcn/jiguang/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/jiguang/a/a/b/e;->a()Lcn/jiguang/a/a/b/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jiguang/a/a/b/e;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static isServiceStoped(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcn/jiguang/b/a/a;->e(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isTcpConnected()Z
    .locals 1

    invoke-static {}, Lcn/jiguang/b/a/a;->G()Z

    move-result v0

    return v0
.end method

.method public static isValidRegistered()Z
    .locals 1

    invoke-static {}, Lcn/jiguang/b/a/a;->t()Z

    move-result v0

    return v0
.end method

.method public static onFragmentPause(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcn/jiguang/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/jiguang/a/a/c/b;->a()Lcn/jiguang/a/a/c/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/jiguang/a/a/c/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onFragmentResume(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcn/jiguang/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/jiguang/a/a/c/b;->a()Lcn/jiguang/a/a/c/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/jiguang/a/a/c/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onKillProcess(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcn/jiguang/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/jiguang/a/a/c/b;->a()Lcn/jiguang/a/a/c/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jiguang/a/a/c/b;->c(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcn/jiguang/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcn/jiguang/a/a/c/a/a/c;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jiguang/a/a/c/b;->a()Lcn/jiguang/a/a/c/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jiguang/a/a/c/b;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcn/jiguang/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcn/jiguang/a/a/c/a/a/c;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jiguang/a/a/c/b;->a()Lcn/jiguang/a/a/c/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jiguang/a/a/c/b;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static processCtrlReport(I)V
    .locals 0

    invoke-static {p0}, Lcn/jiguang/a/c/a;->a(I)V

    return-void
.end method

.method public static register(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/jiguang/api/JCoreInterface;->init(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x1d

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcn/jiguang/b/d/m;->a()Lcn/jiguang/b/d/m;

    move-result-object v1

    sget-object v2, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x1b

    aget-object v2, v2, v3

    invoke-virtual {v1, p0, v2, v0}, Lcn/jiguang/b/d/m;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static reportHttpData(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p0, p1, p2}, Lcn/jiguang/b/d/p;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/json/JSONArray;

    invoke-static {p0, p1, p2}, Lcn/jiguang/b/d/p;->a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static requestPermission(Landroid/content/Context;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x2

    if-nez p0, :cond_1

    sget-object v0, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v6

    sget-object v1, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_2

    sget-object v0, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v6

    sget-object v1, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    aput-object v1, v0, v4

    sget-object v1, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    aput-object v1, v0, v3

    sget-object v1, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x3

    sget-object v2, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    sget-object v1, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    aget-object v1, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/16 v4, 0xe

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x11

    aget-object v2, v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, [Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    aget-object v1, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/c/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static restart(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    if-nez p0, :cond_1

    sget-object v0, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    sget-object v1, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_3

    invoke-static {p0}, Lcn/jiguang/b/a/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    sget-object v1, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x1c

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/jiguang/b/b/b;->a(Landroid/content/Context;Z)V

    invoke-static {p0, v1}, Lcn/jiguang/b/a/a;->a(Landroid/content/Context;Z)V

    :cond_3
    invoke-static {p0, v1}, Lcn/jiguang/api/JCoreInterface;->init(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    sget-object v0, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/16 v1, 0x1a

    aget-object v0, v0, v1

    :goto_1
    invoke-static {}, Lcn/jiguang/b/d/m;->a()Lcn/jiguang/b/d/m;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p2}, Lcn/jiguang/b/d/m;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/16 v1, 0x1b

    aget-object v0, v0, v1

    goto :goto_1
.end method

.method public static sendAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    invoke-static {p0}, Lcn/jiguang/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/b/d/m;->a()Lcn/jiguang/b/d/m;

    move-result-object v0

    sget-object v1, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p2}, Lcn/jiguang/b/d/m;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static sendData(Landroid/content/Context;Ljava/lang/String;I[B)V
    .locals 4

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcn/jiguang/api/JCoreInterface;->init(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    sget-object v1, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcn/jiguang/b/d/m;->a()Lcn/jiguang/b/d/m;

    move-result-object v1

    sget-object v2, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x14

    aget-object v2, v2, v3

    invoke-virtual {v1, p0, v2, v0}, Lcn/jiguang/b/d/m;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static sendRequestData(Landroid/content/Context;Ljava/lang/String;I[B)V
    .locals 4

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcn/jiguang/api/JCoreInterface;->init(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    sget-object v1, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x19

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcn/jiguang/b/d/m;->a()Lcn/jiguang/b/d/m;

    move-result-object v1

    sget-object v2, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x18

    aget-object v2, v2, v3

    invoke-virtual {v1, p0, v2, v0}, Lcn/jiguang/b/d/m;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static setAnalysisAction(Lcn/jiguang/api/JAnalyticsAction;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcn/jiguang/a/a;->a:Lcn/jiguang/api/JAnalyticsAction;

    :cond_0
    return-void
.end method

.method public static setCanLaunchedStoppedService(Z)V
    .locals 0

    sput-boolean p0, Lcn/jiguang/b/a;->l:Z

    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 0

    sput-boolean p0, Lcn/jiguang/b/a;->b:Z

    return-void
.end method

.method public static setImLBSEnable(Landroid/content/Context;Z)V
    .locals 3

    sget-object v0, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jiguang/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-static {p0, v0, p1}, Lcn/jiguang/api/MultiSpHelper;->commitBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static setLogEnable(Z)V
    .locals 0

    sput-boolean p0, Lcn/jiguang/api/BaseLogger;->a:Z

    return-void
.end method

.method public static setTestConn(Z)V
    .locals 0

    sput-boolean p0, Lcn/jiguang/b/a/a;->c:Z

    return-void
.end method

.method public static setTestConnIPPort(Ljava/lang/String;I)V
    .locals 4

    sget-object v0, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcn/jiguang/b/a/a;->a:Ljava/lang/String;

    sput p1, Lcn/jiguang/b/a/a;->b:I

    return-void
.end method

.method public static stop(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcn/jiguang/api/JCoreInterface;->init(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcn/jiguang/b/a/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/b/d/m;->a()Lcn/jiguang/b/d/m;

    move-result-object v0

    sget-object v1, Lcn/jiguang/api/JCoreInterface;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p2}, Lcn/jiguang/b/d/m;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static stopCrashHandler(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcn/jiguang/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/jiguang/a/a/b/e;->a()Lcn/jiguang/a/a/b/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jiguang/a/a/b/e;->c(Landroid/content/Context;)V

    goto :goto_0
.end method
