.class Lrx/internal/operators/OperatorAny$1;
.super Lrx/Subscriber;
.source "OperatorAny.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorAny;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field done:Z

.field hasElements:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorAny;

.field final synthetic val$child:Lrx/Subscriber;

.field final synthetic val$producer:Lrx/internal/producers/SingleDelayedProducer;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorAny;Lrx/internal/producers/SingleDelayedProducer;Lrx/Subscriber;)V
    .locals 0

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/OperatorAny$1;, "Lrx/internal/operators/OperatorAny.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorAny$1;->this$0:Lrx/internal/operators/OperatorAny;

    iput-object p2, p0, Lrx/internal/operators/OperatorAny$1;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    iput-object p3, p0, Lrx/internal/operators/OperatorAny$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 72
    .local p0, "this":Lrx/internal/operators/OperatorAny$1;, "Lrx/internal/operators/OperatorAny.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorAny$1;->done:Z

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorAny$1;->done:Z

    .line 74
    iget-boolean v0, p0, Lrx/internal/operators/OperatorAny$1;->hasElements:Z

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lrx/internal/operators/OperatorAny$1;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/producers/SingleDelayedProducer;->setValue(Ljava/lang/Object;)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/OperatorAny$1;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    iget-object v1, p0, Lrx/internal/operators/OperatorAny$1;->this$0:Lrx/internal/operators/OperatorAny;

    iget-boolean v1, v1, Lrx/internal/operators/OperatorAny;->returnOnEmpty:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/producers/SingleDelayedProducer;->setValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/operators/OperatorAny$1;, "Lrx/internal/operators/OperatorAny.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorAny$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 68
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorAny$1;, "Lrx/internal/operators/OperatorAny.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x1

    .line 48
    iput-boolean v3, p0, Lrx/internal/operators/OperatorAny$1;->hasElements:Z

    .line 51
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorAny$1;->this$0:Lrx/internal/operators/OperatorAny;

    iget-object v2, v2, Lrx/internal/operators/OperatorAny;->predicate:Lrx/functions/Func1;

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 56
    .local v1, "result":Z
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lrx/internal/operators/OperatorAny$1;->done:Z

    if-nez v2, :cond_0

    .line 57
    iput-boolean v3, p0, Lrx/internal/operators/OperatorAny$1;->done:Z

    .line 58
    iget-object v4, p0, Lrx/internal/operators/OperatorAny$1;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    iget-object v2, p0, Lrx/internal/operators/OperatorAny$1;->this$0:Lrx/internal/operators/OperatorAny;

    iget-boolean v2, v2, Lrx/internal/operators/OperatorAny;->returnOnEmpty:Z

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v2}, Lrx/internal/producers/SingleDelayedProducer;->setValue(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p0}, Lrx/internal/operators/OperatorAny$1;->unsubscribe()V

    .line 63
    .end local v1    # "result":Z
    :cond_0
    :goto_1
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_1

    .line 58
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "result":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
