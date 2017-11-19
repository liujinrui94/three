.class public Lcn/bmob/v3/BmobQuery;
.super Ljava/lang/Object;
.source "BmobQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/bmob/v3/BmobQuery$CachePolicy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private B:Lcn/bmob/v3/http/darkness;

.field private Code:Landroid/content/Context;

.field private I:J

.field private V:Lcn/bmob/v3/BmobQuery$CachePolicy;

.field private Z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/bmob/v3/BmobQuery;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 56
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iput-object p1, p0, Lcn/bmob/v3/BmobQuery;->Z:Ljava/lang/String;

    .line 60
    :cond_0
    sget-object v0, Lcn/bmob/v3/BmobQuery$CachePolicy;->IGNORE_CACHE:Lcn/bmob/v3/BmobQuery$CachePolicy;

    iput-object v0, p0, Lcn/bmob/v3/BmobQuery;->V:Lcn/bmob/v3/BmobQuery$CachePolicy;

    .line 61
    const-wide/32 v0, 0x112a880

    iput-wide v0, p0, Lcn/bmob/v3/BmobQuery;->I:J

    .line 62
    new-instance v0, Lcn/bmob/v3/http/darkness;

    invoke-direct {v0}, Lcn/bmob/v3/http/darkness;-><init>()V

    iput-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    .line 63
    invoke-static {}, Lcn/bmob/v3/Bmob;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/BmobQuery;->Code:Landroid/content/Context;

    .line 64
    return-void
.end method

