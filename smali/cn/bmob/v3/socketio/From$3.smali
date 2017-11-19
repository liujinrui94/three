.class final Lcn/bmob/v3/socketio/From$3;
.super Ljava/lang/Object;
.source "WebSocketClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/socketio/From;->Code([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic Code:[B

.field private synthetic V:Lcn/bmob/v3/socketio/From;


# direct methods
.method constructor <init>(Lcn/bmob/v3/socketio/From;[B)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcn/bmob/v3/socketio/From$3;->V:Lcn/bmob/v3/socketio/From;

    iput-object p2, p0, Lcn/bmob/v3/socketio/From$3;->Code:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 250
    :try_start_0
    iget-object v0, p0, Lcn/bmob/v3/socketio/From$3;->V:Lcn/bmob/v3/socketio/From;

    invoke-static {v0}, Lcn/bmob/v3/socketio/From;->F(Lcn/bmob/v3/socketio/From;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :try_start_1
    iget-object v0, p0, Lcn/bmob/v3/socketio/From$3;->V:Lcn/bmob/v3/socketio/From;

    invoke-static {v0}, Lcn/bmob/v3/socketio/From;->I(Lcn/bmob/v3/socketio/From;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 252
    iget-object v2, p0, Lcn/bmob/v3/socketio/From$3;->Code:[B

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 253
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 254
    monitor-exit v1

    .line 258
    :goto_0
    return-void

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    iget-object v1, p0, Lcn/bmob/v3/socketio/From$3;->V:Lcn/bmob/v3/socketio/From;

    invoke-static {v1}, Lcn/bmob/v3/socketio/From;->C(Lcn/bmob/v3/socketio/From;)Lcn/bmob/v3/socketio/From$This;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/bmob/v3/socketio/From$This;->Code(Ljava/lang/Exception;)V

    goto :goto_0
.end method
