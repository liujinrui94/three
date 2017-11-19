.class public Lcn/volley/NetworkDispatcher;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final aN:Lcn/volley/Cache;

.field private final aO:Lcn/volley/ResponseDelivery;

.field private volatile aP:Z

.field private final bb:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcn/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final bc:Lcn/volley/Network;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcn/volley/Network;Lcn/volley/Cache;Lcn/volley/ResponseDelivery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcn/volley/Request",
            "<*>;>;",
            "Lcn/volley/Network;",
            "Lcn/volley/Cache;",
            "Lcn/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/volley/NetworkDispatcher;->aP:Z

    .line 58
    iput-object p1, p0, Lcn/volley/NetworkDispatcher;->bb:Ljava/util/concurrent/BlockingQueue;

    .line 59
    iput-object p2, p0, Lcn/volley/NetworkDispatcher;->bc:Lcn/volley/Network;

    .line 60
    iput-object p3, p0, Lcn/volley/NetworkDispatcher;->aN:Lcn/volley/Cache;

    .line 61
    iput-object p4, p0, Lcn/volley/NetworkDispatcher;->aO:Lcn/volley/ResponseDelivery;

    .line 62
    return-void
.end method


# virtual methods
.method public final quit()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/volley/NetworkDispatcher;->aP:Z

    .line 70
    invoke-virtual {p0}, Lcn/volley/NetworkDispatcher;->interrupt()V

    .line 71
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 83
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 88
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcn/volley/NetworkDispatcher;->bb:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/volley/Request;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    :try_start_1
    const-string v1, "network-queue-take"

    invoke-virtual {v0, v1}, Lcn/volley/Request;->F(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Lcn/volley/Request;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    const-string v1, "network-discard-cancelled"

    invoke-virtual {v0, v1}, Lcn/volley/Request;->D(Ljava/lang/String;)V
    :try_end_1
    .catch Lcn/volley/VolleyError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    .line 1144
    invoke-static {v1}, Lcn/volley/Request;->I(Lcn/volley/VolleyError;)Lcn/volley/VolleyError;

    move-result-object v1

    .line 1145
    iget-object v2, p0, Lcn/volley/NetworkDispatcher;->aO:Lcn/volley/ResponseDelivery;

    invoke-interface {v2, v0, v1}, Lcn/volley/ResponseDelivery;->Code(Lcn/volley/Request;Lcn/volley/VolleyError;)V

    goto :goto_0

    .line 91
    :catch_1
    move-exception v0

    iget-boolean v0, p0, Lcn/volley/NetworkDispatcher;->aP:Z

    if-eqz v0, :cond_0

    .line 92
    return-void

    .line 1076
    :cond_1
    :try_start_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_2

    .line 1077
    invoke-virtual {v0}, Lcn/volley/Request;->p()I

    move-result v1

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 110
    :cond_2
    iget-object v1, p0, Lcn/volley/NetworkDispatcher;->bc:Lcn/volley/Network;

    invoke-interface {v1, v0}, Lcn/volley/Network;->Code(Lcn/volley/Request;)Lcn/volley/NetworkResponse;

    move-result-object v1

    .line 111
    const-string v2, "network-http-complete"

    invoke-virtual {v0, v2}, Lcn/volley/Request;->F(Ljava/lang/String;)V

    .line 115
    iget-boolean v2, v1, Lcn/volley/NetworkResponse;->be:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcn/volley/Request;->E()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    const-string v1, "not-modified"

    invoke-virtual {v0, v1}, Lcn/volley/Request;->D(Ljava/lang/String;)V
    :try_end_2
    .catch Lcn/volley/VolleyError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 136
    :catch_2
    move-exception v1

    .line 137
    const-string v2, "Unhandled exception %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcn/volley/VolleyLog;->Code(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object v2, p0, Lcn/volley/NetworkDispatcher;->aO:Lcn/volley/ResponseDelivery;

    new-instance v3, Lcn/volley/VolleyError;

    invoke-direct {v3, v1}, Lcn/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v0, v3}, Lcn/volley/ResponseDelivery;->Code(Lcn/volley/Request;Lcn/volley/VolleyError;)V

    goto :goto_0

    .line 121
    :cond_3
    :try_start_3
    invoke-virtual {v0, v1}, Lcn/volley/Request;->Code(Lcn/volley/NetworkResponse;)Lcn/volley/Response;

    move-result-object v1

    .line 122
    const-string v2, "network-parse-complete"

    invoke-virtual {v0, v2}, Lcn/volley/Request;->F(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Lcn/volley/Request;->w()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcn/volley/Response;->bC:Lcn/volley/Cache$Entry;

    if-eqz v2, :cond_4

    .line 127
    iget-object v2, p0, Lcn/volley/NetworkDispatcher;->aN:Lcn/volley/Cache;

    invoke-virtual {v0}, Lcn/volley/Request;->q()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcn/volley/Response;->bC:Lcn/volley/Cache$Entry;

    invoke-interface {v2, v3, v4}, Lcn/volley/Cache;->Code(Ljava/lang/String;Lcn/volley/Cache$Entry;)V

    .line 128
    const-string v2, "network-cache-written"

    invoke-virtual {v0, v2}, Lcn/volley/Request;->F(Ljava/lang/String;)V

    .line 132
    :cond_4
    invoke-virtual {v0}, Lcn/volley/Request;->A()V

    .line 133
    iget-object v2, p0, Lcn/volley/NetworkDispatcher;->aO:Lcn/volley/ResponseDelivery;

    invoke-interface {v2, v0, v1}, Lcn/volley/ResponseDelivery;->Code(Lcn/volley/Request;Lcn/volley/Response;)V
    :try_end_3
    .catch Lcn/volley/VolleyError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method