.method private Code(Lcn/bmob/v3/listener/QueryListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/bmob/v3/listener/QueryListener",
            "<",
            "Lorg/json/JSONArray;",
            ">;)",
            "Lcn/bmob/v3/http/acknowledge;"
        }
    .end annotation

    .prologue
    .line 566
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/darkness;->Code(I)V

    .line 568
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0}, Lcn/bmob/v3/http/darkness;->I()Lorg/json/JSONObject;

    move-result-object v1

    .line 570
    :try_start_0
    const-string v0, "c"

    iget-object v2, p0, Lcn/bmob/v3/BmobQuery;->Z:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    :goto_0
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    const-string v2, "http://open.bmob.cn/8/find"

    invoke-virtual {v0, v2, v1}, Lcn/bmob/v3/http/acknowledge$This;->V(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->V()Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/bmob/v3/http/acknowledge$This;->V(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0

    .line 571
    :catch_0
    move-exception v0

    .line 572
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private Code(Ljava/lang/Class;Lcn/bmob/v3/listener/CountListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcn/bmob/v3/listener/CountListener;",
            ")",
            "Lcn/bmob/v3/http/acknowledge;"
        }
    .end annotation

    .prologue
    .line 740
    if-nez p1, :cond_0

    .line 741
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " class must not be null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_0
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/darkness;->Code(I)V

    .line 746
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0, p1}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/Class;)V

    .line 748
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0}, Lcn/bmob/v3/http/darkness;->I()Lorg/json/JSONObject;

    move-result-object v0

    .line 750
    invoke-static {}, Lcn/bmob/v3/http/thing;->Code()Lcn/bmob/v3/http/thing;

    const-string v1, "no check"

    const-string v2, " no check"

    invoke-static {v1, v2}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v2, "http://open.bmob.cn/8/find"

    invoke-static {v1, v2, v0, p2}, Lcn/bmob/v3/http/thing;->V(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0
.end method

.method private Code(Ljava/lang/Class;Lcn/bmob/v3/listener/QueryListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcn/bmob/v3/listener/QueryListener",
            "<",
            "Lorg/json/JSONArray;",
            ">;)",
            "Lcn/bmob/v3/http/acknowledge;"
        }
    .end annotation

    .prologue
    .line 875
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/darkness;->Code(I)V

    .line 877
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0, p1}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/Class;)V

    .line 879
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0}, Lcn/bmob/v3/http/darkness;->I()Lorg/json/JSONObject;

    move-result-object v0

    .line 881
    invoke-static {}, Lcn/bmob/v3/http/thing;->Code()Lcn/bmob/v3/http/thing;

    const-string v1, "no check"

    const-string v2, " no check"

    invoke-static {v1, v2}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v2, "http://open.bmob.cn/8/find"

    invoke-static {v1, v2, v0, p2}, Lcn/bmob/v3/http/thing;->I(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0
.end method

.method private Code(Ljava/lang/String;Lcn/bmob/v3/listener/QueryListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/listener/QueryListener",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcn/bmob/v3/http/acknowledge;"
        }
    .end annotation

    .prologue
    .line 547
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/darkness;->Code(I)V

    .line 549
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0, p1}, Lcn/bmob/v3/http/darkness;->I(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0}, Lcn/bmob/v3/http/darkness;->I()Lorg/json/JSONObject;

    move-result-object v1

    .line 553
    :try_start_0
    const-string v0, "c"

    iget-object v2, p0, Lcn/bmob/v3/BmobQuery;->Z:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :goto_0
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    const-string v2, "http://open.bmob.cn/8/find"

    invoke-virtual {v0, v2, v1}, Lcn/bmob/v3/http/acknowledge$This;->V(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->Code()Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/bmob/v3/http/acknowledge$This;->V(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0

    .line 554
    :catch_0
    move-exception v0

    .line 555
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private Code(Landroid/content/Context;Ljava/lang/Class;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 468
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0, p2}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/Class;)V

    .line 469
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0}, Lcn/bmob/v3/http/darkness;->I()Lorg/json/JSONObject;

    .line 2070
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0}, Lcn/bmob/v3/http/darkness;->V()Lorg/json/JSONObject;

    move-result-object v0

    .line 470
    invoke-static {p1, v0}, Lcn/bmob/v3/http/This;->Code(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic Code(Lcn/bmob/v3/BmobQuery;Ljava/lang/Class;Lcn/bmob/v3/listener/SQLQueryListener;)Lrx/Subscription;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/Class;Lcn/bmob/v3/listener/SQLQueryListener;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method static synthetic Code(Lcn/bmob/v3/BmobQuery;Ljava/lang/String;Ljava/lang/Class;Lcn/bmob/v3/listener/BmobCallback;)Lrx/Subscription;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/String;Ljava/lang/Class;Lcn/bmob/v3/listener/BmobCallback;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method private Code(Ljava/lang/Class;Lcn/bmob/v3/listener/SQLQueryListener;)Lrx/Subscription;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcn/bmob/v3/listener/SQLQueryListener",
            "<TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 906
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/darkness;->Code(I)V

    .line 908
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0}, Lcn/bmob/v3/http/darkness;->I()Lorg/json/JSONObject;

    move-result-object v7

    .line 909
    invoke-static {}, Lcn/bmob/v3/http/a/mine;->Code()Lcn/bmob/v3/http/a/mine;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, p0, Lcn/bmob/v3/BmobQuery;->V:Lcn/bmob/v3/BmobQuery$CachePolicy;

    iget-wide v4, p0, Lcn/bmob/v3/BmobQuery;->I:J

    const-string v6, "http://open.bmob.cn/8/cloud_query"

    move-object v2, p1

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Lcn/bmob/v3/http/a/mine;->Code(Ljava/lang/String;Ljava/lang/Class;Lcn/bmob/v3/BmobQuery$CachePolicy;JLjava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/BmobCallback;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method private varargs Code(Ljava/lang/Class;Ljava/lang/String;Lcn/bmob/v3/listener/BmobCallback;[Ljava/lang/Object;)Lrx/Subscription;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/listener/BmobCallback;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 1004
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/darkness;->Code(I)V

    .line 1006
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0, p2}, Lcn/bmob/v3/http/darkness;->B(Ljava/lang/String;)V

    .line 1008
    if-eqz p4, :cond_1

    array-length v0, p4

    if-lez v0, :cond_1

    .line 1009
    array-length v0, p4

    new-array v1, v0, [Ljava/lang/Object;

    .line 1010
    const/4 v0, 0x0

    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_0

    .line 1011
    aget-object v2, p4, v0

    aput-object v2, v1, v0

    .line 1010
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1013
    :cond_0
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/darkness;->Code([Ljava/lang/Object;)V

    .line 1016
    :cond_1
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0}, Lcn/bmob/v3/http/darkness;->I()Lorg/json/JSONObject;

    move-result-object v7

    .line 1017
    instance-of v0, p3, Lcn/bmob/v3/listener/QueryListener;

    if-eqz v0, :cond_2

    .line 1018
    invoke-static {}, Lcn/bmob/v3/http/thing;->Code()Lcn/bmob/v3/http/thing;

    const-string v0, "http://open.bmob.cn/8/cloud_query"

    invoke-static {v0, v7, p3}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    .line 1020
    :goto_1
    return-object v0

    .line 1019
    :cond_2
    instance-of v0, p3, Lcn/bmob/v3/listener/SQLQueryListener;

    if-eqz v0, :cond_3

    .line 1020
    invoke-static {}, Lcn/bmob/v3/http/a/mine;->Code()Lcn/bmob/v3/http/a/mine;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, p0, Lcn/bmob/v3/BmobQuery;->V:Lcn/bmob/v3/BmobQuery$CachePolicy;

    iget-wide v4, p0, Lcn/bmob/v3/BmobQuery;->I:J

    const-string v6, "http://open.bmob.cn/8/cloud_query"

    move-object v2, p1

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, Lcn/bmob/v3/http/a/mine;->Code(Ljava/lang/String;Ljava/lang/Class;Lcn/bmob/v3/BmobQuery$CachePolicy;JLjava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/BmobCallback;)Lrx/Subscription;

    move-result-object v0

    goto :goto_1

    .line 1022
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "doBql does not support this BmobCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private Code(Ljava/lang/String;Ljava/lang/Class;Lcn/bmob/v3/listener/BmobCallback;)Lrx/Subscription;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcn/bmob/v3/listener/BmobCallback;",
            ")",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 629
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/darkness;->Code(I)V

    .line 631
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 632
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0, p1}, Lcn/bmob/v3/http/darkness;->I(Ljava/lang/String;)V

    .line 635
    :cond_0
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0, p2}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/Class;)V

    .line 637
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0}, Lcn/bmob/v3/http/darkness;->I()Lorg/json/JSONObject;

    move-result-object v7

    .line 638
    invoke-static {}, Lcn/bmob/v3/http/a/mine;->Code()Lcn/bmob/v3/http/a/mine;

    move-result-object v0

    iget-object v3, p0, Lcn/bmob/v3/BmobQuery;->V:Lcn/bmob/v3/BmobQuery$CachePolicy;

    iget-wide v4, p0, Lcn/bmob/v3/BmobQuery;->I:J

    const-string v6, "http://open.bmob.cn/8/find"

    move-object v1, p1

    move-object v2, p2

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, Lcn/bmob/v3/http/a/mine;->Code(Ljava/lang/String;Ljava/lang/Class;Lcn/bmob/v3/BmobQuery$CachePolicy;JLjava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/BmobCallback;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static clearAllCachedResults()V
    .locals 0

    .prologue
    .line 506
    invoke-static {}, Lcn/bmob/v3/b/darkness;->Code()V

    .line 507
    return-void
.end method


# virtual methods
.method public addQueryKeys(Ljava/lang/String;)Lcn/bmob/v3/BmobQuery;
    .locals 1
    .param p1, "keys"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0, p1}, Lcn/bmob/v3/http/darkness;->Z(Ljava/lang/String;)V

    .line 366
    return-object p0
