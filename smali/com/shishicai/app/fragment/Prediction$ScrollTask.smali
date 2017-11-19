.class Lcom/shishicai/app/fragment/Prediction$ScrollTask;
.super Ljava/lang/Object;
.source "Prediction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/fragment/Prediction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/fragment/Prediction;


# direct methods
.method private constructor <init>(Lcom/shishicai/app/fragment/Prediction;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/shishicai/app/fragment/Prediction$ScrollTask;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shishicai/app/fragment/Prediction;Lcom/shishicai/app/fragment/Prediction$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/shishicai/app/fragment/Prediction;
    .param p2, "x1"    # Lcom/shishicai/app/fragment/Prediction$1;

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/shishicai/app/fragment/Prediction$ScrollTask;-><init>(Lcom/shishicai/app/fragment/Prediction;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 241
    iget-object v1, p0, Lcom/shishicai/app/fragment/Prediction$ScrollTask;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v1}, Lcom/shishicai/app/fragment/Prediction;->access$100(Lcom/shishicai/app/fragment/Prediction;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    monitor-enter v2

    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/shishicai/app/fragment/Prediction$ScrollTask;->this$0:Lcom/shishicai/app/fragment/Prediction;

    iget-object v3, p0, Lcom/shishicai/app/fragment/Prediction$ScrollTask;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v3}, Lcom/shishicai/app/fragment/Prediction;->access$1000(Lcom/shishicai/app/fragment/Prediction;)Lcom/shishicai/app/activity/adapter/MyPageChangeListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shishicai/app/activity/adapter/MyPageChangeListener;->getCurrentItem()I

    move-result v3

    invoke-static {v1, v3}, Lcom/shishicai/app/fragment/Prediction;->access$002(Lcom/shishicai/app/fragment/Prediction;I)I

    .line 243
    iget-object v1, p0, Lcom/shishicai/app/fragment/Prediction$ScrollTask;->this$0:Lcom/shishicai/app/fragment/Prediction;

    iget-object v3, p0, Lcom/shishicai/app/fragment/Prediction$ScrollTask;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v3}, Lcom/shishicai/app/fragment/Prediction;->access$000(Lcom/shishicai/app/fragment/Prediction;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/shishicai/app/fragment/Prediction$ScrollTask;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v4}, Lcom/shishicai/app/fragment/Prediction;->access$500(Lcom/shishicai/app/fragment/Prediction;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-static {v1, v3}, Lcom/shishicai/app/fragment/Prediction;->access$002(Lcom/shishicai/app/fragment/Prediction;I)I

    .line 244
    invoke-static {}, Lcom/shishicai/app/fragment/Prediction;->access$1700()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 245
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x63

    iput v1, v0, Landroid/os/Message;->what:I

    .line 246
    invoke-static {}, Lcom/shishicai/app/fragment/Prediction;->access$1700()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 247
    monitor-exit v2

    .line 248
    return-void

    .line 247
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
