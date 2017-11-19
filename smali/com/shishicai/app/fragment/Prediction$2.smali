.class Lcom/shishicai/app/fragment/Prediction$2;
.super Lcn/bmob/v3/listener/FindListener;
.source "Prediction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/fragment/Prediction;->gainHomeAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/bmob/v3/listener/FindListener",
        "<",
        "Lcom/shishicai/app/domain/Banner;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/fragment/Prediction;


# direct methods
.method constructor <init>(Lcom/shishicai/app/fragment/Prediction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/fragment/Prediction;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/shishicai/app/fragment/Prediction$2;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-direct {p0}, Lcn/bmob/v3/listener/FindListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 391
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcn/bmob/v3/exception/BmobException;

    invoke-virtual {p0, p1, p2}, Lcom/shishicai/app/fragment/Prediction$2;->done(Ljava/util/List;Lcn/bmob/v3/exception/BmobException;)V

    return-void
.end method

.method public done(Ljava/util/List;Lcn/bmob/v3/exception/BmobException;)V
    .locals 8
    .param p2, "var2"    # Lcn/bmob/v3/exception/BmobException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/Banner;",
            ">;",
            "Lcn/bmob/v3/exception/BmobException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 394
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/domain/Banner;>;"
    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$2;->this$0:Lcom/shishicai/app/fragment/Prediction;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/shishicai/app/fragment/Prediction;->access$2002(Lcom/shishicai/app/fragment/Prediction;Z)Z

    .line 395
    invoke-static {}, Lcom/shishicai/app/fragment/Prediction;->access$1700()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 397
    .local v3, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 401
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/domain/Banner;

    .line 402
    .local v0, "entity":Lcom/shishicai/app/domain/Banner;
    invoke-virtual {v0}, Lcom/shishicai/app/domain/Banner;->getMarket()Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, "market":Ljava/lang/String;
    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$2;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v5}, Lcom/shishicai/app/fragment/Prediction;->access$2100(Lcom/shishicai/app/fragment/Prediction;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "market"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$2;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v5}, Lcom/shishicai/app/fragment/Prediction;->access$2200(Lcom/shishicai/app/fragment/Prediction;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 406
    invoke-virtual {v0}, Lcom/shishicai/app/domain/Banner;->getPic()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 408
    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$2;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v5}, Lcom/shishicai/app/fragment/Prediction;->access$300(Lcom/shishicai/app/fragment/Prediction;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Lcom/shishicai/app/domain/Banner;->getPic()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    :goto_2
    const-string v4, ""

    .line 413
    .local v4, "type":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/shishicai/app/domain/Banner;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 415
    invoke-virtual {v0}, Lcom/shishicai/app/domain/Banner;->getType()Ljava/lang/String;

    move-result-object v4

    .line 417
    :cond_2
    invoke-virtual {v0}, Lcom/shishicai/app/domain/Banner;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 419
    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$2;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v5}, Lcom/shishicai/app/fragment/Prediction;->access$900(Lcom/shishicai/app/fragment/Prediction;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/shishicai/app/domain/Banner;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    :goto_3
    invoke-virtual {v0}, Lcom/shishicai/app/domain/Banner;->getPicUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 425
    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$2;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v5}, Lcom/shishicai/app/fragment/Prediction;->access$200(Lcom/shishicai/app/fragment/Prediction;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Lcom/shishicai/app/domain/Banner;->getPicUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    :goto_4
    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$2;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v5}, Lcom/shishicai/app/fragment/Prediction;->access$2100(Lcom/shishicai/app/fragment/Prediction;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adURL="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/shishicai/app/domain/Banner;->getPicUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",ad pic="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/shishicai/app/domain/Banner;->getPic()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .end local v4    # "type":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 410
    :cond_4
    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$2;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v5}, Lcom/shishicai/app/fragment/Prediction;->access$300(Lcom/shishicai/app/fragment/Prediction;)Ljava/util/List;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 421
    .restart local v4    # "type":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$2;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v5}, Lcom/shishicai/app/fragment/Prediction;->access$900(Lcom/shishicai/app/fragment/Prediction;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 427
    :cond_6
    iget-object v5, p0, Lcom/shishicai/app/fragment/Prediction$2;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v5}, Lcom/shishicai/app/fragment/Prediction;->access$200(Lcom/shishicai/app/fragment/Prediction;)Ljava/util/List;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 432
    .end local v0    # "entity":Lcom/shishicai/app/domain/Banner;
    .end local v2    # "market":Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/String;
    :cond_7
    const/16 v5, 0x66

    iput v5, v3, Landroid/os/Message;->what:I

    .line 433
    invoke-static {}, Lcom/shishicai/app/fragment/Prediction;->access$1700()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
