.class final Lcn/bmob/v3/socketio/mine$7;
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
.field final synthetic Code:Lorg/json/JSONObject;

.field private synthetic I:Lcn/bmob/v3/socketio/mine;

.field final synthetic V:Lcn/bmob/v3/socketio/This;


# direct methods
.method constructor <init>(Lcn/bmob/v3/socketio/mine;Lorg/json/JSONObject;Lcn/bmob/v3/socketio/This;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcn/bmob/v3/socketio/mine$7;->I:Lcn/bmob/v3/socketio/mine;

    iput-object p2, p0, Lcn/bmob/v3/socketio/mine$7;->Code:Lorg/json/JSONObject;

    iput-object p3, p0, Lcn/bmob/v3/socketio/mine$7;->V:Lcn/bmob/v3/socketio/This;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code(Lcn/bmob/v3/socketio/acknowledge;)V
    .locals 0

    .prologue
    .line 371
    return-void
.end method
