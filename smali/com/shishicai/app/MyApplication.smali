.class public Lcom/shishicai/app/MyApplication;
.super Lorg/litepal/LitePalApplication;
.source "MyApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/litepal/LitePalApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 23
    const/4 v1, 0x0

    invoke-static {v1}, Lcn/jpush/android/api/JPushInterface;->setDebugMode(Z)V

    .line 24
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->init(Landroid/content/Context;)V

    .line 25
    sget-object v1, Lcom/shishicai/app/Constant;->Bmob_APPID:Ljava/lang/String;

    invoke-static {p0, v1}, Lcn/bmob/v3/Bmob;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    new-instance v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-direct {v1, p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->writeDebugLogs()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    .line 34
    .local v0, "configuration":Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 35
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0}, Lorg/litepal/LitePalApplication;->onCreate()V

    .line 17
    invoke-virtual {p0}, Lcom/shishicai/app/MyApplication;->init()V

    .line 18
    return-void
.end method
