.class Lcn/volley/toolbox/DiskBasedCache$CacheHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public aG:Ljava/lang/String;

.field public aH:J

.field public aI:J

.field public aJ:J

.field public aK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public key:Ljava/lang/String;

.field public size:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcn/volley/Cache$Entry;)V
    .locals 2

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p1, p0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    .line 368
    iget-object v0, p2, Lcn/volley/Cache$Entry;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    .line 369
    iget-object v0, p2, Lcn/volley/Cache$Entry;->aG:Ljava/lang/String;

    iput-object v0, p0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->aG:Ljava/lang/String;

    .line 370
    iget-wide v0, p2, Lcn/volley/Cache$Entry;->aH:J

    iput-wide v0, p0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->aH:J

    .line 371
    iget-wide v0, p2, Lcn/volley/Cache$Entry;->aI:J

    iput-wide v0, p0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->aI:J

    .line 372
    iget-wide v0, p2, Lcn/volley/Cache$Entry;->aJ:J

    iput-wide v0, p0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->aJ:J

    .line 373
    iget-object v0, p2, Lcn/volley/Cache$Entry;->aK:Ljava/util/Map;

    iput-object v0, p0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->aK:Ljava/util/Map;

    .line 374
    return-void
.end method

.method public static B(Ljava/io/InputStream;)Lcn/volley/toolbox/DiskBasedCache$CacheHeader;
    .locals 4

    .prologue
    .line 382
    new-instance v0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;

    invoke-direct {v0}, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;-><init>()V

    .line 383
    invoke-static {p0}, Lcn/volley/toolbox/DiskBasedCache;->readInt(Ljava/io/InputStream;)I

    move-result v1

    .line 384
    const v2, 0x20120504

    if-eq v1, v2, :cond_0

    .line 386
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 388
    :cond_0
    invoke-static {p0}, Lcn/volley/toolbox/DiskBasedCache;->I(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    .line 389
    invoke-static {p0}, Lcn/volley/toolbox/DiskBasedCache;->I(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->aG:Ljava/lang/String;

    .line 390
    iget-object v1, v0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->aG:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 391
    const/4 v1, 0x0

    iput-object v1, v0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->aG:Ljava/lang/String;

    .line 393
    :cond_1
    invoke-static {p0}, Lcn/volley/toolbox/DiskBasedCache;->V(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->aH:J

    .line 394
    invoke-static {p0}, Lcn/volley/toolbox/DiskBasedCache;->V(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->aI:J

    .line 395
    invoke-static {p0}, Lcn/volley/toolbox/DiskBasedCache;->V(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->aJ:J

    .line 396
    invoke-static {p0}, Lcn/volley/toolbox/DiskBasedCache;->Z(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->aK:Ljava/util/Map;

    .line 397
    return-object v0
.end method


# virtual methods
.method public final Code(Ljava/io/OutputStream;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 420
    const v2, 0x20120504

    :try_start_0
    invoke-static {p1, v2}, Lcn/volley/toolbox/DiskBasedCache;->Code(Ljava/io/OutputStream;I)V

    .line 421
    iget-object v2, p0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-static {p1, v2}, Lcn/volley/toolbox/DiskBasedCache;->Code(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 422
    iget-object v2, p0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->aG:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :goto_0
    invoke-static {p1, v2}, Lcn/volley/toolbox/DiskBasedCache;->Code(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 423
    iget-wide v2, p0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->aH:J

    invoke-static {p1, v2, v3}, Lcn/volley/toolbox/DiskBasedCache;->Code(Ljava/io/OutputStream;J)V

    .line 424
    iget-wide v2, p0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->aI:J

    invoke-static {p1, v2, v3}, Lcn/volley/toolbox/DiskBasedCache;->Code(Ljava/io/OutputStream;J)V

    .line 425
    iget-wide v2, p0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->aJ:J

    invoke-static {p1, v2, v3}, Lcn/volley/toolbox/DiskBasedCache;->Code(Ljava/io/OutputStream;J)V

    .line 426
    iget-object v2, p0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->aK:Ljava/util/Map;

    invoke-static {v2, p1}, Lcn/volley/toolbox/DiskBasedCache;->Code(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 427
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 431
    :goto_1
    return v0

    .line 422
    :cond_0
    iget-object v2, p0, Lcn/volley/toolbox/DiskBasedCache$CacheHeader;->aG:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 429
    :catch_0
    move-exception v2

    .line 430
    const-string v3, "%s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lcn/volley/VolleyLog;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 431
    goto :goto_1
.end method
