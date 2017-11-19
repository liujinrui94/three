.class Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "MineOrderDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/mine/MineOrderDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter$Holder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;


# direct methods
.method private constructor <init>(Lcom/shishicai/app/activity/mine/MineOrderDetail;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shishicai/app/activity/mine/MineOrderDetail;Lcom/shishicai/app/activity/mine/MineOrderDetail$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;
    .param p2, "x1"    # Lcom/shishicai/app/activity/mine/MineOrderDetail$1;

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;-><init>(Lcom/shishicai/app/activity/mine/MineOrderDetail;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$2900(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 315
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 321
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "holder":Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter$Holder;
    if-nez p2, :cond_0

    .line 333
    new-instance v0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter$Holder;

    .end local v0    # "holder":Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter$Holder;
    invoke-direct {v0, p0, v5}, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter$Holder;-><init>(Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;Lcom/shishicai/app/activity/mine/MineOrderDetail$1;)V

    .line 334
    .restart local v0    # "holder":Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter$Holder;
    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    const v4, 0x7f03005d

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 335
    const v3, 0x7f09017d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter$Holder;->goodsQuality:Landroid/widget/TextView;

    .line 336
    const v3, 0x7f090179

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter$Holder;->goodsName:Landroid/widget/TextView;

    .line 337
    const v3, 0x7f09017a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter$Holder;->goodsSn:Landroid/widget/TextView;

    .line 338
    const v3, 0x7f09017b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter$Holder;->goodsAttr:Landroid/widget/TextView;

    .line 339
    const v3, 0x7f09017c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter$Holder;->goodsPrice:Landroid/widget/TextView;

    .line 340
    const v3, 0x7f090178

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter$Holder;->imageCart:Landroid/widget/ImageView;

    .line 341
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 345
    :goto_0
    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v3}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$2900(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shishicai/app/domain/Cart;

    invoke-static {v4, v3}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$3102(Lcom/shishicai/app/activity/mine/MineOrderDetail;Lcom/shishicai/app/domain/Cart;)Lcom/shishicai/app/domain/Cart;

    .line 346
    iget-object v3, v0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter$Holder;->goodsName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v4}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$3100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Cart;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shishicai/app/domain/Cart;->getGoods_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v3, v0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter$Holder;->goodsSn:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v4}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$3100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Cart;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shishicai/app/domain/Cart;->getGoods_sn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v3, v0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter$Holder;->goodsAttr:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v4}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$3100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Cart;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shishicai/app/domain/Cart;->getGoods_attr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v3, v0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter$Holder;->goodsPrice:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v4}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$3100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Cart;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shishicai/app/domain/Cart;->getGoods_price()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v3, v0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter$Holder;->goodsQuality:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v4}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$3100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Cart;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shishicai/app/domain/Cart;->getGoods_number()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    new-instance v4, Lcom/shishicai/app/image/CustomImageLoader;

    iget-object v5, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .line 352
    invoke-virtual {v5}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/shishicai/app/image/CustomImageLoader;-><init>(Landroid/content/Context;)V

    .line 351
    invoke-static {v3, v4}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$3202(Lcom/shishicai/app/activity/mine/MineOrderDetail;Lcom/shishicai/app/image/CustomImageLoader;)Lcom/shishicai/app/image/CustomImageLoader;

    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/shishicai/app/Constant;->URLDomain:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .line 354
    invoke-static {v4}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$3100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Cart;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shishicai/app/domain/Cart;->getGoods_thumb()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v3}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$3200(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/image/CustomImageLoader;

    move-result-object v3

    iget-object v4, v0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter$Holder;->imageCart:Landroid/widget/ImageView;

    invoke-virtual {v3, v2, v4}, Lcom/shishicai/app/image/CustomImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 357
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v3}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$2900(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 358
    iget-object v4, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v3}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$2900(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shishicai/app/domain/Cart;

    invoke-static {v4, v3}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$3102(Lcom/shishicai/app/activity/mine/MineOrderDetail;Lcom/shishicai/app/domain/Cart;)Lcom/shishicai/app/domain/Cart;

    .line 359
    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v5}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$3300(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v5}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$3100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Cart;

    move-result-object v5

    invoke-virtual {v5}, Lcom/shishicai/app/domain/Cart;->getGoods_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$3302(Lcom/shishicai/app/activity/mine/MineOrderDetail;Ljava/lang/String;)Ljava/lang/String;

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 343
    .end local v1    # "i":I
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter$Holder;
    check-cast v0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter$Holder;

    .restart local v0    # "holder":Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter$Holder;
    goto/16 :goto_0

    .line 362
    .restart local v1    # "i":I
    .restart local v2    # "url":Ljava/lang/String;
    :cond_1
    return-object p2
.end method
