.class Lcom/shishicai/app/fragment/Mine$1;
.super Landroid/os/Handler;
.source "Mine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/fragment/Mine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/fragment/Mine;


# direct methods
.method constructor <init>(Lcom/shishicai/app/fragment/Mine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/fragment/Mine;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/shishicai/app/fragment/Mine$1;->this$0:Lcom/shishicai/app/fragment/Mine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 73
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 95
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 96
    return-void

    .line 75
    :pswitch_0
    iget-object v2, p0, Lcom/shishicai/app/fragment/Mine$1;->this$0:Lcom/shishicai/app/fragment/Mine;

    invoke-static {v2}, Lcom/shishicai/app/fragment/Mine;->access$000(Lcom/shishicai/app/fragment/Mine;)V

    .line 77
    iget-object v2, p0, Lcom/shishicai/app/fragment/Mine$1;->this$0:Lcom/shishicai/app/fragment/Mine;

    invoke-static {v2}, Lcom/shishicai/app/fragment/Mine;->access$100(Lcom/shishicai/app/fragment/Mine;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "status"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/shishicai/app/fragment/Mine$1;->this$0:Lcom/shishicai/app/fragment/Mine;

    invoke-static {v2}, Lcom/shishicai/app/fragment/Mine;->access$100(Lcom/shishicai/app/fragment/Mine;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "status"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/shishicai/app/fragment/Mine$1;->this$0:Lcom/shishicai/app/fragment/Mine;

    invoke-static {v2}, Lcom/shishicai/app/fragment/Mine;->access$200(Lcom/shishicai/app/fragment/Mine;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/shishicai/app/fragment/Mine$1;->this$0:Lcom/shishicai/app/fragment/Mine;

    invoke-static {v3}, Lcom/shishicai/app/fragment/Mine;->access$100(Lcom/shishicai/app/fragment/Mine;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "nickName"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :goto_1
    iget-object v2, p0, Lcom/shishicai/app/fragment/Mine$1;->this$0:Lcom/shishicai/app/fragment/Mine;

    invoke-static {v2}, Lcom/shishicai/app/fragment/Mine;->access$100(Lcom/shishicai/app/fragment/Mine;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "userId"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "userId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/shishicai/app/Constant;->URLDomain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/uc_server/avatar.php?uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&size=small"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "url":Ljava/lang/String;
    const-string v2, "img"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/shishicai/app/fragment/Mine$1;->this$0:Lcom/shishicai/app/fragment/Mine;

    invoke-static {v3}, Lcom/shishicai/app/fragment/Mine;->access$300(Lcom/shishicai/app/fragment/Mine;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/shishicai/app/fragment/Mine$1;->this$0:Lcom/shishicai/app/fragment/Mine;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Mine;->access$400(Lcom/shishicai/app/fragment/Mine;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    sget-object v5, Lcom/shishicai/app/Constant;->animateFirstListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    goto/16 :goto_0

    .line 80
    .end local v0    # "url":Ljava/lang/String;
    .end local v1    # "userId":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/shishicai/app/fragment/Mine$1;->this$0:Lcom/shishicai/app/fragment/Mine;

    invoke-static {v2}, Lcom/shishicai/app/fragment/Mine;->access$200(Lcom/shishicai/app/fragment/Mine;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/shishicai/app/fragment/Mine$1;->this$0:Lcom/shishicai/app/fragment/Mine;

    invoke-static {v3}, Lcom/shishicai/app/fragment/Mine;->access$100(Lcom/shishicai/app/fragment/Mine;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "username"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 91
    :pswitch_1
    iget-object v2, p0, Lcom/shishicai/app/fragment/Mine$1;->this$0:Lcom/shishicai/app/fragment/Mine;

    invoke-static {v2}, Lcom/shishicai/app/fragment/Mine;->access$500(Lcom/shishicai/app/fragment/Mine;)V

    goto/16 :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
