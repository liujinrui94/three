.class public Lcn/bmob/push/autobahn/WebSocketReader;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final STATE_CLOSED:I = 0x0

.field private static final STATE_CLOSING:I = 0x2

.field private static final STATE_CONNECTING:I = 0x1

.field private static final STATE_OPEN:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private L:I

.field private final X:Landroid/os/Handler;

.field private final Y:Ljava/nio/channels/SocketChannel;

.field private final aa:Ljava/nio/ByteBuffer;

.field private ab:Lcn/bmob/push/autobahn/NoCopyByteArrayOutputStream;

.field private ac:Z

.field private ad:Z

.field private ae:I

.field private af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

.field private ag:Lcn/bmob/push/autobahn/Utf8Validator;

.field private final o:Lcn/bmob/push/autobahn/WebSocketOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcn/bmob/push/autobahn/WebSocketReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/bmob/push/autobahn/WebSocketReader;->TAG:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/nio/channels/SocketChannel;Lcn/bmob/push/autobahn/WebSocketOptions;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 57
    iput-boolean v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ac:Z

    .line 60
    iput-boolean v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ad:Z

    .line 66
    new-instance v0, Lcn/bmob/push/autobahn/Utf8Validator;

    invoke-direct {v0}, Lcn/bmob/push/autobahn/Utf8Validator;-><init>()V

    iput-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ag:Lcn/bmob/push/autobahn/Utf8Validator;

    .line 94
    iput-object p1, p0, Lcn/bmob/push/autobahn/WebSocketReader;->X:Landroid/os/Handler;

    .line 95
    iput-object p2, p0, Lcn/bmob/push/autobahn/WebSocketReader;->Y:Ljava/nio/channels/SocketChannel;

    .line 96
    iput-object p3, p0, Lcn/bmob/push/autobahn/WebSocketReader;->o:Lcn/bmob/push/autobahn/WebSocketOptions;

    .line 98
    invoke-virtual {p3}, Lcn/bmob/push/autobahn/WebSocketOptions;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    .line 99
    new-instance v0, Lcn/bmob/push/autobahn/NoCopyByteArrayOutputStream;

    invoke-virtual {p3}, Lcn/bmob/push/autobahn/WebSocketOptions;->b()I

    move-result v1

    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/NoCopyByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ab:Lcn/bmob/push/autobahn/NoCopyByteArrayOutputStream;

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    .line 102
    const/4 v0, 0x1

    iput v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->L:I

    .line 105
    return-void
.end method

