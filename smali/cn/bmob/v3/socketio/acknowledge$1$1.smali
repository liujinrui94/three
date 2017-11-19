.class final Lcn/bmob/v3/socketio/acknowledge$1$1;
.super Ljava/lang/Object;
.source "SocketIOClient.java"

# interfaces
.implements Lcn/bmob/v3/socketio/callback/ConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/socketio/acknowledge$1;->onConnectCompleted(Ljava/lang/Exception;Lcn/bmob/v3/socketio/acknowledge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic Code:Lcn/bmob/v3/socketio/acknowledge$1;


# direct methods
.method constructor <init>(Lcn/bmob/v3/socketio/acknowledge$1;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcn/bmob/v3/socketio/acknowledge$1$1;->Code:Lcn/bmob/v3/socketio/acknowledge$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectCompleted(Ljava/lang/Exception;Lcn/bmob/v3/socketio/acknowledge;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Exception;
    .param p2, "client"    # Lcn/bmob/v3/socketio/acknowledge;

    .prologue
    .line 85
    iget-object v0, p0, Lcn/bmob/v3/socketio/acknowledge$1$1;->Code:Lcn/bmob/v3/socketio/acknowledge$1;

    iget-object v0, v0, Lcn/bmob/v3/socketio/acknowledge$1;->Code:Lcn/bmob/v3/socketio/callback/ConnectCallback;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcn/bmob/v3/socketio/acknowledge$1$1;->Code:Lcn/bmob/v3/socketio/acknowledge$1;

    iget-object v0, v0, Lcn/bmob/v3/socketio/acknowledge$1;->Code:Lcn/bmob/v3/socketio/callback/ConnectCallback;

    invoke-interface {v0, p1, p2}, Lcn/bmob/v3/socketio/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcn/bmob/v3/socketio/acknowledge;)V

    .line 88
    :cond_0
    return-void
.end method
