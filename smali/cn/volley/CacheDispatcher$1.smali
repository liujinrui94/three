.class Lcn/volley/CacheDispatcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aQ:Lcn/volley/CacheDispatcher;

.field private final synthetic aR:Lcn/volley/Request;


# direct methods
.method constructor <init>(Lcn/volley/CacheDispatcher;Lcn/volley/Request;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/volley/CacheDispatcher$1;->aQ:Lcn/volley/CacheDispatcher;

    iput-object p2, p0, Lcn/volley/CacheDispatcher$1;->aR:Lcn/volley/Request;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    :try_start_0
    iget-object v0, p0, Lcn/volley/CacheDispatcher$1;->aQ:Lcn/volley/CacheDispatcher;

    invoke-static {v0}, Lcn/volley/CacheDispatcher;->Code(Lcn/volley/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcn/volley/CacheDispatcher$1;->aR:Lcn/volley/Request;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
