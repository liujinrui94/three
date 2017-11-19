.class public Lcn/bmob/push/autobahn/WebSocketMessage$ClientHandshake;
.super Lcn/bmob/push/autobahn/WebSocketMessage$Message;
.source "SourceFile"


# instance fields
.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:[Ljava/lang/String;

.field public y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcn/bmob/push/autobahn/WebSocketMessage$Message;-><init>()V

    .line 50
    iput-object p1, p0, Lcn/bmob/push/autobahn/WebSocketMessage$ClientHandshake;->t:Ljava/lang/String;

    .line 51
    const-string v0, "/"

    iput-object v0, p0, Lcn/bmob/push/autobahn/WebSocketMessage$ClientHandshake;->u:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcn/bmob/push/autobahn/WebSocketMessage$ClientHandshake;->w:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcn/bmob/push/autobahn/WebSocketMessage$ClientHandshake;->x:[Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcn/bmob/push/autobahn/WebSocketMessage$ClientHandshake;->y:Ljava/util/List;

    .line 55
    return-void
.end method
