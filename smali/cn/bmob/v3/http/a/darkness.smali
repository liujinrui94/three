.class public final Lcn/bmob/v3/http/a/darkness;
.super Lcn/bmob/v3/http/a/From;
.source "ICPolicyQuery.java"


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
    .locals 2

    .prologue
    .line 22
    invoke-virtual {p0, p2, p3, p4, p7}, Lcn/bmob/v3/http/a/darkness;->Code(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/BmobCallback;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/http/a/darkness$1;

    invoke-direct {v1, p0, p1, p7}, Lcn/bmob/v3/http/a/darkness$1;-><init>(Lcn/bmob/v3/http/a/darkness;Ljava/lang/Class;Lcn/bmob/v3/listener/BmobCallback;)V

    invoke-virtual {p0, v0, v1}, Lcn/bmob/v3/http/a/darkness;->Code(Lrx/Observable;Lcn/bmob/v3/listener/QueryListener;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public final Code()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public final V()Lcn/bmob/v3/BmobQuery$CachePolicy;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcn/bmob/v3/BmobQuery$CachePolicy;->IGNORE_CACHE:Lcn/bmob/v3/BmobQuery$CachePolicy;

    return-object v0
.end method
