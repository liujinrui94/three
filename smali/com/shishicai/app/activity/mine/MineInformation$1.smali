.class Lcom/shishicai/app/activity/mine/MineInformation$1;
.super Landroid/os/Handler;
.source "MineInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/mine/MineInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineInformation;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineInformation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/mine/MineInformation;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 82
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 83
    return-void

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineInformation;->access$000(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineInformation;->access$100(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineInformation;->access$200(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u5b8c\u6210"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineInformation;->access$200(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineInformation;->access$300(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineInformation;->access$300(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineInformation;->access$400(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineInformation;->access$500(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineInformation;->access$600(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineInformation;->access$700(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineInformation;->access$800(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener;

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-direct {v1, v2}, Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener;-><init>(Lcom/shishicai/app/activity/mine/MineInformation;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineInformation;->access$900(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener;

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-direct {v1, v2}, Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener;-><init>(Lcom/shishicai/app/activity/mine/MineInformation;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineInformation;->access$1000(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener;

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-direct {v1, v2}, Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener;-><init>(Lcom/shishicai/app/activity/mine/MineInformation;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineInformation;->access$1100(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener;

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-direct {v1, v2}, Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener;-><init>(Lcom/shishicai/app/activity/mine/MineInformation;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 69
    :pswitch_1
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineInformation;->access$200(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineInformation;->access$300(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineInformation;->access$000(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineInformation;->access$100(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineInformation;->access$400(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineInformation;->access$500(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineInformation;->access$600(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineInformation;->access$700(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineInformation;->access$900(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/shishicai/app/activity/mine/MineInformation$MyNotClickListener;

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-direct {v1, v2}, Lcom/shishicai/app/activity/mine/MineInformation$MyNotClickListener;-><init>(Lcom/shishicai/app/activity/mine/MineInformation;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineInformation;->access$1000(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/shishicai/app/activity/mine/MineInformation$MyNotClickListener;

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-direct {v1, v2}, Lcom/shishicai/app/activity/mine/MineInformation$MyNotClickListener;-><init>(Lcom/shishicai/app/activity/mine/MineInformation;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineInformation;->access$1100(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/shishicai/app/activity/mine/MineInformation$MyNotClickListener;

    iget-object v2, p0, Lcom/shishicai/app/activity/mine/MineInformation$1;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-direct {v1, v2}, Lcom/shishicai/app/activity/mine/MineInformation$MyNotClickListener;-><init>(Lcom/shishicai/app/activity/mine/MineInformation;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
