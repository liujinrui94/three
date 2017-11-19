.class public Lcn/volley/toolbox/ImageLoader$ImageContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private synthetic cd:Lcn/volley/toolbox/ImageLoader;

.field private ci:Landroid/graphics/Bitmap;

.field private final cj:Lcn/volley/toolbox/ImageLoader$ImageListener;

.field private final ck:Ljava/lang/String;

.field private final cl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcn/volley/toolbox/ImageLoader$ImageListener;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcn/volley/toolbox/ImageLoader$ImageContainer;->cd:Lcn/volley/toolbox/ImageLoader;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p2, p0, Lcn/volley/toolbox/ImageLoader$ImageContainer;->ci:Landroid/graphics/Bitmap;

    .line 314
    iput-object p3, p0, Lcn/volley/toolbox/ImageLoader$ImageContainer;->cl:Ljava/lang/String;

    .line 315
    iput-object p4, p0, Lcn/volley/toolbox/ImageLoader$ImageContainer;->ck:Ljava/lang/String;

    .line 316
    iput-object p5, p0, Lcn/volley/toolbox/ImageLoader$ImageContainer;->cj:Lcn/volley/toolbox/ImageLoader$ImageListener;

    .line 317
    return-void
.end method

.method static synthetic Code(Lcn/volley/toolbox/ImageLoader$ImageContainer;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcn/volley/toolbox/ImageLoader$ImageContainer;->ci:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic I(Lcn/volley/toolbox/ImageLoader$ImageContainer;)Lcn/volley/toolbox/ImageLoader$ImageListener;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcn/volley/toolbox/ImageLoader$ImageContainer;->cj:Lcn/volley/toolbox/ImageLoader$ImageListener;

    return-object v0
.end method


# virtual methods
.method public final K()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcn/volley/toolbox/ImageLoader$ImageContainer;->cl:Ljava/lang/String;

    return-object v0
.end method

.method public final cancelRequest()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcn/volley/toolbox/ImageLoader$ImageContainer;->cj:Lcn/volley/toolbox/ImageLoader$ImageListener;

    if-nez v0, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lcn/volley/toolbox/ImageLoader$ImageContainer;->cd:Lcn/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcn/volley/toolbox/ImageLoader;->Code(Lcn/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcn/volley/toolbox/ImageLoader$ImageContainer;->ck:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;

    .line 328
    if-eqz v0, :cond_2

    .line 329
    invoke-virtual {v0, p0}, Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;->V(Lcn/volley/toolbox/ImageLoader$ImageContainer;)Z

    move-result v0

    .line 330
    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcn/volley/toolbox/ImageLoader$ImageContainer;->cd:Lcn/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcn/volley/toolbox/ImageLoader;->Code(Lcn/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcn/volley/toolbox/ImageLoader$ImageContainer;->ck:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 335
    :cond_2
    iget-object v0, p0, Lcn/volley/toolbox/ImageLoader$ImageContainer;->cd:Lcn/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcn/volley/toolbox/ImageLoader;->V(Lcn/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcn/volley/toolbox/ImageLoader$ImageContainer;->ck:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;

    .line 336
    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0, p0}, Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;->V(Lcn/volley/toolbox/ImageLoader$ImageContainer;)Z

    .line 338
    invoke-static {v0}, Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;->Code(Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcn/volley/toolbox/ImageLoader$ImageContainer;->cd:Lcn/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcn/volley/toolbox/ImageLoader;->V(Lcn/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcn/volley/toolbox/ImageLoader$ImageContainer;->ck:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcn/volley/toolbox/ImageLoader$ImageContainer;->ci:Landroid/graphics/Bitmap;

    return-object v0
.end method
