.class public Lcn/volley/toolbox/ClearCacheRequest;
.super Lcn/volley/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/volley/Request",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final aN:Lcn/volley/Cache;

.field private final bO:Ljava/lang/Runnable;


# virtual methods
.method protected final C(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method protected final Code(Lcn/volley/NetworkResponse;)Lcn/volley/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/volley/NetworkResponse;",
            ")",
            "Lcn/volley/Response",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isCanceled()Z
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcn/volley/toolbox/ClearCacheRequest;->aN:Lcn/volley/Cache;

    invoke-interface {v0}, Lcn/volley/Cache;->clear()V

    .line 50
    iget-object v0, p0, Lcn/volley/toolbox/ClearCacheRequest;->bO:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 52
    iget-object v1, p0, Lcn/volley/toolbox/ClearCacheRequest;->bO:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 54
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final x()Lcn/volley/Request$Priority;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcn/volley/Request$Priority;->IMMEDIATE:Lcn/volley/Request$Priority;

    return-object v0
.end method
