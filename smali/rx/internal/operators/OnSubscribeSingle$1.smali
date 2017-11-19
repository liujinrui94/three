.class Lrx/internal/operators/OnSubscribeSingle$1;
.super Lrx/Subscriber;
.source "OnSubscribeSingle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeSingle;->call(Lrx/SingleSubscriber;)V
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
.field private emission:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private emittedTooMany:Z

.field private itemEmitted:Z

.field final synthetic this$0:Lrx/internal/operators/OnSubscribeSingle;

.field final synthetic val$child:Lrx/SingleSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeSingle;Lrx/SingleSubscriber;)V
    .locals 1

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeSingle$1;, "Lrx/internal/operators/OnSubscribeSingle.1;"
    const/4 v0, 0x0

    .line 40
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeSingle$1;->this$0:Lrx/internal/operators/OnSubscribeSingle;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeSingle$1;->val$child:Lrx/SingleSubscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 41
    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeSingle$1;->emittedTooMany:Z

    .line 42
    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeSingle$1;->itemEmitted:Z

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeSingle$1;->emission:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/OnSubscribeSingle$1;, "Lrx/internal/operators/OnSubscribeSingle.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeSingle$1;->emittedTooMany:Z

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeSingle$1;->itemEmitted:Z

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeSingle$1;->val$child:Lrx/SingleSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeSingle$1;->emission:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/SingleSubscriber;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeSingle$1;->val$child:Lrx/SingleSubscriber;

    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Observable emitted no items"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/operators/OnSubscribeSingle$1;, "Lrx/internal/operators/OnSubscribeSingle.1;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeSingle$1;->val$child:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 68
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeSingle$1;->unsubscribe()V

    .line 69
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeSingle$1;, "Lrx/internal/operators/OnSubscribeSingle.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    .line 73
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeSingle$1;->itemEmitted:Z

    if-eqz v0, :cond_0

    .line 74
    iput-boolean v1, p0, Lrx/internal/operators/OnSubscribeSingle$1;->emittedTooMany:Z

    .line 75
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeSingle$1;->val$child:Lrx/SingleSubscriber;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Observable emitted too many elements"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 76
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeSingle$1;->unsubscribe()V

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    iput-boolean v1, p0, Lrx/internal/operators/OnSubscribeSingle$1;->itemEmitted:Z

    .line 79
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeSingle$1;->emission:Ljava/lang/Object;

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/OnSubscribeSingle$1;, "Lrx/internal/operators/OnSubscribeSingle.1;"
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OnSubscribeSingle$1;->request(J)V

    .line 50
    return-void
.end method
