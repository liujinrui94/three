.class final Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeCombineLatest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeCombineLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CombinerSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field done:Z

.field final index:I

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field final parent:Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator",
            "<TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;I)V
    .locals 2
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator",
            "<TT;TR;>;I)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    .local p1, "parent":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 372
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->parent:Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;

    .line 373
    iput p2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->index:I

    .line 374
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 375
    iget v0, p1, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->bufferSize:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->request(J)V

    .line 376
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .prologue
    .line 399
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 404
    :goto_0
    return-void

    .line 402
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->done:Z

    .line 403
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->parent:Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;

    const/4 v1, 0x0

    iget v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->index:I

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->combine(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 388
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 389
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 395
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->parent:Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->onError(Ljava/lang/Throwable;)V

    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->done:Z

    .line 394
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->parent:Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;

    const/4 v1, 0x0

    iget v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->index:I

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->combine(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 384
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->parent:Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->index:I

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->combine(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public requestMore(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 407
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->request(J)V

    .line 408
    return-void
.end method
