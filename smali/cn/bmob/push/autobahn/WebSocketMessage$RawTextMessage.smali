.class public Lcn/bmob/push/autobahn/WebSocketMessage$RawTextMessage;
.super Lcn/bmob/push/autobahn/WebSocketMessage$Message;
.source "SourceFile"


# instance fields
.field public s:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcn/bmob/push/autobahn/WebSocketMessage$Message;-><init>()V

    .line 132
    iput-object p1, p0, Lcn/bmob/push/autobahn/WebSocketMessage$RawTextMessage;->s:[B

    .line 133
    return-void
.end method
