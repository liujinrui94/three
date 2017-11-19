.class Lcn/bmob/push/lib/service/PushService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/bmob/push/lib/service/ISocketResponse;


# instance fields
.field private synthetic aD:Lcn/bmob/push/lib/service/PushService;


# direct methods
.method constructor <init>(Lcn/bmob/push/lib/service/PushService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/bmob/push/lib/service/PushService$2;->aD:Lcn/bmob/push/lib/service/PushService;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 156
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 157
    const-string v0, "data"

    check-cast p1, [B

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 158
    iget-object v0, p0, Lcn/bmob/push/lib/service/PushService$2;->aD:Lcn/bmob/push/lib/service/PushService;

    invoke-static {v0}, Lcn/bmob/push/lib/service/PushService;->Code(Lcn/bmob/push/lib/service/PushService;)Lcn/bmob/push/lib/service/PushService$CusRemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/push/lib/service/PushService$CusRemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 159
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 166
    iget-object v0, p0, Lcn/bmob/push/lib/service/PushService$2;->aD:Lcn/bmob/push/lib/service/PushService;

    invoke-static {v0}, Lcn/bmob/push/lib/service/PushService;->Code(Lcn/bmob/push/lib/service/PushService;)Lcn/bmob/push/lib/service/PushService$CusRemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/push/lib/service/PushService$CusRemoteCallbackList;->finishBroadcast()V

    .line 167
    return-void

    .line 161
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/bmob/push/lib/service/PushService$2;->aD:Lcn/bmob/push/lib/service/PushService;

    invoke-static {v0}, Lcn/bmob/push/lib/service/PushService;->Code(Lcn/bmob/push/lib/service/PushService;)Lcn/bmob/push/lib/service/PushService$CusRemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/bmob/push/lib/service/PushService$CusRemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcn/bmob/push/lib/service/ISocketServiceCallback;

    invoke-interface {v0, v2}, Lcn/bmob/push/lib/service/ISocketServiceCallback;->Code(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
