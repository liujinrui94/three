.class public final Lcn/bmob/v3/http/a/This;
.super Lcn/bmob/v3/http/a/From;
.source "CENPolicyQuery.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcn/bmob/v3/http/a/From;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code(Ljava/lang/Class;Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;JLcn/bmob/v3/listener/BmobCallback;)Lrx/Subscription;
    .locals 9

    .prologue
    .line 25
    invoke-virtual {p0, p2, p4, p5, p6}, Lcn/bmob/v3/http/a/This;->Code(Ljava/util/List;Lorg/json/JSONObject;J)Lrx/Observable;

    move-result-object v7

    new-instance v0, Lcn/bmob/v3/http/a/This$1;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p7

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcn/bmob/v3/http/a/This$1;-><init>(Lcn/bmob/v3/http/a/This;Ljava/lang/Class;Lcn/bmob/v3/listener/BmobCallback;Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v7, v0}, Lcn/bmob/v3/http/a/This;->Code(Lrx/Observable;Lcn/bmob/v3/listener/QueryListener;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public final Code()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public final V()Lcn/bmob/v3/BmobQuery$CachePolicy;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcn/bmob/v3/BmobQuery$CachePolicy;->CACHE_ELSE_NETWORK:Lcn/bmob/v3/BmobQuery$CachePolicy;

    return-object v0
.end method
