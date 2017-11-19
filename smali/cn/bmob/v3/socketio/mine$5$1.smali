.class final Lcn/bmob/v3/socketio/mine$5$1;
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
.field private synthetic Code:Lcn/bmob/v3/socketio/callback/DisconnectCallback;

.field private synthetic V:Lcn/bmob/v3/socketio/mine$5;


# direct methods
.method constructor <init>(Lcn/bmob/v3/socketio/mine$5;Lcn/bmob/v3/socketio/callback/DisconnectCallback;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcn/bmob/v3/socketio/mine$5$1;->V:Lcn/bmob/v3/socketio/mine$5;

    iput-object p2, p0, Lcn/bmob/v3/socketio/mine$5$1;->Code:Lcn/bmob/v3/socketio/callback/DisconnectCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcn/bmob/v3/socketio/mine$5$1;->Code:Lcn/bmob/v3/socketio/callback/DisconnectCallback;

    iget-object v1, p0, Lcn/bmob/v3/socketio/mine$5$1;->V:Lcn/bmob/v3/socketio/mine$5;

    iget-object v1, v1, Lcn/bmob/v3/socketio/mine$5;->Code:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcn/bmob/v3/socketio/callback/DisconnectCallback;->onDisconnect(Ljava/lang/Exception;)V

    .line 304
    return-void
.end method
