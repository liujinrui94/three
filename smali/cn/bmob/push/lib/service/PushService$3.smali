.class Lcn/bmob/push/lib/service/PushService$3;
.super Lcn/bmob/push/lib/service/ISocketService$Stub;
.source "SourceFile"


# instance fields
.field private synthetic aD:Lcn/bmob/push/lib/service/PushService;


# direct methods
.method constructor <init>(Lcn/bmob/push/lib/service/PushService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/bmob/push/lib/service/PushService$3;->aD:Lcn/bmob/push/lib/service/PushService;

    .line 172
    invoke-direct {p0}, Lcn/bmob/push/lib/service/ISocketService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code(Landroid/os/Bundle;Lcn/bmob/push/lib/service/ISocketServiceCallback;)V
    .locals 4

    .prologue
    .line 186
    if-eqz p2, :cond_0

    .line 187
    iget-object v0, p0, Lcn/bmob/push/lib/service/PushService$3;->aD:Lcn/bmob/push/lib/service/PushService;

    invoke-static {v0}, Lcn/bmob/push/lib/service/PushService;->Code(Lcn/bmob/push/lib/service/PushService;)Lcn/bmob/push/lib/service/PushService$CusRemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/bmob/push/lib/service/PushService$CusRemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    .line 188
    const-string v1, "PushService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "registerCallback isRegistered\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v1, v0}, Lcn/bmob/push/lib/util/LogUtil;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_0
    return-void
.end method

.method public final V(Landroid/os/Bundle;)I
    .locals 3

    .prologue
    .line 176
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    .line 178
    iget-object v1, p0, Lcn/bmob/push/lib/service/PushService$3;->aD:Lcn/bmob/push/lib/service/PushService;

    invoke-static {v1}, Lcn/bmob/push/lib/service/PushService;->V(Lcn/bmob/push/lib/service/PushService;)Lcn/bmob/push/lib/service/Client;

    move-result-object v1

    new-instance v2, Lcn/bmob/push/lib/service/ClientPacket;

    invoke-direct {v2, v0}, Lcn/bmob/push/lib/service/ClientPacket;-><init>([B)V

    invoke-virtual {v1, v2}, Lcn/bmob/push/lib/service/Client;->Code(Lcn/bmob/push/lib/service/ClientPacket;)I

    move-result v0

    .line 180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final V(Landroid/os/Bundle;Lcn/bmob/push/lib/service/ISocketServiceCallback;)V
    .locals 4

    .prologue
    .line 196
    if-eqz p2, :cond_0

    .line 197
    iget-object v0, p0, Lcn/bmob/push/lib/service/PushService$3;->aD:Lcn/bmob/push/lib/service/PushService;

    invoke-static {v0}, Lcn/bmob/push/lib/service/PushService;->Code(Lcn/bmob/push/lib/service/PushService;)Lcn/bmob/push/lib/service/PushService$CusRemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/bmob/push/lib/service/PushService$CusRemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    .line 198
    const-string v1, "PushService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "registerCallback isUnregistered:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {v1, v0}, Lcn/bmob/push/lib/util/LogUtil;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_0
    return-void
.end method
