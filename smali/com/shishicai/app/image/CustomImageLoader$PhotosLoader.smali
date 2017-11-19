.class Lcom/shishicai/app/image/CustomImageLoader$PhotosLoader;
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
    name = "PhotosLoader"
.end annotation


# instance fields
.field photoToLoad:Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;

.field final synthetic this$0:Lcom/shishicai/app/image/CustomImageLoader;


# direct methods
.method constructor <init>(Lcom/shishicai/app/image/CustomImageLoader;Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/image/CustomImageLoader;
    .param p2, "photoToLoad"    # Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/shishicai/app/image/CustomImageLoader$PhotosLoader;->this$0:Lcom/shishicai/app/image/CustomImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p2, p0, Lcom/shishicai/app/image/CustomImageLoader$PhotosLoader;->photoToLoad:Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;

    .line 140
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 144
    iget-object v3, p0, Lcom/shishicai/app/image/CustomImageLoader$PhotosLoader;->this$0:Lcom/shishicai/app/image/CustomImageLoader;

    iget-object v4, p0, Lcom/shishicai/app/image/CustomImageLoader$PhotosLoader;->photoToLoad:Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;

    invoke-virtual {v3, v4}, Lcom/shishicai/app/image/CustomImageLoader;->imageViewReused(Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v3, p0, Lcom/shishicai/app/image/CustomImageLoader$PhotosLoader;->this$0:Lcom/shishicai/app/image/CustomImageLoader;

    iget-object v4, p0, Lcom/shishicai/app/image/CustomImageLoader$PhotosLoader;->photoToLoad:Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;

    iget-object v4, v4, Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/shishicai/app/image/CustomImageLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 147
    .local v2, "bmp":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/shishicai/app/image/CustomImageLoader$PhotosLoader;->this$0:Lcom/shishicai/app/image/CustomImageLoader;

    iget-object v3, v3, Lcom/shishicai/app/image/CustomImageLoader;->memoryCache:Lcom/shishicai/app/image/MemoryCache;

    iget-object v4, p0, Lcom/shishicai/app/image/CustomImageLoader$PhotosLoader;->photoToLoad:Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;

    iget-object v4, v4, Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/shishicai/app/image/MemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 148
    iget-object v3, p0, Lcom/shishicai/app/image/CustomImageLoader$PhotosLoader;->this$0:Lcom/shishicai/app/image/CustomImageLoader;

    iget-object v4, p0, Lcom/shishicai/app/image/CustomImageLoader$PhotosLoader;->photoToLoad:Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;

    invoke-virtual {v3, v4}, Lcom/shishicai/app/image/CustomImageLoader;->imageViewReused(Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 150
    new-instance v1, Lcom/shishicai/app/image/CustomImageLoader$BitmapDisplayer;

    iget-object v3, p0, Lcom/shishicai/app/image/CustomImageLoader$PhotosLoader;->this$0:Lcom/shishicai/app/image/CustomImageLoader;

    iget-object v4, p0, Lcom/shishicai/app/image/CustomImageLoader$PhotosLoader;->photoToLoad:Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;

    invoke-direct {v1, v3, v2, v4}, Lcom/shishicai/app/image/CustomImageLoader$BitmapDisplayer;-><init>(Lcom/shishicai/app/image/CustomImageLoader;Landroid/graphics/Bitmap;Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;)V

    .line 151
    .local v1, "bd":Lcom/shishicai/app/image/CustomImageLoader$BitmapDisplayer;
    iget-object v3, p0, Lcom/shishicai/app/image/CustomImageLoader$PhotosLoader;->photoToLoad:Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;

    iget-object v3, v3, Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 152
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
