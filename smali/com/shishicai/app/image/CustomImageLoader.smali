.class public Lcom/shishicai/app/image/CustomImageLoader;
.super Ljava/lang/Object;
.source "CustomImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/image/CustomImageLoader$BitmapDisplayer;,
        Lcom/shishicai/app/image/CustomImageLoader$PhotosLoader;,
        Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;
    }
.end annotation


# instance fields
.field executorService:Ljava/util/concurrent/ExecutorService;

.field fileCache:Lcom/shishicai/app/image/FileCache;

.field private imageViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field memoryCache:Lcom/shishicai/app/image/MemoryCache;

.field final stub_id:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/shishicai/app/image/MemoryCache;

    invoke-direct {v0}, Lcom/shishicai/app/image/MemoryCache;-><init>()V

    iput-object v0, p0, Lcom/shishicai/app/image/CustomImageLoader;->memoryCache:Lcom/shishicai/app/image/MemoryCache;

    .line 30
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 31
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/shishicai/app/image/CustomImageLoader;->imageViews:Ljava/util/Map;

    .line 39
    const v0, 0x7f020073

    iput v0, p0, Lcom/shishicai/app/image/CustomImageLoader;->stub_id:I

    .line 35
    new-instance v0, Lcom/shishicai/app/image/FileCache;

    invoke-direct {v0, p1}, Lcom/shishicai/app/image/FileCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shishicai/app/image/CustomImageLoader;->fileCache:Lcom/shishicai/app/image/FileCache;

    .line 36
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/shishicai/app/image/CustomImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 37
    return-void
.end method

.method private decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "f"    # Ljava/io/File;

    .prologue
    const/16 v10, 0xc8

    const/4 v7, 0x0

    .line 100
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 101
    .local v3, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 102
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v9, 0x0

    invoke-static {v8, v9, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 104
    const/16 v0, 0xc8

    .line 105
    .local v0, "REQUIRED_SIZE":I
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .local v6, "width_tmp":I
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 106
    .local v2, "height_tmp":I
    const/4 v5, 0x1

    .line 108
    .local v5, "scale":I
    :goto_0
    div-int/lit8 v8, v6, 0x2

    if-lt v8, v10, :cond_0

    div-int/lit8 v8, v2, 0x2

    if-ge v8, v10, :cond_1

    .line 116
    :cond_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 117
    .local v4, "o2":Landroid/graphics/BitmapFactory$Options;
    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 118
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v9, 0x0

    invoke-static {v8, v9, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 122
    .end local v0    # "REQUIRED_SIZE":I
    .end local v2    # "height_tmp":I
    .end local v3    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "o2":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "scale":I
    .end local v6    # "width_tmp":I
    :goto_1
    return-object v7

    .line 111
    .restart local v0    # "REQUIRED_SIZE":I
    .restart local v2    # "height_tmp":I
    .restart local v3    # "o":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "scale":I
    .restart local v6    # "width_tmp":I
    :cond_1
    div-int/lit8 v6, v6, 0x2

    .line 112
    div-int/lit8 v2, v2, 0x2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    mul-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 119
    .end local v0    # "REQUIRED_SIZE":I
    .end local v2    # "height_tmp":I
    .end local v3    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "scale":I
    .end local v6    # "width_tmp":I
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v8, "imgload"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private queuePhoto(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 66
    new-instance v0, Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;

    invoke-direct {v0, p0, p1, p2}, Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;-><init>(Lcom/shishicai/app/image/CustomImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 67
    .local v0, "p":Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;
    iget-object v1, p0, Lcom/shishicai/app/image/CustomImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/shishicai/app/image/CustomImageLoader$PhotosLoader;

    invoke-direct {v2, p0, v0}, Lcom/shishicai/app/image/CustomImageLoader$PhotosLoader;-><init>(Lcom/shishicai/app/image/CustomImageLoader;Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 68
    return-void
.end method


# virtual methods
.method public DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 48
    iget-object v4, p0, Lcom/shishicai/app/image/CustomImageLoader;->imageViews:Ljava/util/Map;

    invoke-interface {v4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v4, p0, Lcom/shishicai/app/image/CustomImageLoader;->memoryCache:Lcom/shishicai/app/image/MemoryCache;

    invoke-virtual {v4, p1}, Lcom/shishicai/app/image/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 50
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 53
    .local v3, "width":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 54
    .local v2, "height":I
    div-int/lit8 v4, v3, 0x4

    const/4 v5, 0x0

    div-int/lit8 v6, v3, 0x2

    invoke-static {v1, v4, v5, v6, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 55
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 63
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v2    # "height":I
    .end local v3    # "width":I
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/shishicai/app/image/CustomImageLoader;->queuePhoto(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 61
    const v4, 0x7f020073

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/shishicai/app/image/CustomImageLoader;->memoryCache:Lcom/shishicai/app/image/MemoryCache;

    invoke-virtual {v0}, Lcom/shishicai/app/image/MemoryCache;->clear()V

    .line 184
    iget-object v0, p0, Lcom/shishicai/app/image/CustomImageLoader;->fileCache:Lcom/shishicai/app/image/FileCache;

    invoke-virtual {v0}, Lcom/shishicai/app/image/FileCache;->clear()V

    .line 185
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v8, p0, Lcom/shishicai/app/image/CustomImageLoader;->fileCache:Lcom/shishicai/app/image/FileCache;

    invoke-virtual {v8, p1}, Lcom/shishicai/app/image/FileCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 73
    .local v4, "f":Ljava/io/File;
    invoke-direct {p0, v4}, Lcom/shishicai/app/image/CustomImageLoader;->decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 93
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 78
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v1, 0x0

    .line 79
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 81
    .local v5, "imageUrl":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 82
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/16 v8, 0x7530

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 83
    const/16 v8, 0x7530

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 84
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 85
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 86
    .local v6, "is":Ljava/io/InputStream;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 87
    .local v7, "os":Ljava/io/OutputStream;
    invoke-static {v6, v7}, Lcom/shishicai/app/image/Utils;->CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 88
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 89
    invoke-direct {p0, v4}, Lcom/shishicai/app/image/CustomImageLoader;->decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v0, v1

    .line 90
    goto :goto_0

    .line 91
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "imageUrl":Ljava/net/URL;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    .line 92
    .local v3, "ex":Ljava/lang/Exception;
    const-string v8, "imgload"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v0, 0x0

    goto :goto_0
.end method

.method imageViewReused(Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;)Z
    .locals 3
    .param p1, "photoToLoad"    # Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;

    .prologue
    .line 157
    iget-object v1, p0, Lcom/shishicai/app/image/CustomImageLoader;->imageViews:Ljava/util/Map;

    iget-object v2, p1, Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 158
    .local v0, "tag":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 159
    :cond_0
    const/4 v1, 0x1

    .line 160
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
