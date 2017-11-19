.class public abstract Lrx/internal/util/ObjectPool;
.super Ljava/lang/Object;
.source "ObjectPool.java"

# interfaces
.implements Lrx/internal/schedulers/SchedulerLifecycle;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/internal/schedulers/SchedulerLifecycle;"
    }
.end annotation


# instance fields
.field final maxSize:I

.field final minSize:I

.field private final periodicTask:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field

.field pool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final validationInterval:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, "this":Lrx/internal/util/ObjectPool;, "Lrx/internal/util/ObjectPool<TT;>;"
    const/4 v2, 0x0

    .line 36
    const-wide/16 v0, 0x43

    invoke-direct {p0, v2, v2, v0, v1}, Lrx/internal/util/ObjectPool;-><init>(IIJ)V

    .line 37
    return-void
.end method

.method private constructor <init>(IIJ)V
    .locals 1
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "validationInterval"    # J

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/util/ObjectPool;, "Lrx/internal/util/ObjectPool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lrx/internal/util/ObjectPool;->minSize:I

    .line 53
    iput p2, p0, Lrx/internal/util/ObjectPool;->maxSize:I

    .line 54
    iput-wide p3, p0, Lrx/internal/util/ObjectPool;->validationInterval:J

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/util/ObjectPool;->periodicTask:Ljava/util/concurrent/atomic/AtomicReference;

    .line 57
    invoke-direct {p0, p1}, Lrx/internal/util/ObjectPool;->initialize(I)V

    .line 59
    invoke-virtual {p0}, Lrx/internal/util/ObjectPool;->start()V

    .line 60
    return-void
.end method

.method private initialize(I)V
    .locals 4
    .param p1, "min"    # I

    .prologue
    .line 152
    .local p0, "this":Lrx/internal/util/ObjectPool;, "Lrx/internal/util/ObjectPool<TT;>;"
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    new-instance v1, Lrx/internal/util/unsafe/MpmcArrayQueue;

    iget v2, p0, Lrx/internal/util/ObjectPool;->maxSize:I

    const/16 v3, 0x400

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v1, v2}, Lrx/internal/util/unsafe/MpmcArrayQueue;-><init>(I)V

    iput-object v1, p0, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    .line 158
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 159
    iget-object v1, p0, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    invoke-virtual {p0}, Lrx/internal/util/ObjectPool;->createObject()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 155
    .end local v0    # "i":I
    :cond_0
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    goto :goto_0

    .line 161
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public borrowObject()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lrx/internal/util/ObjectPool;, "Lrx/internal/util/ObjectPool<TT;>;"
    iget-object v1, p0, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, "object":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lrx/internal/util/ObjectPool;->createObject()Ljava/lang/Object;

    move-result-object v0

    .line 74
    :cond_0
    return-object v0
.end method

.method protected abstract createObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public returnObject(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lrx/internal/util/ObjectPool;, "Lrx/internal/util/ObjectPool<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 96
    .local p0, "this":Lrx/internal/util/ObjectPool;, "Lrx/internal/util/ObjectPool<TT;>;"
    iget-object v1, p0, Lrx/internal/util/ObjectPool;->periodicTask:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 97
    .local v0, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz v0, :cond_0

    .line 98
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 100
    :cond_0
    return-void
.end method

.method public start()V
    .locals 9

    .prologue
    .line 105
    .local p0, "this":Lrx/internal/util/ObjectPool;, "Lrx/internal/util/ObjectPool<TT;>;"
    :goto_0
    iget-object v1, p0, Lrx/internal/util/ObjectPool;->periodicTask:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 142
    :cond_0
    :goto_1
    return-void

    .line 108
    :cond_1
    invoke-static {}, Lrx/internal/schedulers/GenericScheduledExecutorService;->getInstance()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 112
    .local v0, "w":Ljava/util/concurrent/ScheduledExecutorService;
    :try_start_0
    new-instance v1, Lrx/internal/util/ObjectPool$1;

    invoke-direct {v1, p0}, Lrx/internal/util/ObjectPool$1;-><init>(Lrx/internal/util/ObjectPool;)V

    iget-wide v2, p0, Lrx/internal/util/ObjectPool;->validationInterval:J

    iget-wide v4, p0, Lrx/internal/util/ObjectPool;->validationInterval:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 136
    .local v8, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-object v1, p0, Lrx/internal/util/ObjectPool;->periodicTask:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v8}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 132
    .end local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :catch_0
    move-exception v7

    .line 133
    .local v7, "ex":Ljava/util/concurrent/RejectedExecutionException;
    invoke-static {v7}, Lrx/internal/util/RxJavaPluginUtils;->handleException(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
