.class public Lcn/bmob/push/lib/service/Client;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aq:Lcn/bmob/push/autobahn/WebSocketConnection;

.field private ar:Landroid/content/Context;

.field private as:Lcn/bmob/push/lib/service/ISocketResponse;

.field private at:J

.field private au:Lcn/bmob/push/lib/service/Client$MyBroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/bmob/push/lib/service/Client;->aq:Lcn/bmob/push/autobahn/WebSocketConnection;

    .line 41
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/bmob/push/lib/service/Client;->at:J

    .line 210
    new-instance v0, Lcn/bmob/push/lib/service/Client$MyBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/bmob/push/lib/service/Client$MyBroadcastReceiver;-><init>(Lcn/bmob/push/lib/service/Client;B)V

    iput-object v0, p0, Lcn/bmob/push/lib/service/Client;->au:Lcn/bmob/push/lib/service/Client$MyBroadcastReceiver;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/push/lib/service/Client;->ar:Landroid/content/Context;

    .line 46
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketConnection;

    invoke-direct {v0}, Lcn/bmob/push/autobahn/WebSocketConnection;-><init>()V

    iput-object v0, p0, Lcn/bmob/push/lib/service/Client;->aq:Lcn/bmob/push/autobahn/WebSocketConnection;

    .line 47
    return-void
.end method

.method static synthetic B(Lcn/bmob/push/lib/service/Client;)Lcn/bmob/push/lib/service/ISocketResponse;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcn/bmob/push/lib/service/Client;->as:Lcn/bmob/push/lib/service/ISocketResponse;

    return-object v0
.end method

.method static synthetic Code(Lcn/bmob/push/lib/service/Client;)Lcn/bmob/push/autobahn/WebSocketConnection;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcn/bmob/push/lib/service/Client;->aq:Lcn/bmob/push/autobahn/WebSocketConnection;

    return-object v0
.end method

