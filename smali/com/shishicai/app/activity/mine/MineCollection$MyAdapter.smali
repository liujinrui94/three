.class Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "MineCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/mine/MineCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineCollection;


# direct methods
.method private constructor <init>(Lcom/shishicai/app/activity/mine/MineCollection;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shishicai/app/activity/mine/MineCollection;Lcom/shishicai/app/activity/mine/MineCollection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/shishicai/app/activity/mine/MineCollection;
    .param p2, "x1"    # Lcom/shishicai/app/activity/mine/MineCollection$1;

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;-><init>(Lcom/shishicai/app/activity/mine/MineCollection;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineCollection;->access$800(Lcom/shishicai/app/activity/mine/MineCollection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 447
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineCollection;->access$800(Lcom/shishicai/app/activity/mine/MineCollection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 453
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 464
    const/4 v0, 0x0

    .line 465
    .local v0, "holder":Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;
    if-nez p2, :cond_0

    .line 466
    new-instance v0, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;

    .end local v0    # "holder":Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;
    invoke-direct {v0, p0, v3}, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;-><init>(Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;Lcom/shishicai/app/activity/mine/MineCollection$1;)V

    .line 467
    .restart local v0    # "holder":Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    const v2, 0x7f03004f

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 469
    const v1, 0x7f09011a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;->access$1902(Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 470
    const v1, 0x7f09011b

    .line 471
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 470
    invoke-static {v0, v1}, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;->access$2002(Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 472
    const v1, 0x7f09011c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;->access$2102(Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 473
    const v1, 0x7f09011d

    .line 474
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 473
    invoke-static {v0, v1}, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;->access$2202(Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 475
    const v1, 0x7f09011e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;->access$2302(Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 476
    const v1, 0x7f09011f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;->access$2402(Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;Landroid/widget/Button;)Landroid/widget/Button;

    .line 477
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 481
    :goto_0
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineCollection;->access$800(Lcom/shishicai/app/activity/mine/MineCollection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/domain/Goods;

    invoke-static {v2, v1}, Lcom/shishicai/app/activity/mine/MineCollection;->access$702(Lcom/shishicai/app/activity/mine/MineCollection;Lcom/shishicai/app/domain/Goods;)Lcom/shishicai/app/domain/Goods;

    .line 482
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/shishicai/app/Constant;->URLDomain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v3}, Lcom/shishicai/app/activity/mine/MineCollection;->access$700(Lcom/shishicai/app/activity/mine/MineCollection;)Lcom/shishicai/app/domain/Goods;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shishicai/app/domain/Goods;->getGoods_img()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;->access$1900(Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;)Landroid/widget/ImageView;

    move-result-object v3

    sget-object v4, Lcom/shishicai/app/Constant;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    sget-object v5, Lcom/shishicai/app/Constant;->animateFirstListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 483
    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;->access$2000(Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineCollection;->access$700(Lcom/shishicai/app/activity/mine/MineCollection;)Lcom/shishicai/app/domain/Goods;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shishicai/app/domain/Goods;->getGoods_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;->access$2200(Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineCollection;->access$700(Lcom/shishicai/app/activity/mine/MineCollection;)Lcom/shishicai/app/domain/Goods;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shishicai/app/domain/Goods;->getShop_price()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;->access$2100(Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineCollection;->access$700(Lcom/shishicai/app/activity/mine/MineCollection;)Lcom/shishicai/app/domain/Goods;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shishicai/app/domain/Goods;->getMarket_price()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;->access$2300(Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineCollection;->access$700(Lcom/shishicai/app/activity/mine/MineCollection;)Lcom/shishicai/app/domain/Goods;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shishicai/app/domain/Goods;->getPromote_price()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v1}, Lcom/shishicai/app/service/HttpMethod;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;->access$2400(Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$1;-><init>(Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    :goto_1
    return-object p2

    .line 479
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;
    check-cast v0, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;

    .restart local v0    # "holder":Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter$Holder;
    goto/16 :goto_0

    .line 526
    :cond_1
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v1}, Lcom/shishicai/app/service/HttpMethod;->Toast(Landroid/content/Context;)V

    goto :goto_1
.end method
