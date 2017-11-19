.class public Lcn/bmob/push/autobahn/WebSocketMessage$Ping;
.super Lcn/bmob/push/autobahn/WebSocketMessage$Message;
.source "SourceFile"


# instance fields
.field public s:[B


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Lcn/bmob/push/autobahn/WebSocketMessage$Message;-><init>()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/bmob/push/autobahn/WebSocketMessage$Ping;->s:[B

    .line 175
    return-void
.end method

.method constructor <init>([B)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Lcn/bmob/push/autobahn/WebSocketMessage$Message;-><init>()V

    .line 178
    iput-object p1, p0, Lcn/bmob/push/autobahn/WebSocketMessage$Ping;->s:[B

    .line 179
    return-void
.end method
