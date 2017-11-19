.class Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter$Holder;
.super Ljava/lang/Object;
.source "MineOrderDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field public goodsAttr:Landroid/widget/TextView;

.field public goodsName:Landroid/widget/TextView;

.field public goodsPrice:Landroid/widget/TextView;

.field public goodsQuality:Landroid/widget/TextView;

.field public goodsSn:Landroid/widget/TextView;

.field public imageCart:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;


# direct methods
.method private constructor <init>(Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter$Holder;->this$1:Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;Lcom/shishicai/app/activity/mine/MineOrderDetail$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;
    .param p2, "x1"    # Lcom/shishicai/app/activity/mine/MineOrderDetail$1;

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter$Holder;-><init>(Lcom/shishicai/app/activity/mine/MineOrderDetail$MyAdapter;)V

    return-void
.end method
