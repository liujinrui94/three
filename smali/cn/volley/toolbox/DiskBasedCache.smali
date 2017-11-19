.class public Lcn/volley/toolbox/DiskBasedCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/volley/Cache;


# static fields
.field private static final CACHE_MAGIC:I = 0x20120504

.field private static final DEFAULT_DISK_USAGE_BYTES:I = 0x500000

.field private static final HYSTERESIS_FACTOR:F = 0.9f


# instance fields
.field private final bP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcn/volley/toolbox/DiskBasedCache$CacheHeader;",
            ">;"
        }
    .end annotation
.end field

.field private bQ:J

.field private final bR:Ljava/io/File;

.field private final bS:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 82
    const/high16 v0, 0x500000

    invoke-direct {p0, p1, v0}, Lcn/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    .line 83
    return-void
.end method

.method private constructor <init>(Ljava/io/File;I)V
    .locals 4

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcn/volley/toolbox/DiskBasedCache;->bP:Ljava/util/Map;

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/volley/toolbox/DiskBasedCache;->bQ:J

    .line 72
    iput-object p1, p0, Lcn/volley/toolbox/DiskBasedCache;->bR:Ljava/io/File;

    .line 73
    const/high16 v0, 0x500000

    iput v0, p0, Lcn/volley/toolbox/DiskBasedCache;->bS:I

    .line 74
    return-void
.end method

.method private static Code(Ljava/io/InputStream;)I
    .locals 2

    .prologue
    .line 475
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 476
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 477
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 479
    :cond_0
    return v0
.end method

.method static Code(Ljava/io/OutputStream;I)V
    .locals 1

    .prologue
    .line 483
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 484
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 485
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 486
    ushr-int/lit8 v0, p1, 0x18

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 487
    return-void
.end method

.method static Code(Ljava/io/OutputStream;J)V
    .locals 3

    .prologue
    .line 499
    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 500
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 501
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 502
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 503
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 504
    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 505
    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 506
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 507
    return-void
.end method

