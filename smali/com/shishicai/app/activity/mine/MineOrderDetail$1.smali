.class Lcom/shishicai/app/activity/mine/MineOrderDetail$1;
.super Landroid/os/Handler;
.source "MineOrderDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/mine/MineOrderDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineOrderDetail;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x4

    .line 68
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 106
    :goto_0
    return-void

    .line 72
    :sswitch_0
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$000(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v0}, Lcom/shishicai/app/service/HttpMethod;->ToastTimeOut(Landroid/content/Context;)V

    goto :goto_0

    .line 76
    :sswitch_1
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$000(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$200(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shishicai/app/domain/MyOrder;->getOrder_sn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$300(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shishicai/app/domain/MyOrder;->getOrder_status()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$400(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shishicai/app/domain/MyOrder;->getPay_status()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$500(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shishicai/app/domain/MyOrder;->getShipping_status()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$600(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shishicai/app/domain/MyOrder;->getFormated_goods_amount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$700(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shishicai/app/domain/MyOrder;->getFormated_shipping_fee()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$800(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shishicai/app/domain/MyOrder;->getFormated_order_amount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$1000(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$900(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Addresses;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shishicai/app/domain/Addresses;->getConsignee()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$1100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$900(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Addresses;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shishicai/app/domain/Addresses;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$1200(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$900(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Addresses;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shishicai/app/domain/Addresses;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$1300(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$900(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Addresses;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shishicai/app/domain/Addresses;->getMobile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$1400(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$900(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/Addresses;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shishicai/app/domain/Addresses;->getTel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$1500(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shishicai/app/domain/MyOrder;->getSign_building()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$1600(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shishicai/app/domain/MyOrder;->getBest_time()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$1700(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shishicai/app/domain/MyOrder;->getPay_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$1800(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shishicai/app/domain/MyOrder;->getFormated_order_amount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$1900(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v2}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shishicai/app/domain/MyOrder;->getFormated_bonus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$2000(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shishicai/app/domain/MyOrder;->getShipping_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$2100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shishicai/app/domain/MyOrder;->getPay_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$2200(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$100(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/domain/MyOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shishicai/app/domain/MyOrder;->getHow_oos()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$2300(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;->notifyDataSetChanged()V

    .line 100
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->access$2400(Lcom/shishicai/app/activity/mine/MineOrderDetail;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    goto/16 :goto_0

    .line 69
    nop

    :sswitch_data_0
    .sparse-switch
        0x1f4 -> :sswitch_0
        0x204 -> :sswitch_1
    .end sparse-switch
.end method
