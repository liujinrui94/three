.class Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic r:Lcn/bmob/push/autobahn/WebSocketConnection;


# direct methods
.method private constructor <init>(Lcn/bmob/push/autobahn/WebSocketConnection;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/bmob/push/autobahn/WebSocketConnection;B)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;-><init>(Lcn/bmob/push/autobahn/WebSocketConnection;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 73
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "WebSocketConnector"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 78
    :try_start_0
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    iput-object v1, v0, Lcn/bmob/push/autobahn/WebSocketConnection;->e:Ljava/nio/channels/SocketChannel;

    .line 82
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    iget-object v0, v0, Lcn/bmob/push/autobahn/WebSocketConnection;->e:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    invoke-static {v2}, Lcn/bmob/push/autobahn/WebSocketConnection;->Code(Lcn/bmob/push/autobahn/WebSocketConnection;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    invoke-static {v3}, Lcn/bmob/push/autobahn/WebSocketConnection;->V(Lcn/bmob/push/autobahn/WebSocketConnection;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 84
    iget-object v2, p0, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    iget-object v2, v2, Lcn/bmob/push/autobahn/WebSocketConnection;->o:Lcn/bmob/push/autobahn/WebSocketOptions;

    invoke-virtual {v2}, Lcn/bmob/push/autobahn/WebSocketOptions;->d()I

    move-result v2

    .line 82
    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 88
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    iget-object v0, v0, Lcn/bmob/push/autobahn/WebSocketConnection;->e:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    iget-object v1, v1, Lcn/bmob/push/autobahn/WebSocketConnection;->o:Lcn/bmob/push/autobahn/WebSocketOptions;

    invoke-virtual {v1}, Lcn/bmob/push/autobahn/WebSocketOptions;->c()I

    move-result v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 90
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    iget-object v0, v0, Lcn/bmob/push/autobahn/WebSocketConnection;->e:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    iget-object v1, v1, Lcn/bmob/push/autobahn/WebSocketConnection;->o:Lcn/bmob/push/autobahn/WebSocketOptions;

    invoke-virtual {v1}, Lcn/bmob/push/autobahn/WebSocketOptions;->getTcpNoDelay()Z

    move-result v1

    .line 90
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/channels/AlreadyConnectedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    iget-object v0, v0, Lcn/bmob/push/autobahn/WebSocketConnection;->e:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    :try_start_1
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    invoke-virtual {v0}, Lcn/bmob/push/autobahn/WebSocketConnection;->D()V

    .line 111
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    invoke-virtual {v0}, Lcn/bmob/push/autobahn/WebSocketConnection;->F()V

    .line 114
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketMessage$ClientHandshake;

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    invoke-static {v2}, Lcn/bmob/push/autobahn/WebSocketConnection;->Code(Lcn/bmob/push/autobahn/WebSocketConnection;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    invoke-static {v2}, Lcn/bmob/push/autobahn/WebSocketConnection;->V(Lcn/bmob/push/autobahn/WebSocketConnection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketMessage$ClientHandshake;-><init>(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    invoke-static {v1}, Lcn/bmob/push/autobahn/WebSocketConnection;->I(Lcn/bmob/push/autobahn/WebSocketConnection;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/bmob/push/autobahn/WebSocketMessage$ClientHandshake;->u:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    invoke-static {v1}, Lcn/bmob/push/autobahn/WebSocketConnection;->Z(Lcn/bmob/push/autobahn/WebSocketConnection;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/bmob/push/autobahn/WebSocketMessage$ClientHandshake;->v:Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    invoke-static {v1}, Lcn/bmob/push/autobahn/WebSocketConnection;->B(Lcn/bmob/push/autobahn/WebSocketConnection;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/bmob/push/autobahn/WebSocketMessage$ClientHandshake;->x:[Ljava/lang/String;

    .line 119
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    invoke-static {v1}, Lcn/bmob/push/autobahn/WebSocketConnection;->C(Lcn/bmob/push/autobahn/WebSocketConnection;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcn/bmob/push/autobahn/WebSocketMessage$ClientHandshake;->y:Ljava/util/List;

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    invoke-static {v2}, Lcn/bmob/push/autobahn/WebSocketConnection;->Code(Lcn/bmob/push/autobahn/WebSocketConnection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/bmob/push/autobahn/WebSocketMessage$ClientHandshake;->w:Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    iget-object v1, v1, Lcn/bmob/push/autobahn/WebSocketConnection;->c:Lcn/bmob/push/autobahn/WebSocketWriter;

    invoke-virtual {v1, v0}, Lcn/bmob/push/autobahn/WebSocketWriter;->I(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/bmob/push/autobahn/WebSocketConnection;->Code(Lcn/bmob/push/autobahn/WebSocketConnection;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 134
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    .line 95
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v1, v4, v0}, Lcn/bmob/push/autobahn/WebSocketConnection;->Code(Lcn/bmob/push/autobahn/WebSocketConnection;ILjava/lang/String;)V

    goto :goto_0

    .line 98
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    .line 99
    const-string v1, "Could not connect to WebSocket server"

    .line 98
    invoke-static {v0, v4, v1}, Lcn/bmob/push/autobahn/WebSocketConnection;->Code(Lcn/bmob/push/autobahn/WebSocketConnection;ILjava/lang/String;)V

    goto :goto_0

    .line 126
    :catch_2
    move-exception v0

    .line 127
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    const/4 v2, 0x5

    .line 128
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v1, v2, v0}, Lcn/bmob/push/autobahn/WebSocketConnection;->Code(Lcn/bmob/push/autobahn/WebSocketConnection;ILjava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    .line 133
    const-string v1, "Could not connect to WebSocket server"

    .line 132
    invoke-static {v0, v4, v1}, Lcn/bmob/push/autobahn/WebSocketConnection;->Code(Lcn/bmob/push/autobahn/WebSocketConnection;ILjava/lang/String;)V

    goto :goto_0
.end method
