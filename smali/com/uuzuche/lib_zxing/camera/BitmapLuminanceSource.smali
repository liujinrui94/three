.class public Lcom/uuzuche/lib_zxing/camera/BitmapLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "BitmapLuminanceSource.java"


# instance fields
.field private bitmapPixels:[B


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 20
    .local v1, "data":[I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/uuzuche/lib_zxing/camera/BitmapLuminanceSource;->bitmapPixels:[B

    .line 21
    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/camera/BitmapLuminanceSource;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/camera/BitmapLuminanceSource;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/camera/BitmapLuminanceSource;->getHeight()I

    move-result v7

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 24
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v1

    if-ge v8, v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/BitmapLuminanceSource;->bitmapPixels:[B

    aget v2, v1, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v8

    .line 24
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method public getMatrix()[B
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/BitmapLuminanceSource;->bitmapPixels:[B

    return-object v0
.end method

.method public getRow(I[B)[B
    .locals 4
    .param p1, "y"    # I
    .param p2, "row"    # [B

    .prologue
    .line 38
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/BitmapLuminanceSource;->bitmapPixels:[B

    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/camera/BitmapLuminanceSource;->getWidth()I

    move-result v1

    mul-int/2addr v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/camera/BitmapLuminanceSource;->getWidth()I

    move-result v3

    invoke-static {v0, v1, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    return-object p2
.end method
