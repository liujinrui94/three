.class public Lcn/volley/ExecutorDelivery;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/volley/ResponseDelivery;


# instance fields
.field private final aW:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcn/volley/ExecutorDelivery$1;

    invoke-direct {v0, p0, p1}, Lcn/volley/ExecutorDelivery$1;-><init>(Lcn/volley/ExecutorDelivery;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/volley/ExecutorDelivery;->aW:Ljava/util/concurrent/Executor;

    .line 42
    return-void
.end method


# virtual methods
.method public final Code(Lcn/volley/Request;Lcn/volley/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/volley/Request",
            "<*>;",
            "Lcn/volley/Response",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcn/volley/ExecutorDelivery;->Code(Lcn/volley/Request;Lcn/volley/Response;Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method

.method public final Code(Lcn/volley/Request;Lcn/volley/Response;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/volley/Request",
            "<*>;",
            "Lcn/volley/Response",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p1}, Lcn/volley/Request;->A()V

    .line 61
    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lcn/volley/Request;->F(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcn/volley/ExecutorDelivery;->aW:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/volley/ExecutorDelivery$ResponseDeliveryRunnable;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/volley/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcn/volley/ExecutorDelivery;Lcn/volley/Request;Lcn/volley/Response;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method public final Code(Lcn/volley/Request;Lcn/volley/VolleyError;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/volley/Request",
            "<*>;",
            "Lcn/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    const-string v0, "post-error"

    invoke-virtual {p1, v0}, Lcn/volley/Request;->F(Ljava/lang/String;)V

    .line 68
    invoke-static {p2}, Lcn/volley/Response;->B(Lcn/volley/VolleyError;)Lcn/volley/Response;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcn/volley/ExecutorDelivery;->aW:Ljava/util/concurrent/Executor;

    new-instance v2, Lcn/volley/ExecutorDelivery$ResponseDeliveryRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Lcn/volley/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcn/volley/ExecutorDelivery;Lcn/volley/Request;Lcn/volley/Response;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method
