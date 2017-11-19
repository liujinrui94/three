.class Lcom/shishicai/app/activity/adapter/AwardAdapter$Holder;
.super Ljava/lang/Object;
.source "AwardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/adapter/AwardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field content:Landroid/widget/TextView;

.field msgTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/shishicai/app/activity/adapter/AwardAdapter;

.field time:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/shishicai/app/activity/adapter/AwardAdapter;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/shishicai/app/activity/adapter/AwardAdapter$Holder;->this$0:Lcom/shishicai/app/activity/adapter/AwardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shishicai/app/activity/adapter/AwardAdapter;Lcom/shishicai/app/activity/adapter/AwardAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/shishicai/app/activity/adapter/AwardAdapter;
    .param p2, "x1"    # Lcom/shishicai/app/activity/adapter/AwardAdapter$1;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/shishicai/app/activity/adapter/AwardAdapter$Holder;-><init>(Lcom/shishicai/app/activity/adapter/AwardAdapter;)V

    return-void
.end method
