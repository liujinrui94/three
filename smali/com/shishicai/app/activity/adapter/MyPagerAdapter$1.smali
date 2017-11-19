.class Lcom/shishicai/app/activity/adapter/MyPagerAdapter$1;
.super Ljava/lang/Object;
.source "MyPagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/adapter/MyPagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/adapter/MyPagerAdapter;

.field final synthetic val$arg1:I


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/adapter/MyPagerAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/adapter/MyPagerAdapter;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/shishicai/app/activity/adapter/MyPagerAdapter$1;->this$0:Lcom/shishicai/app/activity/adapter/MyPagerAdapter;

    iput p2, p0, Lcom/shishicai/app/activity/adapter/MyPagerAdapter$1;->val$arg1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v3, p0, Lcom/shishicai/app/activity/adapter/MyPagerAdapter$1;->this$0:Lcom/shishicai/app/activity/adapter/MyPagerAdapter;

    invoke-static {v3}, Lcom/shishicai/app/activity/adapter/MyPagerAdapter;->access$000(Lcom/shishicai/app/activity/adapter/MyPagerAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 55
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/shishicai/app/activity/adapter/MyPagerAdapter$1;->this$0:Lcom/shishicai/app/activity/adapter/MyPagerAdapter;

    invoke-static {v3}, Lcom/shishicai/app/activity/adapter/MyPagerAdapter;->access$100(Lcom/shishicai/app/activity/adapter/MyPagerAdapter;)Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/shishicai/app/activity/WebviewActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/shishicai/app/activity/adapter/MyPagerAdapter$1;->this$0:Lcom/shishicai/app/activity/adapter/MyPagerAdapter;

    invoke-static {v3}, Lcom/shishicai/app/activity/adapter/MyPagerAdapter;->access$000(Lcom/shishicai/app/activity/adapter/MyPagerAdapter;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/shishicai/app/activity/adapter/MyPagerAdapter$1;->val$arg1:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 57
    .local v1, "link":Ljava/lang/String;
    const-string v3, "link"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    iget-object v3, p0, Lcom/shishicai/app/activity/adapter/MyPagerAdapter$1;->this$0:Lcom/shishicai/app/activity/adapter/MyPagerAdapter;

    invoke-static {v3}, Lcom/shishicai/app/activity/adapter/MyPagerAdapter;->access$200(Lcom/shishicai/app/activity/adapter/MyPagerAdapter;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/shishicai/app/activity/adapter/MyPagerAdapter$1;->val$arg1:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 59
    .local v2, "title":Ljava/lang/String;
    const-string v3, "title"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    iget-object v3, p0, Lcom/shishicai/app/activity/adapter/MyPagerAdapter$1;->this$0:Lcom/shishicai/app/activity/adapter/MyPagerAdapter;

    invoke-static {v3}, Lcom/shishicai/app/activity/adapter/MyPagerAdapter;->access$100(Lcom/shishicai/app/activity/adapter/MyPagerAdapter;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 62
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "link":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    return-void
.end method
