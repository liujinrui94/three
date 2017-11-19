.class Lcom/shishicai/app/activity/adapter/ReferListAdapter$Holder;
.super Ljava/lang/Object;
.source "ReferListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/adapter/ReferListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field bigSmallTv:Landroid/widget/TextView;

.field codeTv:Landroid/widget/TextView;

.field nameTv:Landroid/widget/TextView;

.field singleDoubleTv:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/shishicai/app/activity/adapter/ReferListAdapter;


# direct methods
.method private constructor <init>(Lcom/shishicai/app/activity/adapter/ReferListAdapter;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/shishicai/app/activity/adapter/ReferListAdapter$Holder;->this$0:Lcom/shishicai/app/activity/adapter/ReferListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shishicai/app/activity/adapter/ReferListAdapter;Lcom/shishicai/app/activity/adapter/ReferListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/shishicai/app/activity/adapter/ReferListAdapter;
    .param p2, "x1"    # Lcom/shishicai/app/activity/adapter/ReferListAdapter$1;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/shishicai/app/activity/adapter/ReferListAdapter$Holder;-><init>(Lcom/shishicai/app/activity/adapter/ReferListAdapter;)V

    return-void
.end method
