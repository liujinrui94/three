.class public Lcom/shishicai/app/utils/ImageLoaderUtils;
.super Ljava/lang/Object;
.source "ImageLoaderUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/utils/ImageLoaderUtils$AnimateFirstDisplayListener;
    }
.end annotation


# static fields
.field private static imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private static volatile instance:Lcom/shishicai/app/utils/ImageLoaderUtils;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    sput-object v0, Lcom/shishicai/app/utils/ImageLoaderUtils;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/shishicai/app/utils/ImageLoaderUtils;
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/shishicai/app/utils/ImageLoaderUtils;->instance:Lcom/shishicai/app/utils/ImageLoaderUtils;

    if-nez v0, :cond_1

    .line 30
    const-class v1, Lcom/shishicai/app/utils/ImageLoaderUtils;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lcom/shishicai/app/utils/ImageLoaderUtils;->instance:Lcom/shishicai/app/utils/ImageLoaderUtils;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/shishicai/app/utils/ImageLoaderUtils;

    invoke-direct {v0}, Lcom/shishicai/app/utils/ImageLoaderUtils;-><init>()V

    sput-object v0, Lcom/shishicai/app/utils/ImageLoaderUtils;->instance:Lcom/shishicai/app/utils/ImageLoaderUtils;

    .line 34
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    sget-object v0, Lcom/shishicai/app/utils/ImageLoaderUtils;->instance:Lcom/shishicai/app/utils/ImageLoaderUtils;

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/shishicai/app/utils/ImageLoaderUtils;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->clearDiskCache()V

    .line 69
    sget-object v0, Lcom/shishicai/app/utils/ImageLoaderUtils;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->clearMemoryCache()V

    .line 70
    return-void
.end method

.method public getImageLoader()Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/shishicai/app/utils/ImageLoaderUtils;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-object v0
.end method

.method public setImageNetResource(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 44
    sget-object v0, Lcom/shishicai/app/utils/ImageLoaderUtils;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    sget-object v1, Lcom/shishicai/app/Constant;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    sget-object v2, Lcom/shishicai/app/Constant;->animateFirstListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 45
    return-void
.end method