.method private V(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->X:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 128
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 129
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketReader;->X:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 130
    return-void
.end method

.method private h()Z
    .locals 12

    .prologue
    const/16 v4, 0xa

    const/4 v11, 0x3

    const/16 v10, 0xd

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 515
    .line 516
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    move v5, v0

    :goto_0
    if-gez v5, :cond_0

    .line 564
    :goto_1
    return v3

    .line 517
    :cond_0
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-ne v0, v10, :cond_b

    .line 518
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v5, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-ne v0, v4, :cond_b

    .line 519
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v5, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-ne v0, v10, :cond_b

    .line 520
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v5, 0x3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-ne v0, v4, :cond_b

    .line 525
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 529
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_c

    .line 530
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_c

    .line 531
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_c

    .line 532
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    const/16 v1, 0x50

    if-ne v0, v1, :cond_c

    .line 1590
    const/4 v0, 0x4

    :goto_2
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 1594
    :cond_1
    add-int/lit8 v1, v0, 0x1

    :goto_3
    iget-object v4, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-lt v1, v4, :cond_5

    .line 1598
    :cond_2
    add-int/lit8 v7, v0, 0x1

    move v0, v3

    move v4, v3

    .line 1600
    :goto_4
    add-int v8, v7, v0

    if-lt v8, v1, :cond_6

    .line 1606
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 1608
    :goto_5
    iget-object v7, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    if-lt v0, v7, :cond_7

    .line 1611
    :cond_3
    sub-int/2addr v0, v1

    .line 1612
    new-array v7, v0, [B

    .line 1613
    iget-object v8, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1614
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v7, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1615
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, v7, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1617
    new-instance v1, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 536
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0x12c

    if-lt v0, v4, :cond_c

    .line 539
    new-instance v4, Lcn/bmob/push/autobahn/WebSocketMessage$ServerError;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v7, v0}, Lcn/bmob/push/autobahn/WebSocketMessage$ServerError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v4}, Lcn/bmob/push/autobahn/WebSocketReader;->V(Ljava/lang/Object;)V

    move v0, v2

    .line 544
    :goto_6
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v5, 0x4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 545
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 546
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 548
    if-nez v0, :cond_9

    .line 551
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-lez v1, :cond_8

    move v1, v2

    .line 552
    :goto_7
    iput v11, p0, Lcn/bmob/push/autobahn/WebSocketReader;->L:I

    .line 560
    :goto_8
    if-eqz v0, :cond_a

    .line 2436
    :goto_9
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketMessage$ServerHandshake;

    invoke-direct {v0, v3}, Lcn/bmob/push/autobahn/WebSocketMessage$ServerHandshake;-><init>(Z)V

    invoke-direct {p0, v0}, Lcn/bmob/push/autobahn/WebSocketReader;->V(Ljava/lang/Object;)V

    move v3, v1

    .line 561
    goto/16 :goto_1

    .line 1591
    :cond_4
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    const/16 v4, 0x20

    if-eq v1, v4, :cond_1

    .line 1590
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 1595
    :cond_5
    iget-object v4, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    const/16 v7, 0x20

    if-eq v4, v7, :cond_2

    .line 1594
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 1601
    :cond_6
    iget-object v8, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    add-int v9, v7, v0

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    add-int/lit8 v8, v8, -0x30

    .line 1602
    mul-int/lit8 v4, v4, 0xa

    .line 1603
    add-int/2addr v4, v8

    .line 1600
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 1609
    :cond_7
    iget-object v7, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    if-eq v7, v10, :cond_3

    .line 1608
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    :cond_8
    move v1, v3

    .line 551
    goto :goto_7

    .line 556
    :cond_9
    iput v3, p0, Lcn/bmob/push/autobahn/WebSocketReader;->L:I

    .line 557
    iput-boolean v2, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ac:Z

    move v1, v2

    goto :goto_8

    :cond_a
    move v3, v2

    .line 560
    goto :goto_9

    .line 516
    :cond_b
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto/16 :goto_0

    :cond_c
    move v0, v3

    goto :goto_6
.end method


# virtual methods
.method public final quit()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ac:Z

    .line 116
    return-void
.end method

