.class public Lcn/bmob/v3/datatype/a/The;
.super Ljava/lang/Object;
.source "UploadManager.java"


# static fields
.field private static volatile Code:Lcn/bmob/v3/datatype/a/The;


# instance fields
.field private I:Lcn/bmob/v3/a/b/This;

.field private V:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget v0, Lcn/bmob/v3/datatype/a/acknowledge;->Code:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/datatype/a/The;->V:Ljava/util/concurrent/ExecutorService;

    .line 23
    new-instance v0, Lcn/bmob/v3/a/b/This;

    invoke-direct {v0}, Lcn/bmob/v3/a/b/This;-><init>()V

    iput-object v0, p0, Lcn/bmob/v3/datatype/a/The;->I:Lcn/bmob/v3/a/b/This;

    .line 24
    return-void
.end method

.method public static Code()Lcn/bmob/v3/datatype/a/The;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcn/bmob/v3/datatype/a/The;->Code:Lcn/bmob/v3/datatype/a/The;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Lcn/bmob/v3/datatype/a/The;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcn/bmob/v3/datatype/a/The;->Code:Lcn/bmob/v3/datatype/a/The;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcn/bmob/v3/datatype/a/The;

    invoke-direct {v0}, Lcn/bmob/v3/datatype/a/The;-><init>()V

    sput-object v0, Lcn/bmob/v3/datatype/a/The;->Code:Lcn/bmob/v3/datatype/a/The;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lcn/bmob/v3/datatype/a/The;->Code:Lcn/bmob/v3/datatype/a/The;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final Code(Ljava/io/File;Ljava/util/Map;Lcn/bmob/v3/datatype/a/darkness;Lcn/bmob/v3/datatype/a/I;Lcn/bmob/v3/datatype/a/mine;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcn/bmob/v3/datatype/a/darkness;",
            "Lcn/bmob/v3/datatype/a/I;",
            "Lcn/bmob/v3/datatype/a/mine;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 58
    .line 1062
    if-nez p1, :cond_0

    .line 1063
    const-string v0, "\u6587\u4ef6\u4e0d\u53ef\u4ee5\u4e3a\u7a7a"

    invoke-interface {p4, v1, v0}, Lcn/bmob/v3/datatype/a/I;->Code(ZLjava/lang/String;)V

    .line 1070
    :goto_0
    return-void

    .line 1065
    :cond_0
    if-nez p2, :cond_1

    .line 1066
    const-string v0, "\u53c2\u6570\u4e0d\u53ef\u4e3a\u7a7a"

    invoke-interface {p4, v1, v0}, Lcn/bmob/v3/datatype/a/I;->Code(ZLjava/lang/String;)V

    goto :goto_0

    .line 1068
    :cond_1
    if-nez p3, :cond_2

    .line 1069
    const-string v0, "APIkey\u548csignatureListener\u4e0d\u53ef\u540c\u65f6\u4e3anull"

    invoke-interface {p4, v1, v0}, Lcn/bmob/v3/datatype/a/I;->Code(ZLjava/lang/String;)V

    goto :goto_0

    .line 1071
    :cond_2
    if-nez p4, :cond_3

    .line 1072
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "completeListener \u4e0d\u53ef\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1075
    :cond_3
    const-string v0, "bucket"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1076
    const-string v0, "bucket"

    invoke-interface {p2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    :cond_4
    const-string v0, "expiration"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1080
    invoke-static {}, Lcn/bmob/v3/Bmob;->getFileExpiration()J

    move-result-wide v0

    .line 1082
    const-string v2, "expiration"

    invoke-static {}, Lcn/bmob/v3/http/I;->I()J

    move-result-wide v6

    add-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    :cond_5
    new-instance v7, Lcn/bmob/v3/datatype/a/The$1;

    invoke-direct {v7, p0, p5}, Lcn/bmob/v3/datatype/a/The$1;-><init>(Lcn/bmob/v3/datatype/a/The;Lcn/bmob/v3/datatype/a/mine;)V

    .line 1099
    new-instance v6, Lcn/bmob/v3/datatype/a/The$2;

    invoke-direct {v6, p0, p4}, Lcn/bmob/v3/datatype/a/The$2;-><init>(Lcn/bmob/v3/datatype/a/The;Lcn/bmob/v3/datatype/a/I;)V

    .line 1111
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1112
    invoke-interface {v3, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1119
    new-instance v0, Lcn/bmob/v3/datatype/a/thing;

    iget-object v1, p0, Lcn/bmob/v3/datatype/a/The;->I:Lcn/bmob/v3/a/b/This;

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcn/bmob/v3/datatype/a/thing;-><init>(Lcn/bmob/v3/a/b/This;Ljava/io/File;Ljava/util/Map;Ljava/lang/String;Lcn/bmob/v3/datatype/a/darkness;Lcn/bmob/v3/datatype/a/I;Lcn/bmob/v3/datatype/a/mine;)V

    .line 1122
    iget-object v1, p0, Lcn/bmob/v3/datatype/a/The;->V:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
