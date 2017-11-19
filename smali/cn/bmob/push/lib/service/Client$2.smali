.class Lcn/bmob/push/lib/service/Client$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/volley/Response$Listener",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic av:Lcn/bmob/push/lib/service/Client;

.field private final synthetic aw:Lcn/bmob/push/lib/service/Client$VolleyListener;


# direct methods
.method constructor <init>(Lcn/bmob/push/lib/service/Client;Lcn/bmob/push/lib/service/Client$VolleyListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/bmob/push/lib/service/Client$2;->av:Lcn/bmob/push/lib/service/Client;

    iput-object p2, p0, Lcn/bmob/push/lib/service/Client$2;->aw:Lcn/bmob/push/lib/service/Client$VolleyListener;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic Z(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 1
    check-cast p1, Lorg/json/JSONObject;

    .line 1128
    :try_start_0
    const-string v0, "ret"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 1129
    if-nez v0, :cond_0

    .line 1130
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "server"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1131
    new-instance v1, Lcn/bmob/push/lib/util/BmobPreferenceUtil;

    iget-object v2, p0, Lcn/bmob/push/lib/service/Client$2;->av:Lcn/bmob/push/lib/service/Client;

    invoke-static {v2}, Lcn/bmob/push/lib/service/Client;->V(Lcn/bmob/push/lib/service/Client;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/bmob/push/lib/util/BmobPreferenceUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcn/bmob/push/lib/util/BmobPreferenceUtil;->B(Ljava/lang/String;)V

    .line 1132
    iget-object v1, p0, Lcn/bmob/push/lib/service/Client$2;->aw:Lcn/bmob/push/lib/service/Client$VolleyListener;

    invoke-interface {v1, v0}, Lcn/bmob/push/lib/service/Client$VolleyListener;->Code(Ljava/lang/String;)V

    .line 1138
    :goto_0
    return-void

    .line 1134
    :cond_0
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1135
    const-string v2, "bmob"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error code:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",error msg:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    new-instance v0, Lcn/bmob/push/lib/util/BmobPreferenceUtil;

    iget-object v1, p0, Lcn/bmob/push/lib/service/Client$2;->av:Lcn/bmob/push/lib/service/Client;

    invoke-static {v1}, Lcn/bmob/push/lib/service/Client;->V(Lcn/bmob/push/lib/service/Client;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/bmob/push/lib/util/BmobPreferenceUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/bmob/push/lib/util/BmobPreferenceUtil;->m()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1139
    :catch_0
    move-exception v0

    new-instance v0, Lcn/bmob/push/lib/util/BmobPreferenceUtil;

    iget-object v1, p0, Lcn/bmob/push/lib/service/Client$2;->av:Lcn/bmob/push/lib/service/Client;

    invoke-static {v1}, Lcn/bmob/push/lib/service/Client;->V(Lcn/bmob/push/lib/service/Client;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/bmob/push/lib/util/BmobPreferenceUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/bmob/push/lib/util/BmobPreferenceUtil;->m()V

    goto :goto_0
.end method
