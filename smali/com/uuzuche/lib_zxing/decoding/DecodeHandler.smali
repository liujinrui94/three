.class final Lcom/uuzuche/lib_zxing/decoding/DecodeHandler;
.super Landroid/os/Handler;
.source "DecodeHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final fragment:Lcom/uuzuche/lib_zxing/activity/CaptureFragment;

.field private final multiFormatReader:Lcom/google/zxing/MultiFormatReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/uuzuche/lib_zxing/decoding/DecodeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uuzuche/lib_zxing/decoding/DecodeHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/uuzuche/lib_zxing/activity/CaptureFragment;Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "fragment"    # Lcom/uuzuche/lib_zxing/activity/CaptureFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uuzuche/lib_zxing/activity/CaptureFragment;",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 46
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/uuzuche/lib_zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 47
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 48
    iput-object p1, p0, Lcom/uuzuche/lib_zxing/decoding/DecodeHandler;->fragment:Lcom/uuzuche/lib_zxing/activity/CaptureFragment;

    .line 49
    return-void
.end method

.method private decode([BII)V
    .locals 22
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 70
    .local v12, "start":J
    const/4 v9, 0x0

    .line 73
    .local v9, "rawResult":Lcom/google/zxing/Result;
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v10, v0, [B

    .line 74
    .local v10, "rotatedData":[B
    const/16 v16, 0x0

    .local v16, "y":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, p3

    if-ge v0, v1, :cond_1

    .line 75
    const/4 v15, 0x0

    .local v15, "x":I
    :goto_1
    move/from16 v0, p2

    if-ge v15, v0, :cond_0

    .line 76
    mul-int v17, v15, p3

    add-int v17, v17, p3

    sub-int v17, v17, v16

    add-int/lit8 v17, v17, -0x1

    mul-int v18, v16, p2

    add-int v18, v18, v15

    aget-byte v18, p1, v18

    aput-byte v18, v10, v17

    .line 75
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 74
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 78
    .end local v15    # "x":I
    :cond_1
    move/from16 v14, p2

    .line 79
    .local v14, "tmp":I
    move/from16 p2, p3

    .line 80
    move/from16 p3, v14

    .line 82
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v10, v1, v2}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->buildLuminanceSource([BII)Lcom/uuzuche/lib_zxing/camera/PlanarYUVLuminanceSource;

    move-result-object v11

    .line 83
    .local v11, "source":Lcom/uuzuche/lib_zxing/camera/PlanarYUVLuminanceSource;
    new-instance v4, Lcom/google/zxing/BinaryBitmap;

    new-instance v17, Lcom/google/zxing/common/HybridBinarizer;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 85
    .local v4, "bitmap":Lcom/google/zxing/BinaryBitmap;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uuzuche/lib_zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uuzuche/lib_zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 92
    :goto_2
    if-eqz v9, :cond_2

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 94
    .local v6, "end":J
    sget-object v17, Lcom/uuzuche/lib_zxing/decoding/DecodeHandler;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Found barcode ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sub-long v20, v6, v12

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ms):\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uuzuche/lib_zxing/decoding/DecodeHandler;->fragment:Lcom/uuzuche/lib_zxing/activity/CaptureFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->getHandler()Landroid/os/Handler;

    move-result-object v17

    const v18, 0x7f090003

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 96
    .local v8, "message":Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v17, "barcode_bitmap"

    invoke-virtual {v11}, Lcom/uuzuche/lib_zxing/camera/PlanarYUVLuminanceSource;->renderCroppedGreyscaleBitmap()Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 98
    invoke-virtual {v8, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 105
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v6    # "end":J
    :goto_3
    return-void

    .line 86
    .end local v8    # "message":Landroid/os/Message;
    :catch_0
    move-exception v17

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uuzuche/lib_zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_2

    :catchall_0
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uuzuche/lib_zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw v17

    .line 102
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uuzuche/lib_zxing/decoding/DecodeHandler;->fragment:Lcom/uuzuche/lib_zxing/activity/CaptureFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->getHandler()Landroid/os/Handler;

    move-result-object v17

    const v18, 0x7f090002

    invoke-static/range {v17 .. v18}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    .line 103
    .restart local v8    # "message":Landroid/os/Message;
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f090001

    if-ne v0, v1, :cond_1

    .line 54
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/uuzuche/lib_zxing/decoding/DecodeHandler;->decode([BII)V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f090008

    if-ne v0, v1, :cond_0

    .line 56
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0
.end method
