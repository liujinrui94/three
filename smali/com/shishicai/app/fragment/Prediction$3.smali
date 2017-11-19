.class Lcom/shishicai/app/fragment/Prediction$3;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "Prediction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/fragment/Prediction;->gainNewData()V
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
    .line 525
    iput-object p1, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B
    .param p4, "arg3"    # Ljava/lang/Throwable;

    .prologue
    const/4 v3, 0x0

    .line 529
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v0}, Lcom/shishicai/app/fragment/Prediction;->access$2100(Lcom/shishicai/app/fragment/Prediction;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v0, v3}, Lcom/shishicai/app/fragment/Prediction;->access$2302(Lcom/shishicai/app/fragment/Prediction;Z)Z

    .line 531
    invoke-static {}, Lcom/shishicai/app/fragment/Prediction;->access$400()Lcom/shishicai/app/activity/MainActivity;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u5f02\u5e38!"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 532
    invoke-static {}, Lcom/shishicai/app/fragment/Prediction;->access$1700()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/shishicai/app/fragment/Prediction;->access$2400()Lcom/shishicai/app/fragment/Prediction$LoadTask;

    move-result-object v1

    iget-object v2, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v2}, Lcom/shishicai/app/fragment/Prediction;->access$2500(Lcom/shishicai/app/fragment/Prediction;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 533
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 10
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B

    .prologue
    .line 537
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/lang/String;-><init>([B)V

    .line 538
    .local v3, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$2100(Lcom/shishicai/app/fragment/Prediction;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/shishicai/app/fragment/Prediction;->access$2302(Lcom/shishicai/app/fragment/Prediction;Z)Z

    .line 541
    :try_start_0
    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    const-class v4, Lcom/shishicai/app/domain/AwardNewInfo;

    invoke-static {v3, v4}, Lcom/shishicai/app/utils/GsonUtils;->parseJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shishicai/app/domain/AwardNewInfo;

    invoke-static {v5, v4}, Lcom/shishicai/app/fragment/Prediction;->access$2602(Lcom/shishicai/app/fragment/Prediction;Lcom/shishicai/app/domain/AwardNewInfo;)Lcom/shishicai/app/domain/AwardNewInfo;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    const/4 v1, 0x0

    .line 548
    .local v1, "milliseconds":I
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$2600(Lcom/shishicai/app/fragment/Prediction;)Lcom/shishicai/app/domain/AwardNewInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$2600(Lcom/shishicai/app/fragment/Prediction;)Lcom/shishicai/app/domain/AwardNewInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shishicai/app/domain/AwardNewInfo;->getItems()Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$2600(Lcom/shishicai/app/fragment/Prediction;)Lcom/shishicai/app/domain/AwardNewInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shishicai/app/domain/AwardNewInfo;->getItems()Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;->getNext()Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$NextBean;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 550
    invoke-static {}, Lcom/shishicai/app/fragment/Prediction;->access$400()Lcom/shishicai/app/activity/MainActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shishicai/app/activity/MainActivity;->getTitleTv()Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8ddd\u79bb"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v6}, Lcom/shishicai/app/fragment/Prediction;->access$2600(Lcom/shishicai/app/fragment/Prediction;)Lcom/shishicai/app/domain/AwardNewInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/shishicai/app/domain/AwardNewInfo;->getItems()Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;->getNext()Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$NextBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$NextBean;->getPeriod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u671f\u5f00\u5956\u65f6\u95f4\u5269\u4f59"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$2600(Lcom/shishicai/app/fragment/Prediction;)Lcom/shishicai/app/domain/AwardNewInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shishicai/app/domain/AwardNewInfo;->getItems()Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;->getNext()Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$NextBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$NextBean;->getInterval()I

    move-result v1

    .line 552
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$2100(Lcom/shishicai/app/fragment/Prediction;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get milliseconds="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v5}, Lcom/shishicai/app/fragment/Prediction;->access$2600(Lcom/shishicai/app/fragment/Prediction;)Lcom/shishicai/app/domain/AwardNewInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/shishicai/app/domain/AwardNewInfo;->getItems()Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;->getNext()Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$NextBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$NextBean;->getDelayinterval()I

    move-result v5

    invoke-static {v4, v5}, Lcom/shishicai/app/fragment/Prediction;->access$2502(Lcom/shishicai/app/fragment/Prediction;I)I

    .line 554
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$2100(Lcom/shishicai/app/fragment/Prediction;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get delay="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v6}, Lcom/shishicai/app/fragment/Prediction;->access$2500(Lcom/shishicai/app/fragment/Prediction;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    if-lez v1, :cond_2

    .line 557
    new-instance v4, Lcom/shishicai/app/fragment/Prediction$MyCountDownTimer;

    int-to-long v6, v1

    const-wide/16 v8, 0x3e8

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/shishicai/app/fragment/Prediction$MyCountDownTimer;-><init>(JJ)V

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$2702(Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 558
    invoke-static {}, Lcom/shishicai/app/fragment/Prediction;->access$2700()Landroid/os/CountDownTimer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 564
    :cond_0
    :goto_0
    if-lez v1, :cond_1

    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$2600(Lcom/shishicai/app/fragment/Prediction;)Lcom/shishicai/app/domain/AwardNewInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shishicai/app/domain/AwardNewInfo;->getItems()Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;->getCurrent()Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$CurrentBean;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 566
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$2800(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v6}, Lcom/shishicai/app/fragment/Prediction;->access$2600(Lcom/shishicai/app/fragment/Prediction;)Lcom/shishicai/app/domain/AwardNewInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/shishicai/app/domain/AwardNewInfo;->getItems()Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;->getCurrent()Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$CurrentBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$CurrentBean;->getDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v6}, Lcom/shishicai/app/fragment/Prediction;->access$2600(Lcom/shishicai/app/fragment/Prediction;)Lcom/shishicai/app/domain/AwardNewInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/shishicai/app/domain/AwardNewInfo;->getItems()Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;->getCurrent()Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$CurrentBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$CurrentBean;->getTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$2900(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v6}, Lcom/shishicai/app/fragment/Prediction;->access$2600(Lcom/shishicai/app/fragment/Prediction;)Lcom/shishicai/app/domain/AwardNewInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/shishicai/app/domain/AwardNewInfo;->getItems()Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;->getCurrent()Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$CurrentBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$CurrentBean;->getPeriod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u671f\u5f00\u5956\u7ed3\u679c"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$2600(Lcom/shishicai/app/fragment/Prediction;)Lcom/shishicai/app/domain/AwardNewInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shishicai/app/domain/AwardNewInfo;->getItems()Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean;->getCurrent()Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$CurrentBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shishicai/app/domain/AwardNewInfo$ItemsBean$CurrentBean;->getResult()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 569
    .local v2, "numbers":[Ljava/lang/String;
    array-length v4, v2

    if-lez v4, :cond_3

    .line 571
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3000(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 572
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3000(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3000(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-static {v5, v6}, Lcom/shishicai/app/fragment/Prediction;->access$3100(Lcom/shishicai/app/fragment/Prediction;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 577
    :goto_1
    array-length v4, v2

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    .line 579
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3200(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 580
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3200(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3200(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v5, v6}, Lcom/shishicai/app/fragment/Prediction;->access$3100(Lcom/shishicai/app/fragment/Prediction;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 585
    :goto_2
    array-length v4, v2

    const/4 v5, 0x2

    if-le v4, v5, :cond_5

    .line 587
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3300(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 588
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3300(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3300(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    const/4 v6, 0x2

    aget-object v6, v2, v6

    invoke-static {v5, v6}, Lcom/shishicai/app/fragment/Prediction;->access$3100(Lcom/shishicai/app/fragment/Prediction;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 593
    :goto_3
    array-length v4, v2

    const/4 v5, 0x3

    if-le v4, v5, :cond_6

    .line 595
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3400(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 596
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3400(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3400(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    const/4 v6, 0x3

    aget-object v6, v2, v6

    invoke-static {v5, v6}, Lcom/shishicai/app/fragment/Prediction;->access$3100(Lcom/shishicai/app/fragment/Prediction;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 601
    :goto_4
    array-length v4, v2

    const/4 v5, 0x4

    if-le v4, v5, :cond_7

    .line 603
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3500(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 604
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3500(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x4

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3500(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    const/4 v6, 0x4

    aget-object v6, v2, v6

    invoke-static {v5, v6}, Lcom/shishicai/app/fragment/Prediction;->access$3100(Lcom/shishicai/app/fragment/Prediction;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 609
    :goto_5
    array-length v4, v2

    const/4 v5, 0x5

    if-le v4, v5, :cond_8

    .line 611
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3600(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 612
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3600(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x5

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3600(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    const/4 v6, 0x5

    aget-object v6, v2, v6

    invoke-static {v5, v6}, Lcom/shishicai/app/fragment/Prediction;->access$3100(Lcom/shishicai/app/fragment/Prediction;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 617
    :goto_6
    array-length v4, v2

    const/4 v5, 0x6

    if-le v4, v5, :cond_9

    .line 619
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3700(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 620
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3700(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x6

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3700(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    const/4 v6, 0x6

    aget-object v6, v2, v6

    invoke-static {v5, v6}, Lcom/shishicai/app/fragment/Prediction;->access$3100(Lcom/shishicai/app/fragment/Prediction;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 625
    :goto_7
    array-length v4, v2

    const/4 v5, 0x7

    if-le v4, v5, :cond_a

    .line 627
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3800(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 628
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3800(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x7

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3800(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    const/4 v6, 0x7

    aget-object v6, v2, v6

    invoke-static {v5, v6}, Lcom/shishicai/app/fragment/Prediction;->access$3100(Lcom/shishicai/app/fragment/Prediction;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 633
    :goto_8
    array-length v4, v2

    const/16 v5, 0x8

    if-le v4, v5, :cond_b

    .line 635
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3900(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 636
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3900(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3900(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    const/16 v6, 0x8

    aget-object v6, v2, v6

    invoke-static {v5, v6}, Lcom/shishicai/app/fragment/Prediction;->access$3100(Lcom/shishicai/app/fragment/Prediction;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 641
    :goto_9
    array-length v4, v2

    const/16 v5, 0x9

    if-le v4, v5, :cond_c

    .line 643
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$4000(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 644
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$4000(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x9

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$4000(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    const/16 v6, 0x9

    aget-object v6, v2, v6

    invoke-static {v5, v6}, Lcom/shishicai/app/fragment/Prediction;->access$3100(Lcom/shishicai/app/fragment/Prediction;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 651
    .end local v1    # "milliseconds":I
    .end local v2    # "numbers":[Ljava/lang/String;
    :cond_1
    :goto_a
    return-void

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$2100(Lcom/shishicai/app/fragment/Prediction;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "err="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto :goto_a

    .line 560
    .end local v0    # "e":Lcom/google/gson/JsonSyntaxException;
    .restart local v1    # "milliseconds":I
    :cond_2
    invoke-static {}, Lcom/shishicai/app/fragment/Prediction;->access$1700()Landroid/os/Handler;

    move-result-object v4

    invoke-static {}, Lcom/shishicai/app/fragment/Prediction;->access$2400()Lcom/shishicai/app/fragment/Prediction$LoadTask;

    move-result-object v5

    iget-object v6, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v6}, Lcom/shishicai/app/fragment/Prediction;->access$2500(Lcom/shishicai/app/fragment/Prediction;)I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 575
    .restart local v2    # "numbers":[Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3000(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 583
    :cond_4
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3200(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 591
    :cond_5
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3300(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 599
    :cond_6
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3400(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 607
    :cond_7
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3500(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 615
    :cond_8
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3600(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 623
    :cond_9
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3700(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 631
    :cond_a
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3800(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    .line 639
    :cond_b
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$3900(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 647
    :cond_c
    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$3;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$4000(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a
.end method
