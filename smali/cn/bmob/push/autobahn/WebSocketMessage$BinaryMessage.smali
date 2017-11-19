.class public Lcn/bmob/push/autobahn/WebSocketMessage$BinaryMessage;
.super Lcn/bmob/push/autobahn/WebSocketMessage$Message;
.source "SourceFile"


# instance fields
.field public s:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lcn/bmob/push/autobahn/WebSocketMessage$Message;-><init>()V

    .line 142
    iput-object p1, p0, Lcn/bmob/push/autobahn/WebSocketMessage$BinaryMessage;->s:[B

    .line 143
    return-void
.end method
