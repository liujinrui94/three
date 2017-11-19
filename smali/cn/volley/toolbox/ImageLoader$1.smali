.class Lcn/volley/toolbox/ImageLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/volley/toolbox/ImageLoader$ImageListener;


# instance fields
.field private final synthetic ca:I

.field private final synthetic cb:Landroid/widget/ImageView;

.field private final synthetic cc:I


# virtual methods
.method public final Code(Lcn/volley/VolleyError;)V
    .locals 2

    .prologue
    .line 103
    iget v0, p0, Lcn/volley/toolbox/ImageLoader$1;->ca:I

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcn/volley/toolbox/ImageLoader$1;->cb:Landroid/widget/ImageView;

    iget v1, p0, Lcn/volley/toolbox/ImageLoader$1;->ca:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    :cond_0
    return-void
.end method

.method public final Code(Lcn/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p1}, Lcn/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcn/volley/toolbox/ImageLoader$1;->cb:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcn/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget v0, p0, Lcn/volley/toolbox/ImageLoader$1;->cc:I

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcn/volley/toolbox/ImageLoader$1;->cb:Landroid/widget/ImageView;

    iget v1, p0, Lcn/volley/toolbox/ImageLoader$1;->cc:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
