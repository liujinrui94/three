.class public final Lcn/bmob/v3/http/a/of;
.super Lcn/bmob/v3/http/a/From;
.source "CTEPolicyQuery.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcn/bmob/v3/http/a/From;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code(Ljava/lang/Class;Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;JLcn/bmob/v3/listener/BmobCallback;)Lrx/Subscription;
    .locals 7

    .prologue
    .line 45
    invoke-virtual {p0, p2, p4, p5, p6}, Lcn/bmob/v3/http/a/of;->Code(Ljava/util/List;Lorg/json/JSONObject;J)Lrx/Observable;

    move-result-object v6

    new-instance v0, Lcn/bmob/v3/http/a/of$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcn/bmob/v3/http/a/of$1;-><init>(Lcn/bmob/v3/http/a/of;Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/BmobCallback;)V

    invoke-virtual {v6, v0}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 51
    new-instance v1, Lcn/bmob/v3/http/a/of$2;

    invoke-direct {v1, p0, p1, p7}, Lcn/bmob/v3/http/a/of$2;-><init>(Lcn/bmob/v3/http/a/of;Ljava/lang/Class;Lcn/bmob/v3/listener/BmobCallback;)V

    invoke-virtual {p0, v0, v1}, Lcn/bmob/v3/http/a/of;->Code(Lrx/Observable;Lcn/bmob/v3/listener/QueryListener;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public final Code()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public final V()Lcn/bmob/v3/BmobQuery$CachePolicy;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcn/bmob/v3/BmobQuery$CachePolicy;->CACHE_THEN_NETWORK:Lcn/bmob/v3/BmobQuery$CachePolicy;

    return-object v0
.end method
