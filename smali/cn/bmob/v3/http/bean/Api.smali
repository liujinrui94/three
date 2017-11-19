.class public Lcn/bmob/v3/http/bean/Api;
.super Ljava/lang/Object;
.source "Api.java"


# instance fields
.field public data:Lcom/google/gson/JsonElement;

.field public result:Lcn/bmob/v3/http/bean/Result;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcn/bmob/v3/http/bean/Api;->data:Lcom/google/gson/JsonElement;

    return-object v0
.end method

.method public getResult()Lcn/bmob/v3/http/bean/Result;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcn/bmob/v3/http/bean/Api;->result:Lcn/bmob/v3/http/bean/Result;

    return-object v0
.end method

.method public setData(Lcom/google/gson/JsonElement;)V
    .locals 0
    .param p1, "data"    # Lcom/google/gson/JsonElement;

    .prologue
    .line 18
    iput-object p1, p0, Lcn/bmob/v3/http/bean/Api;->data:Lcom/google/gson/JsonElement;

    .line 19
    return-void
.end method

.method public setResult(Lcn/bmob/v3/http/bean/Result;)V
    .locals 0
    .param p1, "result"    # Lcn/bmob/v3/http/bean/Result;

    .prologue
    .line 26
    iput-object p1, p0, Lcn/bmob/v3/http/bean/Api;->result:Lcn/bmob/v3/http/bean/Result;

    .line 27
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "result: code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/bmob/v3/http/bean/Api;->result:Lcn/bmob/v3/http/bean/Result;

    invoke-virtual {v1}, Lcn/bmob/v3/http/bean/Result;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/bmob/v3/http/bean/Api;->result:Lcn/bmob/v3/http/bean/Result;

    invoke-virtual {v1}, Lcn/bmob/v3/http/bean/Result;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/bmob/v3/http/bean/Api;->data:Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
