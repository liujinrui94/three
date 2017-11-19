.class public final Lcn/bmob/v3/socketio/From;
.super Ljava/lang/Object;
.source "WebSocketClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/bmob/v3/socketio/From$This;
    }
.end annotation


# instance fields
.field private B:Landroid/os/HandlerThread;

.field private C:Landroid/os/Handler;

.field private Code:Ljava/net/URI;

.field private D:Z

.field private F:Lcn/bmob/v3/socketio/I;

.field private I:Ljava/net/Socket;

.field private final L:Ljava/lang/Object;

.field private S:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private V:Lcn/bmob/v3/socketio/From$This;

.field private Z:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/net/URI;Lcn/bmob/v3/socketio/From$This;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lcn/bmob/v3/socketio/From$This;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/bmob/v3/socketio/From;->L:Ljava/lang/Object;

    .line 57
    iput-object p1, p0, Lcn/bmob/v3/socketio/From;->Code:Ljava/net/URI;

    .line 58
    iput-object p2, p0, Lcn/bmob/v3/socketio/From;->V:Lcn/bmob/v3/socketio/From$This;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/bmob/v3/socketio/From;->S:Ljava/util/List;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/bmob/v3/socketio/From;->D:Z

    .line 61
    new-instance v0, Lcn/bmob/v3/socketio/I;

    invoke-direct {v0, p0}, Lcn/bmob/v3/socketio/I;-><init>(Lcn/bmob/v3/socketio/From;)V

    iput-object v0, p0, Lcn/bmob/v3/socketio/From;->F:Lcn/bmob/v3/socketio/I;

    .line 63
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "websocket-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/bmob/v3/socketio/From;->B:Landroid/os/HandlerThread;

    .line 64
    iget-object v0, p0, Lcn/bmob/v3/socketio/From;->B:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 65
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/bmob/v3/socketio/From;->B:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/bmob/v3/socketio/From;->C:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method static synthetic B(Lcn/bmob/v3/socketio/From;)Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcn/bmob/v3/socketio/From;->S:Ljava/util/List;

    return-object v0
.end method

.method static synthetic C(Lcn/bmob/v3/socketio/From;)Lcn/bmob/v3/socketio/From$This;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcn/bmob/v3/socketio/From;->V:Lcn/bmob/v3/socketio/From$This;

    return-object v0
.end method

