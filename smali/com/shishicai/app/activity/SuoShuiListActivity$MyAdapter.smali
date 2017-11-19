.class Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "SuoShuiListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/SuoShuiListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field plszArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shishicai/app/domain/Plsz;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/shishicai/app/activity/SuoShuiListActivity;


# direct methods
.method public constructor <init>(Lcom/shishicai/app/activity/SuoShuiListActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/SuoShuiListActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shishicai/app/domain/Plsz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "plszArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    iput-object p1, p0, Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter;->this$0:Lcom/shishicai/app/activity/SuoShuiListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter;->plszArrayList:Ljava/util/ArrayList;

    .line 61
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter;->plszArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 75
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 81
    if-nez p2, :cond_0

    .line 83
    new-instance v1, Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter$ViewHolder;-><init>(Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter;)V

    .line 84
    .local v1, "viewHolder":Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter$ViewHolder;
    iget-object v2, p0, Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter;->this$0:Lcom/shishicai/app/activity/SuoShuiListActivity;

    invoke-virtual {v2}, Lcom/shishicai/app/activity/SuoShuiListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03003f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 85
    const v2, 0x7f0900cc

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter$ViewHolder;->mTv_xh:Landroid/widget/TextView;

    .line 86
    const v2, 0x7f0900cd

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter$ViewHolder;->mTv_num:Landroid/widget/TextView;

    .line 87
    const v2, 0x7f0900ce

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter$ViewHolder;->mTv_dxb:Landroid/widget/TextView;

    .line 88
    const v2, 0x7f0900cf

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter$ViewHolder;->mTv_job:Landroid/widget/TextView;

    .line 89
    const v2, 0x7f0900d0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter$ViewHolder;->mTv_heji:Landroid/widget/TextView;

    .line 90
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    :goto_0
    iget-object v2, p0, Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter;->plszArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/domain/Plsz;

    .line 95
    .local v0, "plsz":Lcom/shishicai/app/domain/Plsz;
    iget-object v2, v1, Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter$ViewHolder;->mTv_xh:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v2, v1, Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter$ViewHolder;->mTv_num:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/shishicai/app/domain/Plsz;->getThesingle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/shishicai/app/domain/Plsz;->getThedouble()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v2, v1, Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter$ViewHolder;->mTv_dxb:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/shishicai/app/utils/UtilsSF;->DaXiao(Lcom/shishicai/app/domain/Plsz;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v2, v1, Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter$ViewHolder;->mTv_job:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/shishicai/app/utils/UtilsSF;->JiOu(Lcom/shishicai/app/domain/Plsz;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v2, v1, Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter$ViewHolder;->mTv_heji:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/shishicai/app/utils/UtilsSF;->HeZhi(Lcom/shishicai/app/domain/Plsz;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-object p2

    .line 92
    .end local v0    # "plsz":Lcom/shishicai/app/domain/Plsz;
    .end local v1    # "viewHolder":Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter$ViewHolder;

    .restart local v1    # "viewHolder":Lcom/shishicai/app/activity/SuoShuiListActivity$MyAdapter$ViewHolder;
    goto/16 :goto_0
.end method
