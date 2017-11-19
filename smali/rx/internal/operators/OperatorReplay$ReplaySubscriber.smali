.class final Lrx/internal/operators/OperatorReplay$ReplaySubscriber;
.super Lrx/Subscriber;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplaySubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lrx/internal/operators/OperatorReplay$InnerProducer;

.field static final TERMINATED:[Lrx/internal/operators/OperatorReplay$InnerProducer;


# instance fields
.field final buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorReplay$ReplayBuffer",
            "<TT;>;"
        }
    .end annotation
.end field

.field coordinateAll:Z

.field coordinationQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field done:Z

.field emitting:Z

.field maxChildRequested:J

.field maxUpstreamRequested:J

.field missed:Z

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile producer:Lrx/Producer;

.field final producers:Lrx/internal/util/OpenHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/OpenHashSet",
            "<",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field producersCache:[Lrx/internal/operators/OperatorReplay$InnerProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;"
        }
    .end annotation
.end field

.field producersCacheVersion:J

.field volatile producersVersion:J

.field final shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile terminated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 313
    new-array v0, v1, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    sput-object v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->EMPTY:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 315
    new-array v0, v1, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    sput-object v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->TERMINATED:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lrx/internal/operators/OperatorReplay$ReplayBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/operators/OperatorReplay$ReplaySubscriber",
            "<TT;>;>;",
            "Lrx/internal/operators/OperatorReplay$ReplayBuffer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    .local p1, "current":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;>;"
    .local p2, "buffer":Lrx/internal/operators/OperatorReplay$ReplayBuffer;, "Lrx/internal/operators/OperatorReplay$ReplayBuffer<TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 354
    iput-object p2, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    .line 356
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 357
    new-instance v0, Lrx/internal/util/OpenHashSet;

    invoke-direct {v0}, Lrx/internal/util/OpenHashSet;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Lrx/internal/util/OpenHashSet;

    .line 358
    sget-object v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->EMPTY:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producersCache:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 359
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 362
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->request(J)V

    .line 363
    return-void
.end method


