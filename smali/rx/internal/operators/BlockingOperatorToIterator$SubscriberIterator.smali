.class public final Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;
.super Lrx/Subscriber;
.source "BlockingOperatorToIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/BlockingOperatorToIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubscriberIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<",
        "Lrx/Notification",
        "<+TT;>;>;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final LIMIT:I


# instance fields
.field private buf:Lrx/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Notification",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final notifications:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lrx/Notification",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field private received:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    sput v0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->LIMIT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;, "Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator<TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 69
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->notifications:Ljava/util/concurrent/BlockingQueue;

    .line 70
    return-void
.end method

.method private take()Lrx/Notification;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Notification",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;, "Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator<TT;>;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->notifications:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Notification;

    .line 121
    .local v1, "poll":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    if-eqz v1, :cond_0

    .line 124
    .end local v1    # "poll":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    :goto_0
    return-object v1

    .restart local v1    # "poll":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->notifications:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Notification;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 125
    .end local v1    # "poll":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->unsubscribe()V

    .line 127
    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .prologue
    .local p0, "this":Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;, "Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator<TT;>;"
    const/4 v0, 0x0

    .line 94
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->buf:Lrx/Notification;

    if-nez v1, :cond_0

    .line 95
    invoke-direct {p0}, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->take()Lrx/Notification;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->buf:Lrx/Notification;

    .line 96
    iget v1, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->received:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->received:I

    .line 97
    iget v1, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->received:I

    sget v2, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->LIMIT:I

    if-lt v1, v2, :cond_0

    .line 98
    iget v1, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->received:I

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->request(J)V

    .line 99
    iput v0, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->received:I

    .line 102
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->buf:Lrx/Notification;

    invoke-virtual {v1}, Lrx/Notification;->isOnError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->buf:Lrx/Notification;

    invoke-virtual {v0}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 105
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->buf:Lrx/Notification;

    invoke-virtual {v1}, Lrx/Notification;->isOnCompleted()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;, "Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->buf:Lrx/Notification;

    invoke-virtual {v1}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 112
    .local v0, "result":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->buf:Lrx/Notification;

    .line 113
    return-object v0

    .line 115
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 80
    .local p0, "this":Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;, "Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator<TT;>;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    .local p0, "this":Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;, "Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->notifications:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1}, Lrx/Notification;->createOnError(Ljava/lang/Throwable;)Lrx/Notification;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;, "Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator<TT;>;"
    check-cast p1, Lrx/Notification;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->onNext(Lrx/Notification;)V

    return-void
.end method

.method public onNext(Lrx/Notification;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;, "Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator<TT;>;"
    .local p1, "args":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->notifications:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 74
    .local p0, "this":Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;, "Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator<TT;>;"
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;->request(J)V

    .line 75
    return-void
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 133
    .local p0, "this":Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator;, "Lrx/internal/operators/BlockingOperatorToIterator$SubscriberIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read-only iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
