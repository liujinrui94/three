.class Lcom/uuzuche/lib_zxing/activity/CaptureFragment$1;
.super Ljava/lang/Object;
.source "CaptureFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uuzuche/lib_zxing/activity/CaptureFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uuzuche/lib_zxing/activity/CaptureFragment;


# direct methods
.method constructor <init>(Lcom/uuzuche/lib_zxing/activity/CaptureFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uuzuche/lib_zxing/activity/CaptureFragment;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment$1;->this$0:Lcom/uuzuche/lib_zxing/activity/CaptureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 242
    return-void
.end method
