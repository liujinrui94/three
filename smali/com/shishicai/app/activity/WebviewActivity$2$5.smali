.class Lcom/shishicai/app/activity/WebviewActivity$2$5;
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


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/WebviewActivity$2;Landroid/webkit/JsPromptResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shishicai/app/activity/WebviewActivity$2;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/shishicai/app/activity/WebviewActivity$2$5;->this$1:Lcom/shishicai/app/activity/WebviewActivity$2;

    iput-object p2, p0, Lcom/shishicai/app/activity/WebviewActivity$2$5;->val$result:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 330
    iget-object v0, p0, Lcom/shishicai/app/activity/WebviewActivity$2$5;->val$result:Landroid/webkit/JsPromptResult;

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 331
    return-void
.end method
