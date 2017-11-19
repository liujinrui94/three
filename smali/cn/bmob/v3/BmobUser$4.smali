.class final Lcn/bmob/v3/BmobUser$4;
.super Ljava/lang/Object;
.source "BmobUser.java"

# interfaces
.implements Lrx/functions/Action1;


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
        "Lrx/functions/Action1",
        "<",
        "Lcom/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcn/bmob/v3/BmobUser;)V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 293
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 1297
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1298
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "sessionToken"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 1299
    new-instance v2, Lcn/bmob/v3/b/The;

    invoke-direct {v2}, Lcn/bmob/v3/b/The;-><init>()V

    const-string v3, "user"

    invoke-virtual {v2, v3, v0}, Lcn/bmob/v3/b/The;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    new-instance v0, Lcn/bmob/v3/b/The;

    invoke-direct {v0}, Lcn/bmob/v3/b/The;-><init>()V

    const-string v2, "sessionToken"

    invoke-virtual {v0, v2, v1}, Lcn/bmob/v3/b/The;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method
