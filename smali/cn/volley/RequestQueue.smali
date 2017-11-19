.class public Lcn/volley/RequestQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_NETWORK_THREAD_POOL_SIZE:I = 0x4


# instance fields
.field private final aN:Lcn/volley/Cache;

.field private final aO:Lcn/volley/ResponseDelivery;

.field private bA:[Lcn/volley/NetworkDispatcher;

.field private bB:Lcn/volley/CacheDispatcher;

.field private final bc:Lcn/volley/Network;

.field private bv:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final bw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Queue",
            "<",
            "Lcn/volley/Request",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final bx:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcn/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final by:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcn/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final bz:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcn/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/volley/Cache;Lcn/volley/Network;)V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcn/volley/RequestQueue;-><init>(Lcn/volley/Cache;Lcn/volley/Network;I)V

    .line 125
    return-void
.end method

.method private constructor <init>(Lcn/volley/Cache;Lcn/volley/Network;I)V
    .locals 4

    .prologue
    .line 113
    const/4 v0, 0x4

    .line 114
    new-instance v1, Lcn/volley/ExecutorDelivery;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Lcn/volley/ExecutorDelivery;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcn/volley/RequestQueue;-><init>(Lcn/volley/Cache;Lcn/volley/Network;ILcn/volley/ResponseDelivery;)V

    .line 115
    return-void
.end method

