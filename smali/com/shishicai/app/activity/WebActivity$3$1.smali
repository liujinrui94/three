.class Lcom/shishicai/app/activity/WebActivity$3$1;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/WebActivity$3;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shishicai/app/activity/WebActivity$3;

.field final synthetic val$itemLongClickedPopWindow:Lcom/shishicai/app/ui/ItemLongClickedPopWindow;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/WebActivity$3;Lcom/shishicai/app/ui/ItemLongClickedPopWindow;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shishicai/app/activity/WebActivity$3;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/shishicai/app/activity/WebActivity$3$1;->this$1:Lcom/shishicai/app/activity/WebActivity$3;

    iput-object p2, p0, Lcom/shishicai/app/activity/WebActivity$3$1;->val$itemLongClickedPopWindow:Lcom/shishicai/app/ui/ItemLongClickedPopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 384
    iget-object v1, p0, Lcom/shishicai/app/activity/WebActivity$3$1;->val$itemLongClickedPopWindow:Lcom/shishicai/app/ui/ItemLongClickedPopWindow;

    invoke-virtual {v1}, Lcom/shishicai/app/ui/ItemLongClickedPopWindow;->dismiss()V

    .line 385
    iget-object v1, p0, Lcom/shishicai/app/activity/WebActivity$3$1;->this$1:Lcom/shishicai/app/activity/WebActivity$3;

    iget-object v1, v1, Lcom/shishicai/app/activity/WebActivity$3;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-static {v1}, Lcom/shishicai/app/activity/WebActivity;->access$400(Lcom/shishicai/app/activity/WebActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    iget-object v1, p0, Lcom/shishicai/app/activity/WebActivity$3$1;->this$1:Lcom/shishicai/app/activity/WebActivity$3;

    iget-object v1, v1, Lcom/shishicai/app/activity/WebActivity$3;->this$0:Lcom/shishicai/app/activity/WebActivity;

    const-string v2, "\u8bf7\u5148\u4fdd\u5b58\u56fe\u7247"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iget-object v1, p0, Lcom/shishicai/app/activity/WebActivity$3$1;->this$1:Lcom/shishicai/app/activity/WebActivity$3;

    iget-object v1, v1, Lcom/shishicai/app/activity/WebActivity$3;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-static {v1}, Lcom/shishicai/app/activity/WebActivity;->access$800(Lcom/shishicai/app/activity/WebActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 388
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shishicai/app/activity/WebActivity$3$1;->this$1:Lcom/shishicai/app/activity/WebActivity$3;

    iget-object v1, v1, Lcom/shishicai/app/activity/WebActivity$3;->this$0:Lcom/shishicai/app/activity/WebActivity;

    const-class v2, Lcom/shishicai/app/activity/ShowImgActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 389
    .local v0, "intent1":Landroid/content/Intent;
    const-string v1, "path"

    iget-object v2, p0, Lcom/shishicai/app/activity/WebActivity$3$1;->this$1:Lcom/shishicai/app/activity/WebActivity$3;

    iget-object v2, v2, Lcom/shishicai/app/activity/WebActivity$3;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/WebActivity;->access$800(Lcom/shishicai/app/activity/WebActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    iget-object v1, p0, Lcom/shishicai/app/activity/WebActivity$3$1;->this$1:Lcom/shishicai/app/activity/WebActivity$3;

    iget-object v1, v1, Lcom/shishicai/app/activity/WebActivity$3;->this$0:Lcom/shishicai/app/activity/WebActivity;

    invoke-virtual {v1, v0}, Lcom/shishicai/app/activity/WebActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
