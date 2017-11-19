.class Lcom/shishicai/app/activity/ChartActivity$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "ChartActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/ChartActivity;->gainData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/ChartActivity;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/ChartActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/ChartActivity;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/shishicai/app/activity/ChartActivity$1;->this$0:Lcom/shishicai/app/activity/ChartActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B
    .param p4, "arg3"    # Ljava/lang/Throwable;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity$1;->this$0:Lcom/shishicai/app/activity/ChartActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/ChartActivity;->access$000(Lcom/shishicai/app/activity/ChartActivity;)Ljava/lang/String;

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

    .line 388
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity$1;->this$0:Lcom/shishicai/app/activity/ChartActivity;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 389
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 393
    invoke-super {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onStart()V

    .line 394
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 8
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B

    .prologue
    .line 398
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p3}, Ljava/lang/String;-><init>([B)V

    .line 399
    .local v4, "str":Ljava/lang/String;
    iget-object v5, p0, Lcom/shishicai/app/activity/ChartActivity$1;->this$0:Lcom/shishicai/app/activity/ChartActivity;

    invoke-static {v5}, Lcom/shishicai/app/activity/ChartActivity;->access$100(Lcom/shishicai/app/activity/ChartActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const/4 v3, 0x0

    .line 402
    .local v3, "info":Lcom/shishicai/app/domain/TrendChartInfo;
    :try_start_0
    const-class v5, Lcom/shishicai/app/domain/TrendChartInfo;

    invoke-static {v4, v5}, Lcom/shishicai/app/utils/GsonUtils;->parseJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/shishicai/app/domain/TrendChartInfo;

    move-object v3, v0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :goto_0
    invoke-virtual {v3}, Lcom/shishicai/app/domain/TrendChartInfo;->getItems()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/shishicai/app/domain/TrendChartInfo;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 409
    iget-object v5, p0, Lcom/shishicai/app/activity/ChartActivity$1;->this$0:Lcom/shishicai/app/activity/ChartActivity;

    invoke-static {v5}, Lcom/shishicai/app/activity/ChartActivity;->access$300(Lcom/shishicai/app/activity/ChartActivity;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Lcom/shishicai/app/domain/TrendChartInfo;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 410
    iget-object v5, p0, Lcom/shishicai/app/activity/ChartActivity$1;->this$0:Lcom/shishicai/app/activity/ChartActivity;

    iget-object v6, p0, Lcom/shishicai/app/activity/ChartActivity$1;->this$0:Lcom/shishicai/app/activity/ChartActivity;

    invoke-static {v6}, Lcom/shishicai/app/activity/ChartActivity;->access$300(Lcom/shishicai/app/activity/ChartActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/shishicai/app/activity/ChartActivity;->access$402(Lcom/shishicai/app/activity/ChartActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 411
    iget-object v5, p0, Lcom/shishicai/app/activity/ChartActivity$1;->this$0:Lcom/shishicai/app/activity/ChartActivity;

    iget-object v6, p0, Lcom/shishicai/app/activity/ChartActivity$1;->this$0:Lcom/shishicai/app/activity/ChartActivity;

    invoke-static {v6}, Lcom/shishicai/app/activity/ChartActivity;->access$300(Lcom/shishicai/app/activity/ChartActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/shishicai/app/activity/ChartActivity;->access$502(Lcom/shishicai/app/activity/ChartActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 412
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lcom/shishicai/app/activity/ChartActivity$1;->this$0:Lcom/shishicai/app/activity/ChartActivity;

    invoke-static {v5}, Lcom/shishicai/app/activity/ChartActivity;->access$300(Lcom/shishicai/app/activity/ChartActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 414
    iget-object v5, p0, Lcom/shishicai/app/activity/ChartActivity$1;->this$0:Lcom/shishicai/app/activity/ChartActivity;

    invoke-static {v5}, Lcom/shishicai/app/activity/ChartActivity;->access$400(Lcom/shishicai/app/activity/ChartActivity;)[Ljava/lang/String;

    move-result-object v6

    iget-object v5, p0, Lcom/shishicai/app/activity/ChartActivity$1;->this$0:Lcom/shishicai/app/activity/ChartActivity;

    invoke-static {v5}, Lcom/shishicai/app/activity/ChartActivity;->access$300(Lcom/shishicai/app/activity/ChartActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shishicai/app/domain/TrendChartInfo$ItemsBean;

    invoke-virtual {v5}, Lcom/shishicai/app/domain/TrendChartInfo$ItemsBean;->getPeriod()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v2

    .line 415
    iget-object v5, p0, Lcom/shishicai/app/activity/ChartActivity$1;->this$0:Lcom/shishicai/app/activity/ChartActivity;

    invoke-static {v5}, Lcom/shishicai/app/activity/ChartActivity;->access$500(Lcom/shishicai/app/activity/ChartActivity;)[Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/shishicai/app/activity/ChartActivity$1;->this$0:Lcom/shishicai/app/activity/ChartActivity;

    invoke-static {v5}, Lcom/shishicai/app/activity/ChartActivity;->access$300(Lcom/shishicai/app/activity/ChartActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shishicai/app/domain/TrendChartInfo$ItemsBean;

    invoke-virtual {v5}, Lcom/shishicai/app/domain/TrendChartInfo$ItemsBean;->getBall()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v2

    .line 412
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 403
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 404
    .local v1, "e":Lcom/google/gson/JsonSyntaxException;
    iget-object v5, p0, Lcom/shishicai/app/activity/ChartActivity$1;->this$0:Lcom/shishicai/app/activity/ChartActivity;

    invoke-static {v5}, Lcom/shishicai/app/activity/ChartActivity;->access$200(Lcom/shishicai/app/activity/ChartActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "err="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-virtual {v1}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto/16 :goto_0

    .line 417
    .end local v1    # "e":Lcom/google/gson/JsonSyntaxException;
    .restart local v2    # "i":I
    :cond_0
    iget-object v5, p0, Lcom/shishicai/app/activity/ChartActivity$1;->this$0:Lcom/shishicai/app/activity/ChartActivity;

    invoke-static {v5}, Lcom/shishicai/app/activity/ChartActivity;->access$600(Lcom/shishicai/app/activity/ChartActivity;)V

    .line 419
    .end local v2    # "i":I
    :cond_1
    return-void
.end method
