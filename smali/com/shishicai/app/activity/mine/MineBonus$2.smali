.class Lcom/shishicai/app/activity/mine/MineBonus$2;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "MineBonus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/mine/MineBonus;->gainData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineBonus;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineBonus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/mine/MineBonus;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineBonus$2;->this$0:Lcom/shishicai/app/activity/mine/MineBonus;

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
    .line 151
    const-string v0, "bonus"

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

    .line 152
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 9
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B

    .prologue
    .line 157
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p3}, Ljava/lang/String;-><init>([B)V

    .line 158
    .local v5, "str":Ljava/lang/String;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "str:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 160
    :try_start_0
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 161
    .local v4, "msg":Landroid/os/Message;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 162
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 163
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 164
    .local v2, "item":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/shishicai/app/activity/mine/MineBonus$2;->this$0:Lcom/shishicai/app/activity/mine/MineBonus;

    new-instance v7, Lcom/shishicai/app/domain/Bonus;

    invoke-direct {v7}, Lcom/shishicai/app/domain/Bonus;-><init>()V

    invoke-static {v6, v7}, Lcom/shishicai/app/activity/mine/MineBonus;->access$402(Lcom/shishicai/app/activity/mine/MineBonus;Lcom/shishicai/app/domain/Bonus;)Lcom/shishicai/app/domain/Bonus;

    .line 165
    iget-object v6, p0, Lcom/shishicai/app/activity/mine/MineBonus$2;->this$0:Lcom/shishicai/app/activity/mine/MineBonus;

    invoke-static {v6}, Lcom/shishicai/app/activity/mine/MineBonus;->access$400(Lcom/shishicai/app/activity/mine/MineBonus;)Lcom/shishicai/app/domain/Bonus;

    move-result-object v6

    const-string v7, "type_name"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/shishicai/app/domain/Bonus;->setType_name(Ljava/lang/String;)V

    .line 166
    iget-object v6, p0, Lcom/shishicai/app/activity/mine/MineBonus$2;->this$0:Lcom/shishicai/app/activity/mine/MineBonus;

    invoke-static {v6}, Lcom/shishicai/app/activity/mine/MineBonus;->access$400(Lcom/shishicai/app/activity/mine/MineBonus;)Lcom/shishicai/app/domain/Bonus;

    move-result-object v6

    const-string v7, "type_money"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/shishicai/app/domain/Bonus;->setType_money(Ljava/lang/String;)V

    .line 167
    iget-object v6, p0, Lcom/shishicai/app/activity/mine/MineBonus$2;->this$0:Lcom/shishicai/app/activity/mine/MineBonus;

    invoke-static {v6}, Lcom/shishicai/app/activity/mine/MineBonus;->access$400(Lcom/shishicai/app/activity/mine/MineBonus;)Lcom/shishicai/app/domain/Bonus;

    move-result-object v6

    const-string v7, "min_goods_amount"

    .line 168
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 167
    invoke-virtual {v6, v7}, Lcom/shishicai/app/domain/Bonus;->setMin_goods_amount(Ljava/lang/String;)V

    .line 169
    iget-object v6, p0, Lcom/shishicai/app/activity/mine/MineBonus$2;->this$0:Lcom/shishicai/app/activity/mine/MineBonus;

    invoke-static {v6}, Lcom/shishicai/app/activity/mine/MineBonus;->access$400(Lcom/shishicai/app/activity/mine/MineBonus;)Lcom/shishicai/app/domain/Bonus;

    move-result-object v6

    const-string v7, "status"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/shishicai/app/domain/Bonus;->setStatus(Ljava/lang/String;)V

    .line 170
    iget-object v6, p0, Lcom/shishicai/app/activity/mine/MineBonus$2;->this$0:Lcom/shishicai/app/activity/mine/MineBonus;

    invoke-static {v6}, Lcom/shishicai/app/activity/mine/MineBonus;->access$400(Lcom/shishicai/app/activity/mine/MineBonus;)Lcom/shishicai/app/domain/Bonus;

    move-result-object v6

    const-string v7, "use_startdate"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/shishicai/app/domain/Bonus;->setUse_startdate(Ljava/lang/String;)V

    .line 171
    iget-object v6, p0, Lcom/shishicai/app/activity/mine/MineBonus$2;->this$0:Lcom/shishicai/app/activity/mine/MineBonus;

    invoke-static {v6}, Lcom/shishicai/app/activity/mine/MineBonus;->access$400(Lcom/shishicai/app/activity/mine/MineBonus;)Lcom/shishicai/app/domain/Bonus;

    move-result-object v6

    const-string v7, "use_enddate"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/shishicai/app/domain/Bonus;->setUse_enddate(Ljava/lang/String;)V

    .line 172
    iget-object v6, p0, Lcom/shishicai/app/activity/mine/MineBonus$2;->this$0:Lcom/shishicai/app/activity/mine/MineBonus;

    invoke-static {v6}, Lcom/shishicai/app/activity/mine/MineBonus;->access$200(Lcom/shishicai/app/activity/mine/MineBonus;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/shishicai/app/activity/mine/MineBonus$2;->this$0:Lcom/shishicai/app/activity/mine/MineBonus;

    invoke-static {v7}, Lcom/shishicai/app/activity/mine/MineBonus;->access$400(Lcom/shishicai/app/activity/mine/MineBonus;)Lcom/shishicai/app/domain/Bonus;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .end local v2    # "item":Lorg/json/JSONObject;
    :cond_0
    const/16 v6, 0x6d

    iput v6, v4, Landroid/os/Message;->what:I

    .line 175
    iget-object v6, p0, Lcom/shishicai/app/activity/mine/MineBonus$2;->this$0:Lcom/shishicai/app/activity/mine/MineBonus;

    invoke-static {v6}, Lcom/shishicai/app/activity/mine/MineBonus;->access$500(Lcom/shishicai/app/activity/mine/MineBonus;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v1    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "msg":Landroid/os/Message;
    :goto_1
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
