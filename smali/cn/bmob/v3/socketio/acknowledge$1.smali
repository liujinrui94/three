.class final Lcn/bmob/v3/socketio/acknowledge$1;
.super Ljava/lang/Object;
.source "SocketIOClient.java"

# interfaces
.implements Lcn/bmob/v3/socketio/callback/ConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/socketio/acknowledge;->Code(Lcn/bmob/v3/socketio/thing$This;Lcn/bmob/v3/socketio/callback/ConnectCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Code:Lcn/bmob/v3/socketio/callback/ConnectCallback;

.field private synthetic I:Landroid/os/Handler;

.field private synthetic V:Lcn/bmob/v3/socketio/thing$This;

.field private synthetic Z:Lcn/bmob/v3/socketio/mine;


# direct methods
.method constructor <init>(Lcn/bmob/v3/socketio/thing$This;Landroid/os/Handler;Lcn/bmob/v3/socketio/callback/ConnectCallback;Lcn/bmob/v3/socketio/mine;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcn/bmob/v3/socketio/acknowledge$1;->V:Lcn/bmob/v3/socketio/thing$This;

    iput-object p2, p0, Lcn/bmob/v3/socketio/acknowledge$1;->I:Landroid/os/Handler;

    iput-object p3, p0, Lcn/bmob/v3/socketio/acknowledge$1;->Code:Lcn/bmob/v3/socketio/callback/ConnectCallback;

    iput-object p4, p0, Lcn/bmob/v3/socketio/acknowledge$1;->Z:Lcn/bmob/v3/socketio/mine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectCompleted(Ljava/lang/Exception;Lcn/bmob/v3/socketio/acknowledge;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Exception;
    .param p2, "client"    # Lcn/bmob/v3/socketio/acknowledge;

    .prologue
    .line 70
    if-nez p1, :cond_0

    iget-object v0, p0, Lcn/bmob/v3/socketio/acknowledge$1;->V:Lcn/bmob/v3/socketio/thing$This;

    invoke-virtual {v0}, Lcn/bmob/v3/socketio/thing$This;->V()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    :cond_0
    iget-object v0, p0, Lcn/bmob/v3/socketio/acknowledge$1;->Code:Lcn/bmob/v3/socketio/callback/ConnectCallback;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcn/bmob/v3/socketio/acknowledge$1;->Code:Lcn/bmob/v3/socketio/callback/ConnectCallback;

    invoke-interface {v0, p1, p2}, Lcn/bmob/v3/socketio/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcn/bmob/v3/socketio/acknowledge;)V

    .line 90
    :cond_1
    :goto_0
    return-void

    .line 79
    :cond_2
    iget-object v0, p0, Lcn/bmob/v3/socketio/acknowledge$1;->Z:Lcn/bmob/v3/socketio/mine;

    iget-object v0, v0, Lcn/bmob/v3/socketio/mine;->V:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcn/bmob/v3/socketio/acknowledge$1;->V:Lcn/bmob/v3/socketio/thing$This;

    invoke-virtual {v0}, Lcn/bmob/v3/socketio/thing$This;->V()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/socketio/acknowledge$1$1;

    invoke-direct {v1, p0}, Lcn/bmob/v3/socketio/acknowledge$1$1;-><init>(Lcn/bmob/v3/socketio/acknowledge$1;)V

    invoke-virtual {p2, v0, v1}, Lcn/bmob/v3/socketio/acknowledge;->Code(Ljava/lang/String;Lcn/bmob/v3/socketio/callback/ConnectCallback;)V

    goto :goto_0
.end method
