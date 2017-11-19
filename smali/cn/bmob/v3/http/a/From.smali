.class public abstract Lcn/bmob/v3/http/a/From;
.super Ljava/lang/Object;
.source "PolicyQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Code(Ljava/lang/Throwable;Lcn/bmob/v3/listener/BmobCallback;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 301
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcn/bmob/v3/listener/BmobCallback2;

    if-eqz v0, :cond_1

    .line 302
    instance-of v0, p0, Lcn/bmob/v3/exception/BmobException;

    if-eqz v0, :cond_0

    .line 303
    check-cast p1, Lcn/bmob/v3/listener/BmobCallback2;

    invoke-virtual {p1, v1, p0}, Lcn/bmob/v3/listener/BmobCallback2;->done(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 310
    :goto_0
    return-void

    .line 305
    :cond_0
    check-cast p1, Lcn/bmob/v3/listener/BmobCallback2;

    new-instance v0, Lcn/bmob/v3/exception/BmobException;

    invoke-direct {v0, p0}, Lcn/bmob/v3/exception/BmobException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p1, v1, v0}, Lcn/bmob/v3/listener/BmobCallback2;->done(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 308
    :cond_1
    const-string v0, "bmob"

    const-string v1, " listener is null "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic Code(Lcn/bmob/v3/http/a/From;Ljava/lang/String;Lcn/bmob/v3/listener/BmobCallback;)Z
    .locals 1

    .prologue
    .line 50
    invoke-static {p1, p2}, Lcn/bmob/v3/http/a/From;->Code(Ljava/lang/String;Lcn/bmob/v3/listener/BmobCallback;)Z

    move-result v0

    return v0
.end method

.method private static Code(Ljava/lang/String;Lcn/bmob/v3/listener/BmobCallback;)Z
    .locals 3

    .prologue
    .line 214
    instance-of v0, p1, Lcn/bmob/v3/listener/SQLQueryListener;

    if-eqz v0, :cond_2

    .line 215
    const/4 v0, 0x0

    .line 217
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 218
    const-string v2, "results"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    const-string v2, "results"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 224
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    .line 228
    :goto_1
    invoke-static {v0}, Lcn/bmob/v3/helper/GsonUtil;->toList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 230
    const/4 v0, 0x1

    .line 232
    :goto_2
    return v0

    .line 221
    :catch_0
    move-exception v1

    .line 222
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, p0

    .line 226
    goto :goto_1

    .line 232
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public final Code(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/BmobCallback;)Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/http/bean/R1;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcn/bmob/v3/listener/BmobCallback;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    invoke-virtual {p0}, Lcn/bmob/v3/http/a/From;->Code()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcn/bmob/v3/http/acknowledge$This;->Code(ZLjava/util/List;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    .line 1177
    new-instance v1, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v1}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    invoke-virtual {v1, p2, p3}, Lcn/bmob/v3/http/acknowledge$This;->V(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcn/bmob/v3/http/acknowledge$This;->Code(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v1

    new-instance v2, Lcn/bmob/v3/http/a/From$3;

    invoke-direct {v2, p0, p4, p3}, Lcn/bmob/v3/http/a/From$3;-><init>(Lcn/bmob/v3/http/a/From;Lcn/bmob/v3/listener/BmobCallback;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcn/bmob/v3/http/acknowledge$This;->Code(Lrx/functions/Action1;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v1

    invoke-virtual {v1}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v1

    invoke-virtual {v1}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/acknowledge$This;->V(Lrx/Observable;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final Code(Ljava/util/List;Lorg/json/JSONObject;J)Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/http/bean/R1;",
            ">;",
            "Lorg/json/JSONObject;",
            "J)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    invoke-virtual {p0}, Lcn/bmob/v3/http/a/From;->Code()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcn/bmob/v3/http/acknowledge$This;->Code(ZLjava/util/List;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    .line 1120
    new-instance v1, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v1}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    new-instance v2, Lcn/bmob/v3/http/a/From$2;

    invoke-direct {v2, p0, p2, p3, p4}, Lcn/bmob/v3/http/a/From$2;-><init>(Lcn/bmob/v3/http/a/From;Lorg/json/JSONObject;J)V

    invoke-virtual {v1, v2}, Lcn/bmob/v3/http/acknowledge$This;->Code(Lrx/Observable$OnSubscribe;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v1

    invoke-virtual {v1}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v1

    invoke-virtual {v1}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/acknowledge$This;->V(Lrx/Observable;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public abstract Code(Ljava/lang/Class;Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;JLcn/bmob/v3/listener/BmobCallback;)Lrx/Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/http/bean/R1;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "J",
            "Lcn/bmob/v3/listener/BmobCallback;",
            ")",
            "Lrx/Subscription;"
        }
    .end annotation
.end method

.method public final Code(Lrx/Observable;Lcn/bmob/v3/listener/QueryListener;)Lrx/Subscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/bmob/v3/listener/QueryListener",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcn/bmob/v3/http/a/From$1;

    invoke-direct {v0, p0, p2}, Lcn/bmob/v3/http/a/From$1;-><init>(Lcn/bmob/v3/http/a/From;Lcn/bmob/v3/listener/QueryListener;)V

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public final Code(Ljava/lang/Class;Ljava/lang/String;Lcn/bmob/v3/listener/BmobCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/listener/BmobCallback;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 240
    if-nez p3, :cond_0

    .line 241
    const-string v0, "bmob"

    const-string v1, " listener is null "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcn/bmob/v3/http/a/From;->V()Lcn/bmob/v3/BmobQuery$CachePolicy;

    move-result-object v0

    sget-object v2, Lcn/bmob/v3/BmobQuery$CachePolicy;->CACHE_ONLY:Lcn/bmob/v3/BmobQuery$CachePolicy;

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lcn/bmob/v3/http/a/From;->V()Lcn/bmob/v3/BmobQuery$CachePolicy;

    move-result-object v0

    sget-object v2, Lcn/bmob/v3/BmobQuery$CachePolicy;->NETWORK_ELSE_CACHE:Lcn/bmob/v3/BmobQuery$CachePolicy;

    if-ne v0, v2, :cond_2

    .line 245
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    new-instance v0, Lcn/bmob/v3/exception/BmobException;

    const/16 v1, 0x2331

    const-string v2, "No cache data."

    invoke-direct {v0, v1, v2}, Lcn/bmob/v3/exception/BmobException;-><init>(ILjava/lang/String;)V

    invoke-static {v0, p3}, Lcn/bmob/v3/http/a/From;->Code(Ljava/lang/Throwable;Lcn/bmob/v3/listener/BmobCallback;)V

    goto :goto_0

    .line 250
    :cond_2
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    .line 251
    instance-of v0, p3, Lcn/bmob/v3/listener/QueryListener;

    if-eqz v0, :cond_3

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getObject data\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/v3/b/This;->V(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v3, p2, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 254
    check-cast p3, Lcn/bmob/v3/listener/QueryListener;

    invoke-virtual {p3, v0, v7}, Lcn/bmob/v3/listener/QueryListener;->done(Ljava/lang/Object;Lcn/bmob/v3/exception/BmobException;)V

    goto :goto_0

    .line 255
    :cond_3
    instance-of v0, p3, Lcn/bmob/v3/listener/FindListener;

    if-eqz v0, :cond_5

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "query datas\uff1a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/v3/b/This;->V(Ljava/lang/String;)V

    .line 257
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 258
    const-class v0, Ljava/util/List;

    invoke-virtual {v3, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 259
    if-eqz v0, :cond_4

    .line 260
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 261
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 262
    invoke-virtual {v3, v4, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 263
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 266
    :cond_4
    check-cast p3, Lcn/bmob/v3/listener/FindListener;

    invoke-virtual {p3, v2, v7}, Lcn/bmob/v3/listener/FindListener;->done(Ljava/util/List;Lcn/bmob/v3/exception/BmobException;)V

    goto/16 :goto_0

    .line 267
    :cond_5
    instance-of v0, p3, Lcn/bmob/v3/listener/SQLQueryListener;

    if-eqz v0, :cond_8

    .line 268
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 271
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 272
    const-string v0, "results"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 273
    const-string v0, "results"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v2, Ljava/util/List;

    invoke-virtual {v3, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 275
    if-eqz v0, :cond_6

    move v2, v1

    .line 276
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_6

    .line 277
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 278
    invoke-virtual {v3, v6, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .line 279
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 283
    :cond_6
    const-string v0, "count"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 284
    const-string v0, "count"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 289
    :cond_7
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "query sql datas\uff1a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/v3/b/This;->V(Ljava/lang/String;)V

    .line 290
    check-cast p3, Lcn/bmob/v3/listener/SQLQueryListener;

    new-instance v0, Lcn/bmob/v3/datatype/BmobQueryResult;

    invoke-direct {v0, v4, v1}, Lcn/bmob/v3/datatype/BmobQueryResult;-><init>(Ljava/util/List;I)V

    invoke-virtual {p3, v0, v7}, Lcn/bmob/v3/listener/SQLQueryListener;->done(Lcn/bmob/v3/datatype/BmobQueryResult;Lcn/bmob/v3/exception/BmobException;)V

    goto/16 :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 292
    :cond_8
    const-string v0, "bmob"

    const-string v1, " onNextListener does not support this listener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public abstract Code()Z
.end method

.method public abstract V()Lcn/bmob/v3/BmobQuery$CachePolicy;
.end method
