.class Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter$Holder;
.super Ljava/lang/Object;
.source "MineBonus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field public enddate:Landroid/widget/TextView;

.field public ivStatus:Landroid/widget/ImageView;

.field public startdate:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter;

.field public type_name:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter$Holder;->this$1:Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter;Lcom/shishicai/app/activity/mine/MineBonus$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter;
    .param p2, "x1"    # Lcom/shishicai/app/activity/mine/MineBonus$1;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter$Holder;-><init>(Lcom/shishicai/app/activity/mine/MineBonus$MyAdapter;)V

    return-void
.end method
