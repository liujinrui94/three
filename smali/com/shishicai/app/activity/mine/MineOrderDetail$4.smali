.class Lcom/shishicai/app/activity/mine/MineOrderDetail$4;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "MineOrderDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/mine/MineOrderDetail;->gainOrderDetail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

.field final synthetic val$orderId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineOrderDetail;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    iput-object p2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->val$orderId:Ljava/lang/String;

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
    .line 377
    invoke-static {}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$3400()Ljava/lang/String;

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

    .line 378
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 10
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B

    .prologue
    .line 382
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p3}, Ljava/lang/String;-><init>([B)V

    .line 383
    .local v7, "str":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$3400()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/shishicai/app/Constant;->URLUser:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "?act=order_detail&authkey="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/shishicai/app/Constant;->session_id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&order_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->val$orderId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :try_start_0
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 386
    .local v6, "msg":Landroid/os/Message;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 387
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v8, "order"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 388
    .local v5, "jsonObject2":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    new-instance v9, Lcom/shishicai/app/domain/MyOrder;

    invoke-direct {v9}, Lcom/shishicai/app/domain/MyOrder;-><init>()V

    invoke-static {v8, v9}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$102(Lcom/shishicai/app/activity/mine/MineOrderDetail;Lcom/shishicai/app/domain/MyOrder;)Lcom/shishicai/app/domain/MyOrder;

    .line 389
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    new-instance v9, Lcom/shishicai/app/domain/Addresses;

    invoke-direct {v9}, Lcom/shishicai/app/domain/Addresses;-><init>()V

    invoke-static {v8, v9}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$902(Lcom/shishicai/app/activity/mine/MineOrderDetail;Lcom/shishicai/app/domain/Addresses;)Lcom/shishicai/app/domain/Addresses;

    .line 390
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v8

    const-string v9, "order_sn"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/MyOrder;->setOrder_sn(Ljava/lang/String;)V

    .line 391
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v8

    const-string v9, "order_status"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/MyOrder;->setOrder_status(Ljava/lang/String;)V

    .line 392
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v8

    const-string v9, "shipping_status"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/MyOrder;->setShipping_status(Ljava/lang/String;)V

    .line 393
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v8

    const-string v9, "pay_status"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/MyOrder;->setPay_status(Ljava/lang/String;)V

    .line 395
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$900(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Addresses;

    move-result-object v8

    const-string v9, "consignee"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/Addresses;->setConsignee(Ljava/lang/String;)V

    .line 396
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$900(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Addresses;

    move-result-object v8

    const-string v9, "country"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/Addresses;->setCountry(Ljava/lang/String;)V

    .line 397
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$900(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Addresses;

    move-result-object v8

    const-string v9, "province"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/Addresses;->setProvince(Ljava/lang/String;)V

    .line 398
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$900(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Addresses;

    move-result-object v8

    const-string v9, "city"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/Addresses;->setCity(Ljava/lang/String;)V

    .line 399
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$900(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Addresses;

    move-result-object v8

    const-string v9, "district"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/Addresses;->setDistrict(Ljava/lang/String;)V

    .line 400
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$900(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Addresses;

    move-result-object v8

    const-string v9, "address"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/Addresses;->setAddress(Ljava/lang/String;)V

    .line 401
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$900(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Addresses;

    move-result-object v8

    const-string v9, "tel"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/Addresses;->setTel(Ljava/lang/String;)V

    .line 402
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$900(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Addresses;

    move-result-object v8

    const-string v9, "mobile"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/Addresses;->setMobile(Ljava/lang/String;)V

    .line 403
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$900(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Addresses;

    move-result-object v8

    const-string v9, "email"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/Addresses;->setEmail(Ljava/lang/String;)V

    .line 405
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v8

    const-string v9, "shipping_name"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/MyOrder;->setShipping_name(Ljava/lang/String;)V

    .line 406
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v8

    const-string v9, "pay_name"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/MyOrder;->setPay_name(Ljava/lang/String;)V

    .line 407
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v8

    const-string v9, "formated_total_fee"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/MyOrder;->setFormated_total_fee(Ljava/lang/String;)V

    .line 408
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v8

    const-string v9, "formated_goods_amount"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/MyOrder;->setFormated_goods_amount(Ljava/lang/String;)V

    .line 409
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v8

    const-string v9, "formated_shipping_fee"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/MyOrder;->setFormated_shipping_fee(Ljava/lang/String;)V

    .line 410
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v8

    const-string v9, "formated_add_time"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/MyOrder;->setFormated_add_time(Ljava/lang/String;)V

    .line 411
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v8

    const-string v9, "how_oos"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/MyOrder;->setHow_oos(Ljava/lang/String;)V

    .line 412
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v8

    const-string v9, "formated_bonus"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/MyOrder;->setFormated_bonus(Ljava/lang/String;)V

    .line 413
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v8

    const-string v9, "formated_order_amount"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/MyOrder;->setFormated_order_amount(Ljava/lang/String;)V

    .line 415
    const-string v8, "goods_list"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 416
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 417
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 418
    .local v2, "item":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    new-instance v9, Lcom/shishicai/app/domain/Cart;

    invoke-direct {v9}, Lcom/shishicai/app/domain/Cart;-><init>()V

    invoke-static {v8, v9}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$3102(Lcom/shishicai/app/activity/mine/MineOrderDetail;Lcom/shishicai/app/domain/Cart;)Lcom/shishicai/app/domain/Cart;

    .line 419
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$3100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Cart;

    move-result-object v8

    const-string v9, "goods_id"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/Cart;->setGoods_id(Ljava/lang/String;)V

    .line 420
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$3100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Cart;

    move-result-object v8

    const-string v9, "goods_name"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/Cart;->setGoods_name(Ljava/lang/String;)V

    .line 421
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$3100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Cart;

    move-result-object v8

    const-string v9, "goods_sn"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/Cart;->setGoods_sn(Ljava/lang/String;)V

    .line 422
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$3100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Cart;

    move-result-object v8

    const-string v9, "market_price"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/Cart;->setMarket_price(Ljava/lang/String;)V

    .line 423
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$3100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Cart;

    move-result-object v8

    const-string v9, "goods_number"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/Cart;->setGoods_number(Ljava/lang/String;)V

    .line 424
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$3100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Cart;

    move-result-object v8

    const-string v9, "goods_price"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/Cart;->setGoods_price(Ljava/lang/String;)V

    .line 425
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$3100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Cart;

    move-result-object v8

    const-string v9, "goods_attr"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/Cart;->setGoods_attr(Ljava/lang/String;)V

    .line 426
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$3100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Cart;

    move-result-object v8

    const-string v9, "subtotal"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/Cart;->setSubtotal(Ljava/lang/String;)V

    .line 427
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$3100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Cart;

    move-result-object v8

    const-string v9, "goods_image"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/shishicai/app/domain/Cart;->setGoods_thumb(Ljava/lang/String;)V

    .line 428
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$2900(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Ljava/util/List;

    move-result-object v8

    iget-object v9, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v9}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$3100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Cart;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 430
    .end local v2    # "item":Lorg/json/JSONObject;
    :cond_0
    const/16 v8, 0x204

    iput v8, v6, Landroid/os/Message;->what:I

    .line 431
    iget-object v8, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$4;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v8}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$2800(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    .end local v1    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "jsonObject2":Lorg/json/JSONObject;
    .end local v6    # "msg":Landroid/os/Message;
    :goto_1
    return-void

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$3400()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
