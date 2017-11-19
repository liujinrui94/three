.class final Lcn/bmob/v3/BmobUser$2;
.super Ljava/lang/Object;
.source "BmobUser.java"

# interfaces
.implements Lrx/functions/Action1;


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
        "Lrx/functions/Action1",
        "<",
        "Lcom/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic Code:Ljava/lang/String;

.field private synthetic V:Lcn/bmob/v3/BmobUser;


# direct methods
.method constructor <init>(Lcn/bmob/v3/BmobUser;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcn/bmob/v3/BmobUser$2;->V:Lcn/bmob/v3/BmobUser;

    iput-object p2, p0, Lcn/bmob/v3/BmobUser$2;->Code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 219
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 1223
    iget-object v0, p0, Lcn/bmob/v3/BmobUser$2;->Code:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1224
    iget-object v0, p0, Lcn/bmob/v3/BmobUser$2;->V:Lcn/bmob/v3/BmobUser;

    invoke-virtual {v0}, Lcn/bmob/v3/BmobUser;->getCurrentData()Lorg/json/JSONObject;

    move-result-object v0

    .line 1225
    const-string v1, "password"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1226
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1230
    :goto_0
    new-instance v1, Lcn/bmob/v3/b/The;

    invoke-direct {v1}, Lcn/bmob/v3/b/The;-><init>()V

    const-string v2, "user"

    invoke-virtual {v1, v2, v0}, Lcn/bmob/v3/b/The;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    new-instance v0, Lcn/bmob/v3/b/The;

    invoke-direct {v0}, Lcn/bmob/v3/b/The;-><init>()V

    const-string v1, "sessionToken"

    iget-object v2, p0, Lcn/bmob/v3/BmobUser$2;->V:Lcn/bmob/v3/BmobUser;

    invoke-static {v2}, Lcn/bmob/v3/BmobUser;->Code(Lcn/bmob/v3/BmobUser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/bmob/v3/b/The;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void

    .line 1228
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
