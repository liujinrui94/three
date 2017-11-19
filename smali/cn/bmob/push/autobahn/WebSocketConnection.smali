.class public Lcn/bmob/push/autobahn/WebSocketConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/bmob/push/autobahn/WebSocket;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcn/bmob/push/autobahn/WebSocketReader;

.field protected c:Lcn/bmob/push/autobahn/WebSocketWriter;

.field private d:Landroid/os/HandlerThread;

.field protected e:Ljava/nio/channels/SocketChannel;

.field private f:Ljava/net/URI;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:[Ljava/lang/String;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcn/bmob/push/autobahn/WebSocket$ConnectionHandler;

.field protected o:Lcn/bmob/push/autobahn/WebSocketOptions;

.field private p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcn/bmob/push/autobahn/WebSocketConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/bmob/push/autobahn/WebSocketConnection;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1383
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketConnection$2;

    invoke-direct {v0, p0}, Lcn/bmob/push/autobahn/WebSocketConnection$2;-><init>(Lcn/bmob/push/autobahn/WebSocketConnection;)V

    iput-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->a:Landroid/os/Handler;

    .line 146
    iput-boolean v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->p:Z

    .line 147
    iput-boolean v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->q:Z

    .line 148
    return-void
.end method

.method static synthetic B(Lcn/bmob/push/autobahn/WebSocketConnection;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->l:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic C(Lcn/bmob/push/autobahn/WebSocketConnection;)Ljava/util/List;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic Code(Lcn/bmob/push/autobahn/WebSocketConnection;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->h:Ljava/lang/String;

    return-object v0
.end method

.method private Code(ILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 355
    .line 357
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 358
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 2333
    :cond_0
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->o:Lcn/bmob/push/autobahn/WebSocketOptions;

    invoke-virtual {v1}, Lcn/bmob/push/autobahn/WebSocketOptions;->g()I

    move-result v1

    .line 2334
    iget-boolean v2, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->p:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->q:Z

    if-eqz v2, :cond_1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 2335
    :cond_1
    if-eqz v0, :cond_2

    .line 2337
    iget-object v2, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->a:Landroid/os/Handler;

    new-instance v3, Lcn/bmob/push/autobahn/WebSocketConnection$1;

    invoke-direct {v3, p0}, Lcn/bmob/push/autobahn/WebSocketConnection$1;-><init>(Lcn/bmob/push/autobahn/WebSocketConnection;)V

    .line 2343
    int-to-long v4, v1

    .line 2337
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 361
    :cond_2
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->n:Lcn/bmob/push/autobahn/WebSocket$ConnectionHandler;

    if-eqz v1, :cond_3

    .line 363
    if-eqz v0, :cond_4

    .line 364
    :try_start_0
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->n:Lcn/bmob/push/autobahn/WebSocket$ConnectionHandler;

    const/4 v1, 0x7

    invoke-interface {v0, v1, p2}, Lcn/bmob/push/autobahn/WebSocket$ConnectionHandler;->Code(ILjava/lang/String;)V

    .line 375
    :cond_3
    :goto_0
    return-void

    .line 366
    :cond_4
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->n:Lcn/bmob/push/autobahn/WebSocket$ConnectionHandler;

    invoke-interface {v0, p1, p2}, Lcn/bmob/push/autobahn/WebSocket$ConnectionHandler;->Code(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic Code(Lcn/bmob/push/autobahn/WebSocketConnection;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0, p1, p2}, Lcn/bmob/push/autobahn/WebSocketConnection;->Code(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic Code(Lcn/bmob/push/autobahn/WebSocketConnection;Z)V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->q:Z

    return-void
.end method

.method static synthetic I(Lcn/bmob/push/autobahn/WebSocketConnection;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic S(Lcn/bmob/push/autobahn/WebSocketConnection;)Lcn/bmob/push/autobahn/WebSocket$ConnectionHandler;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->n:Lcn/bmob/push/autobahn/WebSocket$ConnectionHandler;

    return-object v0
.end method

.method protected static S()V
    .locals 0

    .prologue
    .line 489
    return-void
.end method

.method static synthetic V(Lcn/bmob/push/autobahn/WebSocketConnection;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->i:I

    return v0
.end method

.method static synthetic V(Lcn/bmob/push/autobahn/WebSocketConnection;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 171
    .line 3175
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->b:Lcn/bmob/push/autobahn/WebSocketReader;

    if-eqz v0, :cond_0

    .line 3176
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->b:Lcn/bmob/push/autobahn/WebSocketReader;

    invoke-virtual {v0}, Lcn/bmob/push/autobahn/WebSocketReader;->quit()V

    .line 3178
    :try_start_0
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->b:Lcn/bmob/push/autobahn/WebSocketReader;

    invoke-virtual {v0}, Lcn/bmob/push/autobahn/WebSocketReader;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3187
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->c:Lcn/bmob/push/autobahn/WebSocketWriter;

    if-eqz v0, :cond_1

    .line 3189
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->c:Lcn/bmob/push/autobahn/WebSocketWriter;

    new-instance v1, Lcn/bmob/push/autobahn/WebSocketMessage$Quit;

    invoke-direct {v1}, Lcn/bmob/push/autobahn/WebSocketMessage$Quit;-><init>()V

    invoke-virtual {v0, v1}, Lcn/bmob/push/autobahn/WebSocketWriter;->I(Ljava/lang/Object;)V

    .line 3191
    :try_start_1
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3200
    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->e:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_2

    .line 3202
    :try_start_2
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->e:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3211
    :cond_2
    :goto_2
    invoke-direct {p0, p1, p2}, Lcn/bmob/push/autobahn/WebSocketConnection;->Code(ILjava/lang/String;)V

    .line 171
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method static synthetic Z(Lcn/bmob/push/autobahn/WebSocketConnection;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->k:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final Code(Ljava/lang/String;Lcn/bmob/push/autobahn/WebSocket$ConnectionHandler;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 218
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketOptions;

    invoke-direct {v0}, Lcn/bmob/push/autobahn/WebSocketOptions;-><init>()V

    .line 2230
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->f:Ljava/net/URI;

    .line 2232
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->e:Ljava/nio/channels/SocketChannel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->e:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2233
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->f:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2234
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->f:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 2235
    iget-object v2, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->e:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 2236
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2237
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2281
    :catch_0
    move-exception v0

    new-instance v0, Lcn/bmob/push/autobahn/WebSocketException;

    const-string v1, "invalid WebSockets URI"

    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2242
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->f:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ws"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->f:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wss"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2243
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketException;

    const-string v1, "unsupported scheme for WebSockets URI"

    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2246
    :cond_1
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->f:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wss"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2247
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketException;

    const-string v1, "secure WebSockets not implemented"

    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2250
    :cond_2
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->f:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->g:Ljava/lang/String;

    .line 2252
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->f:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 2253
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->g:Ljava/lang/String;

    const-string v2, "ws"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2254
    const/16 v1, 0x50

    iput v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->i:I

    .line 2262
    :goto_0
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->f:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 2263
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketException;

    const-string v1, "no host specified in WebSockets URI"

    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2256
    :cond_3
    const/16 v1, 0x1bb

    iput v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->i:I

    goto :goto_0

    .line 2259
    :cond_4
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->f:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v1

    iput v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->i:I

    goto :goto_0

    .line 2265
    :cond_5
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->f:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->h:Ljava/lang/String;

    .line 2268
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->f:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->f:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2269
    :cond_6
    const-string v1, "/"

    iput-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->j:Ljava/lang/String;

    .line 2274
    :goto_1
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->f:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->f:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2275
    :cond_7
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->k:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2284
    :goto_2
    iput-object v3, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->l:[Ljava/lang/String;

    .line 2285
    iput-object v3, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->m:Ljava/util/List;

    .line 2286
    iput-object p2, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->n:Lcn/bmob/push/autobahn/WebSocket$ConnectionHandler;

    .line 2289
    new-instance v1, Lcn/bmob/push/autobahn/WebSocketOptions;

    invoke-direct {v1, v0}, Lcn/bmob/push/autobahn/WebSocketOptions;-><init>(Lcn/bmob/push/autobahn/WebSocketOptions;)V

    iput-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->o:Lcn/bmob/push/autobahn/WebSocketOptions;

    .line 2292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->p:Z

    .line 2295
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;-><init>(Lcn/bmob/push/autobahn/WebSocketConnection;B)V

    invoke-virtual {v0}, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;->start()V

    .line 219
    return-void

    .line 2271
    :cond_8
    :try_start_2
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->f:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->j:Ljava/lang/String;

    goto :goto_1

    .line 2277
    :cond_9
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->f:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->k:Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method protected final D()V
    .locals 5

    .prologue
    .line 510
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketReader;

    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->e:Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->o:Lcn/bmob/push/autobahn/WebSocketOptions;

    const-string v4, "WebSocketReader"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/bmob/push/autobahn/WebSocketReader;-><init>(Landroid/os/Handler;Ljava/nio/channels/SocketChannel;Lcn/bmob/push/autobahn/WebSocketOptions;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->b:Lcn/bmob/push/autobahn/WebSocketReader;

    .line 511
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->b:Lcn/bmob/push/autobahn/WebSocketReader;

    invoke-virtual {v0}, Lcn/bmob/push/autobahn/WebSocketReader;->start()V

    .line 514
    return-void
.end method

.method protected final F()V
    .locals 5

    .prologue
    .line 497
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WebSocketWriter"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->d:Landroid/os/HandlerThread;

    .line 498
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 499
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketWriter;

    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->a:Landroid/os/Handler;

    iget-object v3, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->e:Ljava/nio/channels/SocketChannel;

    iget-object v4, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->o:Lcn/bmob/push/autobahn/WebSocketOptions;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/bmob/push/autobahn/WebSocketWriter;-><init>(Landroid/os/Looper;Landroid/os/Handler;Ljava/nio/channels/SocketChannel;Lcn/bmob/push/autobahn/WebSocketOptions;)V

    iput-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->c:Lcn/bmob/push/autobahn/WebSocketWriter;

    .line 502
    return-void
.end method

.method public final I(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->c:Lcn/bmob/push/autobahn/WebSocketWriter;

    new-instance v1, Lcn/bmob/push/autobahn/WebSocketMessage$TextMessage;

    invoke-direct {v1, p1}, Lcn/bmob/push/autobahn/WebSocketMessage$TextMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/bmob/push/autobahn/WebSocketWriter;->I(Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method public final disconnect()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 300
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->c:Lcn/bmob/push/autobahn/WebSocketWriter;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->c:Lcn/bmob/push/autobahn/WebSocketWriter;

    new-instance v1, Lcn/bmob/push/autobahn/WebSocketMessage$Close;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Lcn/bmob/push/autobahn/WebSocketMessage$Close;-><init>(I)V

    invoke-virtual {v0, v1}, Lcn/bmob/push/autobahn/WebSocketWriter;->I(Ljava/lang/Object;)V

    .line 305
    :cond_0
    iput-boolean v3, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->p:Z

    .line 306
    iput-boolean v3, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->q:Z

    .line 307
    return-void
.end method

.method public final isConnected()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->e:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->e:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final reconnect()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 314
    invoke-virtual {p0}, Lcn/bmob/push/autobahn/WebSocketConnection;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection;->f:Ljava/net/URI;

    if-eqz v1, :cond_0

    .line 315
    new-instance v1, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;

    invoke-direct {v1, p0, v0}, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;-><init>(Lcn/bmob/push/autobahn/WebSocketConnection;B)V

    invoke-virtual {v1}, Lcn/bmob/push/autobahn/WebSocketConnection$WebSocketConnector;->start()V

    .line 316
    const/4 v0, 0x1

    .line 318
    :cond_0
    return v0
.end method
