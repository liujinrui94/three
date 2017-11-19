.class final Lcn/bmob/v3/socketio/mine$2;
.super Ljava/lang/Object;
.source "SocketIOConnection.java"

# interfaces
.implements Lcn/bmob/v3/socketio/This;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/socketio/mine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic Code:Ljava/lang/String;

.field private synthetic V:Lcn/bmob/v3/socketio/mine;


# direct methods
.method constructor <init>(Lcn/bmob/v3/socketio/mine;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcn/bmob/v3/socketio/mine$2;->V:Lcn/bmob/v3/socketio/mine;

    iput-object p2, p0, Lcn/bmob/v3/socketio/mine$2;->Code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code(Lorg/json/JSONArray;)V
    .locals 6

    .prologue
    .line 440
    const-string v0, ""

    .line 441
    if-eqz p1, :cond_0

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 443
    :cond_0
    iget-object v1, p0, Lcn/bmob/v3/socketio/mine$2;->V:Lcn/bmob/v3/socketio/mine;

    iget-object v1, v1, Lcn/bmob/v3/socketio/mine;->I:Lcn/bmob/v3/socketio/From;

    const-string v2, "6:::%s%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/bmob/v3/socketio/mine$2;->Code:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/bmob/v3/socketio/From;->Code(Ljava/lang/String;)V

    .line 444
    return-void
.end method
