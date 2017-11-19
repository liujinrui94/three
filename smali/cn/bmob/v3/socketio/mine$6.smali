.class final Lcn/bmob/v3/socketio/mine$6;
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


# direct methods
.method constructor <init>(Lcn/bmob/v3/socketio/mine;)V
    .locals 0

    .prologue
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code(Lcn/bmob/v3/socketio/acknowledge;)V
    .locals 2

    .prologue
    .line 333
    invoke-virtual {p1}, Lcn/bmob/v3/socketio/acknowledge;->Code()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-boolean v0, p1, Lcn/bmob/v3/socketio/acknowledge;->V:Z

    if-nez v0, :cond_2

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcn/bmob/v3/socketio/acknowledge;->V:Z

    .line 338
    iget-object v0, p1, Lcn/bmob/v3/socketio/acknowledge;->Z:Lcn/bmob/v3/socketio/callback/ConnectCallback;

    .line 339
    if-eqz v0, :cond_0

    .line 340
    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcn/bmob/v3/socketio/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcn/bmob/v3/socketio/acknowledge;)V

    goto :goto_0

    .line 341
    :cond_2
    iget-boolean v0, p1, Lcn/bmob/v3/socketio/acknowledge;->I:Z

    if-eqz v0, :cond_0

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcn/bmob/v3/socketio/acknowledge;->I:Z

    goto :goto_0
.end method