.method static synthetic Code(Lcn/bmob/v3/socketio/From;Lcn/bmob/v3/socketio/I$This;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 35
    .line 3206
    invoke-virtual {p1}, Lcn/bmob/v3/socketio/I$This;->read()I

    move-result v1

    .line 3207
    if-ne v1, v4, :cond_0

    .line 3218
    :goto_0
    return-object v0

    .line 3210
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3211
    :cond_1
    const/16 v3, 0xa

    if-eq v1, v3, :cond_3

    .line 3212
    const/16 v3, 0xd

    if-eq v1, v3, :cond_2

    .line 3213
    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3216
    :cond_2
    invoke-virtual {p1}, Lcn/bmob/v3/socketio/I$This;->read()I

    move-result v1

    .line 3217
    if-ne v1, v4, :cond_1

    goto :goto_0

    .line 3221
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic Code(Lcn/bmob/v3/socketio/From;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcn/bmob/v3/socketio/From;->I:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic Code(Lcn/bmob/v3/socketio/From;)Ljava/net/URI;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcn/bmob/v3/socketio/From;->Code:Ljava/net/URI;

    return-object v0
.end method

.method static synthetic Code(Lcn/bmob/v3/socketio/From;Ljava/lang/String;)Lorg/apache/http/StatusLine;
    .locals 1

    .prologue
    .line 35
    .line 4194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4195
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4197
    :cond_0
    new-instance v0, Lorg/apache/http/message/BasicLineParser;

    invoke-direct {v0}, Lorg/apache/http/message/BasicLineParser;-><init>()V

    invoke-static {p1, v0}, Lorg/apache/http/message/BasicLineParser;->parseStatusLine(Ljava/lang/String;Lorg/apache/http/message/LineParser;)Lorg/apache/http/StatusLine;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic Code(Lcn/bmob/v3/socketio/From;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcn/bmob/v3/socketio/From;->D:Z

    return p1
.end method

.method static synthetic F(Lcn/bmob/v3/socketio/From;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcn/bmob/v3/socketio/From;->L:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic I(Lcn/bmob/v3/socketio/From;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-static {p1}, Lcn/bmob/v3/socketio/From;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic I(Lcn/bmob/v3/socketio/From;)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcn/bmob/v3/socketio/From;->I:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic S(Lcn/bmob/v3/socketio/From;)Lcn/bmob/v3/socketio/I;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcn/bmob/v3/socketio/From;->F:Lcn/bmob/v3/socketio/I;

    return-object v0
.end method

.method private static V(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 230
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 231
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic V(Lcn/bmob/v3/socketio/From;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1271
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 1272
    invoke-virtual {v0, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 1273
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 35
    return-object v0
.end method

.method static synthetic V(Lcn/bmob/v3/socketio/From;Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 35
    .line 4201
    new-instance v0, Lorg/apache/http/message/BasicLineParser;

    invoke-direct {v0}, Lorg/apache/http/message/BasicLineParser;-><init>()V

    invoke-static {p1, v0}, Lorg/apache/http/message/BasicLineParser;->parseHeader(Ljava/lang/String;Lorg/apache/http/message/LineParser;)Lorg/apache/http/Header;

    move-result-object v0

    .line 35
    return-object v0
.end method

.method static synthetic Z(Lcn/bmob/v3/socketio/From;)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v1, 0x0

    .line 2238
    new-array v2, v8, [B

    move v0, v1

    .line 2239
    :goto_0
    if-ge v0, v8, :cond_0

    .line 2240
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 2239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2242
    :cond_0
    invoke-static {v2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 35
    return-object v0
.end method


# virtual methods
.method public final Code()Lcn/bmob/v3/socketio/From$This;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcn/bmob/v3/socketio/From;->V:Lcn/bmob/v3/socketio/From$This;

    return-object v0
.end method

.method public final Code(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcn/bmob/v3/socketio/From;->F:Lcn/bmob/v3/socketio/I;

    invoke-virtual {v0, p1}, Lcn/bmob/v3/socketio/I;->Code(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/bmob/v3/socketio/From;->Code([B)V

    .line 183
    return-void
.end method

.method final Code([B)V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcn/bmob/v3/socketio/From;->C:Landroid/os/Handler;

    new-instance v1, Lcn/bmob/v3/socketio/From$3;

    invoke-direct {v1, p0, p1}, Lcn/bmob/v3/socketio/From$3;-><init>(Lcn/bmob/v3/socketio/From;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
    return-void
.end method

.method public final I()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcn/bmob/v3/socketio/From;->I:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcn/bmob/v3/socketio/From;->C:Landroid/os/Handler;

    new-instance v1, Lcn/bmob/v3/socketio/From$2;

    invoke-direct {v1, p0}, Lcn/bmob/v3/socketio/From$2;-><init>(Lcn/bmob/v3/socketio/From;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    :cond_0
    return-void
.end method

.method public final V()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcn/bmob/v3/socketio/From;->Z:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/bmob/v3/socketio/From;->Z:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/bmob/v3/socketio/From$1;

    invoke-direct {v1, p0}, Lcn/bmob/v3/socketio/From$1;-><init>(Lcn/bmob/v3/socketio/From;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcn/bmob/v3/socketio/From;->Z:Ljava/lang/Thread;

    .line 158
    iget-object v0, p0, Lcn/bmob/v3/socketio/From;->Z:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public final Z()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcn/bmob/v3/socketio/From;->D:Z

    return v0
.end method
