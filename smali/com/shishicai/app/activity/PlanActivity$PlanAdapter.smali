.class Lcom/shishicai/app/activity/PlanActivity$PlanAdapter;
.super Landroid/widget/BaseAdapter;
.source "PlanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/PlanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlanAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/activity/PlanActivity$PlanAdapter$ViewHodler;
    }
.end annotation


# instance fields
.field planEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shishicai/app/domain/PlanEntity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/shishicai/app/activity/PlanActivity;


# direct methods
.method public constructor <init>(Lcom/shishicai/app/activity/PlanActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/PlanActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shishicai/app/domain/PlanEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p2, "planEntities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/PlanEntity;>;"
    iput-object p1, p0, Lcom/shishicai/app/activity/PlanActivity$PlanAdapter;->this$0:Lcom/shishicai/app/activity/PlanActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 124
    iput-object p2, p0, Lcom/shishicai/app/activity/PlanActivity$PlanAdapter;->planEntities:Ljava/util/ArrayList;

    .line 125
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/shishicai/app/activity/PlanActivity$PlanAdapter;->planEntities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 138
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 144
    if-nez p2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/shishicai/app/activity/PlanActivity$PlanAdapter;->this$0:Lcom/shishicai/app/activity/PlanActivity;

    invoke-virtual {v2}, Lcom/shishicai/app/activity/PlanActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030039

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 146
    new-instance v1, Lcom/shishicai/app/activity/PlanActivity$PlanAdapter$ViewHodler;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/PlanActivity$PlanAdapter$ViewHodler;-><init>(Lcom/shishicai/app/activity/PlanActivity$PlanAdapter;)V

    .line 147
    .local v1, "viewHodler":Lcom/shishicai/app/activity/PlanActivity$PlanAdapter$ViewHodler;
    const v2, 0x7f0900b8

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/shishicai/app/activity/PlanActivity$PlanAdapter$ViewHodler;->access$402(Lcom/shishicai/app/activity/PlanActivity$PlanAdapter$ViewHodler;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 148
    const v2, 0x7f0900b9

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/shishicai/app/activity/PlanActivity$PlanAdapter$ViewHodler;->access$502(Lcom/shishicai/app/activity/PlanActivity$PlanAdapter$ViewHodler;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 149
    const v2, 0x7f0900ba

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/shishicai/app/activity/PlanActivity$PlanAdapter$ViewHodler;->access$602(Lcom/shishicai/app/activity/PlanActivity$PlanAdapter$ViewHodler;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 150
    const v2, 0x7f0900bb

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/shishicai/app/activity/PlanActivity$PlanAdapter$ViewHodler;->access$702(Lcom/shishicai/app/activity/PlanActivity$PlanAdapter$ViewHodler;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 151
    const v2, 0x7f0900bc

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/shishicai/app/activity/PlanActivity$PlanAdapter$ViewHodler;->access$802(Lcom/shishicai/app/activity/PlanActivity$PlanAdapter$ViewHodler;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 152
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 156
    :goto_0
    iget-object v2, p0, Lcom/shishicai/app/activity/PlanActivity$PlanAdapter;->planEntities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/domain/PlanEntity;

    .line 157
    .local v0, "planEntity":Lcom/shishicai/app/domain/PlanEntity;
    invoke-static {v1}, Lcom/shishicai/app/activity/PlanActivity$PlanAdapter$ViewHodler;->access$400(Lcom/shishicai/app/activity/PlanActivity$PlanAdapter$ViewHodler;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/shishicai/app/domain/PlanEntity;->qs:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-static {v1}, Lcom/shishicai/app/activity/PlanActivity$PlanAdapter$ViewHodler;->access$500(Lcom/shishicai/app/activity/PlanActivity$PlanAdapter$ViewHodler;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/shishicai/app/domain/PlanEntity;->rate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-static {v1}, Lcom/shishicai/app/activity/PlanActivity$PlanAdapter$ViewHodler;->access$600(Lcom/shishicai/app/activity/PlanActivity$PlanAdapter$ViewHodler;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/shishicai/app/domain/PlanEntity;->bqtrate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    invoke-static {v1}, Lcom/shishicai/app/activity/PlanActivity$PlanAdapter$ViewHodler;->access$700(Lcom/shishicai/app/activity/PlanActivity$PlanAdapter$ViewHodler;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/shishicai/app/domain/PlanEntity;->sumCost:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-static {v1}, Lcom/shishicai/app/activity/PlanActivity$PlanAdapter$ViewHodler;->access$800(Lcom/shishicai/app/activity/PlanActivity$PlanAdapter$ViewHodler;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/shishicai/app/domain/PlanEntity;->win:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v2, p0, Lcom/shishicai/app/activity/PlanActivity$PlanAdapter;->this$0:Lcom/shishicai/app/activity/PlanActivity;

    invoke-static {v2}, Lcom/shishicai/app/activity/PlanActivity;->access$900(Lcom/shishicai/app/activity/PlanActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "planEntity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/shishicai/app/domain/PlanEntity;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-object p2

    .line 154
    .end local v0    # "planEntity":Lcom/shishicai/app/domain/PlanEntity;
    .end local v1    # "viewHodler":Lcom/shishicai/app/activity/PlanActivity$PlanAdapter$ViewHodler;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/activity/PlanActivity$PlanAdapter$ViewHodler;

    .restart local v1    # "viewHodler":Lcom/shishicai/app/activity/PlanActivity$PlanAdapter$ViewHodler;
    goto/16 :goto_0
.end method