.method static synthetic Code(Lcn/bmob/push/lib/service/Client;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcn/bmob/push/lib/service/Client;->Z(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic I(Lcn/bmob/push/lib/service/Client;)V
    .locals 3

    .prologue
    .line 213
    .line 3214
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3215
    iget-object v1, p0, Lcn/bmob/push/lib/service/Client;->ar:Landroid/content/Context;

    iget-object v2, p0, Lcn/bmob/push/lib/service/Client;->au:Lcn/bmob/push/lib/service/Client$MyBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 213
    return-void
.end method

.method static synthetic V(Lcn/bmob/push/lib/service/Client;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcn/bmob/push/lib/service/Client;->ar:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic Z(Lcn/bmob/push/lib/service/Client;)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Lcn/bmob/push/lib/service/Client;->j()V

    return-void
.end method

.method private Z(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcn/bmob/push/lib/service/Client;->ar:Landroid/content/Context;

    invoke-static {v0}, Lcn/bmob/push/lib/util/AtomicIntegerUtil;->V(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ws://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sub?key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&cmd=sub&version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/bmob/push/config/Constant;->VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&heartbeat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcn/bmob/push/config/Constant;->HEARTBEAT_TIME:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    :try_start_0
    iget-object v1, p0, Lcn/bmob/push/lib/service/Client;->aq:Lcn/bmob/push/autobahn/WebSocketConnection;

    new-instance v2, Lcn/bmob/push/lib/service/Client$4;

    invoke-direct {v2, p0}, Lcn/bmob/push/lib/service/Client$4;-><init>(Lcn/bmob/push/lib/service/Client;)V

    invoke-virtual {v1, v0, v2}, Lcn/bmob/push/autobahn/WebSocketConnection;->Code(Ljava/lang/String;Lcn/bmob/push/autobahn/WebSocket$ConnectionHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    const-string v1, "BmobClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WebSocketException = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/bmob/push/lib/util/LogUtil;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "already connected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcn/bmob/push/lib/service/Client;->j()V

    goto :goto_0
.end method

.method private declared-synchronized i()Z
    .locals 1

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/bmob/push/lib/service/Client;->aq:Lcn/bmob/push/autobahn/WebSocketConnection;

    invoke-virtual {v0}, Lcn/bmob/push/autobahn/WebSocketConnection;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lcn/bmob/push/lib/service/Client;->close()V

    .line 2219
    iget-object v0, p0, Lcn/bmob/push/lib/service/Client;->ar:Landroid/content/Context;

    iget-object v1, p0, Lcn/bmob/push/lib/service/Client;->au:Lcn/bmob/push/lib/service/Client$MyBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 205
    new-instance v0, Lcn/bmob/push/lib/util/BmobPreferenceUtil;

    iget-object v1, p0, Lcn/bmob/push/lib/service/Client;->ar:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/bmob/push/lib/util/BmobPreferenceUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/bmob/push/lib/util/BmobPreferenceUtil;->m()V

    .line 207
    iget-object v0, p0, Lcn/bmob/push/lib/service/Client;->ar:Landroid/content/Context;

    invoke-static {v0}, Lcn/bmob/push/BmobPush;->startWork(Landroid/content/Context;)V

    .line 208
    return-void
.end method


# virtual methods
.method public final Code(Lcn/bmob/push/lib/service/ClientPacket;)I
    .locals 4

    .prologue
    .line 50
    const-string v0, "BmobClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "send: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    .line 1016
    iget-object v3, p1, Lcn/bmob/push/lib/service/ClientPacket;->data:[B

    .line 50
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/bmob/push/lib/util/LogUtil;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "BmobClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isSocketConnected:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/bmob/push/lib/service/Client;->i()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/bmob/push/lib/util/LogUtil;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcn/bmob/push/lib/service/Client;->aq:Lcn/bmob/push/autobahn/WebSocketConnection;

    new-instance v1, Ljava/lang/String;

    .line 2016
    iget-object v2, p1, Lcn/bmob/push/lib/service/ClientPacket;->data:[B

    .line 52
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Lcn/bmob/push/autobahn/WebSocketConnection;->I(Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public final Code(Lcn/bmob/push/lib/service/Client$VolleyListener;)V
    .locals 7

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/bmob/push/config/Constant;->initUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/server/get?key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/bmob/push/lib/service/Client;->ar:Landroid/content/Context;

    invoke-static {v1}, Lcn/bmob/push/lib/util/AtomicIntegerUtil;->V(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&proto=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    iget-object v0, p0, Lcn/bmob/push/lib/service/Client;->ar:Landroid/content/Context;

    invoke-static {v0}, Lcn/volley/toolbox/Volley;->B(Landroid/content/Context;)Lcn/volley/RequestQueue;

    move-result-object v6

    new-instance v0, Lcn/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcn/bmob/push/lib/service/Client$2;

    invoke-direct {v4, p0, p1}, Lcn/bmob/push/lib/service/Client$2;-><init>(Lcn/bmob/push/lib/service/Client;Lcn/bmob/push/lib/service/Client$VolleyListener;)V

    .line 142
    new-instance v5, Lcn/bmob/push/lib/service/Client$3;

    invoke-direct {v5, p0}, Lcn/bmob/push/lib/service/Client$3;-><init>(Lcn/bmob/push/lib/service/Client;)V

    invoke-direct/range {v0 .. v5}, Lcn/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcn/volley/Response$Listener;Lcn/volley/Response$ErrorListener;)V

    .line 123
    invoke-virtual {v6, v0}, Lcn/volley/RequestQueue;->I(Lcn/volley/Request;)Lcn/volley/Request;

    .line 151
    return-void
.end method

.method public final declared-synchronized Code(Lcn/bmob/push/lib/service/ISocketResponse;)V
    .locals 4

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcn/bmob/push/lib/service/Client;->as:Lcn/bmob/push/lib/service/ISocketResponse;

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/bmob/push/lib/service/Client;->at:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 91
    :goto_0
    monitor-exit p0

    return-void

    .line 77
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/bmob/push/lib/service/Client;->at:J

    .line 79
    new-instance v0, Lcn/bmob/push/lib/util/BmobPreferenceUtil;

    iget-object v1, p0, Lcn/bmob/push/lib/service/Client;->ar:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/bmob/push/lib/util/BmobPreferenceUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/bmob/push/lib/util/BmobPreferenceUtil;->l()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    new-instance v0, Lcn/bmob/push/lib/service/Client$1;

    invoke-direct {v0, p0}, Lcn/bmob/push/lib/service/Client$1;-><init>(Lcn/bmob/push/lib/service/Client;)V

    invoke-virtual {p0, v0}, Lcn/bmob/push/lib/service/Client;->Code(Lcn/bmob/push/lib/service/Client$VolleyListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 89
    :cond_1
    :try_start_2
    invoke-direct {p0, v0}, Lcn/bmob/push/lib/service/Client;->Z(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized close()V
    .locals 1

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/bmob/push/lib/service/Client;->aq:Lcn/bmob/push/autobahn/WebSocketConnection;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/bmob/push/lib/service/Client;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcn/bmob/push/lib/service/Client;->aq:Lcn/bmob/push/autobahn/WebSocketConnection;

    invoke-virtual {v0}, Lcn/bmob/push/autobahn/WebSocketConnection;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
