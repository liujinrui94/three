.class final Lcn/bmob/v3/BmobRealTimeData$1;
.super Ljava/lang/Object;
.source "BmobRealTimeData.java"

# interfaces
.implements Lcn/bmob/v3/socketio/callback/ConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/BmobRealTimeData;->start(Lcn/bmob/v3/listener/ValueEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Code:Lcn/bmob/v3/listener/ValueEventListener;

.field private synthetic V:Lcn/bmob/v3/BmobRealTimeData;


# direct methods
.method constructor <init>(Lcn/bmob/v3/BmobRealTimeData;Lcn/bmob/v3/listener/ValueEventListener;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcn/bmob/v3/BmobRealTimeData$1;->V:Lcn/bmob/v3/BmobRealTimeData;

    iput-object p2, p0, Lcn/bmob/v3/BmobRealTimeData$1;->Code:Lcn/bmob/v3/listener/ValueEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectCompleted(Ljava/lang/Exception;Lcn/bmob/v3/socketio/acknowledge;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Exception;
    .param p2, "client"    # Lcn/bmob/v3/socketio/acknowledge;

    .prologue
    .line 44
    iget-object v0, p0, Lcn/bmob/v3/BmobRealTimeData$1;->Code:Lcn/bmob/v3/listener/ValueEventListener;

    if-nez v0, :cond_0

    .line 45
    const-string v0, "bmob"

    const-string v1, " listener must not be null "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_0
    return-void

    .line 48
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcn/bmob/v3/socketio/acknowledge;->Code()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcn/bmob/v3/BmobRealTimeData$1;->V:Lcn/bmob/v3/BmobRealTimeData;

    invoke-static {v0, p2}, Lcn/bmob/v3/BmobRealTimeData;->Code(Lcn/bmob/v3/BmobRealTimeData;Lcn/bmob/v3/socketio/acknowledge;)Lcn/bmob/v3/socketio/acknowledge;

    .line 50
    iget-object v0, p0, Lcn/bmob/v3/BmobRealTimeData$1;->Code:Lcn/bmob/v3/listener/ValueEventListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/bmob/v3/listener/ValueEventListener;->onConnectCompleted(Ljava/lang/Exception;)V

    .line 51
    const-string v0, "client_send_data"

    new-instance v1, Lcn/bmob/v3/BmobRealTimeData$1$1;

    invoke-direct {v1, p0, p2}, Lcn/bmob/v3/BmobRealTimeData$1$1;-><init>(Lcn/bmob/v3/BmobRealTimeData$1;Lcn/bmob/v3/socketio/acknowledge;)V

    invoke-virtual {p2, v0, v1}, Lcn/bmob/v3/socketio/acknowledge;->Code(Ljava/lang/String;Lcn/bmob/v3/socketio/callback/EventCallback;)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcn/bmob/v3/BmobRealTimeData$1;->Code:Lcn/bmob/v3/listener/ValueEventListener;

    invoke-interface {v0, p1}, Lcn/bmob/v3/listener/ValueEventListener;->onConnectCompleted(Ljava/lang/Exception;)V

    goto :goto_0
.end method
