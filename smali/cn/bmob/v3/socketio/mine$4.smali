.class final Lcn/bmob/v3/socketio/mine$4;
.super Ljava/lang/Object;
.source "SocketIOConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/socketio/mine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic Code:Lcn/bmob/v3/socketio/mine;


# direct methods
.method constructor <init>(Lcn/bmob/v3/socketio/mine;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcn/bmob/v3/socketio/mine$4;->Code:Lcn/bmob/v3/socketio/mine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcn/bmob/v3/socketio/mine$4;->Code:Lcn/bmob/v3/socketio/mine;

    invoke-virtual {v0}, Lcn/bmob/v3/socketio/mine;->V()V

    .line 284
    return-void
.end method
