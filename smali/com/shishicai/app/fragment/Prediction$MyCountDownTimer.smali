.class Lcom/shishicai/app/fragment/Prediction$MyCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "Prediction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/fragment/Prediction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyCountDownTimer"
.end annotation


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "millisInFuture"    # J
    .param p3, "countDownInterval"    # J

    .prologue
    .line 708
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 709
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    .line 713
    invoke-static {}, Lcom/shishicai/app/fragment/Prediction;->access$400()Lcom/shishicai/app/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shishicai/app/activity/MainActivity;->getTitleTimeTv()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u5f00\u5956"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    invoke-static {}, Lcom/shishicai/app/fragment/Prediction;->access$1700()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/shishicai/app/fragment/Prediction;->access$2400()Lcom/shishicai/app/fragment/Prediction$LoadTask;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 715
    return-void
.end method

.method public onTick(J)V
    .locals 11
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/16 v10, 0xa

    const-wide/16 v6, 0x3e8

    .line 720
    div-long v4, p1, v6

    long-to-int v4, v4

    rem-int/lit8 v3, v4, 0x3c

    .line 721
    .local v3, "second":I
    div-long v4, p1, v6

    long-to-int v4, v4

    div-int/lit8 v1, v4, 0x3c

    .line 722
    .local v1, "minute":I
    div-long v4, p1, v6

    invoke-static {}, Lcom/shishicai/app/fragment/Prediction;->access$4100()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 724
    new-instance v4, Lcom/shishicai/app/fragment/Prediction$MyCountDownTimer1;

    invoke-static {}, Lcom/shishicai/app/fragment/Prediction;->access$4300()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v6, v5

    const-wide/16 v8, 0x4b0

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/shishicai/app/fragment/Prediction$MyCountDownTimer1;-><init>(JJ)V

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$4202(Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 725
    invoke-static {}, Lcom/shishicai/app/fragment/Prediction;->access$4200()Landroid/os/CountDownTimer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 727
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, "min":Ljava/lang/String;
    if-ge v1, v10, :cond_1

    .line 729
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 731
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 732
    .local v2, "sec":Ljava/lang/String;
    if-ge v3, v10, :cond_2

    .line 734
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 736
    :cond_2
    invoke-static {}, Lcom/shishicai/app/fragment/Prediction;->access$400()Lcom/shishicai/app/activity/MainActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shishicai/app/activity/MainActivity;->getTitleTimeTv()Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    return-void
.end method
