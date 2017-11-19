.class final Lcn/bmob/v3/socketio/mine$5;
.super Ljava/lang/Object;
.source "SocketIOConnection.java"

# interfaces
.implements Lcn/bmob/v3/socketio/mine$This;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/socketio/mine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Code:Ljava/lang/Exception;

.field private synthetic V:Lcn/bmob/v3/socketio/mine;


# direct methods
.method constructor <init>(Lcn/bmob/v3/socketio/mine;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcn/bmob/v3/socketio/mine$5;->V:Lcn/bmob/v3/socketio/mine;

    iput-object p2, p0, Lcn/bmob/v3/socketio/mine$5;->Code:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code(Lcn/bmob/v3/socketio/acknowledge;)V
    .locals 3

    .prologue
    .line 295
    iget-boolean v0, p1, Lcn/bmob/v3/socketio/acknowledge;->V:Z

    if-eqz v0, :cond_1

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcn/bmob/v3/socketio/acknowledge;->I:Z

    .line 1115
    const/4 v0, 0x0

    .line 298
    if-eqz v0, :cond_0

    .line 299
    iget-object v1, p0, Lcn/bmob/v3/socketio/mine$5;->V:Lcn/bmob/v3/socketio/mine;

    invoke-static {v1}, Lcn/bmob/v3/socketio/mine;->Code(Lcn/bmob/v3/socketio/mine;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/bmob/v3/socketio/mine$5$1;

    invoke-direct {v2, p0, v0}, Lcn/bmob/v3/socketio/mine$5$1;-><init>(Lcn/bmob/v3/socketio/mine$5;Lcn/bmob/v3/socketio/callback/DisconnectCallback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-object v0, p1, Lcn/bmob/v3/socketio/acknowledge;->Z:Lcn/bmob/v3/socketio/callback/ConnectCallback;

    .line 312
    if-eqz v0, :cond_0

    .line 313
    iget-object v1, p0, Lcn/bmob/v3/socketio/mine$5;->V:Lcn/bmob/v3/socketio/mine;

    invoke-static {v1}, Lcn/bmob/v3/socketio/mine;->Code(Lcn/bmob/v3/socketio/mine;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/bmob/v3/socketio/mine$5$2;

    invoke-direct {v2, p0, v0, p1}, Lcn/bmob/v3/socketio/mine$5$2;-><init>(Lcn/bmob/v3/socketio/mine$5;Lcn/bmob/v3/socketio/callback/ConnectCallback;Lcn/bmob/v3/socketio/acknowledge;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
