.class final Lcn/bmob/v3/socketio/mine$5$2;
.super Ljava/lang/Object;
.source "SocketIOConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/socketio/mine$5;->Code(Lcn/bmob/v3/socketio/acknowledge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic Code:Lcn/bmob/v3/socketio/callback/ConnectCallback;

.field private synthetic I:Lcn/bmob/v3/socketio/mine$5;

.field private synthetic V:Lcn/bmob/v3/socketio/acknowledge;


# direct methods
.method constructor <init>(Lcn/bmob/v3/socketio/mine$5;Lcn/bmob/v3/socketio/callback/ConnectCallback;Lcn/bmob/v3/socketio/acknowledge;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcn/bmob/v3/socketio/mine$5$2;->I:Lcn/bmob/v3/socketio/mine$5;

    iput-object p2, p0, Lcn/bmob/v3/socketio/mine$5$2;->Code:Lcn/bmob/v3/socketio/callback/ConnectCallback;

    iput-object p3, p0, Lcn/bmob/v3/socketio/mine$5$2;->V:Lcn/bmob/v3/socketio/acknowledge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 317
    iget-object v0, p0, Lcn/bmob/v3/socketio/mine$5$2;->Code:Lcn/bmob/v3/socketio/callback/ConnectCallback;

    iget-object v1, p0, Lcn/bmob/v3/socketio/mine$5$2;->I:Lcn/bmob/v3/socketio/mine$5;

    iget-object v1, v1, Lcn/bmob/v3/socketio/mine$5;->Code:Ljava/lang/Exception;

    iget-object v2, p0, Lcn/bmob/v3/socketio/mine$5$2;->V:Lcn/bmob/v3/socketio/acknowledge;

    invoke-interface {v0, v1, v2}, Lcn/bmob/v3/socketio/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcn/bmob/v3/socketio/acknowledge;)V

    .line 318
    return-void
.end method
