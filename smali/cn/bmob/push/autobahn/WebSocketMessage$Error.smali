.class public Lcn/bmob/push/autobahn/WebSocketMessage$Error;
.super Lcn/bmob/push/autobahn/WebSocketMessage$Message;
.source "SourceFile"


# instance fields
.field public E:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcn/bmob/push/autobahn/WebSocketMessage$Message;-><init>()V

    .line 112
    iput-object p1, p0, Lcn/bmob/push/autobahn/WebSocketMessage$Error;->E:Ljava/lang/Exception;

    .line 113
    return-void
.end method
