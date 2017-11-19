.class final Lcn/bmob/v3/socketio/mine$9;
.super Ljava/lang/Object;
.source "SocketIOConnection.java"

# interfaces
.implements Lcn/bmob/v3/socketio/mine$This;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/socketio/mine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Code:Ljava/lang/String;

.field final synthetic I:Lcn/bmob/v3/socketio/This;

.field final synthetic V:Lorg/json/JSONArray;

.field private synthetic Z:Lcn/bmob/v3/socketio/mine;


# direct methods
.method constructor <init>(Lcn/bmob/v3/socketio/mine;Ljava/lang/String;Lorg/json/JSONArray;Lcn/bmob/v3/socketio/This;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcn/bmob/v3/socketio/mine$9;->Z:Lcn/bmob/v3/socketio/mine;

    iput-object p2, p0, Lcn/bmob/v3/socketio/mine$9;->Code:Ljava/lang/String;

    iput-object p3, p0, Lcn/bmob/v3/socketio/mine$9;->V:Lorg/json/JSONArray;

    iput-object p4, p0, Lcn/bmob/v3/socketio/mine$9;->I:Lcn/bmob/v3/socketio/This;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code(Lcn/bmob/v3/socketio/acknowledge;)V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcn/bmob/v3/socketio/mine$9;->Z:Lcn/bmob/v3/socketio/mine;

    invoke-static {v0}, Lcn/bmob/v3/socketio/mine;->Code(Lcn/bmob/v3/socketio/mine;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/socketio/mine$9$1;

    invoke-direct {v1, p0, p1}, Lcn/bmob/v3/socketio/mine$9$1;-><init>(Lcn/bmob/v3/socketio/mine$9;Lcn/bmob/v3/socketio/acknowledge;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 408
    return-void
.end method
