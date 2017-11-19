.class Lcom/shishicai/app/activity/WebviewActivity$2;
.super Landroid/webkit/WebChromeClient;
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

.field final synthetic val$bar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/WebviewActivity;Landroid/widget/ProgressBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/WebviewActivity;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/shishicai/app/activity/WebviewActivity$2;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    iput-object p2, p0, Lcom/shishicai/app/activity/WebviewActivity$2;->val$bar:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 275
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/shishicai/app/activity/WebviewActivity$2;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 277
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 278
    const v1, 0x104000a

    new-instance v2, Lcom/shishicai/app/activity/WebviewActivity$2$1;

    invoke-direct {v2, p0, p4}, Lcom/shishicai/app/activity/WebviewActivity$2$1;-><init>(Lcom/shishicai/app/activity/WebviewActivity$2;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 284
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 285
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 286
    const/4 v1, 0x1

    return v1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 292
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/shishicai/app/activity/WebviewActivity$2;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 293
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const-string v1, "Confirm"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 294
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 295
    const v1, 0x104000a

    new-instance v2, Lcom/shishicai/app/activity/WebviewActivity$2$2;

    invoke-direct {v2, p0, p4}, Lcom/shishicai/app/activity/WebviewActivity$2$2;-><init>(Lcom/shishicai/app/activity/WebviewActivity$2;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 301
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/shishicai/app/activity/WebviewActivity$2$3;

    invoke-direct {v2, p0, p4}, Lcom/shishicai/app/activity/WebviewActivity$2$3;-><init>(Lcom/shishicai/app/activity/WebviewActivity$2;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 307
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 308
    const/4 v1, 0x1

    return v1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    .line 314
    iget-object v2, p0, Lcom/shishicai/app/activity/WebviewActivity$2;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    const v3, 0x7f030063

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 315
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f09018a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    const v2, 0x7f09018b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 317
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/shishicai/app/activity/WebviewActivity$2;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 318
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const-string v2, "Prompt"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 319
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 320
    const v2, 0x104000a

    new-instance v3, Lcom/shishicai/app/activity/WebviewActivity$2$4;

    invoke-direct {v3, p0, v1, p5}, Lcom/shishicai/app/activity/WebviewActivity$2$4;-><init>(Lcom/shishicai/app/activity/WebviewActivity$2;Landroid/view/View;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 327
    const/high16 v2, 0x1040000

    new-instance v3, Lcom/shishicai/app/activity/WebviewActivity$2$5;

    invoke-direct {v3, p0, p5}, Lcom/shishicai/app/activity/WebviewActivity$2$5;-><init>(Lcom/shishicai/app/activity/WebviewActivity$2;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 333
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 334
    const/4 v2, 0x1

    return v2
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    const/16 v1, 0x8

    .line 262
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 263
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/shishicai/app/activity/WebviewActivity$2;->val$bar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 271
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/shishicai/app/activity/WebviewActivity$2;->val$bar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/shishicai/app/activity/WebviewActivity$2;->val$bar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/shishicai/app/activity/WebviewActivity$2;->val$bar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p3, "fileChooserParams"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 341
    .local p2, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/shishicai/app/activity/WebviewActivity$2;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    invoke-static {v0, p2}, Lcom/shishicai/app/activity/WebviewActivity;->access$102(Lcom/shishicai/app/activity/WebviewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 342
    iget-object v0, p0, Lcom/shishicai/app/activity/WebviewActivity$2;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/WebviewActivity;->access$200(Lcom/shishicai/app/activity/WebviewActivity;)V

    .line 343
    const/4 v0, 0x1

    return v0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 348
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/shishicai/app/activity/WebviewActivity$2;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    invoke-static {v0, p1}, Lcom/shishicai/app/activity/WebviewActivity;->access$302(Lcom/shishicai/app/activity/WebviewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 349
    iget-object v0, p0, Lcom/shishicai/app/activity/WebviewActivity$2;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/WebviewActivity;->access$200(Lcom/shishicai/app/activity/WebviewActivity;)V

    .line 350
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .param p2, "acceptType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/shishicai/app/activity/WebviewActivity$2;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    invoke-static {v0, p1}, Lcom/shishicai/app/activity/WebviewActivity;->access$302(Lcom/shishicai/app/activity/WebviewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 353
    iget-object v0, p0, Lcom/shishicai/app/activity/WebviewActivity$2;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/WebviewActivity;->access$200(Lcom/shishicai/app/activity/WebviewActivity;)V

    .line 354
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/shishicai/app/activity/WebviewActivity$2;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    invoke-static {v0, p1}, Lcom/shishicai/app/activity/WebviewActivity;->access$302(Lcom/shishicai/app/activity/WebviewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 357
    iget-object v0, p0, Lcom/shishicai/app/activity/WebviewActivity$2;->this$0:Lcom/shishicai/app/activity/WebviewActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/WebviewActivity;->access$200(Lcom/shishicai/app/activity/WebviewActivity;)V

    .line 358
    return-void
.end method
