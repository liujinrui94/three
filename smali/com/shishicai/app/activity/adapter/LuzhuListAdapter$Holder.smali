.class Lcom/shishicai/app/activity/adapter/LuzhuListAdapter$Holder;
.super Ljava/lang/Object;
.source "LuzhuListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/adapter/LuzhuListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field nameLl:Landroid/widget/LinearLayout;

.field nameOddLl:Landroid/widget/LinearLayout;

.field nameOddTv:Landroid/widget/TextView;

.field nameTv:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/shishicai/app/activity/adapter/LuzhuListAdapter;


# direct methods
.method private constructor <init>(Lcom/shishicai/app/activity/adapter/LuzhuListAdapter;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/shishicai/app/activity/adapter/LuzhuListAdapter$Holder;->this$0:Lcom/shishicai/app/activity/adapter/LuzhuListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shishicai/app/activity/adapter/LuzhuListAdapter;Lcom/shishicai/app/activity/adapter/LuzhuListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/shishicai/app/activity/adapter/LuzhuListAdapter;
    .param p2, "x1"    # Lcom/shishicai/app/activity/adapter/LuzhuListAdapter$1;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/shishicai/app/activity/adapter/LuzhuListAdapter$Holder;-><init>(Lcom/shishicai/app/activity/adapter/LuzhuListAdapter;)V

    return-void
.end method
