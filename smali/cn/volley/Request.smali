.class public abstract Lcn/volley/Request;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcn/volley/Request",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_PARAMS_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final SLOW_REQUEST_THRESHOLD_MS:J = 0xbb8L


# instance fields
.field private final bf:Lcn/volley/VolleyLog$MarkerLog;

.field private final bg:I

.field private final bh:Ljava/lang/String;

.field private final bi:I

.field private final bj:Lcn/volley/Response$ErrorListener;

.field private bk:Ljava/lang/Integer;

.field private bl:Lcn/volley/RequestQueue;

.field private bm:Z

.field private bn:Z

.field private bo:Z

.field private bp:J

.field private bq:Lcn/volley/RetryPolicy;

.field private br:Lcn/volley/Cache$Entry;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcn/volley/Response$ErrorListener;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-boolean v0, Lcn/volley/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcn/volley/VolleyLog$MarkerLog;

    invoke-direct {v0}, Lcn/volley/VolleyLog$MarkerLog;-><init>()V

    :goto_0
    iput-object v0, p0, Lcn/volley/Request;->bf:Lcn/volley/VolleyLog$MarkerLog;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/volley/Request;->bm:Z

    .line 88
    iput-boolean v2, p0, Lcn/volley/Request;->bn:Z

    .line 91
    iput-boolean v2, p0, Lcn/volley/Request;->bo:Z

    .line 94
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcn/volley/Request;->bp:J

    .line 107
    iput-object v1, p0, Lcn/volley/Request;->br:Lcn/volley/Cache$Entry;

    .line 132
    iput p1, p0, Lcn/volley/Request;->bg:I

    .line 133
    iput-object p2, p0, Lcn/volley/Request;->bh:Ljava/lang/String;

    .line 134
    iput-object p3, p0, Lcn/volley/Request;->bj:Lcn/volley/Response$ErrorListener;

    .line 135
    new-instance v0, Lcn/volley/DefaultRetryPolicy;

    invoke-direct {v0}, Lcn/volley/DefaultRetryPolicy;-><init>()V

    .line 1179
    iput-object v0, p0, Lcn/volley/Request;->bq:Lcn/volley/RetryPolicy;

    .line 137
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    iput v0, p0, Lcn/volley/Request;->bi:I

    .line 138
    return-void

    :cond_0
    move-object v0, v1

    .line 61
    goto :goto_0

    .line 137
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1
.end method

