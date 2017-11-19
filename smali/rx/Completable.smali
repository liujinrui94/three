.class public Lrx/Completable;
.super Ljava/lang/Object;
.source "Completable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/Completable$CompletableTransformer;,
        Lrx/Completable$CompletableSubscriber;,
        Lrx/Completable$CompletableOperator;,
        Lrx/Completable$CompletableOnSubscribe;
    }
.end annotation

.annotation build Lrx/annotations/Experimental;
.end annotation


# static fields
.field static final COMPLETE:Lrx/Completable;

.field static final ERROR_HANDLER:Lrx/plugins/RxJavaErrorHandler;

.field static HOOK:Lrx/plugins/RxJavaCompletableExecutionHook;

.field static final NEVER:Lrx/Completable;


# instance fields
.field private final onSubscribe:Lrx/Completable$CompletableOnSubscribe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    sput-object v0, Lrx/Completable;->ERROR_HANDLER:Lrx/plugins/RxJavaErrorHandler;

    .line 45
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getCompletableExecutionHook()Lrx/plugins/RxJavaCompletableExecutionHook;

    move-result-object v0

    sput-object v0, Lrx/Completable;->HOOK:Lrx/plugins/RxJavaCompletableExecutionHook;

    .line 94
    new-instance v0, Lrx/Completable$1;

    invoke-direct {v0}, Lrx/Completable$1;-><init>()V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    sput-object v0, Lrx/Completable;->COMPLETE:Lrx/Completable;

    .line 103
    new-instance v0, Lrx/Completable$2;

    invoke-direct {v0}, Lrx/Completable$2;-><init>()V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    sput-object v0, Lrx/Completable;->NEVER:Lrx/Completable;

    return-void
.end method

