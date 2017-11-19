.class public Lcn/bmob/push/autobahn/WebSocketMessage$Pong;
.super Lcn/bmob/push/autobahn/WebSocketMessage$Message;
.source "SourceFile"


# instance fields
.field public s:[B


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Lcn/bmob/push/autobahn/WebSocketMessage$Message;-><init>()V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/bmob/push/autobahn/WebSocketMessage$Pong;->s:[B

    .line 189
    return-void
.end method

.method constructor <init>([B)V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Lcn/bmob/push/autobahn/WebSocketMessage$Message;-><init>()V

    .line 192
    iput-object p1, p0, Lcn/bmob/push/autobahn/WebSocketMessage$Pong;->s:[B

    .line 193
    return-void
.end method
