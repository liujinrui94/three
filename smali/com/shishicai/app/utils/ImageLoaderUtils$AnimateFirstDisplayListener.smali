.class Lcom/shishicai/app/utils/ImageLoaderUtils$AnimateFirstDisplayListener;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "ImageLoaderUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/utils/ImageLoaderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimateFirstDisplayListener"
.end annotation


# static fields
.field static final displayedImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 51
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shishicai/app/utils/ImageLoaderUtils$AnimateFirstDisplayListener;->displayedImages:Ljava/util/List;

    .line 50
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 56
    if-eqz p3, :cond_0

    move-object v1, p2

    .line 57
    check-cast v1, Landroid/widget/ImageView;

    .line 58
    .local v1, "imageView":Landroid/widget/ImageView;
    sget-object v2, Lcom/shishicai/app/utils/ImageLoaderUtils$AnimateFirstDisplayListener;->displayedImages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 59
    .local v0, "firstDisplay":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 60
    const/16 v2, 0x1f4

    invoke-static {v1, v2}, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;->animate(Landroid/view/View;I)V

    .line 61
    sget-object v2, Lcom/shishicai/app/utils/ImageLoaderUtils$AnimateFirstDisplayListener;->displayedImages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .end local v0    # "firstDisplay":Z
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_0
    return-void

    .line 58
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
