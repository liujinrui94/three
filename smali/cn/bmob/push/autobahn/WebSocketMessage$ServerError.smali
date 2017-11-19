.class public Lcn/bmob/push/autobahn/WebSocketMessage$ServerError;
.super Lcn/bmob/push/autobahn/WebSocketMessage$Message;
.source "SourceFile"


# instance fields
.field public G:I

.field public H:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcn/bmob/push/autobahn/WebSocketMessage$Message;-><init>()V

    .line 90
    iput p1, p0, Lcn/bmob/push/autobahn/WebSocketMessage$ServerError;->G:I

    .line 91
    iput-object p2, p0, Lcn/bmob/push/autobahn/WebSocketMessage$ServerError;->H:Ljava/lang/String;

    .line 92
    return-void
.end method