.method public run()V
    .locals 13

    .prologue
    const/16 v12, 0x3e8

    const/16 v11, 0x8

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 655
    :try_start_0
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 658
    :cond_0
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->Y:Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 659
    if-lez v0, :cond_31

    .line 2626
    :cond_1
    iget v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->L:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->L:I

    if-ne v0, v6, :cond_2f

    .line 3139
    :cond_2
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    if-nez v0, :cond_1a

    .line 3142
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lt v0, v6, :cond_19

    .line 3144
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 3145
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_3

    move v3, v2

    .line 3146
    :goto_0
    and-int/lit8 v4, v0, 0x70

    shr-int/lit8 v4, v4, 0x4

    .line 3147
    and-int/lit8 v7, v0, 0xf

    .line 3149
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    .line 3150
    and-int/lit16 v0, v5, 0x80

    if-eqz v0, :cond_4

    move v0, v2

    .line 3151
    :goto_1
    and-int/lit8 v5, v5, 0x7f

    .line 3155
    if-eqz v4, :cond_5

    .line 3156
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketException;

    const-string v1, "RSV != 0 and no extension negotiated"

    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcn/bmob/push/autobahn/WebSocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    :catch_0
    move-exception v0

    .line 679
    :try_start_1
    new-instance v1, Lcn/bmob/push/autobahn/WebSocketMessage$ProtocolViolation;

    invoke-direct {v1, v0}, Lcn/bmob/push/autobahn/WebSocketMessage$ProtocolViolation;-><init>(Lcn/bmob/push/autobahn/WebSocketException;)V

    invoke-direct {p0, v1}, Lcn/bmob/push/autobahn/WebSocketReader;->V(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 697
    iput-boolean v2, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ac:Z

    .line 701
    :goto_2
    return-void

    :cond_3
    move v3, v1

    .line 3145
    goto :goto_0

    :cond_4
    move v0, v1

    .line 3150
    goto :goto_1

    .line 3159
    :cond_5
    if-eqz v0, :cond_6

    .line 3161
    :try_start_2
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketException;

    const-string v1, "masked server frame"

    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcn/bmob/push/autobahn/WebSocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 686
    :catch_1
    move-exception v0

    :try_start_3
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketMessage$ConnectionLost;

    invoke-direct {v0}, Lcn/bmob/push/autobahn/WebSocketMessage$ConnectionLost;-><init>()V

    invoke-direct {p0, v0}, Lcn/bmob/push/autobahn/WebSocketReader;->V(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 697
    iput-boolean v2, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ac:Z

    goto :goto_2

    .line 3164
    :cond_6
    const/4 v0, 0x7

    if-le v7, v0, :cond_a

    .line 3166
    if-nez v3, :cond_7

    .line 3167
    :try_start_4
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketException;

    const-string v1, "fragmented control frame"

    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lcn/bmob/push/autobahn/WebSocketException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 688
    :catch_2
    move-exception v0

    .line 693
    :try_start_5
    new-instance v1, Lcn/bmob/push/autobahn/WebSocketMessage$Error;

    invoke-direct {v1, v0}, Lcn/bmob/push/autobahn/WebSocketMessage$Error;-><init>(Ljava/lang/Exception;)V

    invoke-direct {p0, v1}, Lcn/bmob/push/autobahn/WebSocketReader;->V(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 697
    iput-boolean v2, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ac:Z

    goto :goto_2

    .line 3169
    :cond_7
    const/16 v0, 0x7d

    if-le v5, v0, :cond_8

    .line 3170
    :try_start_6
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketException;

    const-string v1, "control frame with payload length > 125 octets"

    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Lcn/bmob/push/autobahn/WebSocketException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 695
    :catchall_0
    move-exception v0

    .line 697
    iput-boolean v2, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ac:Z

    .line 698
    throw v0

    .line 3172
    :cond_8
    if-eq v7, v11, :cond_9

    const/16 v0, 0x9

    if-eq v7, v0, :cond_9

    const/16 v0, 0xa

    if-eq v7, v0, :cond_9

    .line 3173
    :try_start_7
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "control frame using reserved opcode "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3175
    :cond_9
    if-ne v7, v11, :cond_d

    if-ne v5, v2, :cond_d

    .line 3176
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketException;

    const-string v1, "received close control frame with payload len 1"

    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3180
    :cond_a
    if-eqz v7, :cond_b

    if-eq v7, v2, :cond_b

    if-eq v7, v6, :cond_b

    .line 3181
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "data frame using reserved opcode "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3183
    :cond_b
    iget-boolean v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ad:Z

    if-nez v0, :cond_c

    if-nez v7, :cond_c

    .line 3184
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketException;

    const-string v1, "received continuation data frame outside fragmented message"

    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3186
    :cond_c
    iget-boolean v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ad:Z

    if-eqz v0, :cond_d

    if-eqz v7, :cond_d

    .line 3187
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketException;

    const-string v1, "received non-continuation data frame while inside fragmented message"

    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3194
    :cond_d
    const/16 v0, 0x7e

    if-ge v5, v0, :cond_e

    move v0, v6

    .line 3206
    :goto_3
    iget-object v4, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-lt v4, v0, :cond_18

    .line 3211
    const/16 v4, 0x7e

    if-ne v5, v4, :cond_11

    .line 3212
    iget-object v4, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    iget-object v5, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    const/4 v8, 0x3

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-long v4, v4

    .line 3213
    const-wide/16 v8, 0x7e

    cmp-long v8, v4, v8

    if-gez v8, :cond_14

    .line 3214
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketException;

    const-string v1, "invalid data frame length (not using minimal length encoding)"

    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3196
    :cond_e
    const/16 v0, 0x7e

    if-ne v5, v0, :cond_f

    .line 3197
    const/4 v0, 0x4

    .line 3198
    goto :goto_3

    :cond_f
    const/16 v0, 0x7f

    if-ne v5, v0, :cond_10

    .line 3199
    const/16 v0, 0xa

    .line 3200
    goto :goto_3

    .line 3202
    :cond_10
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "logic error"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3217
    :cond_11
    const/16 v4, 0x7f

    if-ne v5, v4, :cond_13

    .line 3218
    iget-object v4, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_12

    .line 3219
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketException;

    const-string v1, "invalid data frame length (> 2^63)"

    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3221
    :cond_12
    iget-object v4, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v8, 0x38

    shl-long/2addr v4, v8

    .line 3222
    iget-object v8, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x30

    shl-long/2addr v8, v10

    .line 3221
    or-long/2addr v4, v8

    .line 3223
    iget-object v8, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x28

    shl-long/2addr v8, v10

    .line 3221
    or-long/2addr v4, v8

    .line 3224
    iget-object v8, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    .line 3221
    or-long/2addr v4, v8

    .line 3225
    iget-object v8, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    .line 3221
    or-long/2addr v4, v8

    .line 3226
    iget-object v8, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x10

    shl-long/2addr v8, v10

    .line 3221
    or-long/2addr v4, v8

    .line 3227
    iget-object v8, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    shl-long/2addr v8, v11

    .line 3221
    or-long/2addr v4, v8

    .line 3228
    iget-object v8, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    .line 3221
    or-long/2addr v4, v8

    .line 3229
    const-wide/32 v8, 0x10000

    cmp-long v8, v4, v8

    if-gez v8, :cond_14

    .line 3230
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketException;

    const-string v1, "invalid data frame length (not using minimal length encoding)"

    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3234
    :cond_13
    int-to-long v4, v5

    .line 3238
    :cond_14
    iget-object v8, p0, Lcn/bmob/push/autobahn/WebSocketReader;->o:Lcn/bmob/push/autobahn/WebSocketOptions;

    invoke-virtual {v8}, Lcn/bmob/push/autobahn/WebSocketOptions;->a()I

    move-result v8

    int-to-long v8, v8

    cmp-long v8, v4, v8

    if-lez v8, :cond_15

    .line 3239
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketException;

    const-string v1, "frame payload too large"

    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3243
    :cond_15
    new-instance v8, Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;-><init>(B)V

    iput-object v8, p0, Lcn/bmob/push/autobahn/WebSocketReader;->af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    .line 3244
    iget-object v8, p0, Lcn/bmob/push/autobahn/WebSocketReader;->af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    iput v7, v8, Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;->ah:I

    .line 3245
    iget-object v7, p0, Lcn/bmob/push/autobahn/WebSocketReader;->af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    iput-boolean v3, v7, Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;->ai:Z

    .line 3247
    iget-object v3, p0, Lcn/bmob/push/autobahn/WebSocketReader;->af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    long-to-int v4, v4

    iput v4, v3, Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;->ak:I

    .line 3248
    iget-object v3, p0, Lcn/bmob/push/autobahn/WebSocketReader;->af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    iput v0, v3, Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;->aj:I

    .line 3249
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    iget-object v3, p0, Lcn/bmob/push/autobahn/WebSocketReader;->af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    iget v3, v3, Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;->aj:I

    iget-object v4, p0, Lcn/bmob/push/autobahn/WebSocketReader;->af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    iget v4, v4, Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;->ak:I

    add-int/2addr v3, v4

    iput v3, v0, Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;->al:I

    .line 3257
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    const/4 v3, 0x0

    iput-object v3, v0, Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;->am:[B

    .line 3261
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    iget v0, v0, Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;->ak:I

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v3, p0, Lcn/bmob/push/autobahn/WebSocketReader;->af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    iget v3, v3, Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;->al:I

    if-lt v0, v3, :cond_2e

    :cond_16
    move v0, v2

    .line 662
    :goto_4
    if-nez v0, :cond_1

    .line 672
    :cond_17
    :goto_5
    iget-boolean v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ac:Z
    :try_end_7
    .catch Lcn/bmob/push/autobahn/WebSocketException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_0

    .line 697
    iput-boolean v2, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ac:Z

    goto/16 :goto_2

    :cond_18
    move v0, v1

    .line 3266
    goto :goto_4

    :cond_19
    move v0, v1

    .line 3271
    goto :goto_4

    .line 3281
    :cond_1a
    :try_start_8
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v3, p0, Lcn/bmob/push/autobahn/WebSocketReader;->af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    iget v3, v3, Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;->al:I

    if-lt v0, v3, :cond_2e

    .line 3284
    const/4 v0, 0x0

    .line 3285
    iget-object v3, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 3286
    iget-object v4, p0, Lcn/bmob/push/autobahn/WebSocketReader;->af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    iget v4, v4, Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;->ak:I

    if-lez v4, :cond_33

    .line 3287
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    iget v0, v0, Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;->ak:I

    new-array v0, v0, [B

    .line 3288
    iget-object v4, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcn/bmob/push/autobahn/WebSocketReader;->af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    iget v5, v5, Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;->aj:I

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3289
    iget-object v4, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    iget-object v7, p0, Lcn/bmob/push/autobahn/WebSocketReader;->af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    iget v7, v7, Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;->ak:I

    invoke-virtual {v4, v0, v5, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move-object v4, v0

    .line 3291
    :goto_6
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcn/bmob/push/autobahn/WebSocketReader;->af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    iget v5, v5, Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;->al:I

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3292
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 3293
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 3295
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    iget v0, v0, Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;->ah:I

    const/4 v3, 0x7

    if-le v0, v3, :cond_24

    .line 3298
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    iget v0, v0, Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;->ah:I

    if-ne v0, v11, :cond_21

    .line 3300
    const/16 v3, 0x3ed

    .line 3301
    const/4 v0, 0x0

    .line 3303
    iget-object v5, p0, Lcn/bmob/push/autobahn/WebSocketReader;->af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    iget v5, v5, Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;->ak:I

    if-lt v5, v6, :cond_1f

    .line 3306
    const/4 v3, 0x0

    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v5, 0x1

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v3, v5

    .line 3307
    if-lt v3, v12, :cond_1c

    .line 3308
    if-lt v3, v12, :cond_1b

    const/16 v5, 0xbb7

    if-gt v3, v5, :cond_1b

    .line 3309
    if-eq v3, v12, :cond_1b

    const/16 v5, 0x3e9

    if-eq v3, v5, :cond_1b

    const/16 v5, 0x3ea

    if-eq v3, v5, :cond_1b

    const/16 v5, 0x3eb

    if-eq v3, v5, :cond_1b

    const/16 v5, 0x3ef

    if-eq v3, v5, :cond_1b

    const/16 v5, 0x3f0

    if-eq v3, v5, :cond_1b

    const/16 v5, 0x3f1

    if-eq v3, v5, :cond_1b

    const/16 v5, 0x3f2

    if-eq v3, v5, :cond_1b

    const/16 v5, 0x3f3

    if-ne v3, v5, :cond_1c

    .line 3310
    :cond_1b
    const/16 v5, 0x1388

    if-lt v3, v5, :cond_1d

    .line 3312
    :cond_1c
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "invalid close code "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3316
    :cond_1d
    iget-object v5, p0, Lcn/bmob/push/autobahn/WebSocketReader;->af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    iget v5, v5, Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;->ak:I

    if-le v5, v6, :cond_1f

    .line 3318
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    iget v0, v0, Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;->ak:I

    add-int/lit8 v0, v0, -0x2

    new-array v5, v0, [B

    .line 3319
    const/4 v0, 0x2

    const/4 v7, 0x0

    iget-object v8, p0, Lcn/bmob/push/autobahn/WebSocketReader;->af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    iget v8, v8, Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;->ak:I

    add-int/lit8 v8, v8, -0x2

    invoke-static {v4, v0, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3321
    new-instance v0, Lcn/bmob/push/autobahn/Utf8Validator;

    invoke-direct {v0}, Lcn/bmob/push/autobahn/Utf8Validator;-><init>()V

    .line 3322
    invoke-virtual {v0, v5}, Lcn/bmob/push/autobahn/Utf8Validator;->Code([B)Z

    .line 3323
    invoke-virtual {v0}, Lcn/bmob/push/autobahn/Utf8Validator;->isValid()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 3324
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketException;

    const-string v1, "invalid close reasons (not UTF-8)"

    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3326
    :cond_1e
    new-instance v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v0, v5, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 3445
    :cond_1f
    new-instance v4, Lcn/bmob/push/autobahn/WebSocketMessage$Close;

    invoke-direct {v4, v3, v0}, Lcn/bmob/push/autobahn/WebSocketMessage$Close;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v4}, Lcn/bmob/push/autobahn/WebSocketReader;->V(Ljava/lang/Object;)V

    .line 3415
    :cond_20
    :goto_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    .line 3418
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->aa:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_2d

    move v0, v2

    goto/16 :goto_4

    .line 3332
    :cond_21
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    iget v0, v0, Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;->ah:I

    const/16 v3, 0x9

    if-ne v0, v3, :cond_22

    .line 3456
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketMessage$Ping;

    invoke-direct {v0, v4}, Lcn/bmob/push/autobahn/WebSocketMessage$Ping;-><init>([B)V

    invoke-direct {p0, v0}, Lcn/bmob/push/autobahn/WebSocketReader;->V(Ljava/lang/Object;)V

    goto :goto_7

    .line 3336
    :cond_22
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    iget v0, v0, Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;->ah:I

    const/16 v3, 0xa

    if-ne v0, v3, :cond_23

    .line 3467
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketMessage$Pong;

    invoke-direct {v0, v4}, Lcn/bmob/push/autobahn/WebSocketMessage$Pong;-><init>([B)V

    invoke-direct {p0, v0}, Lcn/bmob/push/autobahn/WebSocketReader;->V(Ljava/lang/Object;)V

    goto :goto_7

    .line 3343
    :cond_23
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "logic error"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3349
    :cond_24
    iget-boolean v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ad:Z

    if-nez v0, :cond_25

    .line 3351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ad:Z

    .line 3352
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    iget v0, v0, Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;->ah:I

    iput v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ae:I

    .line 3353
    iget v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ae:I

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->o:Lcn/bmob/push/autobahn/WebSocketOptions;

    invoke-virtual {v0}, Lcn/bmob/push/autobahn/WebSocketOptions;->e()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3354
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ag:Lcn/bmob/push/autobahn/Utf8Validator;

    invoke-virtual {v0}, Lcn/bmob/push/autobahn/Utf8Validator;->reset()V

    .line 3358
    :cond_25
    if-eqz v4, :cond_28

    .line 3361
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ab:Lcn/bmob/push/autobahn/NoCopyByteArrayOutputStream;

    invoke-virtual {v0}, Lcn/bmob/push/autobahn/NoCopyByteArrayOutputStream;->size()I

    move-result v0

    array-length v3, v4

    add-int/2addr v0, v3

    iget-object v3, p0, Lcn/bmob/push/autobahn/WebSocketReader;->o:Lcn/bmob/push/autobahn/WebSocketOptions;

    invoke-virtual {v3}, Lcn/bmob/push/autobahn/WebSocketOptions;->b()I

    move-result v3

    if-le v0, v3, :cond_26

    .line 3362
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketException;

    const-string v1, "message payload too large"

    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3366
    :cond_26
    iget v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ae:I

    if-ne v0, v2, :cond_27

    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->o:Lcn/bmob/push/autobahn/WebSocketOptions;

    invoke-virtual {v0}, Lcn/bmob/push/autobahn/WebSocketOptions;->e()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ag:Lcn/bmob/push/autobahn/Utf8Validator;

    invoke-virtual {v0, v4}, Lcn/bmob/push/autobahn/Utf8Validator;->Code([B)Z

    move-result v0

    if-nez v0, :cond_27

    .line 3367
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketException;

    const-string v1, "invalid UTF-8 in text message payload"

    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3371
    :cond_27
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ab:Lcn/bmob/push/autobahn/NoCopyByteArrayOutputStream;

    invoke-virtual {v0, v4}, Lcn/bmob/push/autobahn/NoCopyByteArrayOutputStream;->write([B)V

    .line 3375
    :cond_28
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->af:Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;

    iget-boolean v0, v0, Lcn/bmob/push/autobahn/WebSocketReader$FrameHeader;->ai:Z

    if-eqz v0, :cond_20

    .line 3377
    iget v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ae:I

    if-ne v0, v2, :cond_2b

    .line 3380
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->o:Lcn/bmob/push/autobahn/WebSocketOptions;

    invoke-virtual {v0}, Lcn/bmob/push/autobahn/WebSocketOptions;->e()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ag:Lcn/bmob/push/autobahn/Utf8Validator;

    invoke-virtual {v0}, Lcn/bmob/push/autobahn/Utf8Validator;->isValid()Z

    move-result v0

    if-nez v0, :cond_29

    .line 3381
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketException;

    const-string v1, "UTF-8 text message payload ended within Unicode code point"

    invoke-direct {v0, v1}, Lcn/bmob/push/autobahn/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3385
    :cond_29
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->o:Lcn/bmob/push/autobahn/WebSocketOptions;

    invoke-virtual {v0}, Lcn/bmob/push/autobahn/WebSocketOptions;->L()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3388
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ab:Lcn/bmob/push/autobahn/NoCopyByteArrayOutputStream;

    invoke-virtual {v0}, Lcn/bmob/push/autobahn/NoCopyByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 3495
    new-instance v3, Lcn/bmob/push/autobahn/WebSocketMessage$RawTextMessage;

    invoke-direct {v3, v0}, Lcn/bmob/push/autobahn/WebSocketMessage$RawTextMessage;-><init>([B)V

    invoke-direct {p0, v3}, Lcn/bmob/push/autobahn/WebSocketReader;->V(Ljava/lang/Object;)V

    .line 3409
    :goto_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ad:Z

    .line 3410
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ab:Lcn/bmob/push/autobahn/NoCopyByteArrayOutputStream;

    invoke-virtual {v0}, Lcn/bmob/push/autobahn/NoCopyByteArrayOutputStream;->reset()V

    goto/16 :goto_7

    .line 3393
    :cond_2a
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ab:Lcn/bmob/push/autobahn/NoCopyByteArrayOutputStream;

    invoke-virtual {v3}, Lcn/bmob/push/autobahn/NoCopyByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 4481
    new-instance v3, Lcn/bmob/push/autobahn/WebSocketMessage$TextMessage;

    invoke-direct {v3, v0}, Lcn/bmob/push/autobahn/WebSocketMessage$TextMessage;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcn/bmob/push/autobahn/WebSocketReader;->V(Ljava/lang/Object;)V

    goto :goto_8

    .line 3397
    :cond_2b
    iget v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ae:I

    if-ne v0, v6, :cond_2c

    .line 3400
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ab:Lcn/bmob/push/autobahn/NoCopyByteArrayOutputStream;

    invoke-virtual {v0}, Lcn/bmob/push/autobahn/NoCopyByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 4506
    new-instance v3, Lcn/bmob/push/autobahn/WebSocketMessage$BinaryMessage;

    invoke-direct {v3, v0}, Lcn/bmob/push/autobahn/WebSocketMessage$BinaryMessage;-><init>([B)V

    invoke-direct {p0, v3}, Lcn/bmob/push/autobahn/WebSocketReader;->V(Ljava/lang/Object;)V

    goto :goto_8

    .line 3405
    :cond_2c
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "logic error"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    move v0, v1

    .line 3418
    goto/16 :goto_4

    :cond_2e
    move v0, v1

    .line 2628
    goto/16 :goto_4

    .line 2630
    :cond_2f
    iget v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->L:I

    if-ne v0, v2, :cond_30

    .line 2632
    invoke-direct {p0}, Lcn/bmob/push/autobahn/WebSocketReader;->h()Z

    move-result v0

    goto/16 :goto_4

    .line 2634
    :cond_30
    iget v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->L:I

    move v0, v1

    .line 2640
    goto/16 :goto_4

    .line 664
    :cond_31
    iget v3, p0, Lcn/bmob/push/autobahn/WebSocketReader;->L:I

    if-nez v3, :cond_32

    .line 665
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketMessage$Close;

    const/16 v3, 0x3e8

    invoke-direct {v0, v3}, Lcn/bmob/push/autobahn/WebSocketMessage$Close;-><init>(I)V

    invoke-direct {p0, v0}, Lcn/bmob/push/autobahn/WebSocketReader;->V(Ljava/lang/Object;)V

    .line 666
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ac:Z

    goto/16 :goto_5

    .line 667
    :cond_32
    if-gez v0, :cond_17

    .line 669
    new-instance v0, Lcn/bmob/push/autobahn/WebSocketMessage$ConnectionLost;

    invoke-direct {v0}, Lcn/bmob/push/autobahn/WebSocketMessage$ConnectionLost;-><init>()V

    invoke-direct {p0, v0}, Lcn/bmob/push/autobahn/WebSocketReader;->V(Ljava/lang/Object;)V

    .line 670
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/bmob/push/autobahn/WebSocketReader;->ac:Z
    :try_end_8
    .catch Lcn/bmob/push/autobahn/WebSocketException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_5

    :cond_33
    move-object v4, v0

    goto/16 :goto_6
.end method
