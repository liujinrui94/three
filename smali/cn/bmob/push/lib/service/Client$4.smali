.class Lcn/bmob/push/lib/service/Client$4;
.super Lcn/bmob/push/autobahn/WebSocketConnectionHandler;
.source "SourceFile"


# instance fields
.field private synthetic av:Lcn/bmob/push/lib/service/Client;


# direct methods
.method constructor <init>(Lcn/bmob/push/lib/service/Client;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/bmob/push/lib/service/Client$4;->av:Lcn/bmob/push/lib/service/Client;

    .line 158
    invoke-direct {p0}, Lcn/bmob/push/autobahn/WebSocketConnectionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final C()V
    .locals 2

    .prologue
    .line 162
    const-string v0, "BmobClient"

    const-string v1, "\u8fde\u63a5\u6210\u529f"

    invoke-static {v0, v1}, Lcn/bmob/push/lib/util/LogUtil;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcn/bmob/push/lib/service/Client$4;->av:Lcn/bmob/push/lib/service/Client;

    invoke-static {v0}, Lcn/bmob/push/lib/service/Client;->I(Lcn/bmob/push/lib/service/Client;)V

    .line 164
    return-void
.end method

.method public final Code(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 170
    const-string v0, "BmobClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8fde\u63a5\u4e2d\u65ad:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/bmob/push/lib/util/LogUtil;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcn/bmob/push/lib/service/Client$4;->av:Lcn/bmob/push/lib/service/Client;

    invoke-static {v0}, Lcn/bmob/push/lib/service/Client;->Z(Lcn/bmob/push/lib/service/Client;)V

    .line 173
    return-void
.end method

.method public final V(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0, p1}, Lcn/bmob/push/autobahn/WebSocketConnectionHandler;->V(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcn/bmob/push/lib/service/Client$4;->av:Lcn/bmob/push/lib/service/Client;

    invoke-static {v0}, Lcn/bmob/push/lib/service/Client;->B(Lcn/bmob/push/lib/service/Client;)Lcn/bmob/push/lib/service/ISocketResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcn/bmob/push/lib/service/Client$4;->av:Lcn/bmob/push/lib/service/Client;

    invoke-static {v0}, Lcn/bmob/push/lib/service/Client;->B(Lcn/bmob/push/lib/service/Client;)Lcn/bmob/push/lib/service/ISocketResponse;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/bmob/push/lib/service/ISocketResponse;->B(Ljava/lang/Object;)V

    .line 182
    :cond_0
    return-void
.end method
