.class public final Lcn/bmob/v3/http/a/I;
.super Lcn/bmob/v3/http/a/From;
.source "NECPolicyQuery.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcn/bmob/v3/http/a/From;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code(Ljava/lang/Class;Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;JLcn/bmob/v3/listener/BmobCallback;)Lrx/Subscription;
    .locals 11

    .prologue
    .line 26
    move-object/from16 v0, p7

    invoke-virtual {p0, p2, p3, p4, v0}, Lcn/bmob/v3/http/a/I;->Code(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/BmobCallback;)Lrx/Observable;

    move-result-object v10

    new-instance v2, Lcn/bmob/v3/http/a/I$1;

    move-object v3, p0

    move-object v4, p2

    move-object v5, p4

    move-wide/from16 v6, p5

    move-object v8, p1

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcn/bmob/v3/http/a/I$1;-><init>(Lcn/bmob/v3/http/a/I;Ljava/util/List;Lorg/json/JSONObject;JLjava/lang/Class;Lcn/bmob/v3/listener/BmobCallback;)V

    invoke-virtual {p0, v10, v2}, Lcn/bmob/v3/http/a/I;->Code(Lrx/Observable;Lcn/bmob/v3/listener/QueryListener;)Lrx/Subscription;

    move-result-object v2

    return-object v2
.end method

.method public final Code()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public final V()Lcn/bmob/v3/BmobQuery$CachePolicy;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcn/bmob/v3/BmobQuery$CachePolicy;->NETWORK_ELSE_CACHE:Lcn/bmob/v3/BmobQuery$CachePolicy;

    return-object v0
.end method
