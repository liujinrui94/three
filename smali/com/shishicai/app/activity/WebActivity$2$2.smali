.class Lcom/shishicai/app/activity/WebActivity$2$2;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/WebActivity$2;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shishicai/app/activity/WebActivity$2;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/WebActivity$2;Landroid/webkit/JsResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shishicai/app/activity/WebActivity$2;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/shishicai/app/activity/WebActivity$2$2;->this$1:Lcom/shishicai/app/activity/WebActivity$2;

    iput-object p2, p0, Lcom/shishicai/app/activity/WebActivity$2$2;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lcom/shishicai/app/activity/WebActivity$2$2;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 279
    return-void
.end method
