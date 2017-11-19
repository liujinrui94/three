.class Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final aY:Lcn/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/volley/Request",
            "<*>;"
        }
    .end annotation
.end field

.field private cf:Landroid/graphics/Bitmap;

.field private cg:Lcn/volley/VolleyError;

.field private final ch:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcn/volley/toolbox/ImageLoader$ImageContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/volley/toolbox/ImageLoader;Lcn/volley/Request;Lcn/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/volley/Request",
            "<*>;",
            "Lcn/volley/toolbox/ImageLoader$ImageContainer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;->ch:Ljava/util/LinkedList;

    .line 383
    iput-object p2, p0, Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;->aY:Lcn/volley/Request;

    .line 384
    iget-object v0, p0, Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;->ch:Ljava/util/LinkedList;

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 385
    return-void
.end method

.method static synthetic Code(Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;->ch:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic Code(Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;->cf:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic V(Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;->cf:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public final C(Lcn/volley/VolleyError;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;->cg:Lcn/volley/VolleyError;

    .line 392
    return-void
.end method

.method public final Code(Lcn/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;->ch:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 407
    return-void
.end method

.method public final H()Lcn/volley/VolleyError;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;->cg:Lcn/volley/VolleyError;

    return-object v0
.end method

.method public final V(Lcn/volley/toolbox/ImageLoader$ImageContainer;)Z
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;->ch:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 417
    iget-object v0, p0, Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;->ch:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;->aY:Lcn/volley/Request;

    invoke-virtual {v0}, Lcn/volley/Request;->cancel()V

    .line 419
    const/4 v0, 0x1

    .line 421
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
