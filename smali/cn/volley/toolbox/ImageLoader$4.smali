.class Lcn/volley/toolbox/ImageLoader$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic cd:Lcn/volley/toolbox/ImageLoader;


# direct methods
.method constructor <init>(Lcn/volley/toolbox/ImageLoader;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/volley/toolbox/ImageLoader$4;->cd:Lcn/volley/toolbox/ImageLoader;

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 439
    iget-object v0, p0, Lcn/volley/toolbox/ImageLoader$4;->cd:Lcn/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcn/volley/toolbox/ImageLoader;->V(Lcn/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 455
    iget-object v0, p0, Lcn/volley/toolbox/ImageLoader$4;->cd:Lcn/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcn/volley/toolbox/ImageLoader;->V(Lcn/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 456
    iget-object v0, p0, Lcn/volley/toolbox/ImageLoader$4;->cd:Lcn/volley/toolbox/ImageLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/volley/toolbox/ImageLoader;->Code(Lcn/volley/toolbox/ImageLoader;Ljava/lang/Runnable;)V

    .line 457
    return-void

    .line 439
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;

    .line 440
    invoke-static {v0}, Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;->Code(Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/volley/toolbox/ImageLoader$ImageContainer;

    .line 444
    invoke-static {v1}, Lcn/volley/toolbox/ImageLoader$ImageContainer;->I(Lcn/volley/toolbox/ImageLoader$ImageContainer;)Lcn/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 447
    invoke-virtual {v0}, Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;->H()Lcn/volley/VolleyError;

    move-result-object v4

    if-nez v4, :cond_3

    .line 448
    invoke-static {v0}, Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;->V(Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/volley/toolbox/ImageLoader$ImageContainer;->Code(Lcn/volley/toolbox/ImageLoader$ImageContainer;Landroid/graphics/Bitmap;)V

    .line 449
    invoke-static {v1}, Lcn/volley/toolbox/ImageLoader$ImageContainer;->I(Lcn/volley/toolbox/ImageLoader$ImageContainer;)Lcn/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Lcn/volley/toolbox/ImageLoader$ImageListener;->Code(Lcn/volley/toolbox/ImageLoader$ImageContainer;Z)V

    goto :goto_0

    .line 451
    :cond_3
    invoke-static {v1}, Lcn/volley/toolbox/ImageLoader$ImageContainer;->I(Lcn/volley/toolbox/ImageLoader$ImageContainer;)Lcn/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v1

    invoke-virtual {v0}, Lcn/volley/toolbox/ImageLoader$BatchedImageRequest;->H()Lcn/volley/VolleyError;

    move-result-object v4

    invoke-interface {v1, v4}, Lcn/volley/toolbox/ImageLoader$ImageListener;->Code(Lcn/volley/VolleyError;)V

    goto :goto_0
.end method
