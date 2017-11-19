.class public Lcn/bmob/v3/http/bean/CDN;
.super Ljava/lang/Object;
.source "CDN.java"


# instance fields
.field private upyun:Lcn/bmob/v3/http/bean/Upyun;


# direct methods
.method public constructor <init>(Lcn/bmob/v3/http/bean/Upyun;)V
    .locals 0
    .param p1, "upyun"    # Lcn/bmob/v3/http/bean/Upyun;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcn/bmob/v3/http/bean/CDN;->upyun:Lcn/bmob/v3/http/bean/Upyun;

    .line 23
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcn/bmob/v3/http/bean/CDN;
    .locals 2
    .param p0, "cdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 16
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "upyun"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lcn/bmob/v3/http/bean/Upyun;->parse(Lorg/json/JSONObject;)Lcn/bmob/v3/http/bean/Upyun;

    move-result-object v0

    .line 18
    new-instance v1, Lcn/bmob/v3/http/bean/CDN;

    invoke-direct {v1, v0}, Lcn/bmob/v3/http/bean/CDN;-><init>(Lcn/bmob/v3/http/bean/Upyun;)V

    return-object v1
.end method


# virtual methods
.method public getUpyun()Lcn/bmob/v3/http/bean/Upyun;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcn/bmob/v3/http/bean/CDN;->upyun:Lcn/bmob/v3/http/bean/Upyun;

    return-object v0
.end method

.method public setUpyun(Lcn/bmob/v3/http/bean/Upyun;)V
    .locals 0
    .param p1, "upyun"    # Lcn/bmob/v3/http/bean/Upyun;

    .prologue
    .line 30
    iput-object p1, p0, Lcn/bmob/v3/http/bean/CDN;->upyun:Lcn/bmob/v3/http/bean/Upyun;

    .line 31
    return-void
.end method
