.class Lcom/shishicai/app/activity/mine/MineOrderDetail$MyClickListener;
.super Ljava/lang/Object;
.source "MineOrderDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/mine/MineOrderDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;


# direct methods
.method private constructor <init>(Lcom/shishicai/app/activity/mine/MineOrderDetail;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shishicai/app/activity/mine/MineOrderDetail;Lcom/shishicai/app/activity/mine/MineOrderDetail$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail;
    .param p2, "x1"    # Lcom/shishicai/app/activity/mine/MineOrderDetail$1;

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyClickListener;-><init>(Lcom/shishicai/app/activity/mine/MineOrderDetail;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 279
    :goto_0
    return-void

    .line 276
    :pswitch_0
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineOrderDetail;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/mine/MineOrderDetail;->finish()V

    goto :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x7f0900f0
        :pswitch_0
    .end packed-switch
.end method
