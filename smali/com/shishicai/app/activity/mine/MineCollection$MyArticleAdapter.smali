.class Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;
.super Landroid/widget/BaseAdapter;
.source "MineCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/mine/MineCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyArticleAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/News;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineCollection;


# direct methods
.method public constructor <init>(Lcom/shishicai/app/activity/mine/MineCollection;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/News;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 318
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/domain/News;>;"
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 319
    iput-object p2, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;->list:Ljava/util/List;

    .line 320
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 331
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 337
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 348
    const/4 v0, 0x0

    .line 349
    .local v0, "holder":Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;
    if-nez p2, :cond_0

    .line 350
    new-instance v0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;

    .end local v0    # "holder":Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;
    invoke-direct {v0, p0, v3}, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;-><init>(Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;Lcom/shishicai/app/activity/mine/MineCollection$1;)V

    .line 351
    .restart local v0    # "holder":Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    const v2, 0x7f03004e

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 353
    const v1, 0x7f090116

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;->access$1402(Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 354
    const v1, 0x7f090117

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;->access$1502(Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 355
    const v1, 0x7f090118

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;->access$1602(Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 356
    const v1, 0x7f090119

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;->access$1702(Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;Landroid/widget/Button;)Landroid/widget/Button;

    .line 357
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 361
    :goto_0
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/domain/News;

    invoke-static {v2, v1}, Lcom/shishicai/app/activity/mine/MineCollection;->access$1002(Lcom/shishicai/app/activity/mine/MineCollection;Lcom/shishicai/app/domain/News;)Lcom/shishicai/app/domain/News;

    .line 363
    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;->access$1500(Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineCollection;->access$1000(Lcom/shishicai/app/activity/mine/MineCollection;)Lcom/shishicai/app/domain/News;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shishicai/app/domain/News;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;->access$1600(Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineCollection;->access$1000(Lcom/shishicai/app/activity/mine/MineCollection;)Lcom/shishicai/app/domain/News;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shishicai/app/domain/News;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v1}, Lcom/shishicai/app/service/HttpMethod;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;->access$1700(Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$1;-><init>(Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    :goto_1
    return-object p2

    .line 359
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;
    check-cast v0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;

    .restart local v0    # "holder":Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter$Holder;
    goto :goto_0

    .line 427
    :cond_1
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v1}, Lcom/shishicai/app/service/HttpMethod;->Toast(Landroid/content/Context;)V

    goto :goto_1
.end method
