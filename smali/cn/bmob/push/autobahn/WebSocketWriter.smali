.class public Lcn/bmob/push/autobahn/WebSocketWriter;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final X:Landroid/os/Handler;

.field private final Y:Ljava/nio/channels/SocketChannel;

.field private final an:Ljava/util/Random;

.field private final ao:Landroid/os/Looper;

.field private final ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

.field private final o:Lcn/bmob/push/autobahn/WebSocketOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcn/bmob/push/autobahn/WebSocketWriter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/bmob/push/autobahn/WebSocketWriter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler;Ljava/nio/channels/SocketChannel;Lcn/bmob/push/autobahn/WebSocketOptions;)V
    .locals 3

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 47
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->an:Ljava/util/Random;

    .line 82
    iput-object p1, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ao:Landroid/os/Looper;

    .line 83
    iput-object p2, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->X:Landroid/os/Handler;

    .line 84
    iput-object p3, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->Y:Ljava/nio/channels/SocketChannel;

    .line 85
    iput-object p4, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->o:Lcn/bmob/push/autobahn/WebSocketOptions;

    .line 86
    new-instance v0, Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    .line 87
    invoke-virtual {p4}, Lcn/bmob/push/autobahn/WebSocketOptions;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0xe

    const/high16 v2, 0x40000

    invoke-direct {v0, v1, v2}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;-><init>(II)V

    .line 86
    iput-object v0, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    .line 91
    return-void
.end method

