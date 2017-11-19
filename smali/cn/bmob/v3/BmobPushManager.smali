.class public Lcn/bmob/v3/BmobPushManager;
.super Ljava/lang/Object;
.source "BmobPushManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private Code:Lcn/bmob/v3/BmobQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Code(Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/PushListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 4

    .prologue
    .line 119
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 121
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 122
    const-string v2, "alert"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 124
    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    if-eqz p1, :cond_0

    .line 126
    const-string v0, "where"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    :cond_0
    const-string v0, "data"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/util/List;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    const-string v2, "http://open.bmob.cn/8/push"

    invoke-virtual {v0, v2, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->I()Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/bmob/v3/http/acknowledge$This;->V(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static Code(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcn/bmob/v3/listener/PushListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 3

    .prologue
    .line 136
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 138
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 139
    const-string v2, "data"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    if-eqz p1, :cond_0

    .line 141
    const-string v2, "where"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    :cond_0
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/util/List;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    const-string v2, "http://open.bmob.cn/8/push"

    invoke-virtual {v0, v2, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->I()Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/bmob/v3/http/acknowledge$This;->V(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getQuery()Lcn/bmob/v3/BmobQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcn/bmob/v3/BmobPushManager;->Code:Lcn/bmob/v3/BmobQuery;

    return-object v0
.end method

.method public pushMessage(Ljava/lang/String;)Lrx/Subscription;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 30
    .local p0, "this":Lcn/bmob/v3/BmobPushManager;, "Lcn/bmob/v3/BmobPushManager<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/bmob/v3/BmobPushManager;->pushMessage(Ljava/lang/String;Lcn/bmob/v3/listener/PushListener;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public pushMessage(Ljava/lang/String;Lcn/bmob/v3/listener/PushListener;)Lrx/Subscription;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "listener"    # Lcn/bmob/v3/listener/PushListener;

    .prologue
    .line 39
    .local p0, "this":Lcn/bmob/v3/BmobPushManager;, "Lcn/bmob/v3/BmobPushManager<TT;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobPushManager;->Code:Lcn/bmob/v3/BmobQuery;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcn/bmob/v3/BmobPushManager;->Code:Lcn/bmob/v3/BmobQuery;

    invoke-virtual {v0}, Lcn/bmob/v3/BmobQuery;->getWhere()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcn/bmob/v3/BmobPushManager;->Code(Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/PushListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcn/bmob/v3/BmobPushManager;->pushMessageAll(Ljava/lang/String;Lcn/bmob/v3/listener/PushListener;)Lrx/Subscription;

    move-result-object v0

    goto :goto_0
.end method

.method public pushMessage(Lorg/json/JSONObject;)Lrx/Subscription;
    .locals 1
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 51
    .local p0, "this":Lcn/bmob/v3/BmobPushManager;, "Lcn/bmob/v3/BmobPushManager<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/bmob/v3/BmobPushManager;->pushMessage(Lorg/json/JSONObject;Lcn/bmob/v3/listener/PushListener;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public pushMessage(Lorg/json/JSONObject;Lcn/bmob/v3/listener/PushListener;)Lrx/Subscription;
    .locals 1
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "listener"    # Lcn/bmob/v3/listener/PushListener;

    .prologue
    .line 60
    .local p0, "this":Lcn/bmob/v3/BmobPushManager;, "Lcn/bmob/v3/BmobPushManager<TT;>;"
    iget-object v0, p0, Lcn/bmob/v3/BmobPushManager;->Code:Lcn/bmob/v3/BmobQuery;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcn/bmob/v3/BmobPushManager;->Code:Lcn/bmob/v3/BmobQuery;

    invoke-virtual {v0}, Lcn/bmob/v3/BmobQuery;->getWhere()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcn/bmob/v3/BmobPushManager;->Code(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcn/bmob/v3/listener/PushListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcn/bmob/v3/BmobPushManager;->pushMessageAll(Lorg/json/JSONObject;Lcn/bmob/v3/listener/PushListener;)Lrx/Subscription;

    move-result-object v0

    goto :goto_0
.end method

.method public pushMessageAll(Ljava/lang/String;)Lrx/Subscription;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 72
    .local p0, "this":Lcn/bmob/v3/BmobPushManager;, "Lcn/bmob/v3/BmobPushManager<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/bmob/v3/BmobPushManager;->pushMessageAll(Ljava/lang/String;Lcn/bmob/v3/listener/PushListener;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public pushMessageAll(Ljava/lang/String;Lcn/bmob/v3/listener/PushListener;)Lrx/Subscription;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "listener"    # Lcn/bmob/v3/listener/PushListener;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcn/bmob/v3/BmobPushManager;->Code(Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/PushListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public pushMessageAll(Lorg/json/JSONObject;)Lrx/Subscription;
    .locals 1
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 79
    .local p0, "this":Lcn/bmob/v3/BmobPushManager;, "Lcn/bmob/v3/BmobPushManager<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/bmob/v3/BmobPushManager;->pushMessageAll(Lorg/json/JSONObject;Lcn/bmob/v3/listener/PushListener;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public pushMessageAll(Lorg/json/JSONObject;Lcn/bmob/v3/listener/PushListener;)Lrx/Subscription;
    .locals 1
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "listener"    # Lcn/bmob/v3/listener/PushListener;

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcn/bmob/v3/BmobPushManager;->Code(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcn/bmob/v3/listener/PushListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public pushMessageAllObservable(Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-static {p1, v0, v0}, Lcn/bmob/v3/BmobPushManager;->Code(Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/PushListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public pushMessageAllObservable(Lorg/json/JSONObject;)Lrx/Observable;
    .locals 1
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-static {p1, v0, v0}, Lcn/bmob/v3/BmobPushManager;->Code(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcn/bmob/v3/listener/PushListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public setQuery(Lcn/bmob/v3/BmobQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/bmob/v3/BmobQuery",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lcn/bmob/v3/BmobPushManager;, "Lcn/bmob/v3/BmobPushManager<TT;>;"
    .local p1, "query":Lcn/bmob/v3/BmobQuery;, "Lcn/bmob/v3/BmobQuery<TT;>;"
    iput-object p1, p0, Lcn/bmob/v3/BmobPushManager;->Code:Lcn/bmob/v3/BmobQuery;

    .line 156
    return-void
.end method
