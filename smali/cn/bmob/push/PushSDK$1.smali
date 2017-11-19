.class Lcn/bmob/push/PushSDK$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic C:Lcn/bmob/push/PushSDK;


# direct methods
.method constructor <init>(Lcn/bmob/push/PushSDK;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/bmob/push/PushSDK$1;->C:Lcn/bmob/push/PushSDK;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 116
    const-string v0, "PushSDK"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcn/bmob/push/lib/util/LogUtil;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcn/bmob/push/PushSDK$1;->C:Lcn/bmob/push/PushSDK;

    invoke-static {p2}, Lcn/bmob/push/lib/service/ISocketService$Stub;->Code(Landroid/os/IBinder;)Lcn/bmob/push/lib/service/ISocketService;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/bmob/push/PushSDK;->Code(Lcn/bmob/push/PushSDK;Lcn/bmob/push/lib/service/ISocketService;)V

    .line 119
    :try_start_0
    iget-object v0, p0, Lcn/bmob/push/PushSDK$1;->C:Lcn/bmob/push/PushSDK;

    invoke-static {v0}, Lcn/bmob/push/PushSDK;->Code(Lcn/bmob/push/PushSDK;)Lcn/bmob/push/lib/service/ISocketService;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/bmob/push/PushSDK$1;->C:Lcn/bmob/push/PushSDK;

    invoke-static {v2}, Lcn/bmob/push/PushSDK;->V(Lcn/bmob/push/PushSDK;)Lcn/bmob/push/lib/service/ISocketServiceCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcn/bmob/push/lib/service/ISocketService;->Code(Landroid/os/Bundle;Lcn/bmob/push/lib/service/ISocketServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 122
    :catch_1
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 103
    const-string v0, "PushSDK"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcn/bmob/push/lib/util/LogUtil;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :try_start_0
    iget-object v0, p0, Lcn/bmob/push/PushSDK$1;->C:Lcn/bmob/push/PushSDK;

    invoke-static {v0}, Lcn/bmob/push/PushSDK;->Code(Lcn/bmob/push/PushSDK;)Lcn/bmob/push/lib/service/ISocketService;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/bmob/push/PushSDK$1;->C:Lcn/bmob/push/PushSDK;

    invoke-static {v2}, Lcn/bmob/push/PushSDK;->V(Lcn/bmob/push/PushSDK;)Lcn/bmob/push/lib/service/ISocketServiceCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcn/bmob/push/lib/service/ISocketService;->V(Landroid/os/Bundle;Lcn/bmob/push/lib/service/ISocketServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    :goto_0
    iget-object v0, p0, Lcn/bmob/push/PushSDK$1;->C:Lcn/bmob/push/PushSDK;

    invoke-static {v0, v3}, Lcn/bmob/push/PushSDK;->Code(Lcn/bmob/push/PushSDK;Lcn/bmob/push/lib/service/ISocketService;)V

    .line 112
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 108
    :catch_1
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
