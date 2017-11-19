.class Lcn/bmob/push/autobahn/WebSocketConnection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic r:Lcn/bmob/push/autobahn/WebSocketConnection;


# direct methods
.method constructor <init>(Lcn/bmob/push/autobahn/WebSocketConnection;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/bmob/push/autobahn/WebSocketConnection$1;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcn/bmob/push/autobahn/WebSocketConnection$1;->r:Lcn/bmob/push/autobahn/WebSocketConnection;

    invoke-virtual {v0}, Lcn/bmob/push/autobahn/WebSocketConnection;->reconnect()Z

    .line 342
    return-void
.end method