.method private constructor <init>(Lcn/volley/Cache;Lcn/volley/Network;ILcn/volley/ResponseDelivery;)V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcn/volley/RequestQueue;->bv:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/volley/RequestQueue;->bw:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/volley/RequestQueue;->bx:Ljava/util/Set;

    .line 65
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcn/volley/RequestQueue;->by:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 69
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcn/volley/RequestQueue;->bz:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 99
    iput-object p1, p0, Lcn/volley/RequestQueue;->aN:Lcn/volley/Cache;

    .line 100
    iput-object p2, p0, Lcn/volley/RequestQueue;->bc:Lcn/volley/Network;

    .line 101
    new-array v0, p3, [Lcn/volley/NetworkDispatcher;

    iput-object v0, p0, Lcn/volley/RequestQueue;->bA:[Lcn/volley/NetworkDispatcher;

    .line 102
    iput-object p4, p0, Lcn/volley/RequestQueue;->aO:Lcn/volley/ResponseDelivery;

    .line 103
    return-void
.end method


# virtual methods
.method public final I(Lcn/volley/Request;)Lcn/volley/Request;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/volley/Request",
            "<TT;>;)",
            "Lcn/volley/Request",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p1, p0}, Lcn/volley/Request;->Code(Lcn/volley/RequestQueue;)Lcn/volley/Request;

    .line 219
    iget-object v1, p0, Lcn/volley/RequestQueue;->bx:Ljava/util/Set;

    monitor-enter v1

    .line 220
    :try_start_0
    iget-object v0, p0, Lcn/volley/RequestQueue;->bx:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1163
    iget-object v0, p0, Lcn/volley/RequestQueue;->bv:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 224
    invoke-virtual {p1, v0}, Lcn/volley/Request;->V(I)Lcn/volley/Request;

    .line 225
    const-string v0, "add-to-queue"

    invoke-virtual {p1, v0}, Lcn/volley/Request;->F(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p1}, Lcn/volley/Request;->w()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcn/volley/RequestQueue;->bz:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 253
    :goto_0
    return-object p1

    .line 219
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 234
    :cond_0
    iget-object v1, p0, Lcn/volley/RequestQueue;->bw:Ljava/util/Map;

    monitor-enter v1

    .line 235
    :try_start_2
    invoke-virtual {p1}, Lcn/volley/Request;->q()Ljava/lang/String;

    move-result-object v2

    .line 236
    iget-object v0, p0, Lcn/volley/RequestQueue;->bw:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    iget-object v0, p0, Lcn/volley/RequestQueue;->bw:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 239
    if-nez v0, :cond_1

    .line 240
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 242
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v3, p0, Lcn/volley/RequestQueue;->bw:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-boolean v0, Lcn/volley/VolleyLog;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 245
    const-string v0, "Request for cacheKey=%s is in flight, putting on hold."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Lcn/volley/VolleyLog;->Code(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 234
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 250
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcn/volley/RequestQueue;->bw:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lcn/volley/RequestQueue;->by:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method

.method final Z(Lcn/volley/Request;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v1, p0, Lcn/volley/RequestQueue;->bx:Ljava/util/Set;

    monitor-enter v1

    .line 267
    :try_start_0
    iget-object v0, p0, Lcn/volley/RequestQueue;->bx:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 266
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    invoke-virtual {p1}, Lcn/volley/Request;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    iget-object v1, p0, Lcn/volley/RequestQueue;->bw:Ljava/util/Map;

    monitor-enter v1

    .line 272
    :try_start_1
    invoke-virtual {p1}, Lcn/volley/Request;->q()Ljava/lang/String;

    move-result-object v2

    .line 273
    iget-object v0, p0, Lcn/volley/RequestQueue;->bw:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 274
    if-eqz v0, :cond_1

    .line 275
    sget-boolean v3, Lcn/volley/VolleyLog;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 276
    const-string v3, "Releasing %d waiting requests for cacheKey=%s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 277
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 276
    invoke-static {v3, v4}, Lcn/volley/VolleyLog;->Code(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    :cond_0
    iget-object v2, p0, Lcn/volley/RequestQueue;->by:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z

    .line 271
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 285
    :cond_2
    return-void

    .line 266
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 271
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final start()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 131
    .line 1149
    iget-object v0, p0, Lcn/volley/RequestQueue;->bB:Lcn/volley/CacheDispatcher;

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcn/volley/RequestQueue;->bB:Lcn/volley/CacheDispatcher;

    invoke-virtual {v0}, Lcn/volley/CacheDispatcher;->quit()V

    :cond_0
    move v0, v1

    .line 1152
    :goto_0
    iget-object v2, p0, Lcn/volley/RequestQueue;->bA:[Lcn/volley/NetworkDispatcher;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 133
    new-instance v0, Lcn/volley/CacheDispatcher;

    iget-object v2, p0, Lcn/volley/RequestQueue;->by:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcn/volley/RequestQueue;->bz:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Lcn/volley/RequestQueue;->aN:Lcn/volley/Cache;

    iget-object v5, p0, Lcn/volley/RequestQueue;->aO:Lcn/volley/ResponseDelivery;

    invoke-direct {v0, v2, v3, v4, v5}, Lcn/volley/CacheDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcn/volley/Cache;Lcn/volley/ResponseDelivery;)V

    iput-object v0, p0, Lcn/volley/RequestQueue;->bB:Lcn/volley/CacheDispatcher;

    .line 134
    iget-object v0, p0, Lcn/volley/RequestQueue;->bB:Lcn/volley/CacheDispatcher;

    invoke-virtual {v0}, Lcn/volley/CacheDispatcher;->start()V

    .line 137
    :goto_1
    iget-object v0, p0, Lcn/volley/RequestQueue;->bA:[Lcn/volley/NetworkDispatcher;

    array-length v0, v0

    if-lt v1, v0, :cond_3

    .line 143
    return-void

    .line 1153
    :cond_1
    iget-object v2, p0, Lcn/volley/RequestQueue;->bA:[Lcn/volley/NetworkDispatcher;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 1154
    iget-object v2, p0, Lcn/volley/RequestQueue;->bA:[Lcn/volley/NetworkDispatcher;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcn/volley/NetworkDispatcher;->quit()V

    .line 1152
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_3
    new-instance v0, Lcn/volley/NetworkDispatcher;

    iget-object v2, p0, Lcn/volley/RequestQueue;->bz:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcn/volley/RequestQueue;->bc:Lcn/volley/Network;

    .line 139
    iget-object v4, p0, Lcn/volley/RequestQueue;->aN:Lcn/volley/Cache;

    iget-object v5, p0, Lcn/volley/RequestQueue;->aO:Lcn/volley/ResponseDelivery;

    .line 138
    invoke-direct {v0, v2, v3, v4, v5}, Lcn/volley/NetworkDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Lcn/volley/Network;Lcn/volley/Cache;Lcn/volley/ResponseDelivery;)V

    .line 140
    iget-object v2, p0, Lcn/volley/RequestQueue;->bA:[Lcn/volley/NetworkDispatcher;

    aput-object v0, v2, v1

    .line 141
    invoke-virtual {v0}, Lcn/volley/NetworkDispatcher;->start()V

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
