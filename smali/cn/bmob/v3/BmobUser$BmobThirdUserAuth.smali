.class public Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;
.super Ljava/lang/Object;
.source "BmobUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/BmobUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BmobThirdUserAuth"
.end annotation


# static fields
.field public static final SNS_TYPE_QQ:Ljava/lang/String; = "qq"

.field public static final SNS_TYPE_WEIBO:Ljava/lang/String; = "weibo"

.field public static final SNS_TYPE_WEIXIN:Ljava/lang/String; = "weixin"


# instance fields
.field private Code:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field private Z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "snsType"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "expiresIn"    # Ljava/lang/String;
    .param p4, "userId"    # Ljava/lang/String;

    .prologue
    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    iput-object p2, p0, Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;->V:Ljava/lang/String;

    .line 591
    iput-object p1, p0, Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;->Code:Ljava/lang/String;

    .line 592
    iput-object p3, p0, Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;->I:Ljava/lang/String;

    .line 593
    iput-object p4, p0, Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;->Z:Ljava/lang/String;

    .line 594
    return-void
.end method

.method protected static getPlatformIdByType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 601
    const-string v0, "qq"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "weixin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 602
    :cond_0
    const-string v0, "openid"

    .line 604
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "uid"

    goto :goto_0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;->V:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresIn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;->I:Ljava/lang/String;

    return-object v0
.end method

.method public getSnsType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;->Code:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;->Z:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 612
    iput-object p1, p0, Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;->V:Ljava/lang/String;

    .line 613
    return-void
.end method

.method public setExpiresIn(Ljava/lang/String;)V
    .locals 0
    .param p1, "expiresIn"    # Ljava/lang/String;

    .prologue
    .line 628
    iput-object p1, p0, Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;->I:Ljava/lang/String;

    .line 629
    return-void
.end method

.method public setSnsType(Ljava/lang/String;)V
    .locals 0
    .param p1, "snsType"    # Ljava/lang/String;

    .prologue
    .line 636
    iput-object p1, p0, Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;->Code:Ljava/lang/String;

    .line 637
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 620
    iput-object p1, p0, Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;->Z:Ljava/lang/String;

    .line 621
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 643
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 645
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 646
    iget-object v2, p0, Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;->Code:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 647
    iget-object v2, p0, Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;->Code:Ljava/lang/String;

    invoke-static {v2}, Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;->getPlatformIdByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;->Z:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 649
    :cond_0
    const-string v2, "access_token"

    iget-object v3, p0, Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;->V:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 650
    const-string v2, "qq"

    iget-object v3, p0, Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;->Code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 651
    const-string v2, "expires_in"

    iget-object v3, p0, Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;->I:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 657
    :goto_0
    iget-object v2, p0, Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;->Code:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 660
    :goto_1
    return-object v0

    .line 652
    :cond_1
    const-string v2, "weibo"

    iget-object v3, p0, Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;->Code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 653
    const-string v2, "expires_in"

    iget-object v3, p0, Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;->I:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 655
    :cond_2
    const-string v2, "expires_in"

    iget-object v3, p0, Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;->I:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
