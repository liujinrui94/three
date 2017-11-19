.class Lcom/shishicai/app/activity/mine/MineInformation$4$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "MineInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/mine/MineInformation$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shishicai/app/activity/mine/MineInformation$4;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineInformation$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shishicai/app/activity/mine/MineInformation$4;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineInformation$4$1;->this$1:Lcom/shishicai/app/activity/mine/MineInformation$4;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B
    .param p4, "arg3"    # Ljava/lang/Throwable;

    .prologue
    .line 171
    const-string v0, "MineInformationjsonerr"

    invoke-virtual {p4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 6
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B

    .prologue
    .line 176
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    .line 179
    .local v2, "str":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, "jsonObject":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineInformation$4$1;->this$1:Lcom/shishicai/app/activity/mine/MineInformation$4;

    iget-object v3, v3, Lcom/shishicai/app/activity/mine/MineInformation$4;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    const-string v4, "success"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "MineInformationjsonerr"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