.end method

.method public addWhereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcn/bmob/v3/BmobQuery;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Object;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    .line 1226
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1227
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1228
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1229
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1230
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1232
    :cond_0
    const-string v2, "$in"

    invoke-virtual {v0, p1, v2, v1}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    return-object p0
.end method

.method public addWhereContains(Ljava/lang/String;Ljava/lang/String;)Lcn/bmob/v3/BmobQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-virtual {p0, p1, v0}, Lcn/bmob/v3/BmobQuery;->addWhereMatches(Ljava/lang/String;Ljava/lang/String;)Lcn/bmob/v3/BmobQuery;

    .line 205
    return-object p0
.end method

.method public addWhereContainsAll(Ljava/lang/String;Ljava/util/Collection;)Lcn/bmob/v3/BmobQuery;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    .line 1212
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1213
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1214
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1216
    :cond_0
    const-string v2, "$all"

    invoke-virtual {v0, p1, v2, v1}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    return-object p0
.end method

.method public addWhereDoesNotExists(Ljava/lang/String;)Lcn/bmob/v3/BmobQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    .line 1350
    const-string v1, "$exists"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    return-object p0
.end method

.method public addWhereDoesNotMatchQuery(Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/BmobQuery;)Lcn/bmob/v3/BmobQuery;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/BmobQuery",
            "<TE;>;)",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 354
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    .local p3, "innerQuery":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TE;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    .line 1397
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1398
    const-string v2, "where"

    invoke-virtual {p3}, Lcn/bmob/v3/BmobQuery;->getWhere()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1399
    const-string v2, "className"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1400
    const-string v2, "$notInQuery"

    invoke-virtual {v0, p1, v2, v1}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_0
    return-object p0

    .line 1401
    :catch_0
    move-exception v0

    .line 1402
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public addWhereEndsWith(Ljava/lang/String;Ljava/lang/String;)Lcn/bmob/v3/BmobQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-virtual {p0, p1, v0}, Lcn/bmob/v3/BmobQuery;->addWhereMatches(Ljava/lang/String;Ljava/lang/String;)Lcn/bmob/v3/BmobQuery;

    .line 231
    return-object p0
