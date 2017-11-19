.class public final Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final decodeThread:Lcom/uuzuche/lib_zxing/decoding/DecodeThread;

.field private final fragment:Lcom/uuzuche/lib_zxing/activity/CaptureFragment;

.field private state:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/uuzuche/lib_zxing/activity/CaptureFragment;Ljava/util/Vector;Ljava/lang/String;Lcom/uuzuche/lib_zxing/view/ViewfinderView;)V
    .locals 2
    .param p1, "fragment"    # Lcom/uuzuche/lib_zxing/activity/CaptureFragment;
    .param p3, "characterSet"    # Ljava/lang/String;
    .param p4, "viewfinderView"    # Lcom/uuzuche/lib_zxing/view/ViewfinderView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uuzuche/lib_zxing/activity/CaptureFragment;",
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/uuzuche/lib_zxing/view/ViewfinderView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, "decodeFormats":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/google/zxing/BarcodeFormat;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->fragment:Lcom/uuzuche/lib_zxing/activity/CaptureFragment;

    .line 58
    new-instance v0, Lcom/uuzuche/lib_zxing/decoding/DecodeThread;

    new-instance v1, Lcom/uuzuche/lib_zxing/view/ViewfinderResultPointCallback;

    invoke-direct {v1, p4}, Lcom/uuzuche/lib_zxing/view/ViewfinderResultPointCallback;-><init>(Lcom/uuzuche/lib_zxing/view/ViewfinderView;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/uuzuche/lib_zxing/decoding/DecodeThread;-><init>(Lcom/uuzuche/lib_zxing/activity/CaptureFragment;Ljava/util/Vector;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    iput-object v0, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/uuzuche/lib_zxing/decoding/DecodeThread;

    .line 60
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/uuzuche/lib_zxing/decoding/DecodeThread;

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/decoding/DecodeThread;->start()V

    .line 61
    sget-object v0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->state:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    .line 63
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->startPreview()V

    .line 64
    invoke-direct {p0}, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->restartPreviewAndDecode()V

    .line 65
    return-void
.end method

.method private restartPreviewAndDecode()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->state:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    sget-object v1, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    .line 125
    sget-object v0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->state:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    .line 126
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/uuzuche/lib_zxing/decoding/DecodeThread;

    invoke-virtual {v1}, Lcom/uuzuche/lib_zxing/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v0, v1, v2}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 127
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object v0

    const/high16 v1, 0x7f090000

    invoke-virtual {v0, p0, v1}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    .line 128
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->fragment:Lcom/uuzuche/lib_zxing/activity/CaptureFragment;

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->drawViewfinder()V

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/high16 v6, 0x7f090000

    .line 69
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v6, :cond_1

    .line 73
    iget-object v4, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->state:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    sget-object v5, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    if-ne v4, v5, :cond_0

    .line 74
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object v4

    invoke-virtual {v4, p0, v6}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    const v5, 0x7f090009

    if-ne v4, v5, :cond_2

    .line 77
    sget-object v4, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v5, "Got restart preview message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-direct {p0}, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->restartPreviewAndDecode()V

    goto :goto_0

    .line 79
    :cond_2
    iget v4, p1, Landroid/os/Message;->what:I

    const v5, 0x7f090003

    if-ne v4, v5, :cond_4

    .line 80
    sget-object v4, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v5, "Got decode succeeded message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget-object v4, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    iput-object v4, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->state:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    .line 82
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 85
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 88
    .local v0, "barcode":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v5, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->fragment:Lcom/uuzuche/lib_zxing/activity/CaptureFragment;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/zxing/Result;

    invoke-virtual {v5, v4, v0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 85
    .end local v0    # "barcode":Landroid/graphics/Bitmap;
    :cond_3
    const-string v4, "barcode_bitmap"

    .line 86
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    move-object v0, v4

    goto :goto_1

    .line 90
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_4
    iget v4, p1, Landroid/os/Message;->what:I

    const v5, 0x7f090002

    if-ne v4, v5, :cond_5

    .line 92
    sget-object v4, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    iput-object v4, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->state:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    .line 93
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object v4

    iget-object v5, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/uuzuche/lib_zxing/decoding/DecodeThread;

    invoke-virtual {v5}, Lcom/uuzuche/lib_zxing/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const v6, 0x7f090001

    invoke-virtual {v4, v5, v6}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    goto :goto_0

    .line 94
    :cond_5
    iget v4, p1, Landroid/os/Message;->what:I

    const v5, 0x7f09000a

    if-ne v4, v5, :cond_6

    .line 95
    sget-object v4, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v5, "Got return scan result message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v4, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->fragment:Lcom/uuzuche/lib_zxing/activity/CaptureFragment;

    invoke-virtual {v4}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/4 v6, -0x1

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    invoke-virtual {v5, v6, v4}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 97
    iget-object v4, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->fragment:Lcom/uuzuche/lib_zxing/activity/CaptureFragment;

    invoke-virtual {v4}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto/16 :goto_0

    .line 98
    :cond_6
    iget v4, p1, Landroid/os/Message;->what:I

    const v5, 0x7f090007

    if-ne v4, v5, :cond_0

    .line 99
    sget-object v4, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v5, "Got product query message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 101
    .local v3, "url":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 102
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x80000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    iget-object v4, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->fragment:Lcom/uuzuche/lib_zxing/activity/CaptureFragment;

    invoke-virtual {v4}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public quitSynchronously()V
    .locals 3

    .prologue
    .line 108
    sget-object v1, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;->DONE:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    iput-object v1, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->state:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    .line 109
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->stopPreview()V

    .line 110
    iget-object v1, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/uuzuche/lib_zxing/decoding/DecodeThread;

    invoke-virtual {v1}, Lcom/uuzuche/lib_zxing/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f090008

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 111
    .local v0, "quit":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/uuzuche/lib_zxing/decoding/DecodeThread;

    invoke-virtual {v1}, Lcom/uuzuche/lib_zxing/decoding/DecodeThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    const v1, 0x7f090003

    invoke-virtual {p0, v1}, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->removeMessages(I)V

    .line 120
    const v1, 0x7f090002

    invoke-virtual {p0, v1}, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->removeMessages(I)V

    .line 121
    return-void

    .line 114
    :catch_0
    move-exception v1

    goto :goto_0
.end method
