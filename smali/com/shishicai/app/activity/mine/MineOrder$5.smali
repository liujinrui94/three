.class Lcom/shishicai/app/activity/mine/MineOrder$5;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "MineOrder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/mine/MineOrder;->gainOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineOrder;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineOrder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/mine/MineOrder;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrder$5;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

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
    .line 259
    invoke-static {}, Lcom/shishicai/app/activity/mine/MineOrder;->access$2100()Ljava/lang/String;

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

    .line 260
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 14
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B

    .prologue
    .line 264
    new-instance v11, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>([B)V

    .line 265
    .local v11, "str":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/shishicai/app/activity/mine/MineOrder;->access$2100()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/shishicai/app/Constant;->URLADV:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v11}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    new-instance v10, Landroid/os/Message;

    invoke-direct {v10}, Landroid/os/Message;-><init>()V

    .line 268
    .local v10, "msg":Landroid/os/Message;
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 269
    .local v9, "jsonObject":Lorg/json/JSONObject;
    const-string v12, "count"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "count":Ljava/lang/String;
    const-string v12, "0"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 271
    const-string v12, "list"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 272
    .local v7, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v3, v12, :cond_1

    .line 273
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 274
    .local v4, "item":Lorg/json/JSONObject;
    iget-object v12, p0, Lcom/shishicai/app/activity/mine/MineOrder$5;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    new-instance v13, Lcom/shishicai/app/domain/MyOrder;

    invoke-direct {v13}, Lcom/shishicai/app/domain/MyOrder;-><init>()V

    invoke-static {v12, v13}, Lcom/shishicai/app/activity/mine/MineOrder;->access$702(Lcom/shishicai/app/activity/mine/MineOrder;Lcom/shishicai/app/domain/MyOrder;)Lcom/shishicai/app/domain/MyOrder;

    .line 275
    iget-object v12, p0, Lcom/shishicai/app/activity/mine/MineOrder$5;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v12}, Lcom/shishicai/app/activity/mine/MineOrder;->access$700(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v12

    const-string v13, "order_id"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/shishicai/app/domain/MyOrder;->setOrder_id(Ljava/lang/String;)V

    .line 276
    iget-object v12, p0, Lcom/shishicai/app/activity/mine/MineOrder$5;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v12}, Lcom/shishicai/app/activity/mine/MineOrder;->access$700(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v12

    const-string v13, "log_id"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/shishicai/app/domain/MyOrder;->setLog_id(Ljava/lang/String;)V

    .line 277
    iget-object v12, p0, Lcom/shishicai/app/activity/mine/MineOrder$5;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v12}, Lcom/shishicai/app/activity/mine/MineOrder;->access$700(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v12

    const-string v13, "order_sn"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/shishicai/app/domain/MyOrder;->setOrder_sn(Ljava/lang/String;)V

    .line 278
    iget-object v12, p0, Lcom/shishicai/app/activity/mine/MineOrder$5;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v12}, Lcom/shishicai/app/activity/mine/MineOrder;->access$700(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v12

    const-string v13, "order_time"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/shishicai/app/domain/MyOrder;->setOrder_time(Ljava/lang/String;)V

    .line 279
    iget-object v12, p0, Lcom/shishicai/app/activity/mine/MineOrder$5;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v12}, Lcom/shishicai/app/activity/mine/MineOrder;->access$700(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v12

    const-string v13, "order_status"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/shishicai/app/domain/MyOrder;->setOrder_status(Ljava/lang/String;)V

    .line 280
    iget-object v12, p0, Lcom/shishicai/app/activity/mine/MineOrder$5;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v12}, Lcom/shishicai/app/activity/mine/MineOrder;->access$700(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v12

    const-string v13, "order_status_txt"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/shishicai/app/domain/MyOrder;->setOrder_status_txt(Ljava/lang/String;)V

    .line 281
    iget-object v12, p0, Lcom/shishicai/app/activity/mine/MineOrder$5;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v12}, Lcom/shishicai/app/activity/mine/MineOrder;->access$700(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v12

    const-string v13, "total_fee"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/shishicai/app/domain/MyOrder;->setTotal_fee(Ljava/lang/String;)V

    .line 282
    iget-object v12, p0, Lcom/shishicai/app/activity/mine/MineOrder$5;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v12}, Lcom/shishicai/app/activity/mine/MineOrder;->access$700(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v12

    const-string v13, "handler"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/shishicai/app/domain/MyOrder;->setHandler(Ljava/lang/String;)V

    .line 283
    iget-object v12, p0, Lcom/shishicai/app/activity/mine/MineOrder$5;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v12}, Lcom/shishicai/app/activity/mine/MineOrder;->access$800(Lcom/shishicai/app/activity/mine/MineOrder;)Ljava/util/List;

    move-result-object v12

    iget-object v13, p0, Lcom/shishicai/app/activity/mine/MineOrder$5;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v13}, Lcom/shishicai/app/activity/mine/MineOrder;->access$700(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    const-string v12, "goods_list"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 285
    .local v8, "jsonArray1":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v6, v12, :cond_0

    .line 286
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 287
    .local v5, "item1":Lorg/json/JSONObject;
    iget-object v12, p0, Lcom/shishicai/app/activity/mine/MineOrder$5;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    new-instance v13, Lcom/shishicai/app/domain/Goods;

    invoke-direct {v13}, Lcom/shishicai/app/domain/Goods;-><init>()V

    invoke-static {v12, v13}, Lcom/shishicai/app/activity/mine/MineOrder;->access$1902(Lcom/shishicai/app/activity/mine/MineOrder;Lcom/shishicai/app/domain/Goods;)Lcom/shishicai/app/domain/Goods;

    .line 288
    iget-object v12, p0, Lcom/shishicai/app/activity/mine/MineOrder$5;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v12}, Lcom/shishicai/app/activity/mine/MineOrder;->access$1900(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/domain/Goods;

    move-result-object v12

    const-string v13, "goods_thumb"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/shishicai/app/domain/Goods;->setGoods_thumb(Ljava/lang/String;)V

    .line 289
    iget-object v12, p0, Lcom/shishicai/app/activity/mine/MineOrder$5;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v12}, Lcom/shishicai/app/activity/mine/MineOrder;->access$1900(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/domain/Goods;

    move-result-object v12

    const-string v13, "goods_name"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/shishicai/app/domain/Goods;->setGoods_name(Ljava/lang/String;)V

    .line 290
    iget-object v12, p0, Lcom/shishicai/app/activity/mine/MineOrder$5;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v12}, Lcom/shishicai/app/activity/mine/MineOrder;->access$1900(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/domain/Goods;

    move-result-object v12

    const-string v13, "goods_attr"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/shishicai/app/domain/Goods;->setSize(Ljava/lang/String;)V

    .line 291
    iget-object v12, p0, Lcom/shishicai/app/activity/mine/MineOrder$5;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v12}, Lcom/shishicai/app/activity/mine/MineOrder;->access$1900(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/domain/Goods;

    move-result-object v12

    const-string v13, "goods_attr_id"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/shishicai/app/domain/Goods;->setGoods_id(Ljava/lang/String;)V

    .line 292
    iget-object v12, p0, Lcom/shishicai/app/activity/mine/MineOrder$5;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v12}, Lcom/shishicai/app/activity/mine/MineOrder;->access$1900(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/domain/Goods;

    move-result-object v12

    const-string v13, "goods_number"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/shishicai/app/domain/Goods;->setGoods_num(Ljava/lang/String;)V

    .line 293
    iget-object v12, p0, Lcom/shishicai/app/activity/mine/MineOrder$5;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v12}, Lcom/shishicai/app/activity/mine/MineOrder;->access$1900(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/domain/Goods;

    move-result-object v12

    const-string v13, "goods_price"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/shishicai/app/domain/Goods;->setMarket_price(Ljava/lang/String;)V

    .line 294
    iget-object v12, p0, Lcom/shishicai/app/activity/mine/MineOrder$5;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v12}, Lcom/shishicai/app/activity/mine/MineOrder;->access$1900(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/domain/Goods;

    move-result-object v12

    const-string v13, "goods_sn"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/shishicai/app/domain/Goods;->setGoods_sn(Ljava/lang/String;)V

    .line 295
    iget-object v12, p0, Lcom/shishicai/app/activity/mine/MineOrder$5;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v12}, Lcom/shishicai/app/activity/mine/MineOrder;->access$2000(Lcom/shishicai/app/activity/mine/MineOrder;)Ljava/util/List;

    move-result-object v12

    iget-object v13, p0, Lcom/shishicai/app/activity/mine/MineOrder$5;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v13}, Lcom/shishicai/app/activity/mine/MineOrder;->access$1900(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/domain/Goods;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 272
    .end local v5    # "item1":Lorg/json/JSONObject;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 298
    .end local v4    # "item":Lorg/json/JSONObject;
    .end local v6    # "j":I
    .end local v8    # "jsonArray1":Lorg/json/JSONArray;
    :cond_1
    const/16 v12, 0x3d

    iput v12, v10, Landroid/os/Message;->what:I

    .line 302
    .end local v3    # "i":I
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    :goto_2
    iget-object v12, p0, Lcom/shishicai/app/activity/mine/MineOrder$5;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v12}, Lcom/shishicai/app/activity/mine/MineOrder;->access$2200(Lcom/shishicai/app/activity/mine/MineOrder;)Landroid/os/Handler;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 307
    .end local v1    # "count":Ljava/lang/String;
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    :goto_3
    return-void

    .line 300
    .restart local v1    # "count":Ljava/lang/String;
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    const/16 v12, 0x3e

    iput v12, v10, Landroid/os/Message;->what:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 303
    .end local v1    # "count":Ljava/lang/String;
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 304
    .local v2, "e":Lorg/json/JSONException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/shishicai/app/activity/mine/MineOrder;->access$2100()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",json"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
