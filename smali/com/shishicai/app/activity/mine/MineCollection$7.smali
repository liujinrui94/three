.class Lcom/shishicai/app/activity/mine/MineCollection$7;
.super Lcom/loopj/android/http/JsonHttpResponseHandler;
.source "MineCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/mine/MineCollection;->gainCollection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineCollection;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineCollection;Landroid/os/Message;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/mine/MineCollection;

    .prologue
    .line 555
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineCollection$7;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    iput-object p2, p0, Lcom/shishicai/app/activity/mine/MineCollection$7;->val$msg:Landroid/os/Message;

    invoke-direct {p0}, Lcom/loopj/android/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # Ljava/lang/Throwable;
    .param p4, "arg3"    # Lorg/json/JSONObject;

    .prologue
    .line 559
    const-string v0, "com.soshow.hiyoga.MineCollectionresult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # Lorg/json/JSONObject;

    .prologue
    .line 565
    const-string v4, "com.soshow.hiyoga.MineCollectionresult"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :try_start_0
    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineCollection$7;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v4}, Lcom/shishicai/app/activity/mine/MineCollection;->access$800(Lcom/shishicai/app/activity/mine/MineCollection;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 568
    const-string v4, "goods_list"

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 569
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 570
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 571
    .local v2, "item":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineCollection$7;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    new-instance v5, Lcom/shishicai/app/domain/Goods;

    invoke-direct {v5}, Lcom/shishicai/app/domain/Goods;-><init>()V

    invoke-static {v4, v5}, Lcom/shishicai/app/activity/mine/MineCollection;->access$702(Lcom/shishicai/app/activity/mine/MineCollection;Lcom/shishicai/app/domain/Goods;)Lcom/shishicai/app/domain/Goods;

    .line 572
    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineCollection$7;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v4}, Lcom/shishicai/app/activity/mine/MineCollection;->access$700(Lcom/shishicai/app/activity/mine/MineCollection;)Lcom/shishicai/app/domain/Goods;

    move-result-object v4

    const-string v5, "rec_id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/shishicai/app/domain/Goods;->setRec_id(Ljava/lang/String;)V

    .line 573
    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineCollection$7;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v4}, Lcom/shishicai/app/activity/mine/MineCollection;->access$700(Lcom/shishicai/app/activity/mine/MineCollection;)Lcom/shishicai/app/domain/Goods;

    move-result-object v4

    const-string v5, "is_attention"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/shishicai/app/domain/Goods;->setIs_attention(Ljava/lang/String;)V

    .line 574
    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineCollection$7;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v4}, Lcom/shishicai/app/activity/mine/MineCollection;->access$700(Lcom/shishicai/app/activity/mine/MineCollection;)Lcom/shishicai/app/domain/Goods;

    move-result-object v4

    const-string v5, "goods_id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/shishicai/app/domain/Goods;->setGoods_id(Ljava/lang/String;)V

    .line 575
    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineCollection$7;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v4}, Lcom/shishicai/app/activity/mine/MineCollection;->access$700(Lcom/shishicai/app/activity/mine/MineCollection;)Lcom/shishicai/app/domain/Goods;

    move-result-object v4

    const-string v5, "goods_name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/shishicai/app/domain/Goods;->setGoods_name(Ljava/lang/String;)V

    .line 576
    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineCollection$7;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v4}, Lcom/shishicai/app/activity/mine/MineCollection;->access$700(Lcom/shishicai/app/activity/mine/MineCollection;)Lcom/shishicai/app/domain/Goods;

    move-result-object v4

    const-string v5, "shop_price"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/shishicai/app/domain/Goods;->setShop_price(Ljava/lang/String;)V

    .line 577
    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineCollection$7;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v4}, Lcom/shishicai/app/activity/mine/MineCollection;->access$700(Lcom/shishicai/app/activity/mine/MineCollection;)Lcom/shishicai/app/domain/Goods;

    move-result-object v4

    const-string v5, "market_price"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/shishicai/app/domain/Goods;->setMarket_price(Ljava/lang/String;)V

    .line 578
    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineCollection$7;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v4}, Lcom/shishicai/app/activity/mine/MineCollection;->access$700(Lcom/shishicai/app/activity/mine/MineCollection;)Lcom/shishicai/app/domain/Goods;

    move-result-object v4

    const-string v5, "promote_price"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/shishicai/app/domain/Goods;->setPromote_price(Ljava/lang/String;)V

    .line 579
    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineCollection$7;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v4}, Lcom/shishicai/app/activity/mine/MineCollection;->access$700(Lcom/shishicai/app/activity/mine/MineCollection;)Lcom/shishicai/app/domain/Goods;

    move-result-object v4

    const-string v5, "goods_img"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/shishicai/app/domain/Goods;->setGoods_img(Ljava/lang/String;)V

    .line 580
    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineCollection$7;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v4}, Lcom/shishicai/app/activity/mine/MineCollection;->access$800(Lcom/shishicai/app/activity/mine/MineCollection;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/shishicai/app/activity/mine/MineCollection$7;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v5}, Lcom/shishicai/app/activity/mine/MineCollection;->access$700(Lcom/shishicai/app/activity/mine/MineCollection;)Lcom/shishicai/app/domain/Goods;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 582
    .end local v2    # "item":Lorg/json/JSONObject;
    :cond_0
    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineCollection$7;->val$msg:Landroid/os/Message;

    const/16 v5, 0x66

    iput v5, v4, Landroid/os/Message;->what:I

    .line 583
    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineCollection$7;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v4}, Lcom/shishicai/app/activity/mine/MineCollection;->access$1100(Lcom/shishicai/app/activity/mine/MineCollection;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/shishicai/app/activity/mine/MineCollection$7;->val$msg:Landroid/os/Message;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    .end local v1    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :goto_1
    return-void

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "com.soshow.hiyoga.MineCollection"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
