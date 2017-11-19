.class Lcom/shishicai/app/activity/mine/MineOrder$1;
.super Landroid/os/Handler;
.source "MineOrder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/mine/MineOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineOrder;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineOrder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/mine/MineOrder;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrder$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 67
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 93
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 94
    return-void

    .line 69
    :pswitch_0
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrder$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrder;->access$000(Lcom/shishicai/app/activity/mine/MineOrder;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 70
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrder$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v1}, Lcom/shishicai/app/service/HttpMethod;->ToastTimeOut(Landroid/content/Context;)V

    goto :goto_0

    .line 73
    :pswitch_1
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrder$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrder;->access$000(Lcom/shishicai/app/activity/mine/MineOrder;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 74
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrder$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrder;->access$100(Lcom/shishicai/app/activity/mine/MineOrder;)Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shishicai/app/activity/mine/MineOrder$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 77
    :pswitch_2
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrder$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrder;->access$000(Lcom/shishicai/app/activity/mine/MineOrder;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 78
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrder$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    const v2, 0x7f03000d

    invoke-virtual {v1, v2}, Lcom/shishicai/app/activity/mine/MineOrder;->setContentView(I)V

    .line 79
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrder$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrder$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    const v3, 0x7f0900f1

    invoke-virtual {v1, v3}, Lcom/shishicai/app/activity/mine/MineOrder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/shishicai/app/activity/mine/MineOrder;->access$202(Lcom/shishicai/app/activity/mine/MineOrder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 80
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrder$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrder;->access$200(Lcom/shishicai/app/activity/mine/MineOrder;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u6211\u7684\u8ba2\u5355"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineOrder$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrder$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    const v3, 0x7f0900f0

    invoke-virtual {v1, v3}, Lcom/shishicai/app/activity/mine/MineOrder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lcom/shishicai/app/activity/mine/MineOrder;->access$302(Lcom/shishicai/app/activity/mine/MineOrder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 82
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrder$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrder;->access$300(Lcom/shishicai/app/activity/mine/MineOrder;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f02010c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrder$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-static {v1}, Lcom/shishicai/app/activity/mine/MineOrder;->access$300(Lcom/shishicai/app/activity/mine/MineOrder;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/shishicai/app/activity/mine/MineOrder$1$1;

    invoke-direct {v2, p0}, Lcom/shishicai/app/activity/mine/MineOrder$1$1;-><init>(Lcom/shishicai/app/activity/mine/MineOrder$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineOrder$1;->this$0:Lcom/shishicai/app/activity/mine/MineOrder;

    const v2, 0x7f0900fb

    invoke-virtual {v1, v2}, Lcom/shishicai/app/activity/mine/MineOrder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    .local v0, "text":Landroid/widget/TextView;
    const-string v1, "\u6682\u65e0\u8ba2\u5355"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
