.class Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask$1;->this$1:Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B
    .param p4, "arg3"    # Ljava/lang/Throwable;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask$1;->this$1:Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;

    iget-object v0, v0, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;->this$0:Lcom/shishicai/app/activity/WelcomeActivity;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/WelcomeActivity;->secondOpenSwitch()V

    .line 64
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 7
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [Lorg/apache/http/Header;
    .param p3, "arg2"    # [B

    .prologue
    .line 68
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/lang/String;-><init>([B)V

    .line 69
    .local v3, "str":Ljava/lang/String;
    const-string v4, "WelcomeActivity"

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

    .line 70
    const-string v4, "WelcomeActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 72
    const/4 v1, 0x0

    .line 74
    .local v1, "info":Lcom/shishicai/app/domain/BaseModel;, "Lcom/shishicai/app/domain/BaseModel<Lcom/shishicai/app/domain/JudgeInfo;>;"
    :try_start_0
    new-instance v4, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask$1$1;

    invoke-direct {v4, p0}, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask$1$1;-><init>(Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask$1;)V

    .line 75
    invoke-virtual {v4}, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 74
    invoke-static {v3, v4}, Lcom/shishicai/app/utils/GsonUtils;->parseJSON(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Lcom/shishicai/app/domain/BaseModel;, "Lcom/shishicai/app/domain/BaseModel<Lcom/shishicai/app/domain/JudgeInfo;>;"
    check-cast v1, Lcom/shishicai/app/domain/BaseModel;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .restart local v1    # "info":Lcom/shishicai/app/domain/BaseModel;, "Lcom/shishicai/app/domain/BaseModel<Lcom/shishicai/app/domain/JudgeInfo;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/shishicai/app/domain/BaseModel;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 83
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 84
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Lcom/shishicai/app/domain/BaseModel;->getMsg()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/shishicai/app/domain/BaseModel;->getMsg()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shishicai/app/domain/JudgeInfo;

    invoke-virtual {v4}, Lcom/shishicai/app/domain/JudgeInfo;->getOpen()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    iget-object v4, p0, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask$1;->this$1:Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;

    iget-object v4, v4, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;->this$0:Lcom/shishicai/app/activity/WelcomeActivity;

    const-string v5, "is_open"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/shishicai/app/utils/PreferencesUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 87
    const-string v5, "WelcomeActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "info="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/shishicai/app/domain/BaseModel;->getMsg()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shishicai/app/domain/JudgeInfo;

    invoke-virtual {v4}, Lcom/shishicai/app/domain/JudgeInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v4, p0, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask$1;->this$1:Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;

    iget-object v4, v4, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;->this$0:Lcom/shishicai/app/activity/WelcomeActivity;

    const-class v5, Lcom/shishicai/app/activity/MainActivity;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 102
    :goto_0
    iget-object v4, p0, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask$1;->this$1:Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;

    iget-object v4, v4, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;->this$0:Lcom/shishicai/app/activity/WelcomeActivity;

    invoke-virtual {v4, v2}, Lcom/shishicai/app/activity/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 103
    iget-object v4, p0, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask$1;->this$1:Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;

    iget-object v4, v4, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;->this$0:Lcom/shishicai/app/activity/WelcomeActivity;

    invoke-virtual {v4}, Lcom/shishicai/app/activity/WelcomeActivity;->finish()V

    .line 111
    .end local v1    # "info":Lcom/shishicai/app/domain/BaseModel;, "Lcom/shishicai/app/domain/BaseModel<Lcom/shishicai/app/domain/JudgeInfo;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 78
    iget-object v4, p0, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask$1;->this$1:Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;

    iget-object v4, v4, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;->this$0:Lcom/shishicai/app/activity/WelcomeActivity;

    invoke-static {v4}, Lcom/shishicai/app/activity/WelcomeActivity;->access$100(Lcom/shishicai/app/activity/WelcomeActivity;)V

    goto :goto_1

    .line 90
    .end local v0    # "e":Lcom/google/gson/JsonSyntaxException;
    .restart local v1    # "info":Lcom/shishicai/app/domain/BaseModel;, "Lcom/shishicai/app/domain/BaseModel<Lcom/shishicai/app/domain/JudgeInfo;>;"
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {v1}, Lcom/shishicai/app/domain/BaseModel;->getMsg()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shishicai/app/domain/JudgeInfo;

    invoke-virtual {v4}, Lcom/shishicai/app/domain/JudgeInfo;->getLinks()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    iget-object v4, p0, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask$1;->this$1:Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;

    iget-object v4, v4, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;->this$0:Lcom/shishicai/app/activity/WelcomeActivity;

    invoke-static {v4}, Lcom/shishicai/app/activity/WelcomeActivity;->access$100(Lcom/shishicai/app/activity/WelcomeActivity;)V

    goto :goto_1

    .line 95
    :cond_1
    iget-object v4, p0, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask$1;->this$1:Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;

    iget-object v4, v4, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;->this$0:Lcom/shishicai/app/activity/WelcomeActivity;

    const-string v5, "is_open"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/shishicai/app/utils/PreferencesUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 96
    iget-object v4, p0, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask$1;->this$1:Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;

    iget-object v4, v4, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;->this$0:Lcom/shishicai/app/activity/WelcomeActivity;

    const-class v5, Lcom/shishicai/app/activity/WebviewActivity;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 97
    const-string v5, "link"

    invoke-virtual {v1}, Lcom/shishicai/app/domain/BaseModel;->getMsg()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shishicai/app/domain/JudgeInfo;

    invoke-virtual {v4}, Lcom/shishicai/app/domain/JudgeInfo;->getLinks()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v4, "title"

    iget-object v5, p0, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask$1;->this$1:Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;

    iget-object v5, v5, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;->this$0:Lcom/shishicai/app/activity/WelcomeActivity;

    invoke-virtual {v5}, Lcom/shishicai/app/activity/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 105
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v4, p0, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask$1;->this$1:Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;

    iget-object v4, v4, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;->this$0:Lcom/shishicai/app/activity/WelcomeActivity;

    invoke-static {v4}, Lcom/shishicai/app/activity/WelcomeActivity;->access$100(Lcom/shishicai/app/activity/WelcomeActivity;)V

    goto :goto_1

    .line 108
    .end local v1    # "info":Lcom/shishicai/app/domain/BaseModel;, "Lcom/shishicai/app/domain/BaseModel<Lcom/shishicai/app/domain/JudgeInfo;>;"
    :cond_3
    iget-object v4, p0, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask$1;->this$1:Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;

    iget-object v4, v4, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;->this$0:Lcom/shishicai/app/activity/WelcomeActivity;

    invoke-static {v4}, Lcom/shishicai/app/activity/WelcomeActivity;->access$100(Lcom/shishicai/app/activity/WelcomeActivity;)V

    goto :goto_1
.end method
