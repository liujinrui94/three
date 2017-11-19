.class final Lcn/bmob/v3/BmobUser$1;
.super Ljava/lang/Object;
.source "BmobUser.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/BmobUser;->Code(Ljava/lang/Class;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/SaveListener;)Lcn/bmob/v3/http/acknowledge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lcom/google/gson/JsonElement;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic Code:Ljava/lang/String;

.field private synthetic I:Lcn/bmob/v3/BmobUser;

.field private synthetic V:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcn/bmob/v3/BmobUser;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcn/bmob/v3/BmobUser$1;->I:Lcn/bmob/v3/BmobUser;

    iput-object p2, p0, Lcn/bmob/v3/BmobUser$1;->Code:Ljava/lang/String;

    iput-object p3, p0, Lcn/bmob/v3/BmobUser$1;->V:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 233
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 1236
    iget-object v0, p0, Lcn/bmob/v3/BmobUser$1;->I:Lcn/bmob/v3/BmobUser;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "objectId"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/bmob/v3/BmobUser;->setObjectId(Ljava/lang/String;)V

    .line 1237
    iget-object v0, p0, Lcn/bmob/v3/BmobUser$1;->I:Lcn/bmob/v3/BmobUser;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "createdAt"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/bmob/v3/BmobUser;->setCreatedAt(Ljava/lang/String;)V

    .line 1238
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "sessionToken"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 1239
    iget-object v1, p0, Lcn/bmob/v3/BmobUser$1;->I:Lcn/bmob/v3/BmobUser;

    invoke-virtual {v1, v0}, Lcn/bmob/v3/BmobUser;->setSessionToken(Ljava/lang/String;)V

    .line 1241
    iget-object v0, p0, Lcn/bmob/v3/BmobUser$1;->Code:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lcn/bmob/v3/BmobUser$1;->I:Lcn/bmob/v3/BmobUser;

    invoke-virtual {v0}, Lcn/bmob/v3/BmobUser;->getCurrentData()Lorg/json/JSONObject;

    move-result-object v0

    .line 1243
    const-string v1, "password"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1244
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1248
    :goto_0
    iget-object v1, p0, Lcn/bmob/v3/BmobUser$1;->V:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcn/bmob/v3/helper/GsonUtil;->toObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 233
    return-object v0

    .line 1246
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
