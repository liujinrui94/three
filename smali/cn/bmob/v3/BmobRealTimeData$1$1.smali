.class final Lcn/bmob/v3/BmobRealTimeData$1$1;
.super Ljava/lang/Object;
.source "BmobRealTimeData.java"

# interfaces
.implements Lcn/bmob/v3/socketio/callback/EventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/BmobRealTimeData$1;->onConnectCompleted(Ljava/lang/Exception;Lcn/bmob/v3/socketio/acknowledge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Code:Lcn/bmob/v3/BmobRealTimeData$1;

.field private synthetic V:Lcn/bmob/v3/socketio/acknowledge;


# direct methods
.method constructor <init>(Lcn/bmob/v3/BmobRealTimeData$1;Lcn/bmob/v3/socketio/acknowledge;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcn/bmob/v3/BmobRealTimeData$1$1;->Code:Lcn/bmob/v3/BmobRealTimeData$1;

    iput-object p2, p0, Lcn/bmob/v3/BmobRealTimeData$1$1;->V:Lcn/bmob/v3/socketio/acknowledge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Ljava/lang/String;Lorg/json/JSONArray;Lcn/bmob/v3/socketio/This;)V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcn/bmob/v3/BmobRealTimeData$1$1;->V:Lcn/bmob/v3/socketio/acknowledge;

    const-string v1, "server_pub"

    new-instance v2, Lcn/bmob/v3/BmobRealTimeData$1$1$1;

    invoke-direct {v2, p0}, Lcn/bmob/v3/BmobRealTimeData$1$1$1;-><init>(Lcn/bmob/v3/BmobRealTimeData$1$1;)V

    invoke-virtual {v0, v1, v2}, Lcn/bmob/v3/socketio/acknowledge;->Code(Ljava/lang/String;Lcn/bmob/v3/socketio/callback/EventCallback;)V

    .line 65
    return-void
.end method