.method private Code(IZ[B)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 308
    if-eqz p3, :cond_0

    .line 309
    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcn/bmob/push/autobahn/WebSocketWriter;->Code(IZ[BII)V

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcn/bmob/push/autobahn/WebSocketWriter;->Code(IZ[BII)V

    goto :goto_0
.end method

.method private Code(IZ[BII)V
    .locals 10

    .prologue
    .line 335
    const/4 v0, 0x0

    .line 336
    if-eqz p2, :cond_0

    .line 337
    const/16 v0, -0x80

    .line 339
    :cond_0
    int-to-byte v1, p1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 340
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    invoke-virtual {v1, v0}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->write(I)V

    .line 343
    const/4 v0, 0x0

    .line 344
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->o:Lcn/bmob/push/autobahn/WebSocketOptions;

    invoke-virtual {v1}, Lcn/bmob/push/autobahn/WebSocketOptions;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    const/16 v0, -0x80

    .line 348
    :cond_1
    int-to-long v2, p5

    .line 351
    const-wide/16 v4, 0x7d

    cmp-long v1, v2, v4

    if-gtz v1, :cond_4

    .line 352
    long-to-int v1, v2

    int-to-byte v1, v1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 353
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    invoke-virtual {v1, v0}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->write(I)V

    .line 369
    :goto_0
    const/4 v0, 0x0

    .line 370
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->o:Lcn/bmob/push/autobahn/WebSocketOptions;

    invoke-virtual {v1}, Lcn/bmob/push/autobahn/WebSocketOptions;->f()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1140
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 1141
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->an:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 373
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    const/4 v4, 0x0

    aget-byte v4, v0, v4

    invoke-virtual {v1, v4}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->write(I)V

    .line 374
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    invoke-virtual {v1, v4}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->write(I)V

    .line 375
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    const/4 v4, 0x2

    aget-byte v4, v0, v4

    invoke-virtual {v1, v4}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->write(I)V

    .line 376
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    const/4 v4, 0x3

    aget-byte v4, v0, v4

    invoke-virtual {v1, v4}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->write(I)V

    move-object v1, v0

    .line 379
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 380
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->o:Lcn/bmob/push/autobahn/WebSocketOptions;

    invoke-virtual {v0}, Lcn/bmob/push/autobahn/WebSocketOptions;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    const/4 v0, 0x0

    :goto_2
    int-to-long v4, v0

    cmp-long v4, v4, v2

    if-ltz v4, :cond_6

    .line 387
    :cond_2
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1, p5}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->write([BII)V

    .line 389
    :cond_3
    return-void

    .line 354
    :cond_4
    const-wide/32 v4, 0xffff

    cmp-long v1, v2, v4

    if-gtz v1, :cond_5

    .line 355
    or-int/lit8 v0, v0, 0x7e

    int-to-byte v0, v0

    .line 356
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    invoke-virtual {v1, v0}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->write(I)V

    .line 357
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v4, 0x0

    const/16 v5, 0x8

    shr-long v6, v2, v5

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/4 v4, 0x1

    .line 358
    const-wide/16 v6, 0xff

    and-long/2addr v6, v2

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 357
    invoke-virtual {v0, v1}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->write([B)V

    goto :goto_0

    .line 360
    :cond_5
    or-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    .line 361
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    invoke-virtual {v1, v0}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->write(I)V

    .line 362
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    const/16 v1, 0x8

    new-array v1, v1, [B

    const/4 v4, 0x0

    const/16 v5, 0x38

    shr-long v6, v2, v5

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/4 v4, 0x1

    .line 363
    const/16 v5, 0x30

    shr-long v6, v2, v5

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/4 v4, 0x2

    const/16 v5, 0x28

    shr-long v6, v2, v5

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/4 v4, 0x3

    .line 364
    const/16 v5, 0x20

    shr-long v6, v2, v5

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/4 v4, 0x4

    const/16 v5, 0x18

    shr-long v6, v2, v5

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/4 v4, 0x5

    .line 365
    const/16 v5, 0x10

    shr-long v6, v2, v5

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/4 v4, 0x6

    const/16 v5, 0x8

    shr-long v6, v2, v5

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/4 v4, 0x7

    .line 366
    const-wide/16 v6, 0xff

    and-long/2addr v6, v2

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 362
    invoke-virtual {v0, v1}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->write([B)V

    goto/16 :goto_0

    .line 384
    :cond_6
    aget-byte v4, p3, v0

    rem-int/lit8 v5, v0, 0x4

    aget-byte v5, v1, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p3, v0

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_7
    move-object v1, v0

    goto/16 :goto_1
.end method

.method private V(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->X:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 119
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 120
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->X:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 121
    return-void
.end method


# virtual methods
.method public final I(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcn/bmob/push/autobahn/WebSocketWriter;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 106
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 107
    invoke-virtual {p0, v0}, Lcn/bmob/push/autobahn/WebSocketWriter;->sendMessage(Landroid/os/Message;)Z

    .line 108
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/16 v6, 0x7d

    const/4 v1, 0x0

    .line 404
    :try_start_0
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    invoke-virtual {v0}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->clear()Ljava/nio/Buffer;

    .line 407
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1446
    instance-of v2, v0, Lcn/bmob/push/autobahn/WebSocketMessage$TextMessage;

    if-eqz v2, :cond_2

    .line 1448
    check-cast v0, Lcn/bmob/push/autobahn/WebSocketMessage$TextMessage;

    .line 2274
    iget-object v0, v0, Lcn/bmob/push/autobahn/WebSocketMessage$TextMessage;->K:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 2275
    array-length v1, v0

    iget-object v2, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->o:Lcn/bmob/push/autobahn/WebSocketOptions;

    invoke-virtual {v2}, Lcn/bmob/push/autobahn/WebSocketOptions;->b()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 2276
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketException;

    .line 2277
    const-string v1, "message payload exceeds payload limit"

    .line 2276
    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 423
    :catch_0
    move-exception v0

    new-instance v0, Lcn/bmob/push/autobahn/WebSocketMessage$ConnectionLost;

    invoke-direct {v0}, Lcn/bmob/push/autobahn/WebSocketMessage$ConnectionLost;-><init>()V

    invoke-direct {p0, v0}, Lcn/bmob/push/autobahn/WebSocketWriter;->V(Ljava/lang/Object;)V

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 2279
    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_1
    invoke-direct {p0, v1, v2, v0}, Lcn/bmob/push/autobahn/WebSocketWriter;->Code(IZ[B)V

    .line 410
    :goto_1
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    invoke-virtual {v0}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->flip()Ljava/nio/Buffer;

    .line 411
    :goto_2
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    invoke-virtual {v0}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 414
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->Y:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    invoke-virtual {v1}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->Z()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 424
    :catch_1
    move-exception v0

    .line 430
    new-instance v1, Lcn/bmob/push/autobahn/WebSocketMessage$Error;

    invoke-direct {v1, v0}, Lcn/bmob/push/autobahn/WebSocketMessage$Error;-><init>(Ljava/lang/Exception;)V

    invoke-direct {p0, v1}, Lcn/bmob/push/autobahn/WebSocketWriter;->V(Ljava/lang/Object;)V

    goto :goto_0

    .line 1450
    :cond_2
    :try_start_2
    instance-of v2, v0, Lcn/bmob/push/autobahn/WebSocketMessage$RawTextMessage;

    if-eqz v2, :cond_4

    .line 1452
    check-cast v0, Lcn/bmob/push/autobahn/WebSocketMessage$RawTextMessage;

    .line 2287
    iget-object v1, v0, Lcn/bmob/push/autobahn/WebSocketMessage$RawTextMessage;->s:[B

    array-length v1, v1

    iget-object v2, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->o:Lcn/bmob/push/autobahn/WebSocketOptions;

    invoke-virtual {v2}, Lcn/bmob/push/autobahn/WebSocketOptions;->b()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 2288
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketException;

    .line 2289
    const-string v1, "message payload exceeds payload limit"

    .line 2288
    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2291
    :cond_3
    const/4 v1, 0x1

    const/4 v2, 0x1

    iget-object v0, v0, Lcn/bmob/push/autobahn/WebSocketMessage$RawTextMessage;->s:[B

    invoke-direct {p0, v1, v2, v0}, Lcn/bmob/push/autobahn/WebSocketWriter;->Code(IZ[B)V

    goto :goto_1

    .line 1454
    :cond_4
    instance-of v2, v0, Lcn/bmob/push/autobahn/WebSocketMessage$BinaryMessage;

    if-eqz v2, :cond_6

    .line 1456
    check-cast v0, Lcn/bmob/push/autobahn/WebSocketMessage$BinaryMessage;

    .line 3262
    iget-object v1, v0, Lcn/bmob/push/autobahn/WebSocketMessage$BinaryMessage;->s:[B

    array-length v1, v1

    iget-object v2, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->o:Lcn/bmob/push/autobahn/WebSocketOptions;

    invoke-virtual {v2}, Lcn/bmob/push/autobahn/WebSocketOptions;->b()I

    move-result v2

    if-le v1, v2, :cond_5

    .line 3263
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketException;

    .line 3264
    const-string v1, "message payload exceeds payload limit"

    .line 3263
    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3266
    :cond_5
    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v0, v0, Lcn/bmob/push/autobahn/WebSocketMessage$BinaryMessage;->s:[B

    invoke-direct {p0, v1, v2, v0}, Lcn/bmob/push/autobahn/WebSocketWriter;->Code(IZ[B)V

    goto :goto_1

    .line 1458
    :cond_6
    instance-of v2, v0, Lcn/bmob/push/autobahn/WebSocketMessage$Ping;

    if-eqz v2, :cond_8

    .line 1460
    check-cast v0, Lcn/bmob/push/autobahn/WebSocketMessage$Ping;

    .line 4239
    iget-object v1, v0, Lcn/bmob/push/autobahn/WebSocketMessage$Ping;->s:[B

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcn/bmob/push/autobahn/WebSocketMessage$Ping;->s:[B

    array-length v1, v1

    if-le v1, v6, :cond_7

    .line 4240
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketException;

    const-string v1, "ping payload exceeds 125 octets"

    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4242
    :cond_7
    const/16 v1, 0x9

    const/4 v2, 0x1

    iget-object v0, v0, Lcn/bmob/push/autobahn/WebSocketMessage$Ping;->s:[B

    invoke-direct {p0, v1, v2, v0}, Lcn/bmob/push/autobahn/WebSocketWriter;->Code(IZ[B)V

    goto/16 :goto_1

    .line 1462
    :cond_8
    instance-of v2, v0, Lcn/bmob/push/autobahn/WebSocketMessage$Pong;

    if-eqz v2, :cond_a

    .line 1464
    check-cast v0, Lcn/bmob/push/autobahn/WebSocketMessage$Pong;

    .line 4251
    iget-object v1, v0, Lcn/bmob/push/autobahn/WebSocketMessage$Pong;->s:[B

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcn/bmob/push/autobahn/WebSocketMessage$Pong;->s:[B

    array-length v1, v1

    if-le v1, v6, :cond_9

    .line 4252
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketException;

    const-string v1, "pong payload exceeds 125 octets"

    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4254
    :cond_9
    const/16 v1, 0xa

    const/4 v2, 0x1

    iget-object v0, v0, Lcn/bmob/push/autobahn/WebSocketMessage$Pong;->s:[B

    invoke-direct {p0, v1, v2, v0}, Lcn/bmob/push/autobahn/WebSocketWriter;->Code(IZ[B)V

    goto/16 :goto_1

    .line 1466
    :cond_a
    instance-of v2, v0, Lcn/bmob/push/autobahn/WebSocketMessage$Close;

    if-eqz v2, :cond_f

    .line 1468
    check-cast v0, Lcn/bmob/push/autobahn/WebSocketMessage$Close;

    .line 5205
    iget v2, v0, Lcn/bmob/push/autobahn/WebSocketMessage$Close;->z:I

    if-lez v2, :cond_e

    .line 5209
    iget-object v2, v0, Lcn/bmob/push/autobahn/WebSocketMessage$Close;->A:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcn/bmob/push/autobahn/WebSocketMessage$Close;->A:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 5210
    iget-object v2, v0, Lcn/bmob/push/autobahn/WebSocketMessage$Close;->A:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 5211
    array-length v2, v3

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    .line 5212
    :goto_3
    array-length v4, v3

    if-lt v1, v4, :cond_b

    move-object v1, v2

    .line 5219
    :goto_4
    array-length v2, v1

    if-le v2, v6, :cond_d

    .line 5220
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketException;

    const-string v1, "close payload exceeds 125 octets"

    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5213
    :cond_b
    add-int/lit8 v4, v1, 0x2

    aget-byte v5, v3, v1

    aput-byte v5, v2, v4

    .line 5212
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 5216
    :cond_c
    const/4 v1, 0x2

    new-array v1, v1, [B

    goto :goto_4

    .line 5223
    :cond_d
    const/4 v2, 0x0

    iget v3, v0, Lcn/bmob/push/autobahn/WebSocketMessage$Close;->z:I

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 5224
    const/4 v2, 0x1

    iget v0, v0, Lcn/bmob/push/autobahn/WebSocketMessage$Close;->z:I

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 5226
    const/16 v0, 0x8

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcn/bmob/push/autobahn/WebSocketWriter;->Code(IZ[B)V

    goto/16 :goto_1

    .line 5230
    :cond_e
    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcn/bmob/push/autobahn/WebSocketWriter;->Code(IZ[B)V

    goto/16 :goto_1

    .line 1470
    :cond_f
    instance-of v2, v0, Lcn/bmob/push/autobahn/WebSocketMessage$ClientHandshake;

    if-eqz v2, :cond_17

    .line 1472
    check-cast v0, Lcn/bmob/push/autobahn/WebSocketMessage$ClientHandshake;

    .line 6153
    iget-object v2, v0, Lcn/bmob/push/autobahn/WebSocketMessage$ClientHandshake;->v:Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 6154
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcn/bmob/push/autobahn/WebSocketMessage$ClientHandshake;->u:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcn/bmob/push/autobahn/WebSocketMessage$ClientHandshake;->v:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6158
    :goto_5
    iget-object v3, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GET "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " HTTP/1.1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->write(Ljava/lang/String;)V

    .line 6159
    iget-object v2, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    invoke-virtual {v2}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->B()V

    .line 6160
    iget-object v2, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Host: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcn/bmob/push/autobahn/WebSocketMessage$ClientHandshake;->t:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->write(Ljava/lang/String;)V

    .line 6161
    iget-object v2, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    invoke-virtual {v2}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->B()V

    .line 6162
    iget-object v2, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    const-string v3, "Upgrade: WebSocket"

    invoke-virtual {v2, v3}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->write(Ljava/lang/String;)V

    .line 6163
    iget-object v2, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    invoke-virtual {v2}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->B()V

    .line 6164
    iget-object v2, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    const-string v3, "Connection: Upgrade"

    invoke-virtual {v2, v3}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->write(Ljava/lang/String;)V

    .line 6165
    iget-object v2, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    invoke-virtual {v2}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->B()V

    .line 6167
    iget-object v2, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sec-WebSocket-Key: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7129
    const/16 v4, 0x10

    new-array v4, v4, [B

    .line 7130
    iget-object v5, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->an:Ljava/util/Random;

    invoke-virtual {v5, v4}, Ljava/util/Random;->nextBytes([B)V

    .line 7131
    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 6167
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->write(Ljava/lang/String;)V

    .line 6168
    iget-object v2, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    invoke-virtual {v2}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->B()V

    .line 6170
    iget-object v2, v0, Lcn/bmob/push/autobahn/WebSocketMessage$ClientHandshake;->w:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcn/bmob/push/autobahn/WebSocketMessage$ClientHandshake;->w:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 6171
    iget-object v2, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Origin: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcn/bmob/push/autobahn/WebSocketMessage$ClientHandshake;->w:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->write(Ljava/lang/String;)V

    .line 6172
    iget-object v2, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    invoke-virtual {v2}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->B()V

    .line 6175
    :cond_10
    iget-object v2, v0, Lcn/bmob/push/autobahn/WebSocketMessage$ClientHandshake;->x:[Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, v0, Lcn/bmob/push/autobahn/WebSocketMessage$ClientHandshake;->x:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_11

    .line 6176
    iget-object v2, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    const-string v3, "Sec-WebSocket-Protocol: "

    invoke-virtual {v2, v3}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->write(Ljava/lang/String;)V

    .line 6177
    :goto_6
    iget-object v2, v0, Lcn/bmob/push/autobahn/WebSocketMessage$ClientHandshake;->x:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_14

    .line 6183
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    invoke-virtual {v1}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->B()V

    .line 6186
    :cond_11
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    const-string v2, "Sec-WebSocket-Version: 13"

    invoke-virtual {v1, v2}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->write(Ljava/lang/String;)V

    .line 6187
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    invoke-virtual {v1}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->B()V

    .line 6190
    iget-object v1, v0, Lcn/bmob/push/autobahn/WebSocketMessage$ClientHandshake;->y:Ljava/util/List;

    if-eqz v1, :cond_12

    .line 6191
    iget-object v0, v0, Lcn/bmob/push/autobahn/WebSocketMessage$ClientHandshake;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_16

    .line 6196
    :cond_12
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    invoke-virtual {v0}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->B()V

    goto/16 :goto_1

    .line 6156
    :cond_13
    iget-object v2, v0, Lcn/bmob/push/autobahn/WebSocketMessage$ClientHandshake;->u:Ljava/lang/String;

    goto/16 :goto_5

    .line 6178
    :cond_14
    iget-object v2, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    iget-object v3, v0, Lcn/bmob/push/autobahn/WebSocketMessage$ClientHandshake;->x:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->write(Ljava/lang/String;)V

    .line 6179
    iget-object v2, v0, Lcn/bmob/push/autobahn/WebSocketMessage$ClientHandshake;->x:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_15

    .line 6180
    iget-object v2, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->write(Ljava/lang/String;)V

    .line 6177
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 6191
    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 6192
    iget-object v2, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->write(Ljava/lang/String;)V

    .line 6193
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ap:Lcn/bmob/push/autobahn/ByteBufferOutputStream;

    invoke-virtual {v0}, Lcn/bmob/push/autobahn/ByteBufferOutputStream;->B()V

    goto :goto_7

    .line 1474
    :cond_17
    instance-of v0, v0, Lcn/bmob/push/autobahn/WebSocketMessage$Quit;

    if-eqz v0, :cond_18

    .line 1476
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketWriter;->ao:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto/16 :goto_1

    .line 7501
    :cond_18
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketException;

    .line 7502
    const-string v1, "unknown message received by WebSocketWriter"

    .line 7501
    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
.end method
