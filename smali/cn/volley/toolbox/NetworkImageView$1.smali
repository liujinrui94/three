.class Lcn/volley/toolbox/NetworkImageView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/volley/toolbox/ImageLoader$ImageListener;


# instance fields
.field private synthetic cs:Lcn/volley/toolbox/NetworkImageView;

.field private final synthetic ct:Z


# direct methods
.method constructor <init>(Lcn/volley/toolbox/NetworkImageView;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/volley/toolbox/NetworkImageView$1;->cs:Lcn/volley/toolbox/NetworkImageView;

    iput-boolean p2, p0, Lcn/volley/toolbox/NetworkImageView$1;->ct:Z

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code(Lcn/volley/VolleyError;)V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcn/volley/toolbox/NetworkImageView$1;->cs:Lcn/volley/toolbox/NetworkImageView;

    invoke-static {v0}, Lcn/volley/toolbox/NetworkImageView;->Code(Lcn/volley/toolbox/NetworkImageView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcn/volley/toolbox/NetworkImageView$1;->cs:Lcn/volley/toolbox/NetworkImageView;

    iget-object v1, p0, Lcn/volley/toolbox/NetworkImageView$1;->cs:Lcn/volley/toolbox/NetworkImageView;

    invoke-static {v1}, Lcn/volley/toolbox/NetworkImageView;->Code(Lcn/volley/toolbox/NetworkImageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/volley/toolbox/NetworkImageView;->setImageResource(I)V

    .line 156
    :cond_0
    return-void
.end method

.method public final Code(Lcn/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 2

    .prologue
    .line 164
    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcn/volley/toolbox/NetworkImageView$1;->ct:Z

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcn/volley/toolbox/NetworkImageView$1;->cs:Lcn/volley/toolbox/NetworkImageView;

    new-instance v1, Lcn/volley/toolbox/NetworkImageView$1$1;

    invoke-direct {v1, p0, p1}, Lcn/volley/toolbox/NetworkImageView$1$1;-><init>(Lcn/volley/toolbox/NetworkImageView$1;Lcn/volley/toolbox/ImageLoader$ImageContainer;)V

    invoke-virtual {v0, v1}, Lcn/volley/toolbox/NetworkImageView;->post(Ljava/lang/Runnable;)Z

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    invoke-virtual {p1}, Lcn/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcn/volley/toolbox/NetworkImageView$1;->cs:Lcn/volley/toolbox/NetworkImageView;

    invoke-virtual {p1}, Lcn/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 176
    :cond_2
    iget-object v0, p0, Lcn/volley/toolbox/NetworkImageView$1;->cs:Lcn/volley/toolbox/NetworkImageView;

    invoke-static {v0}, Lcn/volley/toolbox/NetworkImageView;->V(Lcn/volley/toolbox/NetworkImageView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcn/volley/toolbox/NetworkImageView$1;->cs:Lcn/volley/toolbox/NetworkImageView;

    iget-object v1, p0, Lcn/volley/toolbox/NetworkImageView$1;->cs:Lcn/volley/toolbox/NetworkImageView;

    invoke-static {v1}, Lcn/volley/toolbox/NetworkImageView;->V(Lcn/volley/toolbox/NetworkImageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/volley/toolbox/NetworkImageView;->setImageResource(I)V

    goto :goto_0
.end method
