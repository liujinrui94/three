.class Lcom/shishicai/app/activity/adapter/MyAdapter$1;
.super Ljava/lang/Object;
.source "MyAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/adapter/MyAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/adapter/MyAdapter;

.field final synthetic val$arg1:I


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/adapter/MyAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/adapter/MyAdapter;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/shishicai/app/activity/adapter/MyAdapter$1;->this$0:Lcom/shishicai/app/activity/adapter/MyAdapter;

    iput p2, p0, Lcom/shishicai/app/activity/adapter/MyAdapter$1;->val$arg1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 60
    iget-object v3, p0, Lcom/shishicai/app/activity/adapter/MyAdapter$1;->this$0:Lcom/shishicai/app/activity/adapter/MyAdapter;

    invoke-static {v3}, Lcom/shishicai/app/activity/adapter/MyAdapter;->access$000(Lcom/shishicai/app/activity/adapter/MyAdapter;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/shishicai/app/activity/adapter/MyAdapter$1;->this$0:Lcom/shishicai/app/activity/adapter/MyAdapter;

    invoke-static {v3}, Lcom/shishicai/app/activity/adapter/MyAdapter;->access$000(Lcom/shishicai/app/activity/adapter/MyAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 62
    iget-object v3, p0, Lcom/shishicai/app/activity/adapter/MyAdapter$1;->this$0:Lcom/shishicai/app/activity/adapter/MyAdapter;

    invoke-static {v3}, Lcom/shishicai/app/activity/adapter/MyAdapter;->access$000(Lcom/shishicai/app/activity/adapter/MyAdapter;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/shishicai/app/activity/adapter/MyAdapter$1;->val$arg1:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 63
    .local v1, "link":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 65
    iget-object v3, p0, Lcom/shishicai/app/activity/adapter/MyAdapter$1;->this$0:Lcom/shishicai/app/activity/adapter/MyAdapter;

    invoke-static {v3}, Lcom/shishicai/app/activity/adapter/MyAdapter;->access$100(Lcom/shishicai/app/activity/adapter/MyAdapter;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/shishicai/app/activity/adapter/MyAdapter$1;->val$arg1:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 66
    .local v2, "title":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    iget-object v3, p0, Lcom/shishicai/app/activity/adapter/MyAdapter$1;->this$0:Lcom/shishicai/app/activity/adapter/MyAdapter;

    invoke-static {v3}, Lcom/shishicai/app/activity/adapter/MyAdapter;->access$200(Lcom/shishicai/app/activity/adapter/MyAdapter;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 70
    :cond_0
    iget-object v3, p0, Lcom/shishicai/app/activity/adapter/MyAdapter$1;->this$0:Lcom/shishicai/app/activity/adapter/MyAdapter;

    invoke-static {v3}, Lcom/shishicai/app/activity/adapter/MyAdapter;->access$200(Lcom/shishicai/app/activity/adapter/MyAdapter;)Landroid/app/Activity;

    move-result-object v3

    const-string v4, "is_open"

    invoke-static {v3, v4, v5}, Lcom/shishicai/app/utils/PreferencesUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 71
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/shishicai/app/activity/adapter/MyAdapter$1;->this$0:Lcom/shishicai/app/activity/adapter/MyAdapter;

    invoke-static {v3}, Lcom/shishicai/app/activity/adapter/MyAdapter;->access$200(Lcom/shishicai/app/activity/adapter/MyAdapter;)Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/shishicai/app/activity/WebviewActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "link"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v3, "title"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    iget-object v3, p0, Lcom/shishicai/app/activity/adapter/MyAdapter$1;->this$0:Lcom/shishicai/app/activity/adapter/MyAdapter;

    invoke-static {v3}, Lcom/shishicai/app/activity/adapter/MyAdapter;->access$200(Lcom/shishicai/app/activity/adapter/MyAdapter;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 78
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "link":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/shishicai/app/activity/adapter/MyAdapter$1;->this$0:Lcom/shishicai/app/activity/adapter/MyAdapter;

    invoke-static {v3}, Lcom/shishicai/app/activity/adapter/MyAdapter;->access$100(Lcom/shishicai/app/activity/adapter/MyAdapter;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/shishicai/app/activity/adapter/MyAdapter$1;->this$0:Lcom/shishicai/app/activity/adapter/MyAdapter;

    invoke-static {v3}, Lcom/shishicai/app/activity/adapter/MyAdapter;->access$100(Lcom/shishicai/app/activity/adapter/MyAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 79
    iget-object v3, p0, Lcom/shishicai/app/activity/adapter/MyAdapter$1;->this$0:Lcom/shishicai/app/activity/adapter/MyAdapter;

    invoke-static {v3}, Lcom/shishicai/app/activity/adapter/MyAdapter;->access$100(Lcom/shishicai/app/activity/adapter/MyAdapter;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/shishicai/app/activity/adapter/MyAdapter$1;->val$arg1:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 80
    .restart local v2    # "title":Ljava/lang/String;
    const-string v3, "|2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 82
    iget-object v3, p0, Lcom/shishicai/app/activity/adapter/MyAdapter$1;->this$0:Lcom/shishicai/app/activity/adapter/MyAdapter;

    invoke-static {v3}, Lcom/shishicai/app/activity/adapter/MyAdapter;->access$200(Lcom/shishicai/app/activity/adapter/MyAdapter;)Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/shishicai/app/activity/MainActivity;

    invoke-virtual {v3, v5}, Lcom/shishicai/app/activity/MainActivity;->showUpdate(Z)V

    .line 85
    .end local v2    # "title":Ljava/lang/String;
    :cond_2
    return-void
.end method
