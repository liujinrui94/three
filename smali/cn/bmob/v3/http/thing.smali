.class public final Lcn/bmob/v3/http/thing;
.super Ljava/lang/Object;
.source "BmobFactory.java"


# static fields
.field private static volatile Code:Lcn/bmob/v3/http/thing;

.field private static V:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcn/bmob/v3/http/thing;->V:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Code(Ljava/lang/String;Ljava/lang/String;JLcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 4

    .prologue
    .line 391
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 392
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 394
    :try_start_0
    const-string v2, "url"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    const-string v2, "filename"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    const-string v2, "filesize"

    invoke-virtual {v0, v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 397
    const-string v2, "cdn"

    const-string v3, "upyun"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 398
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :goto_0
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    const-string v2, "http://open.bmob.cn/8/savecdnupload"

    invoke-virtual {v0, v2, v1}, Lcn/bmob/v3/http/acknowledge$This;->V(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    .line 8389
    iget-object v1, v0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    new-instance v2, Lcn/bmob/v3/http/acknowledge$This$6;

    invoke-direct {v2, v0}, Lcn/bmob/v3/http/acknowledge$This$6;-><init>(Lcn/bmob/v3/http/acknowledge$This;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    iput-object v1, v0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    .line 402
    new-instance v1, Lcn/bmob/v3/http/c/This;

    const/4 v2, 0x2

    const/16 v3, 0x3e8

    invoke-direct {v1, v2, v3}, Lcn/bmob/v3/http/c/This;-><init>(II)V

    .line 9299
    iget-object v2, v0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    invoke-virtual {v2, v1}, Lrx/Observable;->retryWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    iput-object v1, v0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    .line 402
    invoke-virtual {v0, p4}, Lcn/bmob/v3/http/acknowledge$This;->V(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0

    .line 399
    :catch_0
    move-exception v0

    .line 400
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static Code(Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge;
    .locals 3

    .prologue
    .line 210
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 1215
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(ZLjava/util/List;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    .line 210
    invoke-virtual {v0, p0, p1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->Z()Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/bmob/v3/http/acknowledge$This;->V(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0
.end method

.method public static Code(Ljava/util/List;Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/http/bean/R1;",
            ">;",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/listener/UpdateListener;",
            ")",
            "Lcn/bmob/v3/http/acknowledge;"
        }
    .end annotation

    .prologue
    .line 446
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 447
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 449
    :try_start_0
    const-string v2, "filename"

    invoke-static {p1}, Lcn/bmob/v3/datatype/a/This;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 450
    const-string v2, "cdn"

    const-string v3, "upyun"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 451
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :goto_0
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    .line 10215
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Lcn/bmob/v3/http/acknowledge$This;->Code(ZLjava/util/List;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    .line 455
    const-string v2, "http://open.bmob.cn/8/delcdnupload"

    invoke-virtual {v0, v2, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    .line 10408
    iget-object v1, v0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    new-instance v2, Lcn/bmob/v3/http/acknowledge$This$7;

    invoke-direct {v2, v0}, Lcn/bmob/v3/http/acknowledge$This$7;-><init>(Lcn/bmob/v3/http/acknowledge$This;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    iput-object v1, v0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    .line 455
    invoke-virtual {v0, p2}, Lcn/bmob/v3/http/acknowledge$This;->V(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static Code(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/http/bean/R1;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcn/bmob/v3/listener/BmobCallback;",
            ")",
            "Lcn/bmob/v3/http/acknowledge;"
        }
    .end annotation

    .prologue
    .line 223
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    .line 2215
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcn/bmob/v3/http/acknowledge$This;->Code(ZLjava/util/List;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    .line 223
    invoke-virtual {v0, p1, p2}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->I()Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcn/bmob/v3/http/acknowledge$This;->V(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0
.end method

.method public static Code([Ljava/lang/String;Lcn/bmob/v3/listener/DeleteBatchListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 465
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 466
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 468
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 469
    array-length v6, p0

    move v0, v2

    .line 470
    :goto_0
    if-ge v0, v6, :cond_0

    .line 471
    aget-object v7, p0, v0

    .line 472
    invoke-static {v7}, Lcn/bmob/v3/datatype/a/This;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 470
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 474
    :cond_0
    const-string v0, "upyun"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 475
    const-string v0, "data"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :goto_1
    new-instance v4, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v4}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    .line 11198
    new-instance v5, Lcn/bmob/v3/http/bean/R1;

    array-length v0, p0

    if-nez v0, :cond_1

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v6, Lcn/bmob/v3/exception/BmobException;

    const/16 v7, 0x232d

    const-string v8, "urls length can not be less than 0"

    invoke-direct {v6, v7, v8}, Lcn/bmob/v3/exception/BmobException;-><init>(ILjava/lang/String;)V

    invoke-direct {v5, v0, v6}, Lcn/bmob/v3/http/bean/R1;-><init>(Ljava/lang/Boolean;Lcn/bmob/v3/exception/BmobException;)V

    .line 11199
    const/4 v0, 0x2

    new-array v0, v0, [Lcn/bmob/v3/http/bean/R1;

    const-string v6, "urls must not be null"

    invoke-static {p0, v6}, Lcn/bmob/v3/http/thing;->V(Ljava/lang/Object;Ljava/lang/String;)Lcn/bmob/v3/http/bean/R1;

    move-result-object v6

    aput-object v6, v0, v2

    aput-object v5, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 11215
    invoke-virtual {v4, v1, v0}, Lcn/bmob/v3/http/acknowledge$This;->Code(ZLjava/util/List;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    .line 479
    const-string v1, "http://open.bmob.cn/8/delcdnbatch"

    invoke-virtual {v0, v1, v3}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    .line 11427
    iget-object v1, v0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    new-instance v2, Lcn/bmob/v3/http/acknowledge$This$8;

    invoke-direct {v2, v0}, Lcn/bmob/v3/http/acknowledge$This$8;-><init>(Lcn/bmob/v3/http/acknowledge$This;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    iput-object v1, v0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    .line 479
    invoke-virtual {v0, p1}, Lcn/bmob/v3/http/acknowledge$This;->V(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0

    .line 476
    :catch_0
    move-exception v0

    .line 477
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_1
    move v0, v2

    .line 11198
    goto :goto_2
.end method

.method public static Code()Lcn/bmob/v3/http/thing;
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcn/bmob/v3/http/thing;->Code:Lcn/bmob/v3/http/thing;

    if-nez v0, :cond_1

    .line 58
    sget-object v1, Lcn/bmob/v3/http/thing;->V:[B

    monitor-enter v1

    .line 59
    :try_start_0
    sget-object v0, Lcn/bmob/v3/http/thing;->Code:Lcn/bmob/v3/http/thing;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcn/bmob/v3/http/thing;

    invoke-direct {v0}, Lcn/bmob/v3/http/thing;-><init>()V

    sput-object v0, Lcn/bmob/v3/http/thing;->Code:Lcn/bmob/v3/http/thing;

    .line 61
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_1
    sget-object v0, Lcn/bmob/v3/http/thing;->Code:Lcn/bmob/v3/http/thing;

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static Code(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/http/bean/R1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x2

    new-array v0, v0, [Lcn/bmob/v3/http/bean/R1;

    const/4 v1, 0x0

    invoke-static {}, Lcn/bmob/v3/http/thing;->I()Lcn/bmob/v3/http/bean/R1;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0, p1}, Lcn/bmob/v3/http/thing;->V(Ljava/lang/Object;Ljava/lang/String;)Lcn/bmob/v3/http/bean/R1;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static Code(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/http/bean/R1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [Lcn/bmob/v3/http/bean/R1;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcn/bmob/v3/http/thing;->V(Ljava/lang/Object;Ljava/lang/String;)Lcn/bmob/v3/http/bean/R1;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2, p3}, Lcn/bmob/v3/http/thing;->V(Ljava/lang/Object;Ljava/lang/String;)Lcn/bmob/v3/http/bean/R1;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static Code(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/http/bean/R1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/bmob/v3/http/bean/R1;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcn/bmob/v3/http/thing;->V(Ljava/lang/Object;Ljava/lang/String;)Lcn/bmob/v3/http/bean/R1;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2, p3}, Lcn/bmob/v3/http/thing;->V(Ljava/lang/Object;Ljava/lang/String;)Lcn/bmob/v3/http/bean/R1;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p4, p5}, Lcn/bmob/v3/http/thing;->V(Ljava/lang/Object;Ljava/lang/String;)Lcn/bmob/v3/http/bean/R1;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static Code(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/http/bean/R1;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 176
    new-instance v3, Lcn/bmob/v3/http/bean/R1;

    const-string v0, "_User"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v4, Lcn/bmob/v3/exception/BmobException;

    const/16 v5, 0x2333

    const-string v6, "BmobUser does not support save operation,please used signUp method(9011)."

    invoke-direct {v4, v5, v6}, Lcn/bmob/v3/exception/BmobException;-><init>(ILjava/lang/String;)V

    invoke-direct {v3, v0, v4}, Lcn/bmob/v3/http/bean/R1;-><init>(Ljava/lang/Boolean;Lcn/bmob/v3/exception/BmobException;)V

    .line 177
    new-instance v4, Lcn/bmob/v3/http/bean/R1;

    const/16 v0, 0x31

    invoke-static {p0, v1, v0}, Lcn/bmob/v3/datatype/a/This;->Code(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_Installation"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_Role"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v5, Lcn/bmob/v3/exception/BmobException;

    const/16 v6, 0x2335

    const-string v7, "BmobObject Object name(database table name) format is not correct(9013)."

    invoke-direct {v5, v6, v7}, Lcn/bmob/v3/exception/BmobException;-><init>(ILjava/lang/String;)V

    invoke-direct {v4, v0, v5}, Lcn/bmob/v3/http/bean/R1;-><init>(Ljava/lang/Boolean;Lcn/bmob/v3/exception/BmobException;)V

    .line 178
    const/4 v0, 0x2

    new-array v0, v0, [Lcn/bmob/v3/http/bean/R1;

    aput-object v3, v0, v2

    aput-object v4, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 177
    goto :goto_0
.end method

.method public static Code(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/http/bean/R1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    const/4 v0, 0x2

    new-array v0, v0, [Lcn/bmob/v3/http/bean/R1;

    const/4 v1, 0x0

    invoke-static {}, Lcn/bmob/v3/http/thing;->I()Lcn/bmob/v3/http/bean/R1;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0, p1}, Lcn/bmob/v3/http/thing;->V(Ljava/lang/String;Ljava/lang/String;)Lcn/bmob/v3/http/bean/R1;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/http/bean/R1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    const/4 v0, 0x2

    new-array v0, v0, [Lcn/bmob/v3/http/bean/R1;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcn/bmob/v3/http/thing;->V(Ljava/lang/String;Ljava/lang/String;)Lcn/bmob/v3/http/bean/R1;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2, p3}, Lcn/bmob/v3/http/thing;->V(Ljava/lang/String;Ljava/lang/String;)Lcn/bmob/v3/http/bean/R1;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static Code(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/http/bean/R1;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x232d

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 187
    new-instance v3, Lcn/bmob/v3/http/bean/R1;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v4, Lcn/bmob/v3/exception/BmobException;

    const-string v5, "A batch operation can not be less than 0"

    invoke-direct {v4, v7, v5}, Lcn/bmob/v3/exception/BmobException;-><init>(ILjava/lang/String;)V

    invoke-direct {v3, v0, v4}, Lcn/bmob/v3/http/bean/R1;-><init>(Ljava/lang/Boolean;Lcn/bmob/v3/exception/BmobException;)V

    .line 188
    new-instance v4, Lcn/bmob/v3/http/bean/R1;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/16 v5, 0x32

    if-le v0, v5, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v5, Lcn/bmob/v3/exception/BmobException;

    const-string v6, "A batch operation can not be more than 50"

    invoke-direct {v5, v7, v6}, Lcn/bmob/v3/exception/BmobException;-><init>(ILjava/lang/String;)V

    invoke-direct {v4, v0, v5}, Lcn/bmob/v3/http/bean/R1;-><init>(Ljava/lang/Boolean;Lcn/bmob/v3/exception/BmobException;)V

    .line 189
    const/4 v0, 0x2

    new-array v0, v0, [Lcn/bmob/v3/http/bean/R1;

    aput-object v3, v0, v2

    aput-object v4, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 187
    goto :goto_0

    :cond_1
    move v0, v2

    .line 188
    goto :goto_1
.end method

.method static synthetic Code(Lcn/bmob/v3/http/thing;Ljava/lang/String;Ljava/lang/String;JLcn/bmob/v3/listener/UpdateListener;)Lrx/Subscription;
    .locals 1

    .prologue
    .line 49
    .line 12410
    invoke-static {p1, p2, p3, p4, p5}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/String;Ljava/lang/String;JLcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    .line 13083
    iget-object v0, v0, Lcn/bmob/v3/http/acknowledge;->V:Lrx/Subscription;

    .line 49
    return-object v0
.end method

.method public static I(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/http/bean/R1;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcn/bmob/v3/listener/BmobCallback;",
            ")",
            "Lcn/bmob/v3/http/acknowledge;"
        }
    .end annotation

    .prologue
    .line 251
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    .line 4215
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcn/bmob/v3/http/acknowledge$This;->Code(ZLjava/util/List;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    .line 251
    invoke-virtual {v0, p1, p2}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->Z()Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcn/bmob/v3/http/acknowledge$This;->V(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0
.end method

.method private static I()Lcn/bmob/v3/http/bean/R1;
    .locals 5

    .prologue
    .line 71
    new-instance v1, Lcn/bmob/v3/http/bean/R1;

    invoke-static {}, Lcn/bmob/v3/Bmob;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v2, Lcn/bmob/v3/exception/BmobException;

    const/16 v3, 0x2334

    const-string v4, "context is null(9012)."

    invoke-direct {v2, v3, v4}, Lcn/bmob/v3/exception/BmobException;-><init>(ILjava/lang/String;)V

    invoke-direct {v1, v0, v2}, Lcn/bmob/v3/http/bean/R1;-><init>(Ljava/lang/Boolean;Lcn/bmob/v3/exception/BmobException;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static V(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/http/bean/R1;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcn/bmob/v3/listener/BmobCallback;",
            ")",
            "Lcn/bmob/v3/http/acknowledge;"
        }
    .end annotation

    .prologue
    .line 237
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    .line 3215
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcn/bmob/v3/http/acknowledge$This;->Code(ZLjava/util/List;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    .line 237
    invoke-virtual {v0, p1, p2}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    .line 3478
    iget-object v1, v0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    new-instance v2, Lcn/bmob/v3/http/acknowledge$This$10;

    invoke-direct {v2, v0}, Lcn/bmob/v3/http/acknowledge$This$10;-><init>(Lcn/bmob/v3/http/acknowledge$This;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    iput-object v1, v0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    .line 237
    invoke-virtual {v0, p3}, Lcn/bmob/v3/http/acknowledge$This;->V(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0
.end method

.method private static V(Ljava/lang/Object;Ljava/lang/String;)Lcn/bmob/v3/http/bean/R1;
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 105
    .line 106
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 107
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    move v1, v0

    .line 113
    :cond_1
    new-instance v0, Lcn/bmob/v3/http/bean/R1;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Lcn/bmob/v3/exception/BmobException;

    const/16 v3, 0x233a

    invoke-direct {v2, v3, p1}, Lcn/bmob/v3/exception/BmobException;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcn/bmob/v3/http/bean/R1;-><init>(Ljava/lang/Boolean;Lcn/bmob/v3/exception/BmobException;)V

    return-object v0

    .line 111
    :cond_2
    if-eqz p0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static V(Ljava/lang/String;Ljava/lang/String;)Lcn/bmob/v3/http/bean/R1;
    .locals 4

    .prologue
    .line 81
    new-instance v0, Lcn/bmob/v3/http/bean/R1;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Lcn/bmob/v3/exception/BmobException;

    const/16 v3, 0x233a

    invoke-direct {v2, v3, p1}, Lcn/bmob/v3/exception/BmobException;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcn/bmob/v3/http/bean/R1;-><init>(Ljava/lang/Boolean;Lcn/bmob/v3/exception/BmobException;)V

    return-object v0
.end method


# virtual methods
.method public final Code(Lcn/bmob/v3/listener/QueryListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/bmob/v3/listener/QueryListener",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcn/bmob/v3/http/acknowledge;"
        }
    .end annotation

    .prologue
    .line 281
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 6215
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(ZLjava/util/List;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    .line 281
    const-string v1, "http://open.bmob.cn/8/timestamp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/http/thing$2;

    invoke-direct {v1, p0}, Lcn/bmob/v3/http/thing$2;-><init>(Lcn/bmob/v3/http/thing;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Lrx/functions/Func1;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/bmob/v3/http/acknowledge$This;->V(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0
.end method

.method public final Code(Ljava/lang/Class;Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/LogInListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/http/bean/R1;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcn/bmob/v3/listener/LogInListener",
            "<TT;>;)",
            "Lcn/bmob/v3/http/acknowledge;"
        }
    .end annotation

    .prologue
    .line 266
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    .line 5215
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcn/bmob/v3/http/acknowledge$This;->Code(ZLjava/util/List;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    .line 266
    invoke-virtual {v0, p3, p4}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/http/thing$1;

    invoke-direct {v1, p0}, Lcn/bmob/v3/http/thing$1;-><init>(Lcn/bmob/v3/http/thing;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Lrx/functions/Action1;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    .line 5533
    iget-object v1, v0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    new-instance v2, Lcn/bmob/v3/http/acknowledge$This$13;

    invoke-direct {v2, v0, p1}, Lcn/bmob/v3/http/acknowledge$This$13;-><init>(Lcn/bmob/v3/http/acknowledge$This;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    iput-object v1, v0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    .line 266
    invoke-virtual {v0, p5}, Lcn/bmob/v3/http/acknowledge$This;->V(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0
.end method

.method public final Code(Lorg/json/JSONObject;Lcn/bmob/v3/listener/QueryListListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcn/bmob/v3/listener/QueryListListener",
            "<",
            "Lcn/bmob/v3/datatype/BmobTableSchema;",
            ">;)",
            "Lcn/bmob/v3/http/acknowledge;"
        }
    .end annotation

    .prologue
    .line 297
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 7215
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(ZLjava/util/List;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    .line 297
    const-string v1, "http://open.bmob.cn/8/schemas"

    invoke-virtual {v0, v1, p1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/http/thing$3;

    invoke-direct {v1, p0}, Lcn/bmob/v3/http/thing$3;-><init>(Lcn/bmob/v3/http/thing;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Lrx/functions/Func1;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/bmob/v3/http/acknowledge$This;->V(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0
.end method

.method public final Code(Lorg/json/JSONObject;Lcn/bmob/v3/listener/QueryListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcn/bmob/v3/listener/QueryListener",
            "<",
            "Lcn/bmob/v3/datatype/BmobTableSchema;",
            ">;)",
            "Lcn/bmob/v3/http/acknowledge;"
        }
    .end annotation

    .prologue
    .line 328
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 8215
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(ZLjava/util/List;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    .line 328
    const-string v1, "http://open.bmob.cn/8/schemas"

    invoke-virtual {v0, v1, p1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/http/thing$4;

    invoke-direct {v1, p0}, Lcn/bmob/v3/http/thing$4;-><init>(Lcn/bmob/v3/http/thing;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Lrx/functions/Func1;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/bmob/v3/http/acknowledge$This;->V(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0
.end method

.method public final Code(Ljava/lang/String;Ljava/lang/String;J)Lrx/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    new-instance v6, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v6}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    new-instance v0, Lcn/bmob/v3/http/thing$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcn/bmob/v3/http/thing$6;-><init>(Lcn/bmob/v3/http/thing;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Lcn/bmob/v3/http/acknowledge$This;->Code(Lrx/Observable$OnSubscribe;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    .line 10075
    iget-object v0, v0, Lcn/bmob/v3/http/acknowledge;->Code:Lrx/Observable;

    invoke-virtual {v0}, Lrx/Observable;->asObservable()Lrx/Observable;

    move-result-object v0

    .line 420
    return-object v0
.end method

.method public final V()Lcn/bmob/v3/http/acknowledge;
    .locals 3

    .prologue
    .line 360
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    const-string v1, "http://open.bmob.cn/8/cdn"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/bmob/v3/http/acknowledge$This;->V(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    .line 8368
    iget-object v1, v0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    new-instance v2, Lcn/bmob/v3/http/acknowledge$This$5;

    invoke-direct {v2, v0}, Lcn/bmob/v3/http/acknowledge$This$5;-><init>(Lcn/bmob/v3/http/acknowledge$This;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    iput-object v1, v0, Lcn/bmob/v3/http/acknowledge$This;->Code:Lrx/Observable;

    .line 360
    new-instance v1, Lcn/bmob/v3/http/thing$5;

    invoke-direct {v1, p0}, Lcn/bmob/v3/http/thing$5;-><init>(Lcn/bmob/v3/http/thing;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Lrx/functions/Action1;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0
.end method
