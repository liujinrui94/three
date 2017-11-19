.class final Lcn/bmob/v3/http/thing$1;
.super Ljava/lang/Object;
.source "BmobFactory.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/http/thing;->Code(Ljava/lang/Class;Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/LogInListener;)Lcn/bmob/v3/http/acknowledge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Lcom/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcn/bmob/v3/http/thing;)V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 266
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 1269
    new-instance v0, Lcn/bmob/v3/b/The;

    invoke-direct {v0}, Lcn/bmob/v3/b/The;-><init>()V

    const-string v1, "user"

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/bmob/v3/b/The;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    new-instance v0, Lcn/bmob/v3/b/The;

    invoke-direct {v0}, Lcn/bmob/v3/b/The;-><init>()V

    const-string v1, "sessionToken"

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "sessionToken"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/bmob/v3/b/The;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method