.method private static Code(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .prologue
    .line 428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1

    .line 430
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 431
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    const/16 v1, 0x3d

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 433
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const/16 v1, 0x26

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 437
    :catch_0
    move-exception v1

    .line 438
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Encoding not supported: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected static I(Lcn/volley/VolleyError;)Lcn/volley/VolleyError;
    .locals 0

    .prologue
    .line 527
    return-object p0
.end method

.method static synthetic V(Lcn/volley/Request;)Lcn/volley/VolleyLog$MarkerLog;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcn/volley/Request;->bf:Lcn/volley/VolleyLog$MarkerLog;

    return-object v0
.end method

.method public static getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A()V
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/volley/Request;->bo:Z

    .line 499
    return-void
.end method

.method protected abstract C(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final Code(Lcn/volley/Cache$Entry;)Lcn/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/volley/Cache$Entry;",
            ")",
            "Lcn/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 281
    iput-object p1, p0, Lcn/volley/Request;->br:Lcn/volley/Cache$Entry;

    .line 282
    return-object p0
.end method

.method public final Code(Lcn/volley/RequestQueue;)Lcn/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/volley/RequestQueue;",
            ")",
            "Lcn/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 236
    iput-object p1, p0, Lcn/volley/Request;->bl:Lcn/volley/RequestQueue;

    .line 237
    return-object p0
.end method

.method public final Code(Lcn/volley/RetryPolicy;)Lcn/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/volley/RetryPolicy;",
            ")",
            "Lcn/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 179
    iput-object p1, p0, Lcn/volley/Request;->bq:Lcn/volley/RetryPolicy;

    .line 180
    return-object p0
.end method

.method protected abstract Code(Lcn/volley/NetworkResponse;)Lcn/volley/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/volley/NetworkResponse;",
            ")",
            "Lcn/volley/Response",
            "<TT;>;"
        }
    .end annotation
.end method

.method final D(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 200
    iget-object v0, p0, Lcn/volley/Request;->bl:Lcn/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcn/volley/Request;->bl:Lcn/volley/RequestQueue;

    invoke-virtual {v0, p0}, Lcn/volley/RequestQueue;->Z(Lcn/volley/Request;)V

    .line 203
    :cond_0
    sget-boolean v0, Lcn/volley/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v0, :cond_3

    .line 204
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 205
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 208
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 209
    new-instance v3, Lcn/volley/Request$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcn/volley/Request$1;-><init>(Lcn/volley/Request;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 227
    :cond_1
    :goto_0
    return-void

    .line 219
    :cond_2
    iget-object v2, p0, Lcn/volley/Request;->bf:Lcn/volley/VolleyLog$MarkerLog;

    invoke-virtual {v2, p1, v0, v1}, Lcn/volley/VolleyLog$MarkerLog;->Code(Ljava/lang/String;J)V

    .line 220
    iget-object v0, p0, Lcn/volley/Request;->bf:Lcn/volley/VolleyLog$MarkerLog;

    invoke-virtual {p0}, Lcn/volley/Request;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/volley/VolleyLog$MarkerLog;->D(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/volley/Request;->bp:J

    sub-long/2addr v0, v2

    .line 223
    const-wide/16 v2, 0xbb8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 224
    const-string v2, "%d ms: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcn/volley/Request;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lcn/volley/VolleyLog;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final E()Z
    .locals 1

    .prologue
    .line 505
    iget-boolean v0, p0, Lcn/volley/Request;->bo:Z

    return v0
.end method

.method public final F(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 187
    sget-boolean v0, Lcn/volley/VolleyLog$MarkerLog;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcn/volley/Request;->bf:Lcn/volley/VolleyLog$MarkerLog;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcn/volley/VolleyLog$MarkerLog;->Code(Ljava/lang/String;J)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-wide v0, p0, Lcn/volley/Request;->bp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/volley/Request;->bp:J

    goto :goto_0
.end method

.method public final V(I)Lcn/volley/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcn/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 246
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/volley/Request;->bk:Ljava/lang/Integer;

    .line 247
    return-object p0
.end method

.method public final Z(Lcn/volley/VolleyError;)V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcn/volley/Request;->bj:Lcn/volley/Response$ErrorListener;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcn/volley/Request;->bj:Lcn/volley/Response$ErrorListener;

    invoke-interface {v0, p1}, Lcn/volley/Response$ErrorListener;->Code(Lcn/volley/VolleyError;)V

    .line 549
    :cond_0
    return-void
.end method

.method public final cancel()V
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/volley/Request;->bn:Z

    .line 297
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 1
    check-cast p1, Lcn/volley/Request;

    .line 3557
    invoke-virtual {p0}, Lcn/volley/Request;->x()Lcn/volley/Request$Priority;

    move-result-object v0

    .line 3558
    invoke-virtual {p1}, Lcn/volley/Request;->x()Lcn/volley/Request$Priority;

    move-result-object v1

    .line 3562
    if-ne v0, v1, :cond_0

    .line 3563
    iget-object v0, p0, Lcn/volley/Request;->bk:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lcn/volley/Request;->bk:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    .line 3564
    :cond_0
    invoke-virtual {v1}, Lcn/volley/Request$Priority;->ordinal()I

    move-result v1

    invoke-virtual {v0}, Lcn/volley/Request$Priority;->ordinal()I

    move-result v0

    sub-int v0, v1, v0

    .line 1
    goto :goto_0
.end method

.method public final getMethod()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcn/volley/Request;->bg:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcn/volley/Request;->bh:Ljava/lang/String;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcn/volley/Request;->bn:Z

    return v0
.end method

.method public final p()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcn/volley/Request;->bi:I

    return v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    .line 1264
    iget-object v0, p0, Lcn/volley/Request;->bh:Ljava/lang/String;

    .line 271
    return-object v0
.end method

.method public final r()Lcn/volley/Cache$Entry;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcn/volley/Request;->br:Lcn/volley/Cache$Entry;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcn/volley/Request;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()[B
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 372
    .line 373
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1404
    const-string v1, "UTF-8"

    .line 374
    invoke-static {v0, v1}, Lcn/volley/Request;->Code(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    .line 376
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3170
    iget v1, p0, Lcn/volley/Request;->bi:I

    .line 569
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcn/volley/Request;->bn:Z

    if-eqz v0, :cond_0

    const-string v0, "[X] "

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3264
    iget-object v0, p0, Lcn/volley/Request;->bh:Ljava/lang/String;

    .line 570
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 571
    invoke-virtual {p0}, Lcn/volley/Request;->x()Lcn/volley/Request$Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/volley/Request;->bk:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 570
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "[ ] "

    goto :goto_0
.end method

.method public u()Ljava/lang/String;
    .locals 2

    .prologue
    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "application/x-www-form-urlencoded; charset=UTF-8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()[B
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    return-object v0
.end method

.method public final w()Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Lcn/volley/Request;->bm:Z

    return v0
.end method

.method public x()Lcn/volley/Request$Priority;
    .locals 1

    .prologue
    .line 474
    sget-object v0, Lcn/volley/Request$Priority;->NORMAL:Lcn/volley/Request$Priority;

    return-object v0
.end method

.method public final y()I
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcn/volley/Request;->bq:Lcn/volley/RetryPolicy;

    invoke-interface {v0}, Lcn/volley/RetryPolicy;->n()I

    move-result v0

    return v0
.end method

.method public final z()Lcn/volley/RetryPolicy;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcn/volley/Request;->bq:Lcn/volley/RetryPolicy;

    return-object v0
.end method
