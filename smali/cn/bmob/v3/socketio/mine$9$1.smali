.class final Lcn/bmob/v3/socketio/mine$9$1;
.super Ljava/lang/Object;
.source "SocketIOConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/socketio/mine$9;->Code(Lcn/bmob/v3/socketio/acknowledge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic Code:Lcn/bmob/v3/socketio/acknowledge;

.field private synthetic V:Lcn/bmob/v3/socketio/mine$9;


# direct methods
.method constructor <init>(Lcn/bmob/v3/socketio/mine$9;Lcn/bmob/v3/socketio/acknowledge;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcn/bmob/v3/socketio/mine$9$1;->V:Lcn/bmob/v3/socketio/mine$9;

    iput-object p2, p0, Lcn/bmob/v3/socketio/mine$9$1;->Code:Lcn/bmob/v3/socketio/acknowledge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 403
    iget-object v0, p0, Lcn/bmob/v3/socketio/mine$9$1;->Code:Lcn/bmob/v3/socketio/acknowledge;

    iget-object v1, p0, Lcn/bmob/v3/socketio/mine$9$1;->V:Lcn/bmob/v3/socketio/mine$9;

    iget-object v1, v1, Lcn/bmob/v3/socketio/mine$9;->Code:Ljava/lang/String;

    iget-object v2, p0, Lcn/bmob/v3/socketio/mine$9$1;->V:Lcn/bmob/v3/socketio/mine$9;

    iget-object v2, v2, Lcn/bmob/v3/socketio/mine$9;->V:Lorg/json/JSONArray;

    iget-object v3, p0, Lcn/bmob/v3/socketio/mine$9$1;->V:Lcn/bmob/v3/socketio/mine$9;

    iget-object v3, v3, Lcn/bmob/v3/socketio/mine$9;->I:Lcn/bmob/v3/socketio/This;

    .line 1020
    iget-object v0, v0, Lcn/bmob/v3/socketio/of;->Code:Lcn/bmob/v3/socketio/darkness;

    invoke-virtual {v0, v1}, Lcn/bmob/v3/socketio/darkness;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1021
    if-eqz v0, :cond_1

    .line 1023
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1024
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1025
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bmob/v3/socketio/callback/EventCallback;

    .line 1026
    invoke-interface {v0, v1, v2, v3}, Lcn/bmob/v3/socketio/callback/EventCallback;->onEvent(Ljava/lang/String;Lorg/json/JSONArray;Lcn/bmob/v3/socketio/This;)V

    .line 1027
    instance-of v0, v0, Lcn/bmob/v3/socketio/of$This;

    if-eqz v0, :cond_0

    .line 1028
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 405
    :cond_1
    return-void
.end method