.method protected constructor <init>(Lrx/Completable$CompletableOnSubscribe;)V
    .locals 1
    .param p1, "onSubscribe"    # Lrx/Completable$CompletableOnSubscribe;

    .prologue
    .line 978
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 979
    sget-object v0, Lrx/Completable;->HOOK:Lrx/plugins/RxJavaCompletableExecutionHook;

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaCompletableExecutionHook;->onCreate(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable$CompletableOnSubscribe;

    move-result-object v0

    iput-object v0, p0, Lrx/Completable;->onSubscribe:Lrx/Completable$CompletableOnSubscribe;

    .line 980
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Throwable;

    .prologue
    .line 40
    invoke-static {p0}, Lrx/Completable;->deliverUncaughtException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static amb(Ljava/lang/Iterable;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Completable;>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-instance v0, Lrx/Completable$4;

    invoke-direct {v0, p0}, Lrx/Completable$4;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static varargs amb([Lrx/Completable;)Lrx/Completable;
    .locals 2
    .param p0, "sources"    # [Lrx/Completable;

    .prologue
    .line 118
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    array-length v0, p0

    if-nez v0, :cond_0

    .line 120
    invoke-static {}, Lrx/Completable;->complete()Lrx/Completable;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    .line 122
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 123
    const/4 v0, 0x0

    aget-object v0, p0, v0

    goto :goto_0

    .line 126
    :cond_1
    new-instance v0, Lrx/Completable$3;

    invoke-direct {v0, p0}, Lrx/Completable$3;-><init>([Lrx/Completable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    goto :goto_0
.end method

.method public static complete()Lrx/Completable;
    .locals 1

    .prologue
    .line 318
    sget-object v0, Lrx/Completable;->COMPLETE:Lrx/Completable;

    return-object v0
.end method

.method public static concat(Ljava/lang/Iterable;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 345
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Completable;>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable;

    invoke-direct {v0, p0}, Lrx/internal/operators/CompletableOnSubscribeConcatIterable;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Observable;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "sources":Lrx/Observable;, "Lrx/Observable<+Lrx/Completable;>;"
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lrx/Completable;->concat(Lrx/Observable;I)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Observable;I)Lrx/Completable;
    .locals 3
    .param p1, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Completable;",
            ">;I)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, "sources":Lrx/Observable;, "Lrx/Observable<+Lrx/Completable;>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 370
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prefetch > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_0
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeConcat;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/CompletableOnSubscribeConcat;-><init>(Lrx/Observable;I)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static varargs concat([Lrx/Completable;)Lrx/Completable;
    .locals 2
    .param p0, "sources"    # [Lrx/Completable;

    .prologue
    .line 328
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    array-length v0, p0

    if-nez v0, :cond_0

    .line 330
    invoke-static {}, Lrx/Completable;->complete()Lrx/Completable;

    move-result-object v0

    .line 335
    :goto_0
    return-object v0

    .line 332
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 333
    const/4 v0, 0x0

    aget-object v0, p0, v0

    goto :goto_0

    .line 335
    :cond_1
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeConcatArray;

    invoke-direct {v0, p0}, Lrx/internal/operators/CompletableOnSubscribeConcatArray;-><init>([Lrx/Completable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    goto :goto_0
.end method

.method public static create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;
    .locals 2
    .param p0, "onSubscribe"    # Lrx/Completable$CompletableOnSubscribe;

    .prologue
    .line 383
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :try_start_0
    new-instance v1, Lrx/Completable;

    invoke-direct {v1, p0}, Lrx/Completable;-><init>(Lrx/Completable$CompletableOnSubscribe;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "ex":Ljava/lang/NullPointerException;
    throw v0

    .line 388
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 389
    .local v0, "ex":Ljava/lang/Throwable;
    sget-object v1, Lrx/Completable;->ERROR_HANDLER:Lrx/plugins/RxJavaErrorHandler;

    invoke-virtual {v1, v0}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 390
    invoke-static {v0}, Lrx/Completable;->toNpe(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object v1

    throw v1
.end method

.method public static defer(Lrx/functions/Func0;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 400
    .local p0, "completableFunc0":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/Completable;>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    new-instance v0, Lrx/Completable$5;

    invoke-direct {v0, p0}, Lrx/Completable$5;-><init>(Lrx/functions/Func0;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method private static deliverUncaughtException(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1991
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 1992
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 1993
    return-void
.end method

.method public static error(Ljava/lang/Throwable;)Lrx/Completable;
    .locals 1
    .param p0, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 464
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    new-instance v0, Lrx/Completable$7;

    invoke-direct {v0, p0}, Lrx/Completable$7;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static error(Lrx/functions/Func0;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 436
    .local p0, "errorFunc0":Lrx/functions/Func0;, "Lrx/functions/Func0<+Ljava/lang/Throwable;>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    new-instance v0, Lrx/Completable$6;

    invoke-direct {v0, p0}, Lrx/Completable$6;-><init>(Lrx/functions/Func0;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static fromAction(Lrx/functions/Action0;)Lrx/Completable;
    .locals 1
    .param p0, "action"    # Lrx/functions/Action0;

    .prologue
    .line 482
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    new-instance v0, Lrx/Completable$8;

    invoke-direct {v0, p0}, Lrx/Completable$8;-><init>(Lrx/functions/Action0;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static fromCallable(Ljava/util/concurrent/Callable;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<*>;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 510
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<*>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    new-instance v0, Lrx/Completable$9;

    invoke-direct {v0, p0}, Lrx/Completable$9;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static fromFuture(Ljava/util/concurrent/Future;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 539
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    invoke-static {p0}, Lrx/Observable;->from(Ljava/util/concurrent/Future;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Completable;->fromObservable(Lrx/Observable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static fromObservable(Lrx/Observable;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<*>;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 551
    .local p0, "flowable":Lrx/Observable;, "Lrx/Observable<*>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    new-instance v0, Lrx/Completable$10;

    invoke-direct {v0, p0}, Lrx/Completable$10;-><init>(Lrx/Observable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static fromSingle(Lrx/Single;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single",
            "<*>;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 586
    .local p0, "single":Lrx/Single;, "Lrx/Single<*>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    new-instance v0, Lrx/Completable$11;

    invoke-direct {v0, p0}, Lrx/Completable$11;-><init>(Lrx/Single;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Ljava/lang/Iterable;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 635
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Completable;>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeMergeIterable;

    invoke-direct {v0, p0}, Lrx/internal/operators/CompletableOnSubscribeMergeIterable;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Observable;)Lrx/Completable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 647
    .local p0, "sources":Lrx/Observable;, "Lrx/Observable<+Lrx/Completable;>;"
    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lrx/Completable;->merge0(Lrx/Observable;IZ)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Observable;I)Lrx/Completable;
    .locals 1
    .param p1, "maxConcurrency"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Completable;",
            ">;I)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 660
    .local p0, "sources":Lrx/Observable;, "Lrx/Observable<+Lrx/Completable;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lrx/Completable;->merge0(Lrx/Observable;IZ)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static varargs merge([Lrx/Completable;)Lrx/Completable;
    .locals 2
    .param p0, "sources"    # [Lrx/Completable;

    .prologue
    .line 617
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    array-length v0, p0

    if-nez v0, :cond_0

    .line 619
    invoke-static {}, Lrx/Completable;->complete()Lrx/Completable;

    move-result-object v0

    .line 624
    :goto_0
    return-object v0

    .line 621
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 622
    const/4 v0, 0x0

    aget-object v0, p0, v0

    goto :goto_0

    .line 624
    :cond_1
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeMergeArray;

    invoke-direct {v0, p0}, Lrx/internal/operators/CompletableOnSubscribeMergeArray;-><init>([Lrx/Completable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    goto :goto_0
.end method

.method protected static merge0(Lrx/Observable;IZ)Lrx/Completable;
    .locals 3
    .param p1, "maxConcurrency"    # I
    .param p2, "delayErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Completable;",
            ">;IZ)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 676
    .local p0, "sources":Lrx/Observable;, "Lrx/Observable<+Lrx/Completable;>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 678
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxConcurrency > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_0
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeMerge;

    invoke-direct {v0, p0, p1, p2}, Lrx/internal/operators/CompletableOnSubscribeMerge;-><init>(Lrx/Observable;IZ)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Ljava/lang/Iterable;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 705
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Completable;>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable;

    invoke-direct {v0, p0}, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lrx/Observable;)Lrx/Completable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 718
    .local p0, "sources":Lrx/Observable;, "Lrx/Observable<+Lrx/Completable;>;"
    const v0, 0x7fffffff

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lrx/Completable;->merge0(Lrx/Observable;IZ)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lrx/Observable;I)Lrx/Completable;
    .locals 1
    .param p1, "maxConcurrency"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Completable;",
            ">;I)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 732
    .local p0, "sources":Lrx/Observable;, "Lrx/Observable<+Lrx/Completable;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lrx/Completable;->merge0(Lrx/Observable;IZ)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static varargs mergeDelayError([Lrx/Completable;)Lrx/Completable;
    .locals 1
    .param p0, "sources"    # [Lrx/Completable;

    .prologue
    .line 692
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorArray;

    invoke-direct {v0, p0}, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorArray;-><init>([Lrx/Completable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static never()Lrx/Completable;
    .locals 1

    .prologue
    .line 740
    sget-object v0, Lrx/Completable;->NEVER:Lrx/Completable;

    return-object v0
.end method

.method static requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 750
    .local p0, "o":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 751
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 753
    :cond_0
    return-object p0
.end method

.method public static timer(JLjava/util/concurrent/TimeUnit;)Lrx/Completable;
    .locals 2
    .param p0, "delay"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 763
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lrx/Completable;->timer(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static timer(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Completable;
    .locals 2
    .param p0, "delay"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 774
    invoke-static {p2}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    invoke-static {p3}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    new-instance v0, Lrx/Completable$12;

    invoke-direct {v0, p3, p0, p1, p2}, Lrx/Completable$12;-><init>(Lrx/Scheduler;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method static toNpe(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;
    .locals 2
    .param p0, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 805
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t pass out an exception otherwise..."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 806
    .local v0, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v0, p0}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 807
    return-object v0
.end method

.method private final unsafeSubscribe(Lrx/Subscriber;Z)V
    .locals 2
    .param p2, "callOnStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Subscriber",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 2048
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2050
    if-eqz p2, :cond_0

    .line 2051
    :try_start_0
    invoke-virtual {p1}, Lrx/Subscriber;->onStart()V

    .line 2053
    :cond_0
    new-instance v1, Lrx/Completable$28;

    invoke-direct {v1, p0, p1}, Lrx/Completable$28;-><init>(Lrx/Completable;Lrx/Subscriber;)V

    invoke-virtual {p0, v1}, Lrx/Completable;->unsafeSubscribe(Lrx/Completable$CompletableSubscriber;)V

    .line 2069
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v1

    invoke-virtual {v1}, Lrx/plugins/RxJavaPlugins;->getObservableExecutionHook()Lrx/plugins/RxJavaObservableExecutionHook;

    move-result-object v1

    invoke-virtual {v1, p1}, Lrx/plugins/RxJavaObservableExecutionHook;->onSubscribeReturn(Lrx/Subscription;)Lrx/Subscription;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 2078
    return-void

    .line 2070
    :catch_0
    move-exception v0

    .line 2071
    .local v0, "ex":Ljava/lang/NullPointerException;
    throw v0

    .line 2072
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2073
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 2074
    sget-object v1, Lrx/Completable;->HOOK:Lrx/plugins/RxJavaCompletableExecutionHook;

    invoke-virtual {v1, v0}, Lrx/plugins/RxJavaCompletableExecutionHook;->onSubscribeError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 2075
    sget-object v1, Lrx/Completable;->ERROR_HANDLER:Lrx/plugins/RxJavaErrorHandler;

    invoke-virtual {v1, v0}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 2076
    invoke-static {v0}, Lrx/Completable;->toNpe(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object v1

    throw v1
.end method

.method public static using(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<TR;>;",
            "Lrx/functions/Func1",
            "<-TR;+",
            "Lrx/Completable;",
            ">;",
            "Lrx/functions/Action1",
            "<-TR;>;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 824
    .local p0, "resourceFunc0":Lrx/functions/Func0;, "Lrx/functions/Func0<TR;>;"
    .local p1, "completableFunc1":Lrx/functions/Func1;, "Lrx/functions/Func1<-TR;+Lrx/Completable;>;"
    .local p2, "disposer":Lrx/functions/Action1;, "Lrx/functions/Action1<-TR;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lrx/Completable;->using(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static using(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)Lrx/Completable;
    .locals 1
    .param p3, "eager"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<TR;>;",
            "Lrx/functions/Func1",
            "<-TR;+",
            "Lrx/Completable;",
            ">;",
            "Lrx/functions/Action1",
            "<-TR;>;Z)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 847
    .local p0, "resourceFunc0":Lrx/functions/Func0;, "Lrx/functions/Func0<TR;>;"
    .local p1, "completableFunc1":Lrx/functions/Func1;, "Lrx/functions/Func1<-TR;+Lrx/Completable;>;"
    .local p2, "disposer":Lrx/functions/Action1;, "Lrx/functions/Action1<-TR;>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    invoke-static {p2}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    new-instance v0, Lrx/Completable$13;

    invoke-direct {v0, p0, p1, p2, p3}, Lrx/Completable$13;-><init>(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final ambWith(Lrx/Completable;)Lrx/Completable;
    .locals 2
    .param p1, "other"    # Lrx/Completable;

    .prologue
    .line 990
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/Completable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lrx/Completable;->amb([Lrx/Completable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final andThen(Lrx/Completable;)Lrx/Completable;
    .locals 1
    .param p1, "next"    # Lrx/Completable;

    .prologue
    .line 1148
    invoke-virtual {p0, p1}, Lrx/Completable;->concatWith(Lrx/Completable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final andThen(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1116
    .local p1, "next":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->delaySubscription(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final andThen(Lrx/Single;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<TT;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1134
    .local p1, "next":Lrx/Single;, "Lrx/Single<TT;>;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Single;->delaySubscription(Lrx/Observable;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final await()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 1000
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1001
    .local v0, "cdl":Ljava/util/concurrent/CountDownLatch;
    new-array v1, v3, [Ljava/lang/Throwable;

    .line 1003
    .local v1, "err":[Ljava/lang/Throwable;
    new-instance v3, Lrx/Completable$14;

    invoke-direct {v3, p0, v0, v1}, Lrx/Completable$14;-><init>(Lrx/Completable;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3}, Lrx/Completable;->unsafeSubscribe(Lrx/Completable$CompletableSubscriber;)V

    .line 1023
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 1024
    aget-object v3, v1, v8

    if-eqz v3, :cond_0

    .line 1025
    aget-object v3, v1, v8

    invoke-static {v3}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 1037
    :cond_0
    :goto_0
    return-void

    .line 1030
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    aget-object v3, v1, v8

    if-eqz v3, :cond_0

    .line 1035
    aget-object v3, v1, v8

    invoke-static {v3}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    goto :goto_0

    .line 1031
    :catch_0
    move-exception v2

    .line 1032
    .local v2, "ex":Ljava/lang/InterruptedException;
    invoke-static {v2}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public final await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 9
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 1049
    invoke-static {p3}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1052
    .local v1, "cdl":Ljava/util/concurrent/CountDownLatch;
    new-array v2, v0, [Ljava/lang/Throwable;

    .line 1054
    .local v2, "err":[Ljava/lang/Throwable;
    new-instance v4, Lrx/Completable$15;

    invoke-direct {v4, p0, v1, v2}, Lrx/Completable$15;-><init>(Lrx/Completable;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V

    invoke-virtual {p0, v4}, Lrx/Completable;->unsafeSubscribe(Lrx/Completable$CompletableSubscriber;)V

    .line 1074
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1075
    aget-object v4, v2, v8

    if-eqz v4, :cond_0

    .line 1076
    aget-object v4, v2, v8

    invoke-static {v4}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 1091
    :cond_0
    :goto_0
    return v0

    .line 1082
    :cond_1
    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1086
    .local v0, "b":Z
    if-eqz v0, :cond_0

    .line 1087
    aget-object v4, v2, v8

    if-eqz v4, :cond_0

    .line 1088
    aget-object v4, v2, v8

    invoke-static {v4}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    goto :goto_0

    .line 1083
    .end local v0    # "b":Z
    :catch_0
    move-exception v3

    .line 1084
    .local v3, "ex":Ljava/lang/InterruptedException;
    invoke-static {v3}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public final compose(Lrx/Completable$CompletableTransformer;)Lrx/Completable;
    .locals 1
    .param p1, "transformer"    # Lrx/Completable$CompletableTransformer;

    .prologue
    .line 1102
    invoke-virtual {p0, p1}, Lrx/Completable;->to(Lrx/functions/Func1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Completable;

    return-object v0
.end method

.method public final concatWith(Lrx/Completable;)Lrx/Completable;
    .locals 2
    .param p1, "other"    # Lrx/Completable;

    .prologue
    .line 1158
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/Completable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lrx/Completable;->concat([Lrx/Completable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;)Lrx/Completable;
    .locals 7
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 1170
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lrx/Completable;->delay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Z)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Completable;
    .locals 7
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 1183
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lrx/Completable;->delay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Z)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Z)Lrx/Completable;
    .locals 9
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .param p5, "delayError"    # Z

    .prologue
    .line 1197
    invoke-static {p3}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    invoke-static {p4}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    new-instance v1, Lrx/Completable$16;

    move-object v2, p0

    move-object v3, p4

    move-wide v4, p1

    move-object v6, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lrx/Completable$16;-><init>(Lrx/Completable;Lrx/Scheduler;JLjava/util/concurrent/TimeUnit;Z)V

    invoke-static {v1}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final doAfterTerminate(Lrx/functions/Action0;)Lrx/Completable;
    .locals 6
    .param p1, "onAfterComplete"    # Lrx/functions/Action0;

    .prologue
    .line 1441
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v1

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v2

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v3

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v5

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->doOnLifecycle(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnComplete(Lrx/functions/Action0;)Lrx/Completable;
    .locals 1
    .param p1, "onComplete"    # Lrx/functions/Action0;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1261
    invoke-virtual {p0, p1}, Lrx/Completable;->doOnCompleted(Lrx/functions/Action0;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnCompleted(Lrx/functions/Action0;)Lrx/Completable;
    .locals 6
    .param p1, "onCompleted"    # Lrx/functions/Action0;

    .prologue
    .line 1271
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v1

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v2

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v4

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v5

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->doOnLifecycle(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnError(Lrx/functions/Action1;)Lrx/Completable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 1292
    .local p1, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<-Ljava/lang/Throwable;>;"
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v1

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v3

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v4

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->doOnLifecycle(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method protected final doOnLifecycle(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;
    .locals 7
    .param p3, "onComplete"    # Lrx/functions/Action0;
    .param p4, "onAfterComplete"    # Lrx/functions/Action0;
    .param p5, "onUnsubscribe"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-",
            "Lrx/Subscription;",
            ">;",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/functions/Action0;",
            "Lrx/functions/Action0;",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 1311
    .local p1, "onSubscribe":Lrx/functions/Action1;, "Lrx/functions/Action1<-Lrx/Subscription;>;"
    .local p2, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<-Ljava/lang/Throwable;>;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    invoke-static {p2}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1313
    invoke-static {p3}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    invoke-static {p4}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    invoke-static {p5}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    new-instance v0, Lrx/Completable$17;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lrx/Completable$17;-><init>(Lrx/Completable;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnSubscribe(Lrx/functions/Action1;)Lrx/Completable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-",
            "Lrx/Subscription;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 1388
    .local p1, "onSubscribe":Lrx/functions/Action1;, "Lrx/functions/Action1<-Lrx/Subscription;>;"
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v2

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v3

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v4

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->doOnLifecycle(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnTerminate(Lrx/functions/Action0;)Lrx/Completable;
    .locals 6
    .param p1, "onTerminate"    # Lrx/functions/Action0;

    .prologue
    .line 1398
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v1

    new-instance v2, Lrx/Completable$18;

    invoke-direct {v2, p0, p1}, Lrx/Completable$18;-><init>(Lrx/Completable;Lrx/functions/Action0;)V

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v4

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v5

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->doOnLifecycle(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnUnsubscribe(Lrx/functions/Action0;)Lrx/Completable;
    .locals 6
    .param p1, "onUnsubscribe"    # Lrx/functions/Action0;

    .prologue
    .line 1282
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v1

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v2

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v3

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v4

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->doOnLifecycle(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final endWith(Lrx/Completable;)Lrx/Completable;
    .locals 1
    .param p1, "other"    # Lrx/Completable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1418
    invoke-virtual {p0, p1}, Lrx/Completable;->andThen(Lrx/Completable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final endWith(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1430
    .local p1, "next":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1}, Lrx/Completable;->andThen(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final get()Ljava/lang/Throwable;
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 1451
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1452
    .local v0, "cdl":Ljava/util/concurrent/CountDownLatch;
    new-array v1, v3, [Ljava/lang/Throwable;

    .line 1454
    .local v1, "err":[Ljava/lang/Throwable;
    new-instance v3, Lrx/Completable$19;

    invoke-direct {v3, p0, v0, v1}, Lrx/Completable$19;-><init>(Lrx/Completable;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3}, Lrx/Completable;->unsafeSubscribe(Lrx/Completable$CompletableSubscriber;)V

    .line 1474
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1475
    aget-object v3, v1, v8

    .line 1482
    :goto_0
    return-object v3

    .line 1478
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1482
    aget-object v3, v1, v8

    goto :goto_0

    .line 1479
    :catch_0
    move-exception v2

    .line 1480
    .local v2, "ex":Ljava/lang/InterruptedException;
    invoke-static {v2}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Throwable;
    .locals 9
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 1493
    invoke-static {p3}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1496
    .local v1, "cdl":Ljava/util/concurrent/CountDownLatch;
    new-array v2, v4, [Ljava/lang/Throwable;

    .line 1498
    .local v2, "err":[Ljava/lang/Throwable;
    new-instance v4, Lrx/Completable$20;

    invoke-direct {v4, p0, v1, v2}, Lrx/Completable$20;-><init>(Lrx/Completable;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V

    invoke-virtual {p0, v4}, Lrx/Completable;->unsafeSubscribe(Lrx/Completable$CompletableSubscriber;)V

    .line 1518
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 1519
    aget-object v4, v2, v8

    .line 1531
    :goto_0
    return-object v4

    .line 1523
    :cond_0
    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1527
    .local v0, "b":Z
    if-eqz v0, :cond_1

    .line 1528
    aget-object v4, v2, v8

    goto :goto_0

    .line 1524
    .end local v0    # "b":Z
    :catch_0
    move-exception v3

    .line 1525
    .local v3, "ex":Ljava/lang/InterruptedException;
    invoke-static {v3}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 1530
    .end local v3    # "ex":Ljava/lang/InterruptedException;
    .restart local v0    # "b":Z
    :cond_1
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-static {v4}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 1531
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public final lift(Lrx/Completable$CompletableOperator;)Lrx/Completable;
    .locals 1
    .param p1, "onLift"    # Lrx/Completable$CompletableOperator;

    .prologue
    .line 1541
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    new-instance v0, Lrx/Completable$21;

    invoke-direct {v0, p0, p1}, Lrx/Completable$21;-><init>(Lrx/Completable;Lrx/Completable$CompletableOperator;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final mergeWith(Lrx/Completable;)Lrx/Completable;
    .locals 2
    .param p1, "other"    # Lrx/Completable;

    .prologue
    .line 1567
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/Completable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lrx/Completable;->merge([Lrx/Completable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final observeOn(Lrx/Scheduler;)Lrx/Completable;
    .locals 1
    .param p1, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 1578
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    new-instance v0, Lrx/Completable$22;

    invoke-direct {v0, p0, p1}, Lrx/Completable$22;-><init>(Lrx/Completable;Lrx/Scheduler;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorComplete()Lrx/Completable;
    .locals 1

    .prologue
    .line 1636
    invoke-static {}, Lrx/internal/util/UtilityFunctions;->alwaysTrue()Lrx/functions/Func1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Completable;->onErrorComplete(Lrx/functions/Func1;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorComplete(Lrx/functions/Func1;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 1647
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-Ljava/lang/Throwable;Ljava/lang/Boolean;>;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    new-instance v0, Lrx/Completable$23;

    invoke-direct {v0, p0, p1}, Lrx/Completable$23;-><init>(Lrx/Completable;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorResumeNext(Lrx/functions/Func1;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 1696
    .local p1, "errorMapper":Lrx/functions/Func1;, "Lrx/functions/Func1<-Ljava/lang/Throwable;+Lrx/Completable;>;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1697
    new-instance v0, Lrx/Completable$24;

    invoke-direct {v0, p0, p1}, Lrx/Completable$24;-><init>(Lrx/Completable;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final repeat()Lrx/Completable;
    .locals 1

    .prologue
    .line 1762
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->repeat()Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Completable;->fromObservable(Lrx/Observable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final repeat(J)Lrx/Completable;
    .locals 1
    .param p1, "times"    # J

    .prologue
    .line 1772
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lrx/Observable;->repeat(J)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Completable;->fromObservable(Lrx/Observable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final repeatWhen(Lrx/functions/Func1;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Void;",
            ">;+",
            "Lrx/Observable",
            "<*>;>;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 1785
    .local p1, "handler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Ljava/lang/Void;>;+Lrx/Observable<*>;>;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1786
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->repeatWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Completable;->fromObservable(Lrx/Observable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final retry()Lrx/Completable;
    .locals 1

    .prologue
    .line 1794
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->retry()Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Completable;->fromObservable(Lrx/Observable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final retry(J)Lrx/Completable;
    .locals 1
    .param p1, "times"    # J

    .prologue
    .line 1816
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lrx/Observable;->retry(J)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Completable;->fromObservable(Lrx/Observable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final retry(Lrx/functions/Func2;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 1805
    .local p1, "predicate":Lrx/functions/Func2;, "Lrx/functions/Func2<Ljava/lang/Integer;Ljava/lang/Throwable;Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->retry(Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Completable;->fromObservable(Lrx/Observable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final retryWhen(Lrx/functions/Func1;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lrx/Observable",
            "<*>;>;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 1829
    .local p1, "handler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Ljava/lang/Throwable;>;+Lrx/Observable<*>;>;"
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->retryWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Completable;->fromObservable(Lrx/Observable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Lrx/Completable;)Lrx/Completable;
    .locals 2
    .param p1, "other"    # Lrx/Completable;

    .prologue
    .line 1840
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1841
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/Completable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lrx/Completable;->concat([Lrx/Completable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1852
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1853
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->startWith(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe()Lrx/Subscription;
    .locals 2

    .prologue
    .line 1862
    new-instance v0, Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {v0}, Lrx/subscriptions/MultipleAssignmentSubscription;-><init>()V

    .line 1863
    .local v0, "mad":Lrx/subscriptions/MultipleAssignmentSubscription;
    new-instance v1, Lrx/Completable$25;

    invoke-direct {v1, p0, v0}, Lrx/Completable$25;-><init>(Lrx/Completable;Lrx/subscriptions/MultipleAssignmentSubscription;)V

    invoke-virtual {p0, v1}, Lrx/Completable;->unsafeSubscribe(Lrx/Completable$CompletableSubscriber;)V

    .line 1882
    return-object v0
.end method

.method public final subscribe(Lrx/functions/Action0;)Lrx/Subscription;
    .locals 2
    .param p1, "onComplete"    # Lrx/functions/Action0;

    .prologue
    .line 1893
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1895
    new-instance v0, Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {v0}, Lrx/subscriptions/MultipleAssignmentSubscription;-><init>()V

    .line 1896
    .local v0, "mad":Lrx/subscriptions/MultipleAssignmentSubscription;
    new-instance v1, Lrx/Completable$26;

    invoke-direct {v1, p0, p1, v0}, Lrx/Completable$26;-><init>(Lrx/Completable;Lrx/functions/Action0;Lrx/subscriptions/MultipleAssignmentSubscription;)V

    invoke-virtual {p0, v1}, Lrx/Completable;->unsafeSubscribe(Lrx/Completable$CompletableSubscriber;)V

    .line 1926
    return-object v0
.end method

.method public final subscribe(Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/Subscription;
    .locals 2
    .param p2, "onComplete"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 1938
    .local p1, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<-Ljava/lang/Throwable;>;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1939
    invoke-static {p2}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1941
    new-instance v0, Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {v0}, Lrx/subscriptions/MultipleAssignmentSubscription;-><init>()V

    .line 1942
    .local v0, "mad":Lrx/subscriptions/MultipleAssignmentSubscription;
    new-instance v1, Lrx/Completable$27;

    invoke-direct {v1, p0, p2, v0, p1}, Lrx/Completable$27;-><init>(Lrx/Completable;Lrx/functions/Action0;Lrx/subscriptions/MultipleAssignmentSubscription;Lrx/functions/Action1;)V

    invoke-virtual {p0, v1}, Lrx/Completable;->unsafeSubscribe(Lrx/Completable$CompletableSubscriber;)V

    .line 1987
    return-object v0
.end method

.method public final subscribe(Lrx/Completable$CompletableSubscriber;)V
    .locals 2
    .param p1, "s"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    .line 2023
    instance-of v1, p1, Lrx/observers/SafeCompletableSubscriber;

    if-nez v1, :cond_0

    .line 2024
    new-instance v0, Lrx/observers/SafeCompletableSubscriber;

    invoke-direct {v0, p1}, Lrx/observers/SafeCompletableSubscriber;-><init>(Lrx/Completable$CompletableSubscriber;)V

    .end local p1    # "s":Lrx/Completable$CompletableSubscriber;
    .local v0, "s":Lrx/Completable$CompletableSubscriber;
    move-object p1, v0

    .line 2026
    .end local v0    # "s":Lrx/Completable$CompletableSubscriber;
    .restart local p1    # "s":Lrx/Completable$CompletableSubscriber;
    :cond_0
    invoke-virtual {p0, p1}, Lrx/Completable;->unsafeSubscribe(Lrx/Completable$CompletableSubscriber;)V

    .line 2027
    return-void
.end method

.method public final subscribe(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Subscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2089
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1}, Lrx/Subscriber;->onStart()V

    .line 2090
    instance-of v1, p1, Lrx/observers/SafeSubscriber;

    if-nez v1, :cond_0

    .line 2091
    new-instance v0, Lrx/observers/SafeSubscriber;

    invoke-direct {v0, p1}, Lrx/observers/SafeSubscriber;-><init>(Lrx/Subscriber;)V

    .end local p1    # "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    .local v0, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    move-object p1, v0

    .line 2093
    .end local v0    # "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    .restart local p1    # "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lrx/Completable;->unsafeSubscribe(Lrx/Subscriber;Z)V

    .line 2094
    return-void
.end method

.method public final subscribeOn(Lrx/Scheduler;)Lrx/Completable;
    .locals 1
    .param p1, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 2104
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2106
    new-instance v0, Lrx/Completable$29;

    invoke-direct {v0, p0, p1}, Lrx/Completable$29;-><init>(Lrx/Completable;Lrx/Scheduler;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lrx/Completable;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 2136
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lrx/Completable;->timeout0(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Lrx/Completable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lrx/Completable;)Lrx/Completable;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "other"    # Lrx/Completable;

    .prologue
    .line 2149
    invoke-static {p4}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2150
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v5

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lrx/Completable;->timeout0(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Lrx/Completable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Completable;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 2164
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lrx/Completable;->timeout0(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Lrx/Completable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Lrx/Completable;)Lrx/Completable;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .param p5, "other"    # Lrx/Completable;

    .prologue
    .line 2179
    invoke-static {p5}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2180
    invoke-virtual/range {p0 .. p5}, Lrx/Completable;->timeout0(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Lrx/Completable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout0(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Lrx/Completable;)Lrx/Completable;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .param p5, "other"    # Lrx/Completable;

    .prologue
    .line 2196
    invoke-static {p3}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2197
    invoke-static {p4}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2198
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeTimeout;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lrx/internal/operators/CompletableOnSubscribeTimeout;-><init>(Lrx/Completable;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Lrx/Completable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final to(Lrx/functions/Func1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Completable;",
            "TU;>;)TU;"
        }
    .end annotation

    .prologue
    .line 2208
    .local p1, "converter":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Completable;TU;>;"
    invoke-interface {p1, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toObservable()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2217
    new-instance v0, Lrx/Completable$30;

    invoke-direct {v0, p0}, Lrx/Completable$30;-><init>(Lrx/Completable;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final toSingle(Lrx/functions/Func0;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+TT;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2233
    .local p1, "completionValueFunc0":Lrx/functions/Func0;, "Lrx/functions/Func0<+TT;>;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2234
    new-instance v0, Lrx/Completable$31;

    invoke-direct {v0, p0, p1}, Lrx/Completable$31;-><init>(Lrx/Completable;Lrx/functions/Func0;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final toSingleDefault(Ljava/lang/Object;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2280
    .local p1, "completionValue":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2281
    new-instance v0, Lrx/Completable$32;

    invoke-direct {v0, p0, p1}, Lrx/Completable$32;-><init>(Lrx/Completable;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lrx/Completable;->toSingle(Lrx/functions/Func0;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final unsafeSubscribe(Lrx/Completable$CompletableSubscriber;)V
    .locals 4
    .param p1, "s"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    .line 2001
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2003
    :try_start_0
    sget-object v2, Lrx/Completable;->HOOK:Lrx/plugins/RxJavaCompletableExecutionHook;

    iget-object v3, p0, Lrx/Completable;->onSubscribe:Lrx/Completable$CompletableOnSubscribe;

    invoke-virtual {v2, p0, v3}, Lrx/plugins/RxJavaCompletableExecutionHook;->onSubscribeStart(Lrx/Completable;Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable$CompletableOnSubscribe;

    move-result-object v1

    .line 2005
    .local v1, "onSubscribeDecorated":Lrx/Completable$CompletableOnSubscribe;
    invoke-interface {v1, p1}, Lrx/Completable$CompletableOnSubscribe;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 2014
    return-void

    .line 2006
    .end local v1    # "onSubscribeDecorated":Lrx/Completable$CompletableOnSubscribe;
    :catch_0
    move-exception v0

    .line 2007
    .local v0, "ex":Ljava/lang/NullPointerException;
    throw v0

    .line 2008
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2009
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 2010
    sget-object v2, Lrx/Completable;->HOOK:Lrx/plugins/RxJavaCompletableExecutionHook;

    invoke-virtual {v2, v0}, Lrx/plugins/RxJavaCompletableExecutionHook;->onSubscribeError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 2011
    sget-object v2, Lrx/Completable;->ERROR_HANDLER:Lrx/plugins/RxJavaErrorHandler;

    invoke-virtual {v2, v0}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 2012
    invoke-static {v0}, Lrx/Completable;->toNpe(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object v2

    throw v2
.end method

.method public final unsafeSubscribe(Lrx/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Subscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2037
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lrx/Completable;->unsafeSubscribe(Lrx/Subscriber;Z)V

    .line 2038
    return-void
.end method

.method public final unsubscribeOn(Lrx/Scheduler;)Lrx/Completable;
    .locals 1
    .param p1, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 2297
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2298
    new-instance v0, Lrx/Completable$33;

    invoke-direct {v0, p0, p1}, Lrx/Completable$33;-><init>(Lrx/Completable;Lrx/Scheduler;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method
