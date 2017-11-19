.class Lcom/shishicai/app/image/CustomImageLoader$BitmapDisplayer;
.super Ljava/lang/Object;
.source "CustomImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/image/CustomImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapDisplayer"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field photoToLoad:Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;

.field final synthetic this$0:Lcom/shishicai/app/image/CustomImageLoader;


# direct methods
.method public constructor <init>(Lcom/shishicai/app/image/CustomImageLoader;Landroid/graphics/Bitmap;Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/image/CustomImageLoader;
    .param p2, "b"    # Landroid/graphics/Bitmap;
    .param p3, "p"    # Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/shishicai/app/image/CustomImageLoader$BitmapDisplayer;->this$0:Lcom/shishicai/app/image/CustomImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p2, p0, Lcom/shishicai/app/image/CustomImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    .line 169
    iput-object p3, p0, Lcom/shishicai/app/image/CustomImageLoader$BitmapDisplayer;->photoToLoad:Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;

    .line 170
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/shishicai/app/image/CustomImageLoader$BitmapDisplayer;->this$0:Lcom/shishicai/app/image/CustomImageLoader;

    iget-object v1, p0, Lcom/shishicai/app/image/CustomImageLoader$BitmapDisplayer;->photoToLoad:Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;

    invoke-virtual {v0, v1}, Lcom/shishicai/app/image/CustomImageLoader;->imageViewReused(Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/shishicai/app/image/CustomImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/shishicai/app/image/CustomImageLoader$BitmapDisplayer;->photoToLoad:Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;

    iget-object v0, v0, Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/shishicai/app/image/CustomImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/shishicai/app/image/CustomImageLoader$BitmapDisplayer;->photoToLoad:Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;

    iget-object v0, v0, Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
