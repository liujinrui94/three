.class Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "MineOrder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/mine/MineOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineOrder;


# direct methods
.method private constructor <init>(Lcom/shishicai/app/activity/mine/MineOrder;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shishicai/app/activity/mine/MineOrder;Lcom/shishicai/app/activity/mine/MineOrder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/shishicai/app/activity/mine/MineOrder;
    .param p2, "x1"    # Lcom/shishicai/app/activity/mine/MineOrder$1;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;-><init>(Lcom/shishicai/app/activity/mine/MineOrder;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrder;->access$800(Lcom/shishicai/app/activity/mine/MineOrder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 198
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 204
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "holder":Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;
    if-nez p2, :cond_0

    .line 216
    new-instance v0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;

    .end local v0    # "holder":Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;
    invoke-direct {v0, p0, v3}, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;-><init>(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;Lcom/shishicai/app/activity/mine/MineOrder$1;)V

    .line 217
    .restart local v0    # "holder":Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    const v2, 0x7f030056

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 218
    const v1, 0x7f090160

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->access$1002(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 219
    const v1, 0x7f090161

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->access$1102(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 220
    const v1, 0x7f090164

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->access$1202(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 221
    const v1, 0x7f090162

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->access$1302(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 222
    const v1, 0x7f090163

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->access$1402(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 223
    const v1, 0x7f090166

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->access$1502(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 224
    const v1, 0x7f09015f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->access$1602(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 225
    const v1, 0x7f09015e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->access$1702(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 226
    const v1, 0x7f090165

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->access$1802(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 227
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 231
    :goto_0
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrder;->access$800(Lcom/shishicai/app/activity/mine/MineOrder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/domain/MyOrder;

    invoke-static {v2, v1}, Lcom/shishicai/app/activity/mine/MineOrder;->access$702(Lcom/shishicai/app/activity/mine/MineOrder;Lcom/shishicai/app/domain/MyOrder;)Lcom/shishicai/app/domain/MyOrder;

    .line 232
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrder;->access$2000(Lcom/shishicai/app/activity/mine/MineOrder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/domain/Goods;

    invoke-static {v2, v1}, Lcom/shishicai/app/activity/mine/MineOrder;->access$1902(Lcom/shishicai/app/activity/mine/MineOrder;Lcom/shishicai/app/domain/Goods;)Lcom/shishicai/app/domain/Goods;

    .line 233
    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->access$1600(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineOrder;->access$700(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shishicai/app/domain/MyOrder;->getTotal_fee()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->access$1700(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineOrder;->access$700(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shishicai/app/domain/MyOrder;->getOrder_status_txt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
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

    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v3}, Lcom/shishicai/app/activity/mine/MineOrder;->access$1900(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/domain/Goods;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shishicai/app/domain/Goods;->getGoods_thumb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->access$1000(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;)Landroid/widget/ImageView;

    move-result-object v3

    sget-object v4, Lcom/shishicai/app/Constant;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    sget-object v5, Lcom/shishicai/app/Constant;->animateFirstListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 236
    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->access$1100(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineOrder;->access$1900(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/domain/Goods;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shishicai/app/domain/Goods;->getGoods_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->access$1200(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineOrder;->access$1900(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/domain/Goods;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shishicai/app/domain/Goods;->getMarket_price()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->access$1300(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineOrder;->access$1900(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/domain/Goods;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shishicai/app/domain/Goods;->getSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->access$1400(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineOrder;->access$1900(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/domain/Goods;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shishicai/app/domain/Goods;->getGoods_sn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->access$1500(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u00d7"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v3}, Lcom/shishicai/app/activity/mine/MineOrder;->access$1900(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/domain/Goods;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shishicai/app/domain/Goods;->getGoods_num()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;->access$1800(Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8ba2\u5355\u53f7\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v3}, Lcom/shishicai/app/activity/mine/MineOrder;->access$700(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shishicai/app/domain/MyOrder;->getOrder_sn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    return-object p2

    .line 229
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;
    check-cast v0, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;

    .restart local v0    # "holder":Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter$Holder;
    goto/16 :goto_0
.end method
