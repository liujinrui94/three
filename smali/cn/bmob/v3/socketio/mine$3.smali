.class final Lcn/bmob/v3/socketio/mine$3;
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
.field private synthetic Code:Lcn/bmob/v3/socketio/From;

.field private synthetic V:Lcn/bmob/v3/socketio/mine;


# direct methods
.method constructor <init>(Lcn/bmob/v3/socketio/mine;Lcn/bmob/v3/socketio/From;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcn/bmob/v3/socketio/mine$3;->V:Lcn/bmob/v3/socketio/mine;

    iput-object p2, p0, Lcn/bmob/v3/socketio/mine$3;->Code:Lcn/bmob/v3/socketio/From;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 240
    iget-object v0, p0, Lcn/bmob/v3/socketio/mine$3;->V:Lcn/bmob/v3/socketio/mine;

    iget v0, v0, Lcn/bmob/v3/socketio/mine;->Code:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/bmob/v3/socketio/mine$3;->Code:Lcn/bmob/v3/socketio/From;

    iget-object v1, p0, Lcn/bmob/v3/socketio/mine$3;->V:Lcn/bmob/v3/socketio/mine;

    iget-object v1, v1, Lcn/bmob/v3/socketio/mine;->I:Lcn/bmob/v3/socketio/From;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/bmob/v3/socketio/mine$3;->Code:Lcn/bmob/v3/socketio/From;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/bmob/v3/socketio/mine$3;->Code:Lcn/bmob/v3/socketio/From;

    invoke-virtual {v0}, Lcn/bmob/v3/socketio/From;->Z()Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcn/bmob/v3/socketio/mine$3;->V:Lcn/bmob/v3/socketio/mine;

    iget-object v0, v0, Lcn/bmob/v3/socketio/mine;->I:Lcn/bmob/v3/socketio/From;

    const-string v1, "2:::"

    invoke-virtual {v0, v1}, Lcn/bmob/v3/socketio/From;->Code(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcn/bmob/v3/socketio/mine$3;->V:Lcn/bmob/v3/socketio/mine;

    invoke-static {v0}, Lcn/bmob/v3/socketio/mine;->Code(Lcn/bmob/v3/socketio/mine;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/bmob/v3/socketio/mine$3;->V:Lcn/bmob/v3/socketio/mine;

    iget v1, v1, Lcn/bmob/v3/socketio/mine;->Code:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
