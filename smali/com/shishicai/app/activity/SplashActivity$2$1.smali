.class Lcom/shishicai/app/activity/SplashActivity$2$1;
.super Lcom/shishicai/app/activity/HttpUtils$HttpCallback;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/SplashActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shishicai/app/activity/SplashActivity$2;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/SplashActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shishicai/app/activity/SplashActivity$2;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/shishicai/app/activity/SplashActivity$2$1;->this$1:Lcom/shishicai/app/activity/SplashActivity$2;

    invoke-direct {p0}, Lcom/shishicai/app/activity/HttpUtils$HttpCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/shishicai/app/activity/HttpUtils$HttpCallback;->onError(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 53
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 55
    .local v0, "data3":Lorg/json/JSONObject;
    if-eqz v0, :cond_2

    .line 56
    const-string v4, "show_url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 57
    const-string v4, "show_url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "url"

    const-string v5, "url"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    iget-object v4, p0, Lcom/shishicai/app/activity/SplashActivity$2$1;->this$1:Lcom/shishicai/app/activity/SplashActivity$2;

    iget-object v4, v4, Lcom/shishicai/app/activity/SplashActivity$2;->this$0:Lcom/shishicai/app/activity/SplashActivity;

    const-class v5, Lcom/shishicai/app/activity/OfficalNetActivity;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 61
    iget-object v4, p0, Lcom/shishicai/app/activity/SplashActivity$2$1;->this$1:Lcom/shishicai/app/activity/SplashActivity$2;

    iget-object v4, v4, Lcom/shishicai/app/activity/SplashActivity$2;->this$0:Lcom/shishicai/app/activity/SplashActivity;

    invoke-virtual {v4, v2}, Lcom/shishicai/app/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 62
    iget-object v4, p0, Lcom/shishicai/app/activity/SplashActivity$2$1;->this$1:Lcom/shishicai/app/activity/SplashActivity$2;

    iget-object v4, v4, Lcom/shishicai/app/activity/SplashActivity$2;->this$0:Lcom/shishicai/app/activity/SplashActivity;

    invoke-virtual {v4}, Lcom/shishicai/app/activity/SplashActivity;->finish()V

    .line 83
    .end local v0    # "data3":Lorg/json/JSONObject;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 66
    .restart local v0    # "data3":Lorg/json/JSONObject;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 67
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/shishicai/app/activity/SplashActivity$2$1;->this$1:Lcom/shishicai/app/activity/SplashActivity$2;

    iget-object v4, v4, Lcom/shishicai/app/activity/SplashActivity$2;->this$0:Lcom/shishicai/app/activity/SplashActivity;

    const-class v5, Lcom/shishicai/app/activity/MainActivity;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 68
    iget-object v4, p0, Lcom/shishicai/app/activity/SplashActivity$2$1;->this$1:Lcom/shishicai/app/activity/SplashActivity$2;

    iget-object v4, v4, Lcom/shishicai/app/activity/SplashActivity$2;->this$0:Lcom/shishicai/app/activity/SplashActivity;

    invoke-virtual {v4, v2}, Lcom/shishicai/app/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 69
    iget-object v4, p0, Lcom/shishicai/app/activity/SplashActivity$2$1;->this$1:Lcom/shishicai/app/activity/SplashActivity$2;

    iget-object v4, v4, Lcom/shishicai/app/activity/SplashActivity$2;->this$0:Lcom/shishicai/app/activity/SplashActivity;

    invoke-virtual {v4}, Lcom/shishicai/app/activity/SplashActivity;->finish()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    .end local v0    # "data3":Lorg/json/JSONObject;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "data3":Lorg/json/JSONObject;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 74
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/shishicai/app/activity/SplashActivity$2$1;->this$1:Lcom/shishicai/app/activity/SplashActivity$2;

    iget-object v4, v4, Lcom/shishicai/app/activity/SplashActivity$2;->this$0:Lcom/shishicai/app/activity/SplashActivity;

    const-class v5, Lcom/shishicai/app/activity/MainActivity;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 75
    iget-object v4, p0, Lcom/shishicai/app/activity/SplashActivity$2$1;->this$1:Lcom/shishicai/app/activity/SplashActivity$2;

    iget-object v4, v4, Lcom/shishicai/app/activity/SplashActivity$2;->this$0:Lcom/shishicai/app/activity/SplashActivity;

    invoke-virtual {v4, v2}, Lcom/shishicai/app/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 76
    iget-object v4, p0, Lcom/shishicai/app/activity/SplashActivity$2$1;->this$1:Lcom/shishicai/app/activity/SplashActivity$2;

    iget-object v4, v4, Lcom/shishicai/app/activity/SplashActivity$2;->this$0:Lcom/shishicai/app/activity/SplashActivity;

    invoke-virtual {v4}, Lcom/shishicai/app/activity/SplashActivity;->finish()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
