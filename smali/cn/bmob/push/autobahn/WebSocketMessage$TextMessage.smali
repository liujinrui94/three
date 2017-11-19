.class public Lcn/bmob/push/autobahn/WebSocketMessage$TextMessage;
.super Lcn/bmob/push/autobahn/WebSocketMessage$Message;
.source "SourceFile"


# instance fields
.field public K:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lcn/bmob/push/autobahn/WebSocketMessage$Message;-><init>()V

    .line 122
    iput-object p1, p0, Lcn/bmob/push/autobahn/WebSocketMessage$TextMessage;->K:Ljava/lang/String;

    .line 123
    return-void
.end method
