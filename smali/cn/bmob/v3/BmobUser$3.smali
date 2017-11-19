.class final Lcn/bmob/v3/BmobUser$3;
.super Ljava/lang/Object;
.source "BmobUser.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/BmobUser;->Code(Ljava/lang/Class;Lcn/bmob/v3/listener/SaveListener;)Lcn/bmob/v3/http/acknowledge;
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
.field private synthetic Code:Ljava/lang/Class;

.field private synthetic V:Lcn/bmob/v3/BmobUser;


# direct methods
.method constructor <init>(Lcn/bmob/v3/BmobUser;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcn/bmob/v3/BmobUser$3;->V:Lcn/bmob/v3/BmobUser;

    iput-object p2, p0, Lcn/bmob/v3/BmobUser$3;->Code:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 303
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 1306
    iget-object v0, p0, Lcn/bmob/v3/BmobUser$3;->V:Lcn/bmob/v3/BmobUser;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "objectId"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/bmob/v3/BmobUser;->setObjectId(Ljava/lang/String;)V

    .line 1307
    iget-object v0, p0, Lcn/bmob/v3/BmobUser$3;->V:Lcn/bmob/v3/BmobUser;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "createdAt"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/bmob/v3/BmobUser;->setCreatedAt(Ljava/lang/String;)V

    .line 1308
    iget-object v0, p0, Lcn/bmob/v3/BmobUser$3;->V:Lcn/bmob/v3/BmobUser;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "updatedAt"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/bmob/v3/BmobUser;->setUpdatedAt(Ljava/lang/String;)V

    .line 1309
    iget-object v0, p0, Lcn/bmob/v3/BmobUser$3;->V:Lcn/bmob/v3/BmobUser;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "sessionToken"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/bmob/v3/BmobUser;->setSessionToken(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "emailVerified"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcn/bmob/v3/BmobUser$3;->V:Lcn/bmob/v3/BmobUser;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "emailVerified"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/bmob/v3/BmobUser;->setEmailVerified(Ljava/lang/Boolean;)V

    .line 1313
    :cond_0
    iget-object v0, p0, Lcn/bmob/v3/BmobUser$3;->Code:Ljava/lang/Class;

    invoke-static {p1, v0}, Lcn/bmob/v3/helper/GsonUtil;->toObject(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 303
    return-object v0
.end method
