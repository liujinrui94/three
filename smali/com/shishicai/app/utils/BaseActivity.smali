.class public Lcom/shishicai/app/utils/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"


# instance fields
.field protected TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 15
    const-string v0, "BaseActivity"

    iput-object v0, p0, Lcom/shishicai/app/utils/BaseActivity;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public back(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/shishicai/app/utils/BaseActivity;->finish()V

    .line 63
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/shishicai/app/utils/BaseActivity;->requestWindowFeature(I)Z

    .line 21
    invoke-static {}, Lcom/shishicai/app/utils/ActManager;->getAppManager()Lcom/shishicai/app/utils/ActManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shishicai/app/utils/ActManager;->addActivity(Landroid/app/Activity;)V

    .line 22
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 53
    invoke-static {}, Lcom/shishicai/app/utils/ActManager;->getAppManager()Lcom/shishicai/app/utils/ActManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shishicai/app/utils/ActManager;->finishActivity(Landroid/app/Activity;)V

    .line 54
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->onPause(Landroid/content/Context;)V

    .line 43
    iget-object v0, p0, Lcom/shishicai/app/utils/BaseActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 44
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 45
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 46
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 28
    iget-object v0, p0, Lcom/shishicai/app/utils/BaseActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 29
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 30
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->onResume(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 37
    return-void
.end method
