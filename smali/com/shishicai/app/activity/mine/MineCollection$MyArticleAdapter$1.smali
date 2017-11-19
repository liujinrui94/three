.class Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1;
.super Ljava/lang/Object;
.source "MineCollection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1;->this$1:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;

    iput p2, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 369
    const-string v2, "com.soshow.hiyoga.MineCollection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1;->val$position:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1;->this$1:Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;

    iget-object v2, v2, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 372
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "\u5220\u9664\u5173\u6ce8"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 373
    const-string v2, "\u786e\u5b9a\u5220\u9664\uff1f"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 374
    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$1;

    invoke-direct {v3, p0}, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$1;-><init>(Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 414
    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$2;

    invoke-direct {v3, p0}, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1$2;-><init>(Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 422
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 423
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 424
    return-void
.end method
