.class final Lrx/subjects/ReplaySubject$ReplayState;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<[",
        "Lrx/subjects/ReplaySubject$ReplayProducer",
        "<TT;>;>;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lrx/subjects/ReplaySubject$ReplayProducer;

.field static final TERMINATED:[Lrx/subjects/ReplaySubject$ReplayProducer;

.field private static final serialVersionUID:J = 0x529b0a217109d450L


# instance fields
.field final buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$ReplayBuffer",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 347
    new-array v0, v1, [Lrx/subjects/ReplaySubject$ReplayProducer;

    sput-object v0, Lrx/subjects/ReplaySubject$ReplayState;->EMPTY:[Lrx/subjects/ReplaySubject$ReplayProducer;

    .line 349
    new-array v0, v1, [Lrx/subjects/ReplaySubject$ReplayProducer;

    sput-object v0, Lrx/subjects/ReplaySubject$ReplayState;->TERMINATED:[Lrx/subjects/ReplaySubject$ReplayProducer;

    return-void
.end method

.method public constructor <init>(Lrx/subjects/ReplaySubject$ReplayBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$ReplayBuffer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    .local p1, "buffer":Lrx/subjects/ReplaySubject$ReplayBuffer;, "Lrx/subjects/ReplaySubject$ReplayBuffer<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 353
    iput-object p1, p0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    .line 354
    sget-object v0, Lrx/subjects/ReplaySubject$ReplayState;->EMPTY:[Lrx/subjects/ReplaySubject$ReplayProducer;

    invoke-virtual {p0, v0}, Lrx/subjects/ReplaySubject$ReplayState;->lazySet(Ljava/lang/Object;)V

    .line 355
    return-void
.end method


# virtual methods
.method add(Lrx/subjects/ReplaySubject$ReplayProducer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$ReplayProducer",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    .local p1, "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    const/4 v3, 0x0

    .line 374
    :cond_0
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplayState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/ReplaySubject$ReplayProducer;

    .line 375
    .local v0, "a":[Lrx/subjects/ReplaySubject$ReplayProducer;, "[Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    sget-object v4, Lrx/subjects/ReplaySubject$ReplayState;->TERMINATED:[Lrx/subjects/ReplaySubject$ReplayProducer;

    if-ne v0, v4, :cond_1

    .line 387
    :goto_0
    return v3

    .line 379
    :cond_1
    array-length v2, v0

    .line 382
    .local v2, "n":I
    add-int/lit8 v4, v2, 0x1

    new-array v1, v4, [Lrx/subjects/ReplaySubject$ReplayProducer;

    .line 383
    .local v1, "b":[Lrx/subjects/ReplaySubject$ReplayProducer;, "[Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    aput-object p1, v1, v2

    .line 386
    invoke-virtual {p0, v0, v1}, Lrx/subjects/ReplaySubject$ReplayState;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 387
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 337
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/subjects/ReplaySubject$ReplayState;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    .local p1, "t":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/subjects/ReplaySubject$ReplayProducer;

    invoke-direct {v0, p1, p0}, Lrx/subjects/ReplaySubject$ReplayProducer;-><init>(Lrx/Subscriber;Lrx/subjects/ReplaySubject$ReplayState;)V

    .line 360
    .local v0, "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 361
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 363
    invoke-virtual {p0, v0}, Lrx/subjects/ReplaySubject$ReplayState;->add(Lrx/subjects/ReplaySubject$ReplayProducer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplayProducer;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    invoke-virtual {p0, v0}, Lrx/subjects/ReplaySubject$ReplayState;->remove(Lrx/subjects/ReplaySubject$ReplayProducer;)V

    .line 370
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v1, p0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v1, v0}, Lrx/subjects/ReplaySubject$ReplayBuffer;->drain(Lrx/subjects/ReplaySubject$ReplayProducer;)Z

    goto :goto_0
.end method

.method isTerminated()Z
    .locals 2

    .prologue
    .line 493
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplayState;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrx/subjects/ReplaySubject$ReplayState;->TERMINATED:[Lrx/subjects/ReplaySubject$ReplayProducer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 6

    .prologue
    .line 476
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    iget-object v1, p0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    .line 478
    .local v1, "b":Lrx/subjects/ReplaySubject$ReplayBuffer;, "Lrx/subjects/ReplaySubject$ReplayBuffer<TT;>;"
    invoke-interface {v1}, Lrx/subjects/ReplaySubject$ReplayBuffer;->complete()V

    .line 479
    sget-object v5, Lrx/subjects/ReplaySubject$ReplayState;->TERMINATED:[Lrx/subjects/ReplaySubject$ReplayProducer;

    invoke-virtual {p0, v5}, Lrx/subjects/ReplaySubject$ReplayState;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/ReplaySubject$ReplayProducer;

    .local v0, "arr$":[Lrx/subjects/ReplaySubject$ReplayProducer;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 480
    .local v4, "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    iget-boolean v5, v4, Lrx/subjects/ReplaySubject$ReplayProducer;->caughtUp:Z

    if-eqz v5, :cond_1

    .line 481
    iget-object v5, v4, Lrx/subjects/ReplaySubject$ReplayProducer;->actual:Lrx/Subscriber;

    invoke-virtual {v5}, Lrx/Subscriber;->onCompleted()V

    .line 479
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 483
    :cond_1
    invoke-interface {v1, v4}, Lrx/subjects/ReplaySubject$ReplayBuffer;->drain(Lrx/subjects/ReplaySubject$ReplayProducer;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 484
    const/4 v5, 0x1

    iput-boolean v5, v4, Lrx/subjects/ReplaySubject$ReplayProducer;->caughtUp:Z

    .line 485
    const/4 v5, 0x0

    iput-object v5, v4, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    goto :goto_1

    .line 489
    .end local v4    # "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 448
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    iget-object v1, p0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    .line 450
    .local v1, "b":Lrx/subjects/ReplaySubject$ReplayBuffer;, "Lrx/subjects/ReplaySubject$ReplayBuffer<TT;>;"
    invoke-interface {v1, p1}, Lrx/subjects/ReplaySubject$ReplayBuffer;->error(Ljava/lang/Throwable;)V

    .line 451
    const/4 v2, 0x0

    .line 452
    .local v2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    sget-object v7, Lrx/subjects/ReplaySubject$ReplayState;->TERMINATED:[Lrx/subjects/ReplaySubject$ReplayProducer;

    invoke-virtual {p0, v7}, Lrx/subjects/ReplaySubject$ReplayState;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/ReplaySubject$ReplayProducer;

    .local v0, "arr$":[Lrx/subjects/ReplaySubject$ReplayProducer;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v6, v0, v4

    .line 454
    .local v6, "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    :try_start_0
    iget-boolean v7, v6, Lrx/subjects/ReplaySubject$ReplayProducer;->caughtUp:Z

    if-eqz v7, :cond_1

    .line 455
    iget-object v7, v6, Lrx/subjects/ReplaySubject$ReplayProducer;->actual:Lrx/Subscriber;

    invoke-virtual {v7, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 452
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 457
    :cond_1
    invoke-interface {v1, v6}, Lrx/subjects/ReplaySubject$ReplayBuffer;->drain(Lrx/subjects/ReplaySubject$ReplayProducer;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 458
    const/4 v7, 0x1

    iput-boolean v7, v6, Lrx/subjects/ReplaySubject$ReplayProducer;->caughtUp:Z

    .line 459
    const/4 v7, 0x0

    iput-object v7, v6, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 462
    :catch_0
    move-exception v3

    .line 463
    .local v3, "ex":Ljava/lang/Throwable;
    if-nez v2, :cond_2

    .line 464
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .restart local v2    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 470
    .end local v3    # "ex":Ljava/lang/Throwable;
    .end local v6    # "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    :cond_3
    invoke-static {v2}, Lrx/exceptions/Exceptions;->throwIfAny(Ljava/util/List;)V

    .line 471
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 430
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    .line 432
    .local v1, "b":Lrx/subjects/ReplaySubject$ReplayBuffer;, "Lrx/subjects/ReplaySubject$ReplayBuffer<TT;>;"
    invoke-interface {v1, p1}, Lrx/subjects/ReplaySubject$ReplayBuffer;->next(Ljava/lang/Object;)V

    .line 433
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplayState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/ReplaySubject$ReplayProducer;

    .local v0, "arr$":[Lrx/subjects/ReplaySubject$ReplayProducer;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 434
    .local v4, "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    iget-boolean v5, v4, Lrx/subjects/ReplaySubject$ReplayProducer;->caughtUp:Z

    if-eqz v5, :cond_1

    .line 435
    iget-object v5, v4, Lrx/subjects/ReplaySubject$ReplayProducer;->actual:Lrx/Subscriber;

    invoke-virtual {v5, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 433
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    :cond_1
    invoke-interface {v1, v4}, Lrx/subjects/ReplaySubject$ReplayBuffer;->drain(Lrx/subjects/ReplaySubject$ReplayProducer;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 438
    const/4 v5, 0x1

    iput-boolean v5, v4, Lrx/subjects/ReplaySubject$ReplayProducer;->caughtUp:Z

    .line 439
    const/4 v5, 0x0

    iput-object v5, v4, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    goto :goto_1

    .line 443
    .end local v4    # "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    :cond_2
    return-void
.end method

.method remove(Lrx/subjects/ReplaySubject$ReplayProducer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$ReplayProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    .local p1, "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    const/4 v7, 0x0

    .line 395
    :cond_0
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplayState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/ReplaySubject$ReplayProducer;

    .line 396
    .local v0, "a":[Lrx/subjects/ReplaySubject$ReplayProducer;, "[Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    sget-object v5, Lrx/subjects/ReplaySubject$ReplayState;->TERMINATED:[Lrx/subjects/ReplaySubject$ReplayProducer;

    if-eq v0, v5, :cond_1

    sget-object v5, Lrx/subjects/ReplaySubject$ReplayState;->EMPTY:[Lrx/subjects/ReplaySubject$ReplayProducer;

    if-ne v0, v5, :cond_2

    .line 423
    :cond_1
    :goto_0
    return-void

    .line 400
    :cond_2
    array-length v4, v0

    .line 402
    .local v4, "n":I
    const/4 v3, -0x1

    .line 403
    .local v3, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 404
    aget-object v5, v0, v2

    if-ne v5, p1, :cond_4

    .line 405
    move v3, v2

    .line 410
    :cond_3
    if-ltz v3, :cond_1

    .line 415
    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 416
    sget-object v1, Lrx/subjects/ReplaySubject$ReplayState;->EMPTY:[Lrx/subjects/ReplaySubject$ReplayProducer;

    .line 422
    .local v1, "b":[Lrx/subjects/ReplaySubject$ReplayProducer;, "[Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    :goto_2
    invoke-virtual {p0, v0, v1}, Lrx/subjects/ReplaySubject$ReplayState;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 403
    .end local v1    # "b":[Lrx/subjects/ReplaySubject$ReplayProducer;, "[Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 418
    :cond_5
    add-int/lit8 v5, v4, -0x1

    new-array v1, v5, [Lrx/subjects/ReplaySubject$ReplayProducer;

    .line 419
    .restart local v1    # "b":[Lrx/subjects/ReplaySubject$ReplayProducer;, "[Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    invoke-static {v0, v7, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    add-int/lit8 v5, v3, 0x1

    sub-int v6, v4, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method
