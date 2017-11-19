.class Lcom/shishicai/app/activity/mine/MineCollection$1;
.super Landroid/os/Handler;
.source "MineCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/mine/MineCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineCollection;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineCollection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/mine/MineCollection;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineCollection$1;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 93
    return-void

    .line 76
    :pswitch_0
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection$1;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineCollection;->access$000(Lcom/shishicai/app/activity/mine/MineCollection;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 77
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection$1;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v0}, Lcom/shishicai/app/service/HttpMethod;->ToastTimeOut(Landroid/content/Context;)V

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection$1;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineCollection;->access$000(Lcom/shishicai/app/activity/mine/MineCollection;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 81
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection$1;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineCollection;->access$100(Lcom/shishicai/app/activity/mine/MineCollection;)Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 84
    :pswitch_2
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection$1;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineCollection;->access$000(Lcom/shishicai/app/activity/mine/MineCollection;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 85
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection$1;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineCollection;->access$200(Lcom/shishicai/app/activity/mine/MineCollection;)Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shishicai/app/activity/mine/MineCollection$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 88
    :pswitch_3
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection$1;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineCollection;->access$000(Lcom/shishicai/app/activity/mine/MineCollection;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 89
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection$1;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineCollection;->access$300(Lcom/shishicai/app/activity/mine/MineCollection;)Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shishicai/app/activity/mine/MineCollection$MyArticleAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
