.class public Lcn/volley/toolbox/NetworkImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private cr:Lcn/volley/toolbox/ImageLoader$ImageContainer;


# direct methods
.method static synthetic Code(Lcn/volley/toolbox/NetworkImageView;)I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic V(Lcn/volley/toolbox/NetworkImageView;)I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 216
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 217
    invoke-virtual {p0}, Lcn/volley/toolbox/NetworkImageView;->invalidate()V

    .line 218
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 203
    iget-object v0, p0, Lcn/volley/toolbox/NetworkImageView;->cr:Lcn/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcn/volley/toolbox/NetworkImageView;->cr:Lcn/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcn/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 207
    invoke-virtual {p0, v1}, Lcn/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 209
    iput-object v1, p0, Lcn/volley/toolbox/NetworkImageView;->cr:Lcn/volley/toolbox/ImageLoader$ImageContainer;

    .line 211
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 212
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .prologue
    const/4 v6, -0x2

    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 197
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 1104
    invoke-virtual {p0}, Lcn/volley/toolbox/NetworkImageView;->getWidth()I

    move-result v5

    .line 1105
    invoke-virtual {p0}, Lcn/volley/toolbox/NetworkImageView;->getHeight()I

    move-result v4

    .line 1108
    invoke-virtual {p0}, Lcn/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1109
    invoke-virtual {p0}, Lcn/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v6, :cond_3

    move v0, v1

    .line 1110
    :goto_0
    invoke-virtual {p0}, Lcn/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v6, :cond_4

    move v3, v1

    :goto_1
    move v6, v0

    .line 1115
    :goto_2
    if-eqz v6, :cond_5

    if-eqz v3, :cond_5

    move v0, v1

    .line 1116
    :goto_3
    if-nez v5, :cond_0

    if-nez v4, :cond_0

    if-eqz v0, :cond_2

    .line 1122
    :cond_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1123
    iget-object v0, p0, Lcn/volley/toolbox/NetworkImageView;->cr:Lcn/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_1

    .line 1124
    iget-object v0, p0, Lcn/volley/toolbox/NetworkImageView;->cr:Lcn/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcn/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 1125
    iput-object v7, p0, Lcn/volley/toolbox/NetworkImageView;->cr:Lcn/volley/toolbox/ImageLoader$ImageContainer;

    .line 1191
    :cond_1
    invoke-virtual {p0, v7}, Lcn/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1128
    :cond_2
    :goto_4
    return-void

    :cond_3
    move v0, v2

    .line 1109
    goto :goto_0

    :cond_4
    move v3, v2

    .line 1110
    goto :goto_1

    :cond_5
    move v0, v2

    .line 1115
    goto :goto_3

    .line 1132
    :cond_6
    iget-object v0, p0, Lcn/volley/toolbox/NetworkImageView;->cr:Lcn/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcn/volley/toolbox/NetworkImageView;->cr:Lcn/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcn/volley/toolbox/ImageLoader$ImageContainer;->K()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1133
    iget-object v0, p0, Lcn/volley/toolbox/NetworkImageView;->cr:Lcn/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcn/volley/toolbox/ImageLoader$ImageContainer;->K()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1138
    iget-object v0, p0, Lcn/volley/toolbox/NetworkImageView;->cr:Lcn/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcn/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 2191
    invoke-virtual {p0, v7}, Lcn/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1144
    :cond_7
    if-eqz v6, :cond_8

    move v0, v2

    .line 1145
    :goto_5
    if-eqz v3, :cond_9

    .line 1150
    :goto_6
    new-instance v3, Lcn/volley/toolbox/NetworkImageView$1;

    invoke-direct {v3, p0, v1}, Lcn/volley/toolbox/NetworkImageView$1;-><init>(Lcn/volley/toolbox/NetworkImageView;Z)V

    .line 1149
    invoke-virtual {v7, v7, v3, v0, v2}, Lcn/volley/toolbox/ImageLoader;->Code(Ljava/lang/String;Lcn/volley/toolbox/ImageLoader$ImageListener;II)Lcn/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object v0

    .line 1183
    iput-object v0, p0, Lcn/volley/toolbox/NetworkImageView;->cr:Lcn/volley/toolbox/ImageLoader$ImageContainer;

    goto :goto_4

    :cond_8
    move v0, v5

    .line 1144
    goto :goto_5

    :cond_9
    move v2, v4

    .line 1145
    goto :goto_6

    :cond_a
    move v3, v2

    move v6, v2

    goto :goto_2
.end method
