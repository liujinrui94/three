.class public Lcn/bmob/push/autobahn/WebSocketMessage$ServerHandshake;
.super Lcn/bmob/push/autobahn/WebSocketMessage$Message;
.source "SourceFile"


# instance fields
.field public J:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcn/bmob/push/autobahn/WebSocketMessage$Message;-><init>()V

    .line 77
    iput-boolean p1, p0, Lcn/bmob/push/autobahn/WebSocketMessage$ServerHandshake;->J:Z

    .line 78
    return-void
.end method
