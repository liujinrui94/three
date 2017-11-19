.class public Lcn/bmob/v3/AsyncCustomEndpoints;
.super Ljava/lang/Object;
.source "AsyncCustomEndpoints.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Code(Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/CloudCodeListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 5

    .prologue
    .line 64
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 66
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 67
    const-string v2, "_e"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 70
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 79
    :goto_1
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    const-string v2, "no check"

    const-string v3, "no check"

    invoke-static {v2, v3}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/util/List;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    const-string v2, "http://open.bmob.cn/8/functions"

    invoke-virtual {v0, v2, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/AsyncCustomEndpoints$1;

    invoke-direct {v1, p0}, Lcn/bmob/v3/AsyncCustomEndpoints$1;-><init>(Lcn/bmob/v3/AsyncCustomEndpoints;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Lrx/functions/Func1;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcn/bmob/v3/http/acknowledge$This;->V(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    :try_start_1
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public callEndpoint(Ljava/lang/String;Lcn/bmob/v3/listener/CloudCodeListener;)Lrx/Subscription;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "listener"    # Lcn/bmob/v3/listener/CloudCodeListener;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcn/bmob/v3/AsyncCustomEndpoints;->callEndpoint(Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/CloudCodeListener;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public callEndpoint(Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/CloudCodeListener;)Lrx/Subscription;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "cloudCodeParams"    # Lorg/json/JSONObject;
    .param p3, "listener"    # Lcn/bmob/v3/listener/CloudCodeListener;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcn/bmob/v3/AsyncCustomEndpoints;->Code(Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/CloudCodeListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public callEndpointObservable(Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/bmob/v3/AsyncCustomEndpoints;->callEndpointObservable(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public callEndpointObservable(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "cloudCodeParams"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/bmob/v3/AsyncCustomEndpoints;->Code(Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/CloudCodeListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
