.class Lcom/shishicai/app/activity/mine/MineCollection$MyClickListener;
.super Ljava/lang/Object;
.source "MineCollection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/mine/MineCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineCollection;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineCollection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/mine/MineCollection;

    .prologue
    .line 533
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 536
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 541
    :goto_0
    return-void

    .line 538
    :pswitch_0
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineCollection$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/mine/MineCollection;->finish()V

    goto :goto_0

    .line 536
    :pswitch_data_0
    .packed-switch 0x7f0900f0
        :pswitch_0
    .end packed-switch
.end method
