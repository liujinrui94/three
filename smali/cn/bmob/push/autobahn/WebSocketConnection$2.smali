.class Lcn/bmob/push/autobahn/WebSocketConnection$2;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic r:Lcn/bmob/push/autobahn/WebSocketConnection;


# direct methods
.method constructor <init>(Lcn/bmob/push/autobahn/WebSocketConnection;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/bmob/push/autobahn/WebSocketConnection$2;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    .line 383
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 387
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcn/bmob/push/autobahn/WebSocketMessage$TextMessage;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/bmob/push/autobahn/WebSocketMessage$TextMessage;

    .line 391
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection$2;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    invoke-static {v1}, Lcn/bmob/push/autobahn/WebSocketConnection;->S(Lcn/bmob/push/autobahn/WebSocketConnection;)Lcn/bmob/push/autobahn/WebSocket$ConnectionHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 392
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection$2;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    invoke-static {v1}, Lcn/bmob/push/autobahn/WebSocketConnection;->S(Lcn/bmob/push/autobahn/WebSocketConnection;)Lcn/bmob/push/autobahn/WebSocket$ConnectionHandler;

    move-result-object v1

    iget-object v0, v0, Lcn/bmob/push/autobahn/WebSocketMessage$TextMessage;->K:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcn/bmob/push/autobahn/WebSocket$ConnectionHandler;->V(Ljava/lang/String;)V

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcn/bmob/push/autobahn/WebSocketMessage$RawTextMessage;

    if-eqz v0, :cond_2

    .line 399
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 401
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection$2;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    invoke-static {v0}, Lcn/bmob/push/autobahn/WebSocketConnection;->S(Lcn/bmob/push/autobahn/WebSocketConnection;)Lcn/bmob/push/autobahn/WebSocket$ConnectionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection$2;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    invoke-static {v0}, Lcn/bmob/push/autobahn/WebSocketConnection;->S(Lcn/bmob/push/autobahn/WebSocketConnection;)Lcn/bmob/push/autobahn/WebSocket$ConnectionHandler;

    goto :goto_0

    .line 407
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcn/bmob/push/autobahn/WebSocketMessage$BinaryMessage;

    if-eqz v0, :cond_3

    .line 409
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 411
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection$2;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    invoke-static {v0}, Lcn/bmob/push/autobahn/WebSocketConnection;->S(Lcn/bmob/push/autobahn/WebSocketConnection;)Lcn/bmob/push/autobahn/WebSocket$ConnectionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection$2;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    invoke-static {v0}, Lcn/bmob/push/autobahn/WebSocketConnection;->S(Lcn/bmob/push/autobahn/WebSocketConnection;)Lcn/bmob/push/autobahn/WebSocket$ConnectionHandler;

    goto :goto_0

    .line 417
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcn/bmob/push/autobahn/WebSocketMessage$Ping;

    if-eqz v0, :cond_4

    .line 419
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/bmob/push/autobahn/WebSocketMessage$Ping;

    .line 423
    new-instance v1, Lcn/bmob/push/autobahn/WebSocketMessage$Pong;

    invoke-direct {v1}, Lcn/bmob/push/autobahn/WebSocketMessage$Pong;-><init>()V

    .line 424
    iget-object v0, v0, Lcn/bmob/push/autobahn/WebSocketMessage$Ping;->s:[B

    iput-object v0, v1, Lcn/bmob/push/autobahn/WebSocketMessage$Pong;->s:[B

    .line 425
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection$2;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    iget-object v0, v0, Lcn/bmob/push/autobahn/WebSocketConnection;->c:Lcn/bmob/push/autobahn/WebSocketWriter;

    invoke-virtual {v0, v1}, Lcn/bmob/push/autobahn/WebSocketWriter;->I(Ljava/lang/Object;)V

    goto :goto_0

    .line 427
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcn/bmob/push/autobahn/WebSocketMessage$Pong;

    if-eqz v0, :cond_5

    .line 430
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 434
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcn/bmob/push/autobahn/WebSocketMessage$Close;

    if-eqz v0, :cond_6

    .line 436
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 440
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection$2;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    iget-object v0, v0, Lcn/bmob/push/autobahn/WebSocketConnection;->c:Lcn/bmob/push/autobahn/WebSocketWriter;

    new-instance v1, Lcn/bmob/push/autobahn/WebSocketMessage$Close;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Lcn/bmob/push/autobahn/WebSocketMessage$Close;-><init>(I)V

    invoke-virtual {v0, v1}, Lcn/bmob/push/autobahn/WebSocketWriter;->I(Ljava/lang/Object;)V

    goto :goto_0

    .line 442
    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcn/bmob/push/autobahn/WebSocketMessage$ServerHandshake;

    if-eqz v0, :cond_7

    .line 444
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/bmob/push/autobahn/WebSocketMessage$ServerHandshake;

    .line 448
    iget-boolean v0, v0, Lcn/bmob/push/autobahn/WebSocketMessage$ServerHandshake;->J:Z

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection$2;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    invoke-static {v0}, Lcn/bmob/push/autobahn/WebSocketConnection;->S(Lcn/bmob/push/autobahn/WebSocketConnection;)Lcn/bmob/push/autobahn/WebSocket$ConnectionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection$2;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    invoke-static {v0}, Lcn/bmob/push/autobahn/WebSocketConnection;->S(Lcn/bmob/push/autobahn/WebSocketConnection;)Lcn/bmob/push/autobahn/WebSocket$ConnectionHandler;

    move-result-object v0

    invoke-interface {v0}, Lcn/bmob/push/autobahn/WebSocket$ConnectionHandler;->C()V

    goto/16 :goto_0

    .line 457
    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcn/bmob/push/autobahn/WebSocketMessage$ConnectionLost;

    if-eqz v0, :cond_8

    .line 460
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 461
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection$2;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    const/4 v1, 0x3

    const-string v2, "WebSockets connection lost"

    invoke-static {v0, v1, v2}, Lcn/bmob/push/autobahn/WebSocketConnection;->V(Lcn/bmob/push/autobahn/WebSocketConnection;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 463
    :cond_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcn/bmob/push/autobahn/WebSocketMessage$ProtocolViolation;

    if-eqz v0, :cond_9

    .line 466
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 467
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection$2;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    const/4 v1, 0x4

    const-string v2, "WebSockets protocol violation"

    invoke-static {v0, v1, v2}, Lcn/bmob/push/autobahn/WebSocketConnection;->V(Lcn/bmob/push/autobahn/WebSocketConnection;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 469
    :cond_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcn/bmob/push/autobahn/WebSocketMessage$Error;

    if-eqz v0, :cond_a

    .line 471
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/bmob/push/autobahn/WebSocketMessage$Error;

    .line 472
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection$2;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WebSockets internal error ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcn/bmob/push/autobahn/WebSocketMessage$Error;->E:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcn/bmob/push/autobahn/WebSocketConnection;->V(Lcn/bmob/push/autobahn/WebSocketConnection;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 474
    :cond_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcn/bmob/push/autobahn/WebSocketMessage$ServerError;

    if-eqz v0, :cond_b

    .line 476
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/bmob/push/autobahn/WebSocketMessage$ServerError;

    .line 477
    iget-object v1, p0, Lcn/bmob/push/autobahn/WebSocketConnection$2;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Server error "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcn/bmob/push/autobahn/WebSocketMessage$ServerError;->G:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcn/bmob/push/autobahn/WebSocketMessage$ServerError;->H:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcn/bmob/push/autobahn/WebSocketConnection;->V(Lcn/bmob/push/autobahn/WebSocketConnection;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 480
    :cond_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcn/bmob/push/autobahn/WebSocketConnection;->S()V

    goto/16 :goto_0
.end method
