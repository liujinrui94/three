.class final Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable;
.super Ljava/lang/Object;
.source "OnSubscribeFlattenIterable.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFlattenIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OnSubscribeScalarFlattenIterable"
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

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lrx/functions/Func1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;)V"
        }
    .end annotation

    .prologue
    .line 329
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable;, "Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable<TT;TR;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p2, "mapper":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Ljava/lang/Iterable<+TR;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable;->value:Ljava/lang/Object;

    .line 331
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable;->mapper:Lrx/functions/Func1;

    .line 332
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 324
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable;, "Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable<TT;TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable;, "Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable<TT;TR;>;"
    .local p1, "t":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    :try_start_0
    iget-object v4, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable;->mapper:Lrx/functions/Func1;

    iget-object v5, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable;->value:Ljava/lang/Object;

    invoke-interface {v4, v5}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 341
    .local v2, "it":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TR;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 343
    .local v3, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<+TR;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 349
    .local v0, "b":Z
    if-nez v0, :cond_0

    .line 350
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 355
    .end local v0    # "b":Z
    .end local v2    # "it":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TR;>;"
    .end local v3    # "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<+TR;>;"
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v1

    .line 345
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable;->value:Ljava/lang/Object;

    invoke-static {v1, p1, v4}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_0

    .line 354
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "b":Z
    .restart local v2    # "it":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TR;>;"
    .restart local v3    # "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<+TR;>;"
    :cond_0
    new-instance v4, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;

    invoke-direct {v4, p1, v3}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;-><init>(Lrx/Subscriber;Ljava/util/Iterator;)V

    invoke-virtual {p1, v4}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    goto :goto_0
.end method
