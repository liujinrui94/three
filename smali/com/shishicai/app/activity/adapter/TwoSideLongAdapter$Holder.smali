.class Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter$Holder;
.super Ljava/lang/Object;
.source "TwoSideLongAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field categoryTv:Landroid/widget/TextView;

.field openedResultTv:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter;

.field twoSideCategoryTv:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter$Holder;->this$0:Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter;Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter;
    .param p2, "x1"    # Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter$1;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter$Holder;-><init>(Lcom/shishicai/app/activity/adapter/TwoSideLongAdapter;)V

    return-void
.end method
