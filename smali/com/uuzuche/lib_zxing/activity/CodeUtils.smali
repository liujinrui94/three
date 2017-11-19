.class public Lcom/uuzuche/lib_zxing/activity/CodeUtils;
.super Ljava/lang/Object;
.source "CodeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;
    }
.end annotation


# static fields
.field public static final LAYOUT_ID:Ljava/lang/String; = "layout_id"

.field public static final RESULT_FAILED:I = 0x2

.field public static final RESULT_STRING:Ljava/lang/String; = "result_string"

.field public static final RESULT_SUCCESS:I = 0x1

.field public static final RESULT_TYPE:Ljava/lang/String; = "result_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static analyzeBitmap(Landroid/graphics/Bitmap;Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;)V
    .locals 8
    .param p0, "mBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "analyzeCallback"    # Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;

    .prologue
    .line 47
    new-instance v3, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v3}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    .line 50
    .local v3, "multiFormatReader":Lcom/google/zxing/MultiFormatReader;
    new-instance v2, Ljava/util/Hashtable;

    const/4 v5, 0x2

    invoke-direct {v2, v5}, Ljava/util/Hashtable;-><init>(I)V

    .line 52
    .local v2, "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 53
    .local v0, "decodeFormats":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/google/zxing/BarcodeFormat;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 54
    :cond_0
    new-instance v0, Ljava/util/Vector;

    .end local v0    # "decodeFormats":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/google/zxing/BarcodeFormat;>;"
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 57
    .restart local v0    # "decodeFormats":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/google/zxing/BarcodeFormat;>;"
    sget-object v5, Lcom/uuzuche/lib_zxing/decoding/DecodeFormatManager;->ONE_D_FORMATS:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 58
    sget-object v5, Lcom/uuzuche/lib_zxing/decoding/DecodeFormatManager;->QR_CODE_FORMATS:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 59
    sget-object v5, Lcom/uuzuche/lib_zxing/decoding/DecodeFormatManager;->DATA_MATRIX_FORMATS:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 61
    :cond_1
    sget-object v5, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v2, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {v3, v2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 68
    const/4 v4, 0x0

    .line 70
    .local v4, "rawResult":Lcom/google/zxing/Result;
    :try_start_0
    new-instance v5, Lcom/google/zxing/BinaryBitmap;

    new-instance v6, Lcom/google/zxing/common/HybridBinarizer;

    new-instance v7, Lcom/uuzuche/lib_zxing/camera/BitmapLuminanceSource;

    invoke-direct {v7, p0}, Lcom/uuzuche/lib_zxing/camera/BitmapLuminanceSource;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v6, v7}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v5, v6}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    invoke-virtual {v3, v5}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 75
    :goto_0
    if-eqz v4, :cond_3

    .line 76
    if-eqz p1, :cond_2

    .line 77
    invoke-virtual {v4}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, p0, v5}, Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;->onAnalyzeSuccess(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 84
    :cond_2
    :goto_1
    return-void

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    if-eqz p1, :cond_2

    .line 81
    invoke-interface {p1}, Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;->onAnalyzeFailed()V

    goto :goto_1
.end method

.method public static createImage(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 27
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "logo"    # Landroid/graphics/Bitmap;

    .prologue
    .line 96
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    const/4 v9, 0x0

    .line 145
    :goto_0
    return-object v9

    .line 100
    :cond_0
    :try_start_0
    move-object/from16 v0, p3

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/uuzuche/lib_zxing/activity/CodeUtils;->getScaleLogo(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 102
    .local v23, "scaleLogo":Landroid/graphics/Bitmap;
    div-int/lit8 v19, p1, 0x2

    .line 103
    .local v19, "offsetX":I
    div-int/lit8 v20, p2, 0x2

    .line 105
    .local v20, "offsetY":I
    const/16 v24, 0x0

    .line 106
    .local v24, "scaleWidth":I
    const/16 v22, 0x0

    .line 107
    .local v22, "scaleHeight":I
    if-eqz v23, :cond_1

    .line 108
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    .line 109
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    .line 110
    sub-int v3, p1, v24

    div-int/lit8 v19, v3, 0x2

    .line 111
    sub-int v3, p2, v22

    div-int/lit8 v20, v3, 0x2

    .line 113
    :cond_1
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    .line 114
    .local v8, "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/EncodeHintType;Ljava/lang/String;>;"
    sget-object v3, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v4, "utf-8"

    invoke-virtual {v8, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v3, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v3}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v4, p0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v17

    .line 116
    .local v17, "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    mul-int v3, p1, p2

    new-array v10, v3, [I

    .line 117
    .local v10, "pixels":[I
    const/16 v26, 0x0

    .local v26, "y":I
    :goto_1
    move/from16 v0, v26

    move/from16 v1, p2

    if-ge v0, v1, :cond_7

    .line 118
    const/16 v25, 0x0

    .local v25, "x":I
    :goto_2
    move/from16 v0, v25

    move/from16 v1, p1

    if-ge v0, v1, :cond_6

    .line 119
    move/from16 v0, v25

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    add-int v3, v19, v24

    move/from16 v0, v25

    if-ge v0, v3, :cond_4

    move/from16 v0, v26

    move/from16 v1, v20

    if-lt v0, v1, :cond_4

    add-int v3, v20, v22

    move/from16 v0, v26

    if-ge v0, v3, :cond_4

    .line 120
    sub-int v3, v25, v19

    sub-int v4, v26, v20

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v21

    .line 121
    .local v21, "pixel":I
    if-nez v21, :cond_2

    .line 122
    move-object/from16 v0, v17

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 123
    const/high16 v21, -0x1000000

    .line 128
    :cond_2
    :goto_3
    mul-int v3, v26, p1

    add-int v3, v3, v25

    aput v21, v10, v3

    .line 118
    .end local v21    # "pixel":I
    :goto_4
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 125
    .restart local v21    # "pixel":I
    :cond_3
    const/16 v21, -0x1

    goto :goto_3

    .line 130
    .end local v21    # "pixel":I
    :cond_4
    move-object/from16 v0, v17

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 131
    mul-int v3, v26, p1

    add-int v3, v3, v25

    const/high16 v4, -0x1000000

    aput v4, v10, v3
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 142
    .end local v8    # "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/EncodeHintType;Ljava/lang/String;>;"
    .end local v10    # "pixels":[I
    .end local v17    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    .end local v19    # "offsetX":I
    .end local v20    # "offsetY":I
    .end local v22    # "scaleHeight":I
    .end local v23    # "scaleLogo":Landroid/graphics/Bitmap;
    .end local v24    # "scaleWidth":I
    .end local v25    # "x":I
    .end local v26    # "y":I
    :catch_0
    move-exception v18

    .line 143
    .local v18, "e":Lcom/google/zxing/WriterException;
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/WriterException;->printStackTrace()V

    .line 145
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 133
    .end local v18    # "e":Lcom/google/zxing/WriterException;
    .restart local v8    # "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/EncodeHintType;Ljava/lang/String;>;"
    .restart local v10    # "pixels":[I
    .restart local v17    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    .restart local v19    # "offsetX":I
    .restart local v20    # "offsetY":I
    .restart local v22    # "scaleHeight":I
    .restart local v23    # "scaleLogo":Landroid/graphics/Bitmap;
    .restart local v24    # "scaleWidth":I
    .restart local v25    # "x":I
    .restart local v26    # "y":I
    :cond_5
    mul-int v3, v26, p1

    add-int v3, v3, v25

    const/4 v4, -0x1

    :try_start_1
    aput v4, v10, v3

    goto :goto_4

    .line 117
    :cond_6
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 138
    .end local v25    # "x":I
    :cond_7
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 140
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v12, p1

    move/from16 v15, p1

    move/from16 v16, p2

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_1
    .catch Lcom/google/zxing/WriterException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static getScaleLogo(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "logo"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x40a00000    # 5.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 149
    if-nez p0, :cond_0

    const/4 v7, 0x0

    .line 154
    :goto_0
    return-object v7

    .line 150
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 151
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    mul-float/2addr v0, v3

    div-float/2addr v0, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, p2

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 152
    .local v8, "scaleFactor":F
    invoke-virtual {v5, v8, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 153
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 154
    .local v7, "result":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static isLightEnable(Z)V
    .locals 3
    .param p0, "isEnable"    # Z

    .prologue
    .line 184
    if-eqz p0, :cond_0

    .line 185
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    .line 186
    .local v0, "camera":Landroid/hardware/Camera;
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 187
    .local v1, "parameter":Landroid/hardware/Camera$Parameters;
    const-string v2, "torch"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 195
    :goto_0
    return-void

    .line 190
    .end local v0    # "camera":Landroid/hardware/Camera;
    .end local v1    # "parameter":Landroid/hardware/Camera$Parameters;
    :cond_0
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    .line 191
    .restart local v0    # "camera":Landroid/hardware/Camera;
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 192
    .restart local v1    # "parameter":Landroid/hardware/Camera$Parameters;
    const-string v2, "off"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method public static setFragmentArgs(Lcom/uuzuche/lib_zxing/activity/CaptureFragment;I)V
    .locals 2
    .param p0, "captureFragment"    # Lcom/uuzuche/lib_zxing/activity/CaptureFragment;
    .param p1, "layoutId"    # I

    .prologue
    .line 174
    if-eqz p0, :cond_0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 179
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "layout_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    invoke-virtual {p0, v0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method
