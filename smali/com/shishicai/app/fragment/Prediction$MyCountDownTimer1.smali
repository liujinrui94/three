.class Lcom/shishicai/app/fragment/Prediction$MyCountDownTimer1;
.super Landroid/os/CountDownTimer;
.source "Prediction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/fragment/Prediction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyCountDownTimer1"
.end annotation


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "millisInFuture"    # J
    .param p3, "countDownInterval"    # J

    .prologue
    .line 744
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 745
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    .prologue
    .line 749
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 754
    invoke-static {}, Lcom/shishicai/app/fragment/Prediction;->playBeepSoundAndVibrate()V

    .line 755
    return-void
.end method
