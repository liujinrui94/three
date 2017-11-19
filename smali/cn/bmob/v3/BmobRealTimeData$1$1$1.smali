.class final Lcn/bmob/v3/BmobRealTimeData$1$1$1;
.super Ljava/lang/Object;
.source "BmobRealTimeData.java"

# interfaces
.implements Lcn/bmob/v3/socketio/callback/EventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/BmobRealTimeData$1$1;->onEvent(Ljava/lang/String;Lorg/json/JSONArray;Lcn/bmob/v3/socketio/This;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic Code:Lcn/bmob/v3/BmobRealTimeData$1$1;


# direct methods
.method constructor <init>(Lcn/bmob/v3/BmobRealTimeData$1$1;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcn/bmob/v3/BmobRealTimeData$1$1$1;->Code:Lcn/bmob/v3/BmobRealTimeData$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Ljava/lang/String;Lorg/json/JSONArray;Lcn/bmob/v3/socketio/This;)V
    .locals 2
    .param p2, "argument"    # Lorg/json/JSONArray;

    .prologue
    .line 58
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcn/bmob/v3/BmobRealTimeData$1$1$1;->Code:Lcn/bmob/v3/BmobRealTimeData$1$1;

    iget-object v1, v1, Lcn/bmob/v3/BmobRealTimeData$1$1;->Code:Lcn/bmob/v3/BmobRealTimeData$1;

    iget-object v1, v1, Lcn/bmob/v3/BmobRealTimeData$1;->Code:Lcn/bmob/v3/listener/ValueEventListener;

    invoke-interface {v1, v0}, Lcn/bmob/v3/listener/ValueEventListener;->onDataChange(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
