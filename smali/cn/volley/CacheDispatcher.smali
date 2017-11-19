.class public Lcn/volley/CacheDispatcher;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final aL:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcn/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final aM:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcn/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final aN:Lcn/volley/Cache;

.field private final aO:Lcn/volley/ResponseDelivery;

.field private volatile aP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcn/volley/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lcn/volley/CacheDispatcher;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcn/volley/Cache;Lcn/volley/ResponseDelivery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcn/volley/Request",
            "<*>;>;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcn/volley/Request",
            "<*>;>;",
            "Lcn/volley/Cache;",
            "Lcn/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/volley/CacheDispatcher;->aP:Z

    .line 63
    iput-object p1, p0, Lcn/volley/CacheDispatcher;->aL:Ljava/util/concurrent/BlockingQueue;

    .line 64
    iput-object p2, p0, Lcn/volley/CacheDispatcher;->aM:Ljava/util/concurrent/BlockingQueue;

    .line 65
    iput-object p3, p0, Lcn/volley/CacheDispatcher;->aN:Lcn/volley/Cache;

    .line 66
    iput-object p4, p0, Lcn/volley/CacheDispatcher;->aO:Lcn/volley/ResponseDelivery;

    .line 67
    return-void
.end method

.method static synthetic Code(Lcn/volley/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcn/volley/CacheDispatcher;->aM:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public final quit()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/volley/CacheDispatcher;->aP:Z

    .line 75
    invoke-virtual {p0}, Lcn/volley/CacheDispatcher;->interrupt()V

    .line 76
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 80
    sget-boolean v0, Lcn/volley/CacheDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "start new dispatcher"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcn/volley/VolleyLog;->Code(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 84
    iget-object v0, p0, Lcn/volley/CacheDispatcher;->aN:Lcn/volley/Cache;

    invoke-interface {v0}, Lcn/volley/Cache;->initialize()V

    .line 90
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcn/volley/CacheDispatcher;->aL:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/volley/Request;

    .line 91
    const-string v1, "cache-queue-take"

    invoke-virtual {v0, v1}, Lcn/volley/Request;->F(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Lcn/volley/Request;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    const-string v1, "cache-discard-canceled"

    invoke-virtual {v0, v1}, Lcn/volley/Request;->D(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lcn/volley/CacheDispatcher;->aP:Z

    if-eqz v0, :cond_1

    .line 152
    return-void

    .line 100
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcn/volley/CacheDispatcher;->aN:Lcn/volley/Cache;

    invoke-virtual {v0}, Lcn/volley/Request;->q()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcn/volley/Cache;->S(Ljava/lang/String;)Lcn/volley/Cache$Entry;

    move-result-object v4

    .line 101
    if-nez v4, :cond_3

    .line 102
    const-string v1, "cache-miss"

    invoke-virtual {v0, v1}, Lcn/volley/Request;->F(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcn/volley/CacheDispatcher;->aM:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    .line 1088
    :cond_3
    iget-wide v6, v4, Lcn/volley/Cache$Entry;->aI:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-gez v1, :cond_4

    move v1, v2

    .line 109
    :goto_1
    if-eqz v1, :cond_5

    .line 110
    const-string v1, "cache-hit-expired"

    invoke-virtual {v0, v1}, Lcn/volley/Request;->F(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, v4}, Lcn/volley/Request;->Code(Lcn/volley/Cache$Entry;)Lcn/volley/Request;

    .line 112
    iget-object v1, p0, Lcn/volley/CacheDispatcher;->aM:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    move v1, v3

    .line 1088
    goto :goto_1

    .line 117
    :cond_5
    const-string v1, "cache-hit"

    invoke-virtual {v0, v1}, Lcn/volley/Request;->F(Ljava/lang/String;)V

    .line 119
    new-instance v1, Lcn/volley/NetworkResponse;

    iget-object v5, v4, Lcn/volley/Cache$Entry;->data:[B

    iget-object v6, v4, Lcn/volley/Cache$Entry;->aK:Ljava/util/Map;

    invoke-direct {v1, v5, v6}, Lcn/volley/NetworkResponse;-><init>([BLjava/util/Map;)V

    .line 118
    invoke-virtual {v0, v1}, Lcn/volley/Request;->Code(Lcn/volley/NetworkResponse;)Lcn/volley/Response;

    move-result-object v5

    .line 120
    const-string v1, "cache-hit-parsed"

    invoke-virtual {v0, v1}, Lcn/volley/Request;->F(Ljava/lang/String;)V

    .line 1093
    iget-wide v6, v4, Lcn/volley/Cache$Entry;->aJ:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-gez v1, :cond_6

    move v1, v2

    .line 122
    :goto_2
    if-nez v1, :cond_7

    .line 124
    iget-object v1, p0, Lcn/volley/CacheDispatcher;->aO:Lcn/volley/ResponseDelivery;

    invoke-interface {v1, v0, v5}, Lcn/volley/ResponseDelivery;->Code(Lcn/volley/Request;Lcn/volley/Response;)V

    goto :goto_0

    :cond_6
    move v1, v3

    .line 1093
    goto :goto_2

    .line 129
    :cond_7
    const-string v1, "cache-hit-refresh-needed"

    invoke-virtual {v0, v1}, Lcn/volley/Request;->F(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0, v4}, Lcn/volley/Request;->Code(Lcn/volley/Cache$Entry;)Lcn/volley/Request;

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, v5, Lcn/volley/Response;->bE:Z

    .line 137
    iget-object v1, p0, Lcn/volley/CacheDispatcher;->aO:Lcn/volley/ResponseDelivery;

    new-instance v4, Lcn/volley/CacheDispatcher$1;

    invoke-direct {v4, p0, v0}, Lcn/volley/CacheDispatcher$1;-><init>(Lcn/volley/CacheDispatcher;Lcn/volley/Request;)V

    invoke-interface {v1, v0, v5, v4}, Lcn/volley/ResponseDelivery;->Code(Lcn/volley/Request;Lcn/volley/Response;Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
