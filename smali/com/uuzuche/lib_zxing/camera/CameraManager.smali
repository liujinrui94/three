.class public final Lcom/uuzuche/lib_zxing/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field public static FRAME_HEIGHT:I

.field public static FRAME_MARGINTOP:I

.field public static FRAME_WIDTH:I

.field static final SDK_INT:I

.field private static final TAG:Ljava/lang/String;

.field private static cameraManager:Lcom/uuzuche/lib_zxing/camera/CameraManager;


# instance fields
.field private final autoFocusCallback:Lcom/uuzuche/lib_zxing/camera/AutoFocusCallback;

.field private camera:Landroid/hardware/Camera;

.field private final configManager:Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;

.field private final context:Landroid/content/Context;

.field private framingRect:Landroid/graphics/Rect;

.field private framingRectInPreview:Landroid/graphics/Rect;

.field private initialized:Z

.field private final previewCallback:Lcom/uuzuche/lib_zxing/camera/PreviewCallback;

.field private previewing:Z

.field private final useOneShotPreviewCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xb4

    .line 42
    const-class v2, Lcom/uuzuche/lib_zxing/camera/CameraManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/uuzuche/lib_zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    .line 44
    sput v3, Lcom/uuzuche/lib_zxing/camera/CameraManager;->FRAME_WIDTH:I

    .line 45
    sput v3, Lcom/uuzuche/lib_zxing/camera/CameraManager;->FRAME_HEIGHT:I

    .line 46
    const/4 v2, -0x1

    sput v2, Lcom/uuzuche/lib_zxing/camera/CameraManager;->FRAME_MARGINTOP:I

    .line 55
    :try_start_0
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 60
    .local v1, "sdkInt":I
    :goto_0
    sput v1, Lcom/uuzuche/lib_zxing/camera/CameraManager;->SDK_INT:I

    .line 61
    return-void

    .line 56
    .end local v1    # "sdkInt":I
    :catch_0
    move-exception v0

    .line 58
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/16 v1, 0x2710

    .restart local v1    # "sdkInt":I
    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->context:Landroid/content/Context;

    .line 104
    new-instance v0, Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;

    invoke-direct {v0, p1}, Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->configManager:Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;

    .line 111
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    .line 113
    new-instance v0, Lcom/uuzuche/lib_zxing/camera/PreviewCallback;

    iget-object v1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->configManager:Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;

    iget-boolean v2, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    invoke-direct {v0, v1, v2}, Lcom/uuzuche/lib_zxing/camera/PreviewCallback;-><init>(Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;Z)V

    iput-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->previewCallback:Lcom/uuzuche/lib_zxing/camera/PreviewCallback;

    .line 114
    new-instance v0, Lcom/uuzuche/lib_zxing/camera/AutoFocusCallback;

    invoke-direct {v0}, Lcom/uuzuche/lib_zxing/camera/AutoFocusCallback;-><init>()V

    iput-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->autoFocusCallback:Lcom/uuzuche/lib_zxing/camera/AutoFocusCallback;

    .line 115
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static get()Lcom/uuzuche/lib_zxing/camera/CameraManager;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->cameraManager:Lcom/uuzuche/lib_zxing/camera/CameraManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    sget-object v0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->cameraManager:Lcom/uuzuche/lib_zxing/camera/CameraManager;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/uuzuche/lib_zxing/camera/CameraManager;

    invoke-direct {v0, p0}, Lcom/uuzuche/lib_zxing/camera/CameraManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->cameraManager:Lcom/uuzuche/lib_zxing/camera/CameraManager;

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/uuzuche/lib_zxing/camera/PlanarYUVLuminanceSource;
    .locals 11
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v10

    .line 298
    .local v10, "rect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->configManager:Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;->getPreviewFormat()I

    move-result v8

    .line 299
    .local v8, "previewFormat":I
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->configManager:Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;->getPreviewFormatString()Ljava/lang/String;

    move-result-object v9

    .line 300
    .local v9, "previewFormatString":Ljava/lang/String;
    packed-switch v8, :pswitch_data_0

    .line 312
    const-string v0, "yuv420p"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    new-instance v0, Lcom/uuzuche/lib_zxing/camera/PlanarYUVLuminanceSource;

    iget v4, v10, Landroid/graphics/Rect;->left:I

    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 314
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/uuzuche/lib_zxing/camera/PlanarYUVLuminanceSource;-><init>([BIIIIII)V

    .line 313
    :goto_0
    return-object v0

    .line 307
    :pswitch_0
    new-instance v0, Lcom/uuzuche/lib_zxing/camera/PlanarYUVLuminanceSource;

    iget v4, v10, Landroid/graphics/Rect;->left:I

    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 308
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/uuzuche/lib_zxing/camera/PlanarYUVLuminanceSource;-><init>([BIIIIII)V

    goto :goto_0

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported picture format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public closeDriver()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 152
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/FlashlightManager;->disableFlashlight()V

    .line 153
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 156
    :cond_0
    return-void
.end method

.method public getAutoFocusCallback()Lcom/uuzuche/lib_zxing/camera/AutoFocusCallback;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->autoFocusCallback:Lcom/uuzuche/lib_zxing/camera/AutoFocusCallback;

    return-object v0
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getFramingRect()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 224
    iget-object v3, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->configManager:Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;

    invoke-virtual {v3}, Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v1

    .line 226
    .local v1, "screenResolution":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v3, :cond_0

    .line 227
    const/4 v3, 0x0

    .line 240
    :goto_0
    return-object v3

    .line 230
    :cond_0
    iget v3, v1, Landroid/graphics/Point;->x:I

    sget v4, Lcom/uuzuche/lib_zxing/camera/CameraManager;->FRAME_WIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .line 232
    .local v0, "leftOffset":I
    const/4 v2, 0x0

    .line 233
    .local v2, "topOffset":I
    sget v3, Lcom/uuzuche/lib_zxing/camera/CameraManager;->FRAME_MARGINTOP:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 234
    sget v2, Lcom/uuzuche/lib_zxing/camera/CameraManager;->FRAME_MARGINTOP:I

    .line 238
    :goto_1
    new-instance v3, Landroid/graphics/Rect;

    sget v4, Lcom/uuzuche/lib_zxing/camera/CameraManager;->FRAME_WIDTH:I

    add-int/2addr v4, v0

    sget v5, Lcom/uuzuche/lib_zxing/camera/CameraManager;->FRAME_HEIGHT:I

    add-int/2addr v5, v2

    invoke-direct {v3, v0, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 240
    iget-object v3, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 236
    :cond_1
    iget v3, v1, Landroid/graphics/Point;->y:I

    sget v4, Lcom/uuzuche/lib_zxing/camera/CameraManager;->FRAME_HEIGHT:I

    sub-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x2

    goto :goto_1
.end method

.method public getFramingRectInPreview()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 248
    iget-object v3, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    if-nez v3, :cond_0

    .line 249
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 250
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->configManager:Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;

    invoke-virtual {v3}, Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    .line 251
    .local v0, "cameraResolution":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->configManager:Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;

    invoke-virtual {v3}, Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v2

    .line 257
    .local v2, "screenResolution":Landroid/graphics/Point;
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 258
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 259
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 260
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 261
    iput-object v1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    .line 263
    .end local v0    # "cameraResolution":Landroid/graphics/Point;
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "screenResolution":Landroid/graphics/Point;
    :cond_0
    iget-object v3, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    return-object v3
.end method

.method public getPreviewCallback()Lcom/uuzuche/lib_zxing/camera/PreviewCallback;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->previewCallback:Lcom/uuzuche/lib_zxing/camera/PreviewCallback;

    return-object v0
.end method

.method public isPreviewing()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->previewing:Z

    return v0
.end method

.method public isUseOneShotPreviewCallback()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    return v0
.end method

.method public openDriver(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 125
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 126
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 131
    iget-boolean v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->initialized:Z

    if-nez v0, :cond_1

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->initialized:Z

    .line 133
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->configManager:Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;

    iget-object v1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->configManager:Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;

    iget-object v1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;)V

    .line 143
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/FlashlightManager;->enableFlashlight()V

    .line 145
    :cond_2
    return-void
.end method

.method public requestAutoFocus(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # I

    .prologue
    .line 209
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->autoFocusCallback:Lcom/uuzuche/lib_zxing/camera/AutoFocusCallback;

    invoke-virtual {v0, p1, p2}, Lcom/uuzuche/lib_zxing/camera/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 212
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->autoFocusCallback:Lcom/uuzuche/lib_zxing/camera/AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 214
    :cond_0
    return-void
.end method

.method public requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->previewCallback:Lcom/uuzuche/lib_zxing/camera/PreviewCallback;

    invoke-virtual {v0, p1, p2}, Lcom/uuzuche/lib_zxing/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 194
    iget-boolean v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->previewCallback:Lcom/uuzuche/lib_zxing/camera/PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->previewCallback:Lcom/uuzuche/lib_zxing/camera/PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0
.end method

.method public setPreviewing(Z)V
    .locals 0
    .param p1, "previewing"    # Z

    .prologue
    .line 346
    iput-boolean p1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->previewing:Z

    .line 347
    return-void
.end method

.method public startPreview()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->previewing:Z

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->previewing:Z

    .line 166
    :cond_0
    return-void
.end method

.method public stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_1

    .line 173
    iget-boolean v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 177
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->previewCallback:Lcom/uuzuche/lib_zxing/camera/PreviewCallback;

    invoke-virtual {v0, v2, v1}, Lcom/uuzuche/lib_zxing/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 178
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->autoFocusCallback:Lcom/uuzuche/lib_zxing/camera/AutoFocusCallback;

    invoke-virtual {v0, v2, v1}, Lcom/uuzuche/lib_zxing/camera/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 179
    iput-boolean v1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->previewing:Z

    .line 181
    :cond_1
    return-void
.end method
