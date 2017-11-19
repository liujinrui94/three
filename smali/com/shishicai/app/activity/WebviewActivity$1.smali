.class Lcom/shishicai/app/activity/WebviewActivity$1;
.super Landroid/webkit/WebViewClient;
.source "WebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/WebviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/WebviewActivity;

.field final synthetic val$webSettings:Landroid/webkit/WebSettings;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/WebviewActivity;Landroid/webkit/WebSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/WebviewActivity;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/shishicai/app/activity/WebviewActivity$1;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    iput-object p2, p0, Lcom/shishicai/app/activity/WebviewActivity$1;->val$webSettings:Landroid/webkit/WebSettings;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/shishicai/app/activity/WebviewActivity$1;->val$webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLoadsImagesAutomatically()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/shishicai/app/activity/WebviewActivity$1;->val$webSettings:Landroid/webkit/WebSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 257
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 241
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v2, "<span style=\"color:#FF0000\">\u7f51\u9875\u52a0\u8f7d\u5931\u8d25</span>"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v0, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 247
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 248
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 197
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    .line 236
    :goto_0
    return v3

    .line 198
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v1

    .line 199
    .local v1, "hitTestResult":Landroid/webkit/WebView$HitTestResult;
    iget-object v4, p0, Lcom/shishicai/app/activity/WebviewActivity$1;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    invoke-static {v4}, Lcom/shishicai/app/activity/WebviewActivity;->access$000(Lcom/shishicai/app/activity/WebviewActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    if-eqz v1, :cond_2

    const-string v4, "https://wx"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 202
    iget-object v4, p0, Lcom/shishicai/app/activity/WebviewActivity$1;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    invoke-virtual {v4, p2}, Lcom/shishicai/app/activity/WebviewActivity;->parseScheme(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 204
    :try_start_0
    const-string v4, "url:"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "url:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/4 v4, 0x1

    invoke-static {p2, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 208
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 210
    iget-object v4, p0, Lcom/shishicai/app/activity/WebviewActivity$1;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    invoke-virtual {v4, v2}, Lcom/shishicai/app/activity/WebviewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 215
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_2
    iget-object v4, p0, Lcom/shishicai/app/activity/WebviewActivity$1;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    invoke-virtual {v4, p2}, Lcom/shishicai/app/activity/WebviewActivity;->parseScheme(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 221
    :try_start_1
    const-string v4, "url:"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "url:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/4 v4, 0x1

    invoke-static {p2, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 225
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 227
    iget-object v4, p0, Lcom/shishicai/app/activity/WebviewActivity$1;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    invoke-virtual {v4, v2}, Lcom/shishicai/app/activity/WebviewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 232
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    if-nez v1, :cond_4

    .line 233
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    :catch_1
    move-exception v0

    .line 229
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 236
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_0
.end method
