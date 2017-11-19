.class Lcom/shishicai/app/activity/mine/MineEmail$2;
.super Ljava/lang/Object;
.source "MineEmail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/mine/MineEmail;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineEmail;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineEmail;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/mine/MineEmail;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineEmail$2;->this$0:Lcom/shishicai/app/activity/mine/MineEmail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 49
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineEmail$2;->this$0:Lcom/shishicai/app/activity/mine/MineEmail;

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineEmail$2;->this$0:Lcom/shishicai/app/activity/mine/MineEmail;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineEmail;->access$100(Lcom/shishicai/app/activity/mine/MineEmail;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shishicai/app/activity/mine/MineEmail;->access$002(Lcom/shishicai/app/activity/mine/MineEmail;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineEmail$2;->this$0:Lcom/shishicai/app/activity/mine/MineEmail;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineEmail;->access$000(Lcom/shishicai/app/activity/mine/MineEmail;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineEmail$2;->this$0:Lcom/shishicai/app/activity/mine/MineEmail;

    const-string v2, "\u8f93\u5165\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 60
    :goto_0
    return-void

    .line 54
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineEmail$2;->this$0:Lcom/shishicai/app/activity/mine/MineEmail;

    const-class v2, Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "email"

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineEmail$2;->this$0:Lcom/shishicai/app/activity/mine/MineEmail;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineEmail;->access$000(Lcom/shishicai/app/activity/mine/MineEmail;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineEmail$2;->this$0:Lcom/shishicai/app/activity/mine/MineEmail;

    const/16 v2, 0x33

    invoke-virtual {v1, v2, v0}, Lcom/shishicai/app/activity/mine/MineEmail;->setResult(ILandroid/content/Intent;)V

    .line 58
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineEmail$2;->this$0:Lcom/shishicai/app/activity/mine/MineEmail;

    invoke-virtual {v1}, Lcom/shishicai/app/activity/mine/MineEmail;->finish()V

    goto :goto_0
.end method
