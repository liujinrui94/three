.class Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SuoShuiListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mTv_dxb:Landroid/widget/TextView;

.field mTv_heji:Landroid/widget/TextView;

.field mTv_job:Landroid/widget/TextView;

.field mTv_num:Landroid/widget/TextView;

.field mTv_xh:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter$ViewHolder;->this$1:Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
