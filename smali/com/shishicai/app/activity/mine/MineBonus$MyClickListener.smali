.class Lcom/shishicai/app/activity/mine/MineBonus$MyClickListener;
.super Ljava/lang/Object;
.source "MineBonus.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/mine/MineBonus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineBonus;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineBonus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/mine/MineBonus;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineBonus$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineBonus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 85
    :pswitch_0
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineBonus$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineBonus;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/mine/MineBonus;->finish()V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x7f0900f0
        :pswitch_0
    .end packed-switch
.end method