.end method

.method public addWhereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcn/bmob/v3/BmobQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    const/4 v2, 0x0

    .line 132
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    .line 1183
    instance-of v1, p2, Lcn/bmob/v3/datatype/BmobPointer;

    if-eqz v1, :cond_0

    .line 1185
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p2}, Lcn/bmob/v3/helper/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1186
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-object p0

    .line 1187
    :catch_0
    move-exception v0

    .line 1188
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1191
    :cond_0
    invoke-virtual {v0, p1, v2, p2}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public addWhereExists(Ljava/lang/String;)Lcn/bmob/v3/BmobQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    .line 1341
    const-string v1, "$exists"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 306
    return-object p0
.end method

.method public addWhereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcn/bmob/v3/BmobQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    .line 1163
    const-string v1, "$gt"

    invoke-virtual {v0, p1, v1, p2}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    return-object p0
.end method

.method public addWhereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcn/bmob/v3/BmobQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    .line 1173
    const-string v1, "$gte"

    invoke-virtual {v0, p1, v1, p2}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    return-object p0
.end method

.method public addWhereLessThan(Ljava/lang/String;Ljava/lang/Object;)Lcn/bmob/v3/BmobQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    .line 1143
    const-string v1, "$lt"

    invoke-virtual {v0, p1, v1, p2}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    return-object p0
.end method

.method public addWhereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcn/bmob/v3/BmobQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    .line 1153
    const-string v1, "$lte"

    invoke-virtual {v0, p1, v1, p2}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    return-object p0
.end method

.method public addWhereMatches(Ljava/lang/String;Ljava/lang/String;)Lcn/bmob/v3/BmobQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    .line 1258
    const-string v1, "$regex"

    invoke-virtual {v0, p1, v1, p2}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    return-object p0
.end method

.method public addWhereMatchesQuery(Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/BmobQuery;)Lcn/bmob/v3/BmobQuery;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/BmobQuery",
            "<TE;>;)",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    .local p3, "innerQuery":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TE;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    .line 1379
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1380
    const-string v2, "where"

    invoke-virtual {p3}, Lcn/bmob/v3/BmobQuery;->getWhere()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1381
    const-string v2, "className"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1382
    const-string v2, "$inQuery"

    invoke-virtual {v0, p1, v2, v1}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    return-object p0

    .line 1383
    :catch_0
    move-exception v0

    .line 1384
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public addWhereNear(Ljava/lang/String;Lcn/bmob/v3/datatype/BmobGeoPoint;)Lcn/bmob/v3/BmobQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcn/bmob/v3/datatype/BmobGeoPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/datatype/BmobGeoPoint;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    .line 1269
    const-string v1, "$nearSphere"

    invoke-virtual {v0, p1, v1, p2}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    return-object p0
.end method

.method public addWhereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcn/bmob/v3/BmobQuery;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Object;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    .line 1242
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1243
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1244
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1245
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1246
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1248
    :cond_0
    const-string v2, "$nin"

    invoke-virtual {v0, p1, v2, v1}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    return-object p0
.end method

.method public addWhereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcn/bmob/v3/BmobQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    .line 1202
    const-string v1, "$ne"

    invoke-virtual {v0, p1, v1, p2}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    return-object p0
.end method

.method public addWhereRelatedTo(Ljava/lang/String;Lcn/bmob/v3/datatype/BmobPointer;)Lcn/bmob/v3/BmobQuery;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "pointer"    # Lcn/bmob/v3/datatype/BmobPointer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/datatype/BmobPointer;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    iget-object v1, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    .line 1360
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1362
    :try_start_0
    const-string v0, "key"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1363
    const-string v0, "object"

    new-instance v3, Lorg/json/JSONObject;

    invoke-static {p2}, Lcn/bmob/v3/helper/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1367
    :goto_0
    const-string v0, "$relatedTo"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    return-object p0

    .line 1364
    :catch_0
    move-exception v0

    .line 1365
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public addWhereStartsWith(Ljava/lang/String;Ljava/lang/String;)Lcn/bmob/v3/BmobQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-virtual {p0, p1, v0}, Lcn/bmob/v3/BmobQuery;->addWhereMatches(Ljava/lang/String;Ljava/lang/String;)Lcn/bmob/v3/BmobQuery;

    .line 218
    return-object p0
