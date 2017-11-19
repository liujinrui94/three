.class Lcn/bmob/push/lib/service/Client$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private synthetic av:Lcn/bmob/push/lib/service/Client;


# direct methods
.method private constructor <init>(Lcn/bmob/push/lib/service/Client;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcn/bmob/push/lib/service/Client$MyBroadcastReceiver;->av:Lcn/bmob/push/lib/service/Client;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/bmob/push/lib/service/Client;B)V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcn/bmob/push/lib/service/Client$MyBroadcastReceiver;-><init>(Lcn/bmob/push/lib/service/Client;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 227
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 229
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--->+h-->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/push/lib/util/LogUtil;->C(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcn/bmob/push/lib/service/Client$MyBroadcastReceiver;->av:Lcn/bmob/push/lib/service/Client;

    invoke-static {v0}, Lcn/bmob/push/lib/service/Client;->Code(Lcn/bmob/push/lib/service/Client;)Lcn/bmob/push/autobahn/WebSocketConnection;

    move-result-object v0

    const-string v1, "h"

    invoke-virtual {v0, v1}, Lcn/bmob/push/autobahn/WebSocketConnection;->I(Ljava/lang/String;)V

    .line 233
    :cond_0
    return-void
.end method
