.class public final Lcom/uuzuche/lib_zxing/view/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# static fields
.field private static final ANIMATION_DELAY:J = 0x64L

.field private static final OPAQUE:I = 0xff


# instance fields
.field private SCAN_VELOCITY:I

.field private innercornercolor:I

.field private innercornerlength:I

.field private innercornerwidth:I

.field private lastPossibleResultPoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final maskColor:I

.field private final paint:Landroid/graphics/Paint;

.field private possibleResultPoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private final resultColor:I

.field private final resultPointColor:I

.field scanLight:Landroid/graphics/Bitmap;

.field private scanLineTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 59
    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->maskColor:I

    .line 61
    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->resultColor:I

    .line 62
    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->resultPointColor:I

    .line 63
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 65
    const v1, 0x7f0200e1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->scanLight:Landroid/graphics/Bitmap;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->initInnerRect(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 259
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private drawFrameBounds(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->innercornercolor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 216
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 218
    iget v7, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->innercornerwidth:I

    .line 219
    .local v7, "corWidth":I
    iget v6, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->innercornerlength:I

    .line 222
    .local v6, "corLength":I
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v7

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v6

    int-to-float v4, v0

    iget-object v5, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 224
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v6

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v7

    int-to-float v4, v0

    iget-object v5, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 227
    iget v0, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v7

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v6

    int-to-float v4, v0

    iget-object v5, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 229
    iget v0, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v6

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v7

    int-to-float v4, v0

    iget-object v5, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 232
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v6

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v7

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 234
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v7

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v6

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 237
    iget v0, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v7

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v6

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 239
    iget v0, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v6

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v7

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 241
    return-void
.end method

.method private drawScanLight(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 179
    iget v1, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->scanLineTop:I

    if-nez v1, :cond_0

    .line 180
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->scanLineTop:I

    .line 183
    :cond_0
    iget v1, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->scanLineTop:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x1e

    if-lt v1, v2, :cond_1

    .line 184
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->scanLineTop:I

    .line 188
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->scanLineTop:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->scanLineTop:I

    add-int/lit8 v4, v4, 0x1e

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 190
    .local v0, "scanRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->scanLight:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 191
    return-void

    .line 186
    .end local v0    # "scanRect":Landroid/graphics/Rect;
    :cond_1
    iget v1, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->scanLineTop:I

    iget v2, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->SCAN_VELOCITY:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->scanLineTop:I

    goto :goto_0
.end method

.method private initInnerRect(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v9, 0xd2

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, -0x1

    .line 77
    sget-object v5, Lcom/shishicai/R$styleable;->innerrect:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 80
    .local v4, "ta":Landroid/content/res/TypedArray;
    const/4 v5, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 81
    .local v1, "innerMarginTop":I
    if-eq v1, v6, :cond_0

    .line 82
    int-to-float v5, v1

    invoke-static {p1, v5}, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->dip2px(Landroid/content/Context;F)I

    move-result v5

    sput v5, Lcom/uuzuche/lib_zxing/camera/CameraManager;->FRAME_MARGINTOP:I

    .line 86
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 87
    .local v3, "innerrectWidth":I
    int-to-float v5, v3

    invoke-static {p1, v5}, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->dip2px(Landroid/content/Context;F)I

    move-result v5

    sput v5, Lcom/uuzuche/lib_zxing/camera/CameraManager;->FRAME_WIDTH:I

    .line 90
    const/4 v5, 0x1

    invoke-virtual {v4, v5, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 91
    .local v2, "innerrectHeight":I
    int-to-float v5, v2

    invoke-static {p1, v5}, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->dip2px(Landroid/content/Context;F)I

    move-result v5

    sput v5, Lcom/uuzuche/lib_zxing/camera/CameraManager;->FRAME_HEIGHT:I

    .line 94
    const/4 v5, 0x3

    const-string v6, "#45DDDD"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->innercornercolor:I

    .line 96
    const/4 v5, 0x4

    const/16 v6, 0x41

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->innercornerlength:I

    .line 98
    const/16 v5, 0xf

    invoke-virtual {v4, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->innercornerwidth:I

    .line 101
    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 102
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200e1

    invoke-virtual {v4, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->scanLight:Landroid/graphics/Bitmap;

    .line 108
    const/4 v5, 0x7

    invoke-virtual {v4, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->SCAN_VELOCITY:I

    .line 110
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    return-void
.end method


# virtual methods
.method public addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1
    .param p1, "point"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 251
    return-void
.end method

.method public drawViewfinder()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 246
    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->invalidate()V

    .line 247
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 115
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v10

    .line 116
    .local v10, "frame":Landroid/graphics/Rect;
    if-nez v10, :cond_0

    .line 162
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v13

    .line 120
    .local v13, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    .line 123
    .local v11, "height":I
    iget-object v1, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->resultColor:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v13

    iget v0, v10, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 125
    const/4 v1, 0x0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v10, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 126
    iget v0, v10, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    int-to-float v3, v13

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 127
    const/4 v1, 0x0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    int-to-float v3, v13

    int-to-float v4, v11

    iget-object v5, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 129
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 132
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    iget v1, v10, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 123
    :cond_1
    iget v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->maskColor:I

    goto :goto_1

    .line 135
    :cond_2
    invoke-direct {p0, p1, v10}, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->drawFrameBounds(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 137
    invoke-direct {p0, p1, v10}, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->drawScanLight(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 139
    iget-object v9, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 140
    .local v9, "currentPossible":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/ResultPoint;>;"
    iget-object v8, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->lastPossibleResultPoints:Ljava/util/Collection;

    .line 141
    .local v8, "currentLast":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/ResultPoint;>;"
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->lastPossibleResultPoints:Ljava/util/Collection;

    .line 152
    :cond_3
    if-eqz v8, :cond_5

    .line 153
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 154
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->resultPointColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/zxing/ResultPoint;

    .line 156
    .local v12, "point":Lcom/google/zxing/ResultPoint;
    iget v1, v10, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v12}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v12}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    iget-object v4, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 144
    .end local v12    # "point":Lcom/google/zxing/ResultPoint;
    :cond_4
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 145
    iput-object v9, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->lastPossibleResultPoints:Ljava/util/Collection;

    .line 146
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 147
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->resultPointColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/zxing/ResultPoint;

    .line 149
    .restart local v12    # "point":Lcom/google/zxing/ResultPoint;
    iget v1, v10, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v12}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v12}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    iget-object v4, p0, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 160
    .end local v12    # "point":Lcom/google/zxing/ResultPoint;
    :cond_5
    const-wide/16 v2, 0x64

    iget v4, v10, Landroid/graphics/Rect;->left:I

    iget v5, v10, Landroid/graphics/Rect;->top:I

    iget v6, v10, Landroid/graphics/Rect;->right:I

    iget v7, v10, Landroid/graphics/Rect;->bottom:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->postInvalidateDelayed(JIIII)V

    goto/16 :goto_0
.end method
