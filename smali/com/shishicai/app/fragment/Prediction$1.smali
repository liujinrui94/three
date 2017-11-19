.class Lcom/shishicai/app/fragment/Prediction$1;
.super Ljava/lang/Object;
.source "Prediction.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/fragment/Prediction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/fragment/Prediction;


# direct methods
.method constructor <init>(Lcom/shishicai/app/fragment/Prediction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/shishicai/app/fragment/Prediction$1;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction$1;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v0}, Lcom/shishicai/app/fragment/Prediction;->access$1900(Lcom/shishicai/app/fragment/Prediction;)V

    .line 347
    return-void
.end method