.method static Code(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 523
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 524
    array-length v1, v0

    int-to-long v2, v1

    invoke-static {p0, v2, v3}, Lcn/volley/toolbox/DiskBasedCache;->Code(Ljava/io/OutputStream;J)V

    .line 525
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 526
    return-void
.end method

.method private Code(Ljava/lang/String;Lcn/volley/toolbox/DiskBasedCache$CacheHeader;)V
    .locals 6

    .prologue
    .line 296
    iget-object v0, p0, Lcn/volley/toolbox/DiskBasedCache;->bP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    iget-wide v0, p0, Lcn/volley/toolbox/DiskBasedCache;->bQ:J

    iget-wide v2, p2, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/volley/toolbox/DiskBasedCache;->bQ:J

    .line 302
    :goto_0
    iget-object v0, p0, Lcn/volley/toolbox/DiskBasedCache;->bP:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcn/volley/toolbox/DiskBasedCache;->bP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 300
    iget-wide v2, p0, Lcn/volley/toolbox/DiskBasedCache;->bQ:J

    iget-wide v4, p2, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    iget-wide v0, v0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    sub-long v0, v4, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/volley/toolbox/DiskBasedCache;->bQ:J

    goto :goto_0
.end method

.method static Code(Ljava/util/Map;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 535
    if-eqz p0, :cond_1

    .line 536
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcn/volley/toolbox/DiskBasedCache;->Code(Ljava/io/OutputStream;I)V

    .line 537
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 544
    :goto_1
    return-void

    .line 537
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 538
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/volley/toolbox/DiskBasedCache;->Code(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 539
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/volley/toolbox/DiskBasedCache;->Code(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 542
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/volley/toolbox/DiskBasedCache;->Code(Ljava/io/OutputStream;I)V

    goto :goto_1
.end method

.method private static Code(Ljava/io/InputStream;I)[B
    .locals 4

    .prologue
    .line 320
    new-array v1, p1, [B

    .line 322
    const/4 v0, 0x0

    .line 323
    :goto_0
    if-ge v0, p1, :cond_0

    sub-int v2, p1, v0

    invoke-virtual {p0, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 326
    :cond_0
    if-eq v0, p1, :cond_2

    .line 327
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 324
    :cond_1
    add-int/2addr v0, v2

    goto :goto_0

    .line 329
    :cond_2
    return-object v1
.end method

.method static I(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 529
    invoke-static {p0}, Lcn/volley/toolbox/DiskBasedCache;->V(Ljava/io/InputStream;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 530
    invoke-static {p0, v0}, Lcn/volley/toolbox/DiskBasedCache;->Code(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 531
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private static L(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 236
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 237
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    return-object v0
.end method

.method static V(Ljava/io/InputStream;)J
    .locals 8

    .prologue
    const-wide/16 v6, 0xff

    .line 511
    const-wide/16 v0, 0x0

    invoke-static {p0}, Lcn/volley/toolbox/DiskBasedCache;->Code(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 512
    invoke-static {p0}, Lcn/volley/toolbox/DiskBasedCache;->Code(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 513
    invoke-static {p0}, Lcn/volley/toolbox/DiskBasedCache;->Code(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 514
    invoke-static {p0}, Lcn/volley/toolbox/DiskBasedCache;->Code(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 515
    invoke-static {p0}, Lcn/volley/toolbox/DiskBasedCache;->Code(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 516
    invoke-static {p0}, Lcn/volley/toolbox/DiskBasedCache;->Code(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 517
    invoke-static {p0}, Lcn/volley/toolbox/DiskBasedCache;->Code(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 518
    invoke-static {p0}, Lcn/volley/toolbox/DiskBasedCache;->Code(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 519
    return-wide v0
.end method

.method static Z(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 547
    invoke-static {p0}, Lcn/volley/toolbox/DiskBasedCache;->readInt(Ljava/io/InputStream;)I

    move-result v2

    .line 548
    if-nez v2, :cond_0

    .line 549
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 551
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_1

    .line 556
    return-object v0

    .line 550
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    goto :goto_0

    .line 552
    :cond_1
    invoke-static {p0}, Lcn/volley/toolbox/DiskBasedCache;->I(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 553
    invoke-static {p0}, Lcn/volley/toolbox/DiskBasedCache;->I(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 554
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    .line 246
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/volley/toolbox/DiskBasedCache;->bR:Ljava/io/File;

    invoke-static {p1}, Lcn/volley/toolbox/DiskBasedCache;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static readInt(Ljava/io/InputStream;)I
    .locals 2

    .prologue
    .line 491
    invoke-static {p0}, Lcn/volley/toolbox/DiskBasedCache;->Code(Ljava/io/InputStream;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 492
    invoke-static {p0}, Lcn/volley/toolbox/DiskBasedCache;->Code(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 493
    invoke-static {p0}, Lcn/volley/toolbox/DiskBasedCache;->Code(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 494
    invoke-static {p0}, Lcn/volley/toolbox/DiskBasedCache;->Code(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 495
    return v0
.end method

.method private declared-synchronized remove(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcn/volley/toolbox/DiskBasedCache;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 2309
    iget-object v0, p0, Lcn/volley/toolbox/DiskBasedCache;->bP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 2310
    if-eqz v0, :cond_0

    .line 2311
    iget-wide v2, p0, Lcn/volley/toolbox/DiskBasedCache;->bQ:J

    iget-wide v4, v0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcn/volley/toolbox/DiskBasedCache;->bQ:J

    .line 2312
    iget-object v0, p0, Lcn/volley/toolbox/DiskBasedCache;->bP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_0
    if-nez v1, :cond_1

    .line 225
    const-string v0, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 226
    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lcn/volley/toolbox/DiskBasedCache;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 225
    invoke-static {v0, v1}, Lcn/volley/VolleyLog;->V(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :cond_1
    monitor-exit p0

    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized Code(Ljava/lang/String;Lcn/volley/Cache$Entry;)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 199
    monitor-enter p0

    :try_start_0
    iget-object v0, p2, Lcn/volley/Cache$Entry;->data:[B

    array-length v2, v0

    .line 2254
    iget-wide v4, p0, Lcn/volley/toolbox/DiskBasedCache;->bQ:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iget v0, p0, Lcn/volley/toolbox/DiskBasedCache;->bS:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    .line 2257
    sget-boolean v0, Lcn/volley/VolleyLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2258
    const-string v0, "Pruning old cache entries."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcn/volley/VolleyLog;->Code(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2261
    :cond_0
    iget-wide v4, p0, Lcn/volley/toolbox/DiskBasedCache;->bQ:J

    .line 2263
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 2265
    iget-object v0, p0, Lcn/volley/toolbox/DiskBasedCache;->bP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2266
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 2284
    :cond_1
    sget-boolean v1, Lcn/volley/VolleyLog;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 2285
    const-string v1, "pruned %d files, %d bytes, %d ms"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2286
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-wide v8, p0, Lcn/volley/toolbox/DiskBasedCache;->bQ:J

    sub-long v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2285
    invoke-static {v1, v2}, Lcn/volley/VolleyLog;->Code(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    :cond_2
    invoke-direct {p0, p1}, Lcn/volley/toolbox/DiskBasedCache;->a(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 202
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 203
    new-instance v2, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;

    invoke-direct {v2, p1, p2}, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;-><init>(Ljava/lang/String;Lcn/volley/Cache$Entry;)V

    .line 204
    invoke-virtual {v2, v1}, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->Code(Ljava/io/OutputStream;)Z

    .line 205
    iget-object v3, p2, Lcn/volley/Cache$Entry;->data:[B

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 206
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 207
    invoke-direct {p0, p1, v2}, Lcn/volley/toolbox/DiskBasedCache;->Code(Ljava/lang/String;Lcn/volley/toolbox/DiskBasedCache$CacheHeader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 2267
    :cond_4
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2268
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 2269
    iget-object v8, v0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcn/volley/toolbox/DiskBasedCache;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    .line 2270
    if-eqz v8, :cond_5

    .line 2271
    iget-wide v8, p0, Lcn/volley/toolbox/DiskBasedCache;->bQ:J

    iget-wide v10, v0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcn/volley/toolbox/DiskBasedCache;->bQ:J

    .line 2276
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 2277
    add-int/lit8 v0, v1, 0x1

    .line 2279
    iget-wide v8, p0, Lcn/volley/toolbox/DiskBasedCache;->bQ:J

    int-to-long v10, v2

    add-long/2addr v8, v10

    long-to-float v1, v8

    iget v8, p0, Lcn/volley/toolbox/DiskBasedCache;->bS:I

    int-to-float v8, v8

    const v9, 0x3f666666    # 0.9f

    mul-float/2addr v8, v9

    cmpg-float v1, v1, v8

    if-ltz v1, :cond_1

    move v1, v0

    goto/16 :goto_0

    .line 2273
    :cond_5
    const-string v8, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 2274
    iget-object v11, v0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v0, v0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-static {v0}, Lcn/volley/toolbox/DiskBasedCache;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    .line 2273
    invoke-static {v8, v9}, Lcn/volley/VolleyLog;->V(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 211
    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 212
    if-nez v1, :cond_3

    .line 213
    const-string v1, "Could not clean up file %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcn/volley/VolleyLog;->V(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized S(Ljava/lang/String;)Lcn/volley/Cache$Entry;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/volley/toolbox/DiskBasedCache;->bP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    if-nez v0, :cond_0

    move-object v0, v1

    .line 132
    :goto_0
    monitor-exit p0

    return-object v0

    .line 112
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcn/volley/toolbox/DiskBasedCache;->a(Ljava/lang/String;)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 115
    :try_start_2
    new-instance v3, Lcn/volley/toolbox/DiskBasedCache$CountingInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5}, Lcn/volley/toolbox/DiskBasedCache$CountingInputStream;-><init>(Ljava/io/InputStream;B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    :try_start_3
    invoke-static {v3}, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->B(Ljava/io/InputStream;)Lcn/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 117
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v3}, Lcn/volley/toolbox/DiskBasedCache$CountingInputStream;->Code(Lcn/volley/toolbox/DiskBasedCache$CountingInputStream;)I

    move-result v2

    int-to-long v8, v2

    sub-long/2addr v6, v8

    long-to-int v2, v6

    invoke-static {v3, v2}, Lcn/volley/toolbox/DiskBasedCache;->Code(Ljava/io/InputStream;I)[B

    move-result-object v5

    .line 1404
    new-instance v2, Lcn/volley/Cache$Entry;

    invoke-direct {v2}, Lcn/volley/Cache$Entry;-><init>()V

    .line 1405
    iput-object v5, v2, Lcn/volley/Cache$Entry;->data:[B

    .line 1406
    iget-object v5, v0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->aG:Ljava/lang/String;

    iput-object v5, v2, Lcn/volley/Cache$Entry;->aG:Ljava/lang/String;

    .line 1407
    iget-wide v6, v0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->aH:J

    iput-wide v6, v2, Lcn/volley/Cache$Entry;->aH:J

    .line 1408
    iget-wide v6, v0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->aI:J

    iput-wide v6, v2, Lcn/volley/Cache$Entry;->aI:J

    .line 1409
    iget-wide v6, v0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->aJ:J

    iput-wide v6, v2, Lcn/volley/Cache$Entry;->aJ:J

    .line 1410
    iget-object v0, v0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->aK:Ljava/util/Map;

    iput-object v0, v2, Lcn/volley/Cache$Entry;->aK:Ljava/util/Map;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 130
    :try_start_4
    invoke-virtual {v3}, Lcn/volley/toolbox/DiskBasedCache$CountingInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v0, v2

    .line 118
    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 119
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 120
    :goto_1
    :try_start_5
    const-string v3, "%s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-static {v3, v5}, Lcn/volley/VolleyLog;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-direct {p0, p1}, Lcn/volley/toolbox/DiskBasedCache;->remove(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 128
    if-eqz v2, :cond_1

    .line 130
    :try_start_6
    invoke-virtual {v2}, Lcn/volley/toolbox/DiskBasedCache$CountingInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_1
    move-object v0, v1

    .line 122
    goto :goto_0

    .line 132
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 123
    :catch_3
    move-exception v0

    move-object v3, v1

    .line 124
    :goto_2
    :try_start_7
    const-string v2, "%s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/NegativeArraySizeException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-static {v2, v5}, Lcn/volley/VolleyLog;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-direct {p0, p1}, Lcn/volley/toolbox/DiskBasedCache;->remove(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 128
    if-eqz v3, :cond_2

    .line 130
    :try_start_8
    invoke-virtual {v3}, Lcn/volley/toolbox/DiskBasedCache$CountingInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_2
    move-object v0, v1

    .line 126
    goto/16 :goto_0

    .line 132
    :catch_4
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    .line 127
    :catchall_0
    move-exception v0

    move-object v3, v1

    .line 128
    :goto_3
    if-eqz v3, :cond_3

    .line 130
    :try_start_9
    invoke-virtual {v3}, Lcn/volley/toolbox/DiskBasedCache$CountingInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 135
    :cond_3
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 106
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 132
    :catch_5
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    .line 127
    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_3

    .line 123
    :catch_6
    move-exception v0

    goto :goto_2

    .line 119
    :catch_7
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method public final declared-synchronized clear()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcn/volley/toolbox/DiskBasedCache;->bR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 91
    if-eqz v1, :cond_0

    .line 92
    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_1

    .line 96
    :cond_0
    iget-object v0, p0, Lcn/volley/toolbox/DiskBasedCache;->bP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/volley/toolbox/DiskBasedCache;->bQ:J

    .line 98
    const-string v0, "Cache cleared."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcn/volley/VolleyLog;->V(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 92
    :cond_1
    :try_start_1
    aget-object v3, v1, v0

    .line 93
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized initialize()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 144
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcn/volley/toolbox/DiskBasedCache;->bR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    iget-object v0, p0, Lcn/volley/toolbox/DiskBasedCache;->bR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    const-string v0, "Unable to create cache dir %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/volley/toolbox/DiskBasedCache;->bR:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcn/volley/VolleyLog;->I(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 174
    :cond_0
    monitor-exit p0

    return-void

    .line 151
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcn/volley/toolbox/DiskBasedCache;->bR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 152
    if-eqz v3, :cond_0

    .line 155
    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 156
    const/4 v1, 0x0

    .line 158
    :try_start_2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    :try_start_3
    invoke-static {v0}, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->B(Ljava/io/InputStream;)Lcn/volley/toolbox/DiskBasedCache$CacheHeader;

    move-result-object v1

    .line 160
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, v1, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    .line 161
    iget-object v6, v1, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-direct {p0, v6, v1}, Lcn/volley/toolbox/DiskBasedCache;->Code(Ljava/lang/String;Lcn/volley/toolbox/DiskBasedCache$CacheHeader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 169
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 155
    :cond_2
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    if-eqz v5, :cond_3

    .line 164
    :try_start_5
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 168
    :cond_3
    if-eqz v0, :cond_2

    .line 169
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 171
    :catch_1
    move-exception v0

    goto :goto_1

    .line 166
    :catchall_0
    move-exception v0

    .line 168
    :goto_3
    if-eqz v1, :cond_4

    .line 169
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 172
    :cond_4
    :goto_4
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 144
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_1

    .line 166
    :catchall_2
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_3

    .line 163
    :catch_4
    move-exception v1

    goto :goto_2
.end method
