.class Lcom/shishicai/app/activity/WelcomeActivity$1;
.super Lcn/bmob/v3/listener/FindListener;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/WelcomeActivity;->secondOpenSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/bmob/v3/listener/FindListener",
        "<",
        "Lcom/shishicai/app/domain/SafeSwitch;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/WelcomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/WelcomeActivity;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/shishicai/app/activity/WelcomeActivity$1;->this$0:Lcom/shishicai/app/activity/WelcomeActivity;

    invoke-direct {p0}, Lcn/bmob/v3/listener/FindListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 130
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcn/bmob/v3/exception/BmobException;

    invoke-virtual {p0, p1, p2}, Lcom/shishicai/app/activity/WelcomeActivity$1;->done(Ljava/util/List;Lcn/bmob/v3/exception/BmobException;)V

    return-void
.end method

.method public done(Ljava/util/List;Lcn/bmob/v3/exception/BmobException;)V
    .locals 6
    .param p2, "e"    # Lcn/bmob/v3/exception/BmobException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/SafeSwitch;",
            ">;",
            "Lcn/bmob/v3/exception/BmobException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/domain/SafeSwitch;>;"
    const/4 v5, 0x1

    .line 135
    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 136
    :cond_0
    new-instance v2, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;

    iget-object v3, p0, Lcom/shishicai/app/activity/WelcomeActivity$1;->this$0:Lcom/shishicai/app/activity/WelcomeActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;-><init>(Lcom/shishicai/app/activity/WelcomeActivity;Lcom/shishicai/app/activity/WelcomeActivity$1;)V

    .line 137
    .local v2, "task":Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;
    invoke-static {}, Lcom/shishicai/app/activity/WelcomeActivity;->access$200()Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    .end local v2    # "task":Lcom/shishicai/app/activity/WelcomeActivity$LoadMainTabTask;
    :goto_0
    return-void

    .line 141
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 142
    .local v0, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/domain/SafeSwitch;

    .line 143
    .local v1, "ss":Lcom/shishicai/app/domain/SafeSwitch;
    invoke-virtual {v1}, Lcom/shishicai/app/domain/SafeSwitch;->getIsOpen()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v5, :cond_2

    .line 144
    iget-object v3, p0, Lcom/shishicai/app/activity/WelcomeActivity$1;->this$0:Lcom/shishicai/app/activity/WelcomeActivity;

    const-string v4, "is_open"

    invoke-static {v3, v4, v5}, Lcom/shishicai/app/utils/PreferencesUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 145
    iget-object v3, p0, Lcom/shishicai/app/activity/WelcomeActivity$1;->this$0:Lcom/shishicai/app/activity/WelcomeActivity;

    const-class v4, Lcom/shishicai/app/activity/WebviewActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 146
    const-string v3, "link"

    invoke-virtual {v1}, Lcom/shishicai/app/domain/SafeSwitch;->getLink()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v3, "title"

    iget-object v4, p0, Lcom/shishicai/app/activity/WelcomeActivity$1;->this$0:Lcom/shishicai/app/activity/WelcomeActivity;

    invoke-virtual {v4}, Lcom/shishicai/app/activity/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    :goto_1
    iget-object v3, p0, Lcom/shishicai/app/activity/WelcomeActivity$1;->this$0:Lcom/shishicai/app/activity/WelcomeActivity;

    invoke-virtual {v3, v0}, Lcom/shishicai/app/activity/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 153
    iget-object v3, p0, Lcom/shishicai/app/activity/WelcomeActivity$1;->this$0:Lcom/shishicai/app/activity/WelcomeActivity;

    invoke-virtual {v3}, Lcom/shishicai/app/activity/WelcomeActivity;->finish()V

    goto :goto_0

    .line 150
    :cond_2
    iget-object v3, p0, Lcom/shishicai/app/activity/WelcomeActivity$1;->this$0:Lcom/shishicai/app/activity/WelcomeActivity;

    const-class v4, Lcom/shishicai/app/activity/MainActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1
.end method