.end method

.method public addWhereWithinGeoBox(Ljava/lang/String;Lcn/bmob/v3/datatype/BmobGeoPoint;Lcn/bmob/v3/datatype/BmobGeoPoint;)Lcn/bmob/v3/BmobQuery;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "southwest"    # Lcn/bmob/v3/datatype/BmobGeoPoint;
    .param p3, "northeast"    # Lcn/bmob/v3/datatype/BmobGeoPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/datatype/BmobGeoPoint;",
            "Lcn/bmob/v3/datatype/BmobGeoPoint;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    .line 1329
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1330
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1331
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1332
    const-string v2, "$within"

    invoke-virtual {v0, p1, v2, v1}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    return-object p0
.end method

.method public addWhereWithinKilometers(Ljava/lang/String;Lcn/bmob/v3/datatype/BmobGeoPoint;D)Lcn/bmob/v3/BmobQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcn/bmob/v3/datatype/BmobGeoPoint;
    .param p3, "maxDistance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/datatype/BmobGeoPoint;",
            "D)",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/bmob/v3/http/darkness;->V(Ljava/lang/String;Lcn/bmob/v3/datatype/BmobGeoPoint;D)V

    .line 269
    return-object p0
.end method

.method public addWhereWithinMiles(Ljava/lang/String;Lcn/bmob/v3/datatype/BmobGeoPoint;D)Lcn/bmob/v3/BmobQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcn/bmob/v3/datatype/BmobGeoPoint;
    .param p3, "maxDistance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/datatype/BmobGeoPoint;",
            "D)",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/String;Lcn/bmob/v3/datatype/BmobGeoPoint;D)V

    .line 256
    return-object p0
.end method

.method public addWhereWithinRadians(Ljava/lang/String;Lcn/bmob/v3/datatype/BmobGeoPoint;D)Lcn/bmob/v3/BmobQuery;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcn/bmob/v3/datatype/BmobGeoPoint;
    .param p3, "maxDistance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/datatype/BmobGeoPoint;",
            "D)",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 281
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/bmob/v3/http/darkness;->I(Ljava/lang/String;Lcn/bmob/v3/datatype/BmobGeoPoint;D)V

    .line 282
    return-object p0
.end method

.method public and(Ljava/util/List;)Lcn/bmob/v3/BmobQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;>;)",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 425
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    .local p1, "where":Ljava/util/List;, "Ljava/util/List<Lcn/bmob/v3/BmobQuery<TT;>;>;"
    iget-object v1, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    .line 1434
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1435
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bmob/v3/BmobQuery;

    .line 1436
    invoke-virtual {v0}, Lcn/bmob/v3/BmobQuery;->getWhere()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1438
    :cond_0
    const-string v0, "$and"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 426
    return-object p0
.end method

