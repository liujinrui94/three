.class public final Lcn/bmob/v3/http/This;
.super Ljava/lang/Object;
.source "BmobClient.java"


# static fields
.field private static B:[B

.field public static final Code:Lokhttp3/MediaType;

.field private static I:Z

.field private static final S:Lrx/Observable$Transformer;

.field public static V:I

.field private static volatile Z:Lcn/bmob/v3/http/This;


# instance fields
.field private C:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    const-string v0, "application/json; charset=UTF-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcn/bmob/v3/http/This;->Code:Lokhttp3/MediaType;

    .line 53
    sput-boolean v1, Lcn/bmob/v3/http/This;->I:Z

    .line 55
    sput v1, Lcn/bmob/v3/http/This;->V:I

    .line 58
    new-array v0, v1, [B

    sput-object v0, Lcn/bmob/v3/http/This;->B:[B

    .line 162
    new-instance v0, Lcn/bmob/v3/http/This$3;

    invoke-direct {v0}, Lcn/bmob/v3/http/This$3;-><init>()V

    sput-object v0, Lcn/bmob/v3/http/This;->S:Lrx/Observable$Transformer;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Lcn/bmob/v3/Bmob;->getConnectTimeout()J

    move-result-wide v0

    .line 63
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget v1, Lcn/bmob/v3/datatype/a/acknowledge;->V:I

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget v1, Lcn/bmob/v3/datatype/a/acknowledge;->I:I

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/http/b/thing;

    invoke-direct {v1}, Lcn/bmob/v3/http/b/thing;-><init>()V

    sget v2, Lcn/bmob/v3/http/b/thing$This;->Code:I

    invoke-virtual {v1, v2}, Lcn/bmob/v3/http/b/thing;->Code(I)Lcn/bmob/v3/http/b/thing;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/http/b/This;

    invoke-direct {v1}, Lcn/bmob/v3/http/b/This;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/http/b/of;

    invoke-direct {v1}, Lcn/bmob/v3/http/b/of;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/http/This;->C:Lokhttp3/OkHttpClient;

    .line 79
    return-void
.end method

.method public static Code()Lcn/bmob/v3/http/This;
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lcn/bmob/v3/http/This;->Z:Lcn/bmob/v3/http/This;

    if-nez v0, :cond_1

    .line 87
    sget-object v1, Lcn/bmob/v3/http/This;->B:[B

    monitor-enter v1

    .line 88
    :try_start_0
    sget-object v0, Lcn/bmob/v3/http/This;->Z:Lcn/bmob/v3/http/This;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcn/bmob/v3/http/This;

    invoke-direct {v0}, Lcn/bmob/v3/http/This;-><init>()V

    sput-object v0, Lcn/bmob/v3/http/This;->Z:Lcn/bmob/v3/http/This;

    .line 90
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_1
    sget-object v0, Lcn/bmob/v3/http/This;->Z:Lcn/bmob/v3/http/This;

    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static Code(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 387
    .line 389
    :try_start_0
    const-string v0, "sessionToken"

    new-instance v1, Lcn/bmob/v3/b/The;

    invoke-direct {v1}, Lcn/bmob/v3/b/The;-><init>()V

    const-string v2, "sessionToken"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcn/bmob/v3/b/The;->V(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 391
    const-string v0, "appSign"

    invoke-static {p0}, Lcn/bmob/v3/http/I;->Code(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 392
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 393
    const-string v1, "caller"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 395
    const-string v2, "version"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    const-string v2, "package"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 397
    const-string v2, "uuid"

    invoke-static {p0}, Lcn/bmob/v3/http/I;->I(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 398
    const-string v2, "ex"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 399
    const-string v1, "client"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 400
    const-string v0, "v"

    const-string v1, "v3.5.0"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_0
    return-object p1

    .line 401
    :catch_0
    move-exception v0

    .line 402
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static Code(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 349
    :try_start_0
    const-string v0, "http://open.bmob.cn/8/secret"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    const-string v0, "appKey"

    invoke-static {}, Lcn/bmob/v3/http/I;->V()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 353
    :cond_0
    const-string v0, "http://open.bmob.cn/8/update"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://open.bmob.cn/8/delete"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://open.bmob.cn/8/find"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://open.bmob.cn/8/push"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://open.bmob.cn/8/update_user_password"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    :cond_1
    const-string v0, "sessionToken"

    new-instance v1, Lcn/bmob/v3/b/The;

    invoke-direct {v1}, Lcn/bmob/v3/b/The;-><init>()V

    const-string v2, "sessionToken"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcn/bmob/v3/b/The;->V(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    :cond_2
    const-string v0, "appSign"

    invoke-static {p0}, Lcn/bmob/v3/http/I;->Code(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 361
    const-string v1, "caller"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 362
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 363
    const-string v2, "version"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 364
    const-string v2, "package"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 365
    const-string v2, "uuid"

    invoke-static {p0}, Lcn/bmob/v3/http/I;->I(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 366
    const-string v2, "ex"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    const-string v1, "client"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    const-string v0, "v"

    const-string v1, "v3.5.0"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    const-string v0, "http://open.bmob.cn/8/secret"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "http://open.bmob.cn/8/init"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 371
    invoke-static {}, Lcn/bmob/v3/http/I;->I()J

    move-result-wide v0

    .line 372
    const-string v2, "timestamp"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :cond_3
    :goto_0
    return-object p1

    .line 374
    :catch_0
    move-exception v0

    .line 375
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic Code(Lcn/bmob/v3/http/This;)Lrx/Observable;
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcn/bmob/v3/http/This;->Z()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic Code(Lcn/bmob/v3/http/This;Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcn/bmob/v3/http/This;->I(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private Code(Ljava/lang/Class;Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 262
    new-instance v0, Lcn/bmob/v3/http/This$5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1, p1}, Lcn/bmob/v3/http/This$5;-><init>(Lcn/bmob/v3/http/This;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic Code(Lcn/bmob/v3/http/This;Lcn/bmob/v3/http/bean/Init;)V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v0, 0x0

    .line 49
    .line 2185
    new-instance v1, Lcn/bmob/v3/b/The;

    invoke-direct {v1}, Lcn/bmob/v3/b/The;-><init>()V

    .line 2186
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "api"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-string v4, "file"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "io"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "push"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "upyunVer"

    aput-object v4, v2, v3

    .line 3123
    :goto_0
    if-ge v0, v5, :cond_0

    .line 3124
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Lcn/bmob/v3/b/The;->Code(Ljava/lang/String;)V

    .line 3123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2187
    :cond_0
    const-string v0, "api"

    invoke-virtual {p1}, Lcn/bmob/v3/http/bean/Init;->getApi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/bmob/v3/b/The;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    const-string v0, "file"

    invoke-virtual {p1}, Lcn/bmob/v3/http/bean/Init;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/bmob/v3/b/The;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    const-string v0, "push"

    invoke-virtual {p1}, Lcn/bmob/v3/http/bean/Init;->getPush()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/bmob/v3/b/The;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    const-string v0, "io"

    invoke-virtual {p1}, Lcn/bmob/v3/http/bean/Init;->getIo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/bmob/v3/b/The;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 2191
    invoke-virtual {p1}, Lcn/bmob/v3/http/bean/Init;->getUpyunVer()I

    move-result v0

    sput v0, Lcn/bmob/v3/http/This;->V:I

    .line 2192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 2193
    invoke-virtual {p1}, Lcn/bmob/v3/http/bean/Init;->getTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 2195
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/v3/helper/BmobNative;->saveInterval(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method static synthetic Code(Z)Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lcn/bmob/v3/http/This;->I:Z

    return v0
.end method

.method private declared-synchronized I()Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcn/bmob/v3/http/bean/Sk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    const-class v0, Lcn/bmob/v3/http/bean/Sk;

    const-string v1, "http://open.bmob.cn/8/secret"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcn/bmob/v3/http/This;->Code(Ljava/lang/Class;Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private I(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Lcn/bmob/v3/http/This$4;

    invoke-direct {v0, p0, p1, p2}, Lcn/bmob/v3/http/This$4;-><init>(Lcn/bmob/v3/http/This;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic V(Lcn/bmob/v3/http/This;)Lokhttp3/OkHttpClient;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcn/bmob/v3/http/This;->C:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public static V(Ljava/lang/String;Lorg/json/JSONObject;)Lokhttp3/Request;
    .locals 5

    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "url\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/v3/b/This;->V(Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lcn/bmob/v3/Bmob;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/v3/helper/RequestHelper;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-static {}, Lcn/bmob/v3/Bmob;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-static {v0, p1, p0}, Lcn/bmob/v3/http/This;->Code(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/bmob/v3/b/This;->I(Ljava/lang/String;)V

    .line 314
    const-string v2, "http://open.bmob.cn/8/secret"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 315
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/bmob/v3/http/I;->Code(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    :goto_0
    sget-object v2, Lcn/bmob/v3/http/This;->Code:Lokhttp3/MediaType;

    invoke-static {v2, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 323
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    const-string v3, "Content-Type"

    const-string v4, "text/plain; charset=utf-8"

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    const-string v3, "Accept-Encoding"

    const-string v4, "gzip,deflate,sdch"

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    const-string v3, "User-Agent"

    invoke-virtual {v2, v3, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 331
    const-string v1, "http://open.bmob.cn/8/secret"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 332
    const-string v1, "Accept-Id"

    invoke-static {}, Lcn/bmob/v3/http/I;->Code()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 334
    :cond_1
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 336
    return-object v0

    .line 317
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/v3/http/I;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static V()Lrx/Observable$Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/Observable$Transformer",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 176
    sget-object v0, Lcn/bmob/v3/http/This;->S:Lrx/Observable$Transformer;

    return-object v0
.end method

.method private declared-synchronized Z()Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcn/bmob/v3/http/bean/Init;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    const-class v0, Lcn/bmob/v3/http/bean/Init;

    const-string v1, "http://open.bmob.cn/8/init"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcn/bmob/v3/http/This;->Code(Ljava/lang/Class;Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final Code(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    sget-object v1, Lcn/bmob/v3/http/This;->B:[B

    monitor-enter v1

    .line 127
    :try_start_0
    invoke-static {}, Lcn/bmob/v3/helper/BmobNative;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcn/bmob/v3/http/This;->I:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0, p1, p2}, Lcn/bmob/v3/http/This;->I(Ljava/lang/String;Lorg/json/JSONObject;)Lrx/Observable;

    move-result-object v0

    .line 1176
    sget-object v2, Lcn/bmob/v3/http/This;->S:Lrx/Observable$Transformer;

    .line 128
    invoke-virtual {v0, v2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object v0

    monitor-exit v1

    .line 131
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcn/bmob/v3/http/This;->I()Lrx/Observable;

    move-result-object v0

    new-instance v2, Lcn/bmob/v3/http/This$2;

    invoke-direct {v2, p0}, Lcn/bmob/v3/http/This$2;-><init>(Lcn/bmob/v3/http/This;)V

    invoke-virtual {v0, v2}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v2, Lcn/bmob/v3/http/This$1;

    invoke-direct {v2, p0, p1, p2}, Lcn/bmob/v3/http/This$1;-><init>(Lcn/bmob/v3/http/This;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v2}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 2176
    sget-object v2, Lcn/bmob/v3/http/This;->S:Lrx/Observable$Transformer;

    .line 131
    invoke-virtual {v0, v2}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
