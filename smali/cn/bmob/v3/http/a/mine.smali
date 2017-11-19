.class public final Lcn/bmob/v3/http/a/mine;
.super Ljava/lang/Object;
.source "PolicyFactory.java"


# static fields
.field private static Code:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcn/bmob/v3/BmobQuery$CachePolicy;",
            "Lcn/bmob/v3/http/a/From;",
            ">;"
        }
    .end annotation
.end field

.field private static I:[B

.field private static volatile V:Lcn/bmob/v3/http/a/mine;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    sput-object v0, Lcn/bmob/v3/http/a/mine;->Code:Ljava/util/Map;

    sget-object v1, Lcn/bmob/v3/BmobQuery$CachePolicy;->IGNORE_CACHE:Lcn/bmob/v3/BmobQuery$CachePolicy;

    new-instance v2, Lcn/bmob/v3/http/a/darkness;

    invoke-direct {v2}, Lcn/bmob/v3/http/a/darkness;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcn/bmob/v3/http/a/mine;->Code:Ljava/util/Map;

    sget-object v1, Lcn/bmob/v3/BmobQuery$CachePolicy;->NETWORK_ONLY:Lcn/bmob/v3/BmobQuery$CachePolicy;

    new-instance v2, Lcn/bmob/v3/http/a/acknowledge;

    invoke-direct {v2}, Lcn/bmob/v3/http/a/acknowledge;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcn/bmob/v3/http/a/mine;->Code:Ljava/util/Map;

    sget-object v1, Lcn/bmob/v3/BmobQuery$CachePolicy;->CACHE_ONLY:Lcn/bmob/v3/BmobQuery$CachePolicy;

    new-instance v2, Lcn/bmob/v3/http/a/thing;

    invoke-direct {v2}, Lcn/bmob/v3/http/a/thing;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcn/bmob/v3/http/a/mine;->Code:Ljava/util/Map;

    sget-object v1, Lcn/bmob/v3/BmobQuery$CachePolicy;->CACHE_ELSE_NETWORK:Lcn/bmob/v3/BmobQuery$CachePolicy;

    new-instance v2, Lcn/bmob/v3/http/a/This;

    invoke-direct {v2}, Lcn/bmob/v3/http/a/This;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcn/bmob/v3/http/a/mine;->Code:Ljava/util/Map;

    sget-object v1, Lcn/bmob/v3/BmobQuery$CachePolicy;->CACHE_THEN_NETWORK:Lcn/bmob/v3/BmobQuery$CachePolicy;

    new-instance v2, Lcn/bmob/v3/http/a/of;

    invoke-direct {v2}, Lcn/bmob/v3/http/a/of;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcn/bmob/v3/http/a/mine;->Code:Ljava/util/Map;

    sget-object v1, Lcn/bmob/v3/BmobQuery$CachePolicy;->NETWORK_ELSE_CACHE:Lcn/bmob/v3/BmobQuery$CachePolicy;

    new-instance v2, Lcn/bmob/v3/http/a/I;

    invoke-direct {v2}, Lcn/bmob/v3/http/a/I;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcn/bmob/v3/http/a/mine;->I:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Code()Lcn/bmob/v3/http/a/mine;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcn/bmob/v3/http/a/mine;->V:Lcn/bmob/v3/http/a/mine;

    if-nez v0, :cond_1

    .line 42
    sget-object v1, Lcn/bmob/v3/http/a/mine;->I:[B

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lcn/bmob/v3/http/a/mine;->V:Lcn/bmob/v3/http/a/mine;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcn/bmob/v3/http/a/mine;

    invoke-direct {v0}, Lcn/bmob/v3/http/a/mine;-><init>()V

    sput-object v0, Lcn/bmob/v3/http/a/mine;->V:Lcn/bmob/v3/http/a/mine;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    sget-object v0, Lcn/bmob/v3/http/a/mine;->V:Lcn/bmob/v3/http/a/mine;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final Code(Ljava/lang/String;Ljava/lang/Class;Lcn/bmob/v3/BmobQuery$CachePolicy;JLjava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/BmobCallback;)Lrx/Subscription;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcn/bmob/v3/BmobQuery$CachePolicy;",
            "J",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcn/bmob/v3/listener/BmobCallback;",
            ")",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 69
    .line 1051
    sget-object v2, Lcn/bmob/v3/http/a/mine;->Code:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/bmob/v3/http/a/From;

    .line 71
    move-object/from16 v0, p8

    instance-of v2, v0, Lcn/bmob/v3/listener/QueryListener;

    if-eqz v2, :cond_0

    .line 72
    const-string v2, "objectId can\'t be empty"

    invoke-static {p1, v2}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    :goto_0
    move-object v4, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p4

    move-object/from16 v10, p8

    .line 76
    invoke-virtual/range {v3 .. v10}, Lcn/bmob/v3/http/a/From;->Code(Ljava/lang/Class;Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;JLcn/bmob/v3/listener/BmobCallback;)Lrx/Subscription;

    move-result-object v2

    return-object v2

    .line 74
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_0
.end method
