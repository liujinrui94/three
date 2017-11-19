.class public final Lrx/internal/operators/OnSubscribeFlattenIterable;
.super Ljava/lang/Object;
.source "OnSubscribeFlattenIterable.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable;,
        Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final mapper:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final prefetch:I

.field final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lrx/Observable;Lrx/functions/Func1;I)V
    .locals 0
    .param p3, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlattenIterable;, "Lrx/internal/operators/OnSubscribeFlattenIterable<TT;TR;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "mapper":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Ljava/lang/Iterable<+TR;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFlattenIterable;->source:Lrx/Observable;

    .line 49
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeFlattenIterable;->mapper:Lrx/functions/Func1;

    .line 50
    iput p3, p0, Lrx/internal/operators/OnSubscribeFlattenIterable;->prefetch:I

    .line 51
    return-void
.end method

.method public static createFrom(Lrx/Observable;Lrx/functions/Func1;I)Lrx/Observable;
    .locals 2
    .param p2, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;I)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "mapper":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Ljava/lang/Iterable<+TR;>;>;"
    instance-of v1, p0, Lrx/internal/util/ScalarSynchronousObservable;

    if-eqz v1, :cond_0

    .line 71
    check-cast p0, Lrx/internal/util/ScalarSynchronousObservable;

    .end local p0    # "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-virtual {p0}, Lrx/internal/util/ScalarSynchronousObservable;->get()Ljava/lang/Object;

    move-result-object v0

    .line 72
    .local v0, "scalar":Ljava/lang/Object;, "TT;"
    new-instance v1, Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable;

    invoke-direct {v1, v0, p1}, Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable;-><init>(Ljava/lang/Object;Lrx/functions/Func1;)V

    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v1

    .line 74
    .end local v0    # "scalar":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v1

    .restart local p0    # "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :cond_0
    new-instance v1, Lrx/internal/operators/OnSubscribeFlattenIterable;

    invoke-direct {v1, p0, p1, p2}, Lrx/internal/operators/OnSubscribeFlattenIterable;-><init>(Lrx/Observable;Lrx/functions/Func1;I)V

    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlattenIterable;, "Lrx/internal/operators/OnSubscribeFlattenIterable<TT;TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeFlattenIterable;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlattenIterable;, "Lrx/internal/operators/OnSubscribeFlattenIterable<TT;TR;>;"
    .local p1, "t":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFlattenIterable;->mapper:Lrx/functions/Func1;

    iget v2, p0, Lrx/internal/operators/OnSubscribeFlattenIterable;->prefetch:I

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;-><init>(Lrx/Subscriber;Lrx/functions/Func1;I)V

    .line 57
    .local v0, "parent":Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;, "Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 58
    new-instance v1, Lrx/internal/operators/OnSubscribeFlattenIterable$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OnSubscribeFlattenIterable$1;-><init>(Lrx/internal/operators/OnSubscribeFlattenIterable;Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 65
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFlattenIterable;->source:Lrx/Observable;

    invoke-virtual {v1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 66
    return-void
.end method
