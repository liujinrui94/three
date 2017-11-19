.class public Lcn/bmob/v3/http/bean/Upyun;
.super Ljava/lang/Object;
.source "Upyun.java"


# instance fields
.field private domain:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private secret:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "secret"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcn/bmob/v3/http/bean/Upyun;->name:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcn/bmob/v3/http/bean/Upyun;->domain:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcn/bmob/v3/http/bean/Upyun;->secret:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcn/bmob/v3/http/bean/Upyun;
    .locals 4
    .param p0, "upyun"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 19
    const-string v0, ""

    const-string v2, ""

    const-string v1, ""

    .line 20
    const-string v3, "name"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 21
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    :cond_0
    const-string v3, "domain"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 24
    const-string v1, "domain"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    :cond_1
    const-string v3, "secret"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 27
    const-string v2, "secret"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    :cond_2
    new-instance v3, Lcn/bmob/v3/http/bean/Upyun;

    invoke-direct {v3, v0, v1, v2}, Lcn/bmob/v3/http/bean/Upyun;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/bmob/v3/http/bean/Upyun;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcn/bmob/v3/http/bean/Upyun;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcn/bmob/v3/http/bean/Upyun;->secret:Ljava/lang/String;

    return-object v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcn/bmob/v3/http/bean/Upyun;->domain:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcn/bmob/v3/http/bean/Upyun;->name:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "secret"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcn/bmob/v3/http/bean/Upyun;->secret:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
