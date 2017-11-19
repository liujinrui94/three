.class Lcom/shishicai/app/activity/WebviewActivity$2$4;
.super Ljava/lang/Object;
.source "WebviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/WebviewActivity$2;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shishicai/app/activity/WebviewActivity$2;

.field final synthetic val$result:Landroid/webkit/JsPromptResult;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/WebviewActivity$2;Landroid/view/View;Landroid/webkit/JsPromptResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shishicai/app/activity/WebviewActivity$2;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/shishicai/app/activity/WebviewActivity$2$4;->this$1:Lcom/shishicai/app/activity/WebviewActivity$2;

    iput-object p2, p0, Lcom/shishicai/app/activity/WebviewActivity$2$4;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/shishicai/app/activity/WebviewActivity$2$4;->val$result:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 323
    iget-object v1, p0, Lcom/shishicai/app/activity/WebviewActivity$2$4;->val$v:Landroid/view/View;

    const v2, 0x7f09018b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/shishicai/app/activity/WebviewActivity$2$4;->val$result:Landroid/webkit/JsPromptResult;

    invoke-virtual {v1, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 325
    return-void
.end method
