.class public Lcn/volley/toolbox/ImageLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bX:Lcn/volley/toolbox/ImageLoader$ImageCache;

.field private final bY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final bZ:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private ba:Ljava/lang/Runnable;

.field private final bl:Lcn/volley/RequestQueue;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic Code(Lcn/volley/toolbox/ImageLoader;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcn/volley/toolbox/ImageLoader;->bY:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic Code(Lcn/volley/toolbox/ImageLoader;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/volley/toolbox/ImageLoader;->ba:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic Code(Lcn/volley/toolbox/ImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 253
    .line 2258
    iget-object v0, p0, Lcn/volley/toolbox/ImageLoader;->bY:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;

    .line 2260
    if-eqz v0, :cond_0

    .line 2262
    invoke-static {v0, p2}, Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;->Code(Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;Landroid/graphics/Bitmap;)V

    .line 2265
    invoke-direct {p0, p1, v0}, Lcn/volley/toolbox/ImageLoader;->Code(Ljava/lang/String;Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;)V

    .line 253
    :cond_0
    return-void
.end method

.method static synthetic Code(Lcn/volley/toolbox/ImageLoader;Ljava/lang/String;Lcn/volley/VolleyError;)V
    .locals 1

    .prologue
    .line 273
    .line 2276
    iget-object v0, p0, Lcn/volley/toolbox/ImageLoader;->bY:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;

    .line 2279
    invoke-virtual {v0, p2}, Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;->C(Lcn/volley/VolleyError;)V

    .line 2281
    if-eqz v0, :cond_0

    .line 2283
    invoke-direct {p0, p1, v0}, Lcn/volley/toolbox/ImageLoader;->Code(Ljava/lang/String;Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;)V

    .line 273
    :cond_0
    return-void
.end method

.method private Code(Ljava/lang/String;Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;)V
    .locals 4

    .prologue
    .line 432
    iget-object v0, p0, Lcn/volley/toolbox/ImageLoader;->bZ:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v0, p0, Lcn/volley/toolbox/ImageLoader;->ba:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 436
    new-instance v0, Lcn/volley/toolbox/ImageLoader$4;

    invoke-direct {v0, p0}, Lcn/volley/toolbox/ImageLoader$4;-><init>(Lcn/volley/toolbox/ImageLoader;)V

    iput-object v0, p0, Lcn/volley/toolbox/ImageLoader;->ba:Ljava/lang/Runnable;

    .line 461
    iget-object v0, p0, Lcn/volley/toolbox/ImageLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/volley/toolbox/ImageLoader;->ba:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 463
    :cond_0
    return-void
.end method

.method static synthetic V(Lcn/volley/toolbox/ImageLoader;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcn/volley/toolbox/ImageLoader;->bZ:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public final Code(Ljava/lang/String;Lcn/volley/toolbox/ImageLoader$ImageListener;II)Lcn/volley/toolbox/ImageLoader$ImageContainer;
    .locals 13

    .prologue
    .line 1466
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 1467
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ImageLoader must be invoked from the main thread."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1477
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "#W"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1478
    const-string v2, "#H"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 194
    iget-object v1, p0, Lcn/volley/toolbox/ImageLoader;->bX:Lcn/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v1}, Lcn/volley/toolbox/ImageLoader$ImageCache;->J()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 195
    if-eqz v3, :cond_1

    .line 197
    new-instance v1, Lcn/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcn/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcn/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcn/volley/toolbox/ImageLoader$ImageListener;)V

    .line 198
    const/4 v2, 0x1

    invoke-interface {p2, v1, v2}, Lcn/volley/toolbox/ImageLoader$ImageListener;->Code(Lcn/volley/toolbox/ImageLoader$ImageContainer;Z)V

    .line 236
    :goto_0
    return-object v1

    .line 204
    :cond_1
    new-instance v1, Lcn/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v3, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcn/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcn/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcn/volley/toolbox/ImageLoader$ImageListener;)V

    .line 207
    const/4 v2, 0x1

    invoke-interface {p2, v1, v2}, Lcn/volley/toolbox/ImageLoader$ImageListener;->Code(Lcn/volley/toolbox/ImageLoader$ImageContainer;Z)V

    .line 210
    iget-object v2, p0, Lcn/volley/toolbox/ImageLoader;->bY:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;

    .line 211
    if-eqz v2, :cond_2

    .line 213
    invoke-virtual {v2, v1}, Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;->Code(Lcn/volley/toolbox/ImageLoader$ImageContainer;)V

    goto :goto_0

    .line 220
    :cond_2
    new-instance v6, Lcn/volley/toolbox/ImageRequest;

    new-instance v8, Lcn/volley/toolbox/ImageLoader$2;

    invoke-direct {v8, p0, v5}, Lcn/volley/toolbox/ImageLoader$2;-><init>(Lcn/volley/toolbox/ImageLoader;Ljava/lang/String;)V

    .line 226
    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v12, Lcn/volley/toolbox/ImageLoader$3;

    invoke-direct {v12, p0, v5}, Lcn/volley/toolbox/ImageLoader$3;-><init>(Lcn/volley/toolbox/ImageLoader;Ljava/lang/String;)V

    move-object v7, p1

    move/from16 v9, p3

    move/from16 v10, p4

    .line 220
    invoke-direct/range {v6 .. v12}, Lcn/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lcn/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcn/volley/Response$ErrorListener;)V

    .line 233
    iget-object v2, p0, Lcn/volley/toolbox/ImageLoader;->bl:Lcn/volley/RequestQueue;

    invoke-virtual {v2, v6}, Lcn/volley/RequestQueue;->I(Lcn/volley/Request;)Lcn/volley/Request;

    .line 234
    iget-object v2, p0, Lcn/volley/toolbox/ImageLoader;->bY:Ljava/util/HashMap;

    .line 235
    new-instance v3, Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;

    invoke-direct {v3, p0, v6, v1}, Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;-><init>(Lcn/volley/toolbox/ImageLoader;Lcn/volley/Request;Lcn/volley/toolbox/ImageLoader$ImageContainer;)V

    .line 234
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
