.class Lcom/shishicai/app/activity/WelcomeActivity$2;
.super Lcn/bmob/v3/listener/FindListener;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/WelcomeActivity;->gainUrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/bmob/v3/listener/FindListener",
        "<",
        "Lcom/shishicai/app/domain/Entrance;",
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
    .line 162
    iput-object p1, p0, Lcom/shishicai/app/activity/WelcomeActivity$2;->this$0:Lcom/shishicai/app/activity/WelcomeActivity;

    invoke-direct {p0}, Lcn/bmob/v3/listener/FindListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 162
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcn/bmob/v3/exception/BmobException;

    invoke-virtual {p0, p1, p2}, Lcom/shishicai/app/activity/WelcomeActivity$2;->done(Ljava/util/List;Lcn/bmob/v3/exception/BmobException;)V

    return-void
.end method

.method public done(Ljava/util/List;Lcn/bmob/v3/exception/BmobException;)V
    .locals 5
    .param p2, "var2"    # Lcn/bmob/v3/exception/BmobException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/Entrance;",
            ">;",
            "Lcn/bmob/v3/exception/BmobException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/domain/Entrance;>;"
    const/4 v4, 0x0

    .line 166
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/domain/Entrance;

    .line 170
    .local v0, "entrance":Lcom/shishicai/app/domain/Entrance;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 171
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Lcom/shishicai/app/domain/Entrance;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    iget-object v2, p0, Lcom/shishicai/app/activity/WelcomeActivity$2;->this$0:Lcom/shishicai/app/activity/WelcomeActivity;

    const-string v3, "is_open"

    invoke-static {v2, v3, v4}, Lcom/shishicai/app/utils/PreferencesUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 174
    iget-object v2, p0, Lcom/shishicai/app/activity/WelcomeActivity$2;->this$0:Lcom/shishicai/app/activity/WelcomeActivity;

    const-class v3, Lcom/shishicai/app/activity/MainActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 182
    :goto_1
    iget-object v2, p0, Lcom/shishicai/app/activity/WelcomeActivity$2;->this$0:Lcom/shishicai/app/activity/WelcomeActivity;

    invoke-virtual {v2, v1}, Lcom/shishicai/app/activity/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 183
    iget-object v2, p0, Lcom/shishicai/app/activity/WelcomeActivity$2;->this$0:Lcom/shishicai/app/activity/WelcomeActivity;

    invoke-virtual {v2}, Lcom/shishicai/app/activity/WelcomeActivity;->finish()V

    goto :goto_0

    .line 176
    :cond_2
    iget-object v2, p0, Lcom/shishicai/app/activity/WelcomeActivity$2;->this$0:Lcom/shishicai/app/activity/WelcomeActivity;

    const-string v3, "is_open"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/shishicai/app/utils/PreferencesUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 177
    iget-object v2, p0, Lcom/shishicai/app/activity/WelcomeActivity$2;->this$0:Lcom/shishicai/app/activity/WelcomeActivity;

    const-class v3, Lcom/shishicai/app/activity/WebviewActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 178
    const-string v2, "link"

    invoke-virtual {v0}, Lcom/shishicai/app/domain/Entrance;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v2, "title"

    iget-object v3, p0, Lcom/shishicai/app/activity/WelcomeActivity$2;->this$0:Lcom/shishicai/app/activity/WelcomeActivity;

    invoke-virtual {v3}, Lcom/shishicai/app/activity/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method
