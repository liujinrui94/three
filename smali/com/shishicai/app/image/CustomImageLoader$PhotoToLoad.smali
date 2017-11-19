.class Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;
.super Ljava/lang/Object;
.source "CustomImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/image/CustomImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoToLoad"
.end annotation


# instance fields
.field public imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/shishicai/app/image/CustomImageLoader;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shishicai/app/image/CustomImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .param p2, "u"    # Ljava/lang/String;
    .param p3, "i"    # Landroid/widget/ImageView;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;->this$0:Lcom/shishicai/app/image/CustomImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p2, p0, Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    .line 131
    iput-object p3, p0, Lcom/shishicai/app/image/CustomImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    .line 132
    return-void
.end method
