.class final Lcn/bmob/v3/BmobObject$1;
.super Ljava/lang/Object;
.source "BmobObject.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/BmobObject;->Code(Lcn/bmob/v3/listener/SaveListener;)Lcn/bmob/v3/http/acknowledge;
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
.field private synthetic Code:Lcn/bmob/v3/BmobObject;


# direct methods
.method constructor <init>(Lcn/bmob/v3/BmobObject;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcn/bmob/v3/BmobObject$1;->Code:Lcn/bmob/v3/BmobObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 383
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 1386
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "objectId"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 1387
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "createdAt"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 1388
    iget-object v2, p0, Lcn/bmob/v3/BmobObject$1;->Code:Lcn/bmob/v3/BmobObject;

    invoke-virtual {v2, v0}, Lcn/bmob/v3/BmobObject;->setObjectId(Ljava/lang/String;)V

    .line 1389
    iget-object v2, p0, Lcn/bmob/v3/BmobObject$1;->Code:Lcn/bmob/v3/BmobObject;

    invoke-virtual {v2, v1}, Lcn/bmob/v3/BmobObject;->setCreatedAt(Ljava/lang/String;)V

    .line 383
    return-object v0
.end method