# virtual methods
.method add(Lrx/internal/operators/OperatorReplay$InnerProducer;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    .local p1, "producer":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    const/4 v0, 0x0

    .line 393
    if-nez p1, :cond_0

    .line 394
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 396
    :cond_0
    iget-boolean v1, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->terminated:Z

    if-eqz v1, :cond_1

    .line 407
    :goto_0
    return v0

    .line 399
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Lrx/internal/util/OpenHashSet;

    monitor-enter v1

    .line 400
    :try_start_0
    iget-boolean v2, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->terminated:Z

    if-eqz v2, :cond_2

    .line 401
    monitor-exit v1

    goto :goto_0

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 404
    :cond_2
    :try_start_1
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Lrx/internal/util/OpenHashSet;

    invoke-virtual {v0, p1}, Lrx/internal/util/OpenHashSet;->add(Ljava/lang/Object;)Z

    .line 405
    iget-wide v2, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producersVersion:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producersVersion:J

    .line 406
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    const/4 v0, 0x1

    goto :goto_0
.end method

.method copyProducers()[Lrx/internal/operators/OperatorReplay$InnerProducer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 561
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Lrx/internal/util/OpenHashSet;

    monitor-enter v4

    .line 562
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Lrx/internal/util/OpenHashSet;

    invoke-virtual {v3}, Lrx/internal/util/OpenHashSet;->values()[Ljava/lang/Object;

    move-result-object v0

    .line 563
    .local v0, "a":[Ljava/lang/Object;
    array-length v1, v0

    .line 565
    .local v1, "n":I
    new-array v2, v1, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 566
    .local v2, "result":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 567
    monitor-exit v4

    return-object v2

    .line 568
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "n":I
    .end local v2    # "result":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method init()V
    .locals 1

    .prologue
    .line 366
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;-><init>(Lrx/internal/operators/OperatorReplay$ReplaySubscriber;)V

    invoke-static {v0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->add(Lrx/Subscription;)V

    .line 385
    return-void
.end method

.method makeRequest(JJ)V
    .locals 11
    .param p1, "maxTotalRequests"    # J
    .param p3, "previousTotalRequests"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    const-wide/16 v8, 0x0

    .line 572
    iget-wide v6, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxUpstreamRequested:J

    .line 573
    .local v6, "ur":J
    iget-object v2, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producer:Lrx/Producer;

    .line 575
    .local v2, "p":Lrx/Producer;
    sub-long v0, p1, p3

    .line 576
    .local v0, "diff":J
    cmp-long v3, v0, v8

    if-eqz v3, :cond_4

    .line 577
    iput-wide p1, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxChildRequested:J

    .line 578
    if-eqz v2, :cond_2

    .line 579
    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    .line 580
    iput-wide v8, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxUpstreamRequested:J

    .line 581
    add-long v8, v6, v0

    invoke-interface {v2, v8, v9}, Lrx/Producer;->request(J)V

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    invoke-interface {v2, v0, v1}, Lrx/Producer;->request(J)V

    goto :goto_0

    .line 587
    :cond_2
    add-long v4, v6, v0

    .line 588
    .local v4, "u":J
    cmp-long v3, v4, v8

    if-gez v3, :cond_3

    .line 589
    const-wide v4, 0x7fffffffffffffffL

    .line 591
    :cond_3
    iput-wide v4, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxUpstreamRequested:J

    goto :goto_0

    .line 595
    .end local v4    # "u":J
    :cond_4
    cmp-long v3, v6, v8

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 596
    iput-wide v8, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxUpstreamRequested:J

    .line 598
    invoke-interface {v2, v6, v7}, Lrx/Producer;->request(J)V

    goto :goto_0
.end method

.method manageRequests(Lrx/internal/operators/OperatorReplay$InnerProducer;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    .local p1, "inner":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->isUnsubscribed()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    monitor-enter p0

    .line 483
    :try_start_0
    iget-boolean v11, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->emitting:Z

    if-eqz v11, :cond_4

    .line 484
    if-eqz p1, :cond_3

    .line 485
    iget-object v5, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->coordinationQueue:Ljava/util/List;

    .line 486
    .local v5, "q":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;>;"
    if-nez v5, :cond_2

    .line 487
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "q":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .restart local v5    # "q":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;>;"
    iput-object v5, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->coordinationQueue:Ljava/util/List;

    .line 490
    :cond_2
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    .end local v5    # "q":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;>;"
    :goto_1
    const/4 v11, 0x1

    iput-boolean v11, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->missed:Z

    .line 495
    monitor-exit p0

    goto :goto_0

    .line 498
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 492
    :cond_3
    const/4 v11, 0x1

    :try_start_1
    iput-boolean v11, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->coordinateAll:Z

    goto :goto_1

    .line 497
    :cond_4
    const/4 v11, 0x1

    iput-boolean v11, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->emitting:Z

    .line 498
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    iget-wide v8, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxChildRequested:J

    .line 503
    .local v8, "ri":J
    if-eqz p1, :cond_6

    .line 504
    iget-object v11, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 516
    .local v6, "maxTotalRequested":J
    :cond_5
    invoke-virtual {p0, v6, v7, v8, v9}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->makeRequest(JJ)V

    .line 520
    :goto_2
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->isUnsubscribed()Z

    move-result v11

    if-nez v11, :cond_0

    .line 526
    monitor-enter p0

    .line 527
    :try_start_2
    iget-boolean v11, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->missed:Z

    if-nez v11, :cond_8

    .line 528
    const/4 v11, 0x0

    iput-boolean v11, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->emitting:Z

    .line 529
    monitor-exit p0

    goto :goto_0

    .line 536
    :catchall_1
    move-exception v11

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v11

    .line 506
    .end local v6    # "maxTotalRequested":J
    :cond_6
    move-wide v6, v8

    .line 508
    .restart local v6    # "maxTotalRequested":J
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->copyProducers()[Lrx/internal/operators/OperatorReplay$InnerProducer;

    move-result-object v0

    .line 509
    .local v0, "a":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    move-object v2, v0

    .local v2, "arr$":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_3
    if-ge v3, v4, :cond_5

    aget-object v10, v2, v3

    .line 510
    .local v10, "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    if-eqz v10, :cond_7

    .line 511
    iget-object v11, v10, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 509
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 531
    .end local v0    # "a":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    .end local v2    # "arr$":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v10    # "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    :cond_8
    const/4 v11, 0x0

    :try_start_3
    iput-boolean v11, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->missed:Z

    .line 532
    iget-object v5, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->coordinationQueue:Ljava/util/List;

    .line 533
    .restart local v5    # "q":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;>;"
    const/4 v11, 0x0

    iput-object v11, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->coordinationQueue:Ljava/util/List;

    .line 534
    iget-boolean v1, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->coordinateAll:Z

    .line 535
    .local v1, "all":Z
    const/4 v11, 0x0

    iput-boolean v11, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->coordinateAll:Z

    .line 536
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 538
    iget-wide v8, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxChildRequested:J

    .line 539
    move-wide v6, v8

    .line 541
    if-eqz v5, :cond_9

    .line 542
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 543
    .restart local v10    # "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    iget-object v11, v10, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 544
    goto :goto_4

    .line 547
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v10    # "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    :cond_9
    if-eqz v1, :cond_b

    .line 548
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->copyProducers()[Lrx/internal/operators/OperatorReplay$InnerProducer;

    move-result-object v0

    .line 549
    .restart local v0    # "a":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    move-object v2, v0

    .restart local v2    # "arr$":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    array-length v4, v2

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_5
    if-ge v3, v4, :cond_b

    aget-object v10, v2, v3

    .line 550
    .restart local v10    # "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    if-eqz v10, :cond_a

    .line 551
    iget-object v11, v10, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 549
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 556
    .end local v0    # "a":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    .end local v2    # "arr$":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v10    # "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    :cond_b
    invoke-virtual {p0, v6, v7, v8, v9}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->makeRequest(JJ)V

    goto :goto_2
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 463
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->done:Z

    if-nez v0, :cond_0

    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->done:Z

    .line 466
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    invoke-interface {v0}, Lrx/internal/operators/OperatorReplay$ReplayBuffer;->complete()V

    .line 467
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->replay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->unsubscribe()V

    .line 472
    :cond_0
    return-void

    .line 469
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 449
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->done:Z

    if-nez v0, :cond_0

    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->done:Z

    .line 452
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    invoke-interface {v0, p1}, Lrx/internal/operators/OperatorReplay$ReplayBuffer;->error(Ljava/lang/Throwable;)V

    .line 453
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->replay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->unsubscribe()V

    .line 458
    :cond_0
    return-void

    .line 455
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->unsubscribe()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 440
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->done:Z

    if-nez v0, :cond_0

    .line 441
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    invoke-interface {v0, p1}, Lrx/internal/operators/OperatorReplay$ReplayBuffer;->next(Ljava/lang/Object;)V

    .line 442
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->replay()V

    .line 444
    :cond_0
    return-void
.end method

.method remove(Lrx/internal/operators/OperatorReplay$InnerProducer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    .local p1, "producer":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->terminated:Z

    if-eqz v0, :cond_0

    .line 425
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Lrx/internal/util/OpenHashSet;

    monitor-enter v1

    .line 419
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->terminated:Z

    if-eqz v0, :cond_1

    .line 420
    monitor-exit v1

    goto :goto_0

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 422
    :cond_1
    :try_start_1
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Lrx/internal/util/OpenHashSet;

    invoke-virtual {v0, p1}, Lrx/internal/util/OpenHashSet;->remove(Ljava/lang/Object;)Z

    .line 423
    iget-wide v2, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producersVersion:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producersVersion:J

    .line 424
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method replay()V
    .locals 12

    .prologue
    .line 607
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    iget-object v6, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producersCache:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 608
    .local v6, "pc":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    iget-wide v8, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producersCacheVersion:J

    iget-wide v10, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producersVersion:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 609
    iget-object v9, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Lrx/internal/util/OpenHashSet;

    monitor-enter v9

    .line 610
    :try_start_0
    iget-object v6, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producersCache:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 613
    iget-object v8, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Lrx/internal/util/OpenHashSet;

    invoke-virtual {v8}, Lrx/internal/util/OpenHashSet;->values()[Ljava/lang/Object;

    move-result-object v0

    .line 614
    .local v0, "a":[Ljava/lang/Object;
    array-length v5, v0

    .line 615
    .local v5, "n":I
    array-length v8, v6

    if-eq v8, v5, :cond_0

    .line 616
    new-array v6, v5, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 617
    iput-object v6, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producersCache:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 619
    :cond_0
    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static {v0, v8, v6, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 620
    iget-wide v10, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producersVersion:J

    iput-wide v10, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producersCacheVersion:J

    .line 621
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v5    # "n":I
    :cond_1
    iget-object v2, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    .line 624
    .local v2, "b":Lrx/internal/operators/OperatorReplay$ReplayBuffer;, "Lrx/internal/operators/OperatorReplay$ReplayBuffer<TT;>;"
    move-object v1, v6

    .local v1, "arr$":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v7, v1, v3

    .line 625
    .local v7, "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    if-eqz v7, :cond_2

    .line 626
    invoke-interface {v2, v7}, Lrx/internal/operators/OperatorReplay$ReplayBuffer;->replay(Lrx/internal/operators/OperatorReplay$InnerProducer;)V

    .line 624
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 621
    .end local v1    # "arr$":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    .end local v2    # "b":Lrx/internal/operators/OperatorReplay$ReplayBuffer;, "Lrx/internal/operators/OperatorReplay$ReplayBuffer<TT;>;"
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v7    # "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 629
    .restart local v1    # "arr$":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    .restart local v2    # "b":Lrx/internal/operators/OperatorReplay$ReplayBuffer;, "Lrx/internal/operators/OperatorReplay$ReplayBuffer<TT;>;"
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_3
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 3
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 429
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producer:Lrx/Producer;

    .line 430
    .local v0, "p0":Lrx/Producer;
    if-eqz v0, :cond_0

    .line 431
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Only a single producer can be set on a Subscriber."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 433
    :cond_0
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producer:Lrx/Producer;

    .line 434
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->manageRequests(Lrx/internal/operators/OperatorReplay$InnerProducer;)V

    .line 435
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->replay()V

    .line 436
    return-void
.end method