.method public average([Ljava/lang/String;)Lcn/bmob/v3/BmobQuery;
    .locals 1
    .param p1, "averageKeys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 807
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0, p1}, Lcn/bmob/v3/http/darkness;->I([Ljava/lang/String;)V

    .line 808
    return-object p0
.end method

.method public clearCachedResult(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 499
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->Code:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcn/bmob/v3/BmobQuery;->Code(Landroid/content/Context;Ljava/lang/Class;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/v3/b/darkness;->Code(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/v3/b/darkness;->Code(Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method public count(Ljava/lang/Class;Lcn/bmob/v3/listener/CountListener;)Lrx/Subscription;
    .locals 1
    .param p2, "listener"    # Lcn/bmob/v3/listener/CountListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcn/bmob/v3/listener/CountListener;",
            ")",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 768
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1, p2}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/Class;Lcn/bmob/v3/listener/CountListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public countObservable(Ljava/lang/Class;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 759
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/Class;Lcn/bmob/v3/listener/CountListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public doSQLQuery(Lcn/bmob/v3/listener/SQLQueryListener;)Lrx/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/bmob/v3/listener/SQLQueryListener",
            "<TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 918
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    .local p1, "listener":Lcn/bmob/v3/listener/SQLQueryListener;, "Lcn/bmob/v3/listener/SQLQueryListener<TT;>;"
    if-nez p1, :cond_0

    .line 919
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " listener must not be null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 921
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    .line 922
    invoke-direct {p0, v0, p1}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/Class;Lcn/bmob/v3/listener/SQLQueryListener;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public doSQLQuery(Ljava/lang/String;Lcn/bmob/v3/listener/SQLQueryListener;)Lrx/Subscription;
    .locals 1
    .param p1, "bql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/listener/SQLQueryListener",
            "<TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 960
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    .local p2, "listener":Lcn/bmob/v3/listener/SQLQueryListener;, "Lcn/bmob/v3/listener/SQLQueryListener<TT;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lcn/bmob/v3/BmobQuery;->doSQLQuery(Ljava/lang/String;Lcn/bmob/v3/listener/SQLQueryListener;[Ljava/lang/Object;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public varargs doSQLQuery(Ljava/lang/String;Lcn/bmob/v3/listener/SQLQueryListener;[Ljava/lang/Object;)Lrx/Subscription;
    .locals 2
    .param p1, "bql"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/listener/SQLQueryListener",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 970
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    .local p2, "listener":Lcn/bmob/v3/listener/SQLQueryListener;, "Lcn/bmob/v3/listener/SQLQueryListener<TT;>;"
    if-nez p2, :cond_0

    .line 971
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " listener must not be null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 973
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    .line 974
    invoke-direct {p0, v0, p1, p2, p3}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/Class;Ljava/lang/String;Lcn/bmob/v3/listener/BmobCallback;[Ljava/lang/Object;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public doSQLQueryObservable(Ljava/lang/Class;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lrx/Observable",
            "<",
            "Lcn/bmob/v3/datatype/BmobQueryResult",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 930
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 931
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " class must not be null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 933
    :cond_0
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    new-instance v1, Lcn/bmob/v3/BmobQuery$4;

    invoke-direct {v1, p0, p1}, Lcn/bmob/v3/BmobQuery$4;-><init>(Lcn/bmob/v3/BmobQuery;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Lrx/Observable$OnSubscribe;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public doStatisticQuery(Ljava/lang/String;Lcn/bmob/v3/listener/QueryListener;)Lrx/Subscription;
    .locals 2
    .param p1, "bql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/listener/QueryListener",
            "<",
            "Lorg/json/JSONArray;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 984
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    .local p2, "listener":Lcn/bmob/v3/listener/QueryListener;, "Lcn/bmob/v3/listener/QueryListener<Lorg/json/JSONArray;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, p1, p2, v1}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/Class;Ljava/lang/String;Lcn/bmob/v3/listener/BmobCallback;[Ljava/lang/Object;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public varargs doStatisticQuery(Ljava/lang/String;Lcn/bmob/v3/listener/QueryListener;[Ljava/lang/Object;)Lrx/Subscription;
    .locals 1
    .param p1, "bql"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/listener/QueryListener",
            "<",
            "Lorg/json/JSONArray;",
            ">;[",
            "Ljava/lang/Object;",
            ")",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 995
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    .local p2, "listener":Lcn/bmob/v3/listener/QueryListener;, "Lcn/bmob/v3/listener/QueryListener<Lorg/json/JSONArray;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/Class;Ljava/lang/String;Lcn/bmob/v3/listener/BmobCallback;[Ljava/lang/Object;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public findObjects(Lcn/bmob/v3/listener/FindListener;)Lrx/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/bmob/v3/listener/FindListener",
            "<TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 646
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    .local p1, "listener":Lcn/bmob/v3/listener/FindListener;, "Lcn/bmob/v3/listener/FindListener<TT;>;"
    if-nez p1, :cond_0

    .line 647
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " listener must not be null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 649
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    .line 650
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/String;Ljava/lang/Class;Lcn/bmob/v3/listener/BmobCallback;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public findObjectsByTable(Lcn/bmob/v3/listener/QueryListener;)Lrx/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/bmob/v3/listener/QueryListener",
            "<",
            "Lorg/json/JSONArray;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 582
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    .local p1, "listener":Lcn/bmob/v3/listener/QueryListener;, "Lcn/bmob/v3/listener/QueryListener<Lorg/json/JSONArray;>;"
    if-nez p1, :cond_0

    .line 583
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " listener must not be null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_0
    invoke-direct {p0, p1}, Lcn/bmob/v3/BmobQuery;->Code(Lcn/bmob/v3/listener/QueryListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public findObjectsByTableObservable()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    .prologue
    .line 593
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/bmob/v3/BmobQuery;->Code(Lcn/bmob/v3/listener/QueryListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public findObjectsObservable(Ljava/lang/Class;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 658
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 659
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " class must not be null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_0
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    new-instance v1, Lcn/bmob/v3/BmobQuery$2;

    invoke-direct {v1, p0, p1}, Lcn/bmob/v3/BmobQuery$2;-><init>(Lcn/bmob/v3/BmobQuery;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Lrx/Observable$OnSubscribe;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public findStatistics(Ljava/lang/Class;Lcn/bmob/v3/listener/QueryListener;)Lrx/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcn/bmob/v3/listener/QueryListener",
            "<",
            "Lorg/json/JSONArray;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 849
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "listener":Lcn/bmob/v3/listener/QueryListener;, "Lcn/bmob/v3/listener/QueryListener<Lorg/json/JSONArray;>;"
    if-nez p1, :cond_0

    .line 850
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " class must not be null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 852
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/Class;Lcn/bmob/v3/listener/QueryListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public findStatisticsObservable(Ljava/lang/Class;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lrx/Observable",
            "<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    .prologue
    .line 861
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 862
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " class must not be null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 864
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/Class;Lcn/bmob/v3/listener/QueryListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getCachePolicy()Lcn/bmob/v3/BmobQuery$CachePolicy;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->V:Lcn/bmob/v3/BmobQuery$CachePolicy;

    return-object v0
.end method

.method public getMaxCacheAge()J
    .locals 2

    .prologue
    .line 458
    iget-wide v0, p0, Lcn/bmob/v3/BmobQuery;->I:J

    return-wide v0
.end method

.method public getObject(Ljava/lang/String;Lcn/bmob/v3/listener/QueryListener;)Lrx/Subscription;
    .locals 2
    .param p1, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/listener/QueryListener",
            "<TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 689
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    .local p2, "listener":Lcn/bmob/v3/listener/QueryListener;, "Lcn/bmob/v3/listener/QueryListener<TT;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " objectId must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 692
    :cond_0
    if-nez p2, :cond_1

    .line 693
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " listener must not be null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    .line 696
    invoke-direct {p0, p1, v0, p2}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/String;Ljava/lang/Class;Lcn/bmob/v3/listener/BmobCallback;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public getObjectByTable(Ljava/lang/String;Lcn/bmob/v3/listener/QueryListener;)Lrx/Subscription;
    .locals 2
    .param p1, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/listener/QueryListener",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 602
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    .local p2, "listener":Lcn/bmob/v3/listener/QueryListener;, "Lcn/bmob/v3/listener/QueryListener<Lorg/json/JSONObject;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " objectId must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_0
    if-nez p2, :cond_1

    .line 606
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " listener must not be null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_1
    invoke-direct {p0, p1, p2}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/String;Lcn/bmob/v3/listener/QueryListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public getObjectByTableObservable(Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 617
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " objectId must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/bmob/v3/BmobQuery;->Code(Ljava/lang/String;Lcn/bmob/v3/listener/QueryListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getObjectObservable(Ljava/lang/Class;Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p2, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 706
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " objectId must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_0
    if-nez p1, :cond_1

    .line 710
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " class must not be null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_1
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    new-instance v1, Lcn/bmob/v3/BmobQuery$3;

    invoke-direct {v1, p0, p2, p1}, Lcn/bmob/v3/BmobQuery$3;-><init>(Lcn/bmob/v3/BmobQuery;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Lrx/Observable$OnSubscribe;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getWhere()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0}, Lcn/bmob/v3/http/darkness;->Code()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public groupby([Ljava/lang/String;)Lcn/bmob/v3/BmobQuery;
    .locals 1
    .param p1, "groupKeys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 787
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0, p1}, Lcn/bmob/v3/http/darkness;->Code([Ljava/lang/String;)V

    .line 788
    return-object p0
.end method

.method public hasCachedResult(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 491
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->Code:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcn/bmob/v3/BmobQuery;->Code(Landroid/content/Context;Ljava/lang/Class;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/v3/b/darkness;->Code(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcn/bmob/v3/BmobQuery;->I:J

    invoke-static {v0, v2, v3}, Lcn/bmob/v3/b/darkness;->V(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 492
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCachedResultObservable(Ljava/lang/Class;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 478
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    new-instance v1, Lcn/bmob/v3/BmobQuery$1;

    invoke-direct {v1, p0, p1}, Lcn/bmob/v3/BmobQuery$1;-><init>(Lcn/bmob/v3/BmobQuery;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Lrx/Observable$OnSubscribe;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Lrx/Scheduler;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public having(Ljava/util/HashMap;)Lcn/bmob/v3/BmobQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 839
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0, p1}, Lcn/bmob/v3/http/darkness;->Code(Ljava/util/HashMap;)V

    .line 840
    return-object p0
.end method

.method public include(Ljava/lang/String;)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 404
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0, p1}, Lcn/bmob/v3/http/darkness;->V(Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public max([Ljava/lang/String;)Lcn/bmob/v3/BmobQuery;
    .locals 1
    .param p1, "maxKeys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 818
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0, p1}, Lcn/bmob/v3/http/darkness;->Z([Ljava/lang/String;)V

    .line 819
    return-object p0
.end method

.method public min([Ljava/lang/String;)Lcn/bmob/v3/BmobQuery;
    .locals 1
    .param p1, "minKeys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 829
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0, p1}, Lcn/bmob/v3/http/darkness;->B([Ljava/lang/String;)V

    .line 830
    return-object p0
.end method

.method public or(Ljava/util/List;)Lcn/bmob/v3/BmobQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;>;)",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 414
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    .local p1, "where":Ljava/util/List;, "Ljava/util/List<Lcn/bmob/v3/BmobQuery<TT;>;>;"
    iget-object v1, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    .line 1421
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1422
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bmob/v3/BmobQuery;

    .line 1423
    invoke-virtual {v0}, Lcn/bmob/v3/BmobQuery;->getWhere()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1425
    :cond_0
    const-string v0, "$or"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 415
    return-object p0
.end method

.method public order(Ljava/lang/String;)Lcn/bmob/v3/BmobQuery;
    .locals 1
    .param p1, "order"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 394
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0, p1}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/String;)V

    .line 395
    return-object p0
.end method

.method public setCachePolicy(Lcn/bmob/v3/BmobQuery$CachePolicy;)V
    .locals 0
    .param p1, "newCachePolicy"    # Lcn/bmob/v3/BmobQuery$CachePolicy;

    .prologue
    .line 434
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    iput-object p1, p0, Lcn/bmob/v3/BmobQuery;->V:Lcn/bmob/v3/BmobQuery$CachePolicy;

    .line 435
    return-void
.end method

.method public setHasGroupCount(Z)Lcn/bmob/v3/BmobQuery;
    .locals 1
    .param p1, "hasCount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 777
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0, p1}, Lcn/bmob/v3/http/darkness;->Code(Z)V

    .line 778
    return-object p0
.end method

.method public setLimit(I)V
    .locals 2
    .param p1, "newLimit"    # I

    .prologue
    .line 375
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/darkness;->Code(Ljava/lang/Integer;)V

    .line 376
    return-void
.end method

.method public setMaxCacheAge(J)V
    .locals 1
    .param p1, "maxAgeInMilliseconds"    # J

    .prologue
    .line 449
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    iput-wide p1, p0, Lcn/bmob/v3/BmobQuery;->I:J

    .line 450
    return-void
.end method

.method public setPreparedParams([Ljava/lang/Object;)Lcn/bmob/v3/BmobQuery;
    .locals 1
    .param p1, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 900
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0, p1}, Lcn/bmob/v3/http/darkness;->Code([Ljava/lang/Object;)V

    .line 901
    return-object p0
.end method

.method public setSQL(Ljava/lang/String;)Lcn/bmob/v3/BmobQuery;
    .locals 1
    .param p1, "bql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 891
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0, p1}, Lcn/bmob/v3/http/darkness;->B(Ljava/lang/String;)V

    .line 892
    return-object p0
.end method

.method public setSkip(I)V
    .locals 2
    .param p1, "newSkip"    # I

    .prologue
    .line 384
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/darkness;->V(Ljava/lang/Integer;)V

    .line 385
    return-void
.end method

.method public sum([Ljava/lang/String;)Lcn/bmob/v3/BmobQuery;
    .locals 1
    .param p1, "sumKeys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 797
    .local p0, "this":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobQuery;->B:Lcn/bmob/v3/http/darkness;

    invoke-virtual {v0, p1}, Lcn/bmob/v3/http/darkness;->V([Ljava/lang/String;)V

    .line 798
    return-object p0
.end method
