.class public Lcom/shishicai/app/activity/OfficalNetActivity;
.super Landroid/app/Activity;
.source "OfficalNetActivity.java"


# instance fields
.field mWebSettings:Landroid/webkit/WebSettings;

.field mWebview:Landroid/webkit/WebView;

.field private pb:Landroid/widget/ProgressBar;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/activity/OfficalNetActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/OfficalNetActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/shishicai/app/activity/OfficalNetActivity;->pb:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f030075

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/OfficalNetActivity;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lcom/shishicai/app/activity/OfficalNetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shishicai/app/activity/OfficalNetActivity;->url:Ljava/lang/String;

    .line 31
    const v0, 0x7f0901a7

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/OfficalNetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/shishicai/app/activity/OfficalNetActivity;->mWebview:Landroid/webkit/WebView;

    .line 32
    const v0, 0x7f0901a6

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/OfficalNetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/shishicai/app/activity/OfficalNetActivity;->pb:Landroid/widget/ProgressBar;

    .line 33
    iget-object v0, p0, Lcom/shishicai/app/activity/OfficalNetActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/shishicai/app/activity/OfficalNetActivity;->mWebSettings:Landroid/webkit/WebSettings;

    .line 34
    iget-object v0, p0, Lcom/shishicai/app/activity/OfficalNetActivity;->mWebSettings:Landroid/webkit/WebSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 35
    iget-object v0, p0, Lcom/shishicai/app/activity/OfficalNetActivity;->mWebview:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/shishicai/app/activity/OfficalNetActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/shishicai/app/activity/OfficalNetActivity;->mWebview:Landroid/webkit/WebView;

    new-instance v1, Lcom/shishicai/app/activity/OfficalNetActivity$1;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/OfficalNetActivity$1;-><init>(Lcom/shishicai/app/activity/OfficalNetActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 56
    iget-object v0, p0, Lcom/shishicai/app/activity/OfficalNetActivity;->mWebview:Landroid/webkit/WebView;

    new-instance v1, Lcom/shishicai/app/activity/OfficalNetActivity$2;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/OfficalNetActivity$2;-><init>(Lcom/shishicai/app/activity/OfficalNetActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 75
    return-void
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/shishicai/app/activity/OfficalNetActivity;->mWebview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/shishicai/app/activity/OfficalNetActivity;->mWebview:Landroid/webkit/WebView;

    const-string v2, ""

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/shishicai/app/activity/OfficalNetActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 95
    iget-object v0, p0, Lcom/shishicai/app/activity/OfficalNetActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/shishicai/app/activity/OfficalNetActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 96
    iget-object v0, p0, Lcom/shishicai/app/activity/OfficalNetActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 97
    iput-object v1, p0, Lcom/shishicai/app/activity/OfficalNetActivity;->mWebview:Landroid/webkit/WebView;

    .line 99
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 100
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 80
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/shishicai/app/activity/OfficalNetActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/shishicai/app/activity/OfficalNetActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 82
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
