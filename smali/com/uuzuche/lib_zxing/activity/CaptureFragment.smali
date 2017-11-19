.class public Lcom/uuzuche/lib_zxing/activity/CaptureFragment;
.super Landroid/support/v4/app/Fragment;
.source "CaptureFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final BEEP_VOLUME:F = 0.1f

.field private static final VIBRATE_DURATION:J = 0xc8L


# instance fields
.field private analyzeCallback:Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;

.field private final beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private camera:Landroid/hardware/Camera;

.field private characterSet:Ljava/lang/String;

.field private decodeFormats:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;

.field private hasSurface:Z

.field private inactivityTimer:Lcom/uuzuche/lib_zxing/decoding/InactivityTimer;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private playBeep:Z

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceView:Landroid/view/SurfaceView;

.field private vibrate:Z

.field private viewfinderView:Lcom/uuzuche/lib_zxing/view/ViewfinderView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 239
    new-instance v0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment$1;

    invoke-direct {v0, p0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment$1;-><init>(Lcom/uuzuche/lib_zxing/activity/CaptureFragment;)V

    iput-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method private initBeepSound()V
    .locals 8

    .prologue
    const/4 v1, 0x3

    .line 201
    iget-boolean v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->playBeep:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setVolumeControlStream(I)V

    .line 206
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 207
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 208
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 210
    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 213
    .local v7, "file":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 214
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 213
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 215
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 216
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 217
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v7    # "file":Landroid/content/res/AssetFileDescriptor;
    :cond_0
    :goto_0
    return-void

    .line 218
    .restart local v7    # "file":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v6

    .line 219
    .local v6, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 6
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 148
    :try_start_0
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V

    .line 149
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->getCamera()Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    iget-object v2, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->handler:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;

    if-nez v2, :cond_0

    .line 156
    new-instance v2, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;

    iget-object v3, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->decodeFormats:Ljava/util/Vector;

    iget-object v4, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->characterSet:Ljava/lang/String;

    iget-object v5, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->viewfinderView:Lcom/uuzuche/lib_zxing/view/ViewfinderView;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;-><init>(Lcom/uuzuche/lib_zxing/activity/CaptureFragment;Ljava/util/Vector;Ljava/lang/String;Lcom/uuzuche/lib_zxing/view/ViewfinderView;)V

    iput-object v2, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->handler:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "ioe":Ljava/io/IOException;
    goto :goto_0

    .line 152
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method private playBeepSoundAndVibrate()V
    .locals 4

    .prologue
    .line 227
    iget-boolean v1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->playBeep:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 230
    :cond_0
    iget-boolean v1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->vibrate:Z

    if-eqz v1, :cond_1

    .line 231
    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 232
    .local v0, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 234
    .end local v0    # "vibrator":Landroid/os/Vibrator;
    :cond_1
    return-void
.end method


# virtual methods
.method public drawViewfinder()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->viewfinderView:Lcom/uuzuche/lib_zxing/view/ViewfinderView;

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->drawViewfinder()V

    .line 198
    return-void
.end method

.method public getAnalyzeCallback()Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->analyzeCallback:Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->handler:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;

    return-object v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Lcom/google/zxing/Result;
    .param p2, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->inactivityTimer:Lcom/uuzuche/lib_zxing/decoding/InactivityTimer;

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/decoding/InactivityTimer;->onActivity()V

    .line 133
    invoke-direct {p0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->playBeepSoundAndVibrate()V

    .line 135
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->analyzeCallback:Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->analyzeCallback:Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;

    invoke-interface {v0}, Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;->onAnalyzeFailed()V

    .line 144
    :cond_1
    :goto_0
    return-void

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->analyzeCallback:Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->analyzeCallback:Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;->onAnalyzeSuccess(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->init(Landroid/content/Context;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->hasSurface:Z

    .line 59
    new-instance v0, Lcom/uuzuche/lib_zxing/decoding/InactivityTimer;

    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/uuzuche/lib_zxing/decoding/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->inactivityTimer:Lcom/uuzuche/lib_zxing/decoding/InactivityTimer;

    .line 60
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 67
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 68
    .local v2, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 69
    const-string v3, "layout_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 70
    .local v1, "layoutId":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 71
    invoke-virtual {p1, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 75
    .end local v1    # "layoutId":I
    :cond_0
    if-nez v2, :cond_1

    .line 76
    const v3, 0x7f03002f

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 79
    :cond_1
    const v3, 0x7f0900a7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/uuzuche/lib_zxing/view/ViewfinderView;

    iput-object v3, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->viewfinderView:Lcom/uuzuche/lib_zxing/view/ViewfinderView;

    .line 80
    const v3, 0x7f0900a6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceView;

    iput-object v3, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->surfaceView:Landroid/view/SurfaceView;

    .line 81
    iget-object v3, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iput-object v3, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 83
    return-object v2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 120
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->inactivityTimer:Lcom/uuzuche/lib_zxing/decoding/InactivityTimer;

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/decoding/InactivityTimer;->shutdown()V

    .line 121
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 122
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 110
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->handler:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->handler:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->quitSynchronously()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->handler:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;

    .line 114
    :cond_0
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->closeDriver()V

    .line 115
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 88
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 89
    iget-boolean v1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->hasSurface:Z

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v1}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 95
    :goto_0
    iput-object v4, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->decodeFormats:Ljava/util/Vector;

    .line 96
    iput-object v4, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->characterSet:Ljava/lang/String;

    .line 98
    iput-boolean v3, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->playBeep:Z

    .line 99
    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 100
    .local v0, "audioService":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 101
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->playBeep:Z

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->initBeepSound()V

    .line 104
    iput-boolean v3, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->vibrate:Z

    .line 105
    return-void

    .line 92
    .end local v0    # "audioService":Landroid/media/AudioManager;
    :cond_1
    iget-object v1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 93
    iget-object v1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    goto :goto_0
.end method

.method public setAnalyzeCallback(Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;)V
    .locals 0
    .param p1, "analyzeCallback"    # Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->analyzeCallback:Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;

    .line 251
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 164
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->hasSurface:Z

    if-nez v0, :cond_0

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->hasSurface:Z

    .line 170
    invoke-direct {p0, p1}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 173
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 177
    iput-boolean v1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->hasSurface:Z

    .line 178
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->isUseOneShotPreviewCallback()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 184
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->getPreviewCallback()Lcom/uuzuche/lib_zxing/camera/PreviewCallback;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/uuzuche/lib_zxing/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 185
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->getAutoFocusCallback()Lcom/uuzuche/lib_zxing/camera/AutoFocusCallback;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/uuzuche/lib_zxing/camera/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 186
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->setPreviewing(Z)V

    .line 189
    :cond_1
    return-void
.end method
