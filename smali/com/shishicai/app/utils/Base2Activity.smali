.class public abstract Lcom/shishicai/app/utils/Base2Activity;
.super Landroid/app/Activity;
.source "Base2Activity.java"


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected inputMethodManager:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 16
    const-string v0, "Base2Activity"

    iput-object v0, p0, Lcom/shishicai/app/utils/Base2Activity;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public back(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/shishicai/app/utils/Base2Activity;->finish()V

    .line 78
    return-void
.end method

.method protected hideSoftKeyboard()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 64
    invoke-virtual {p0}, Lcom/shishicai/app/utils/Base2Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-eq v0, v2, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/shishicai/app/utils/Base2Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/shishicai/app/utils/Base2Activity;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/shishicai/app/utils/Base2Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 69
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/shishicai/app/utils/Base2Activity;->requestWindowFeature(I)Z

    .line 29
    invoke-static {}, Lcom/shishicai/app/utils/ActManager;->getAppManager()Lcom/shishicai/app/utils/ActManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shishicai/app/utils/ActManager;->addActivity(Landroid/app/Activity;)V

    .line 30
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/shishicai/app/utils/Base2Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/shishicai/app/utils/Base2Activity;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 31
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 38
    invoke-static {}, Lcom/shishicai/app/utils/ActManager;->getAppManager()Lcom/shishicai/app/utils/ActManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shishicai/app/utils/ActManager;->finishActivity(Landroid/app/Activity;)V

    .line 39
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 55
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->onPause(Landroid/content/Context;)V

    .line 57
    iget-object v0, p0, Lcom/shishicai/app/utils/Base2Activity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 58
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 60
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 46
    iget-object v0, p0, Lcom/shishicai/app/utils/Base2Activity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 47
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 48
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->onResume(Landroid/content/Context;)V

    .line 49
    return-void
.end method
