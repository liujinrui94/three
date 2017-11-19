.class public final Lcn/bmob/v3/http/a/thing;
.super Lcn/bmob/v3/http/a/From;
.source "COPolicyQuery.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcn/bmob/v3/http/a/From;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code(Ljava/lang/Class;Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;JLcn/bmob/v3/listener/BmobCallback;)Lrx/Subscription;
    .locals 3

    .prologue
    .line 22
    invoke-virtual {p0, p2, p4, p5, p6}, Lcn/bmob/v3/http/a/thing;->Code(Ljava/util/List;Lorg/json/JSONObject;J)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/http/a/thing$1;

    invoke-direct {v1, p0, p1, p7}, Lcn/bmob/v3/http/a/thing$1;-><init>(Lcn/bmob/v3/http/a/thing;Ljava/lang/Class;Lcn/bmob/v3/listener/BmobCallback;)V

    invoke-virtual {p0, v0, v1}, Lcn/bmob/v3/http/a/thing;->Code(Lrx/Observable;Lcn/bmob/v3/listener/QueryListener;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public final Code()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public final V()Lcn/bmob/v3/BmobQuery$CachePolicy;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcn/bmob/v3/BmobQuery$CachePolicy;->CACHE_ONLY:Lcn/bmob/v3/BmobQuery$CachePolicy;

    return-object v0
.end method
