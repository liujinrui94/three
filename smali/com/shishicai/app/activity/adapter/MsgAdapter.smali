.class public Lcom/shishicai/app/activity/adapter/MsgAdapter;
.super Landroid/widget/BaseAdapter;
.source "MsgAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/activity/adapter/MsgAdapter$Holder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/db/dao/MsgInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/db/dao/MsgInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/db/dao/MsgInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/shishicai/app/activity/adapter/MsgAdapter;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/shishicai/app/activity/adapter/MsgAdapter;->list:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/shishicai/app/activity/adapter/MsgAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 41
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 51
    if-nez p2, :cond_0

    .line 52
    new-instance v2, Lcom/shishicai/app/activity/adapter/MsgAdapter$Holder;

    invoke-direct {v2, p0, v6}, Lcom/shishicai/app/activity/adapter/MsgAdapter$Holder;-><init>(Lcom/shishicai/app/activity/adapter/MsgAdapter;Lcom/shishicai/app/activity/adapter/MsgAdapter$1;)V

    .line 53
    .local v2, "holder":Lcom/shishicai/app/activity/adapter/MsgAdapter$Holder;
    iget-object v4, p0, Lcom/shishicai/app/activity/adapter/MsgAdapter;->context:Landroid/content/Context;

    const v5, 0x7f03003a

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 55
    const v4, 0x7f090059

    .line 56
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/shishicai/app/activity/adapter/MsgAdapter$Holder;->msgTitle:Landroid/widget/TextView;

    .line 57
    const v4, 0x7f09005b

    .line 58
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/shishicai/app/activity/adapter/MsgAdapter$Holder;->content:Landroid/widget/TextView;

    .line 59
    const v4, 0x7f09005a

    .line 60
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/shishicai/app/activity/adapter/MsgAdapter$Holder;->time:Landroid/widget/TextView;

    .line 61
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    :goto_0
    iget-object v4, p0, Lcom/shishicai/app/activity/adapter/MsgAdapter;->list:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shishicai/app/db/dao/MsgInfo;

    .line 66
    .local v3, "info":Lcom/shishicai/app/db/dao/MsgInfo;
    iget-object v4, v2, Lcom/shishicai/app/activity/adapter/MsgAdapter$Holder;->msgTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/shishicai/app/db/dao/MsgInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v4, v2, Lcom/shishicai/app/activity/adapter/MsgAdapter$Holder;->content:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/shishicai/app/db/dao/MsgInfo;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {v3}, Lcom/shishicai/app/db/dao/MsgInfo;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 69
    .local v0, "date":Ljava/util/Date;
    invoke-static {v0}, Lcom/shishicai/app/utils/DateUtil;->getFormatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "dateString":Ljava/lang/String;
    iget-object v4, v2, Lcom/shishicai/app/activity/adapter/MsgAdapter$Holder;->time:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-object p2

    .line 63
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "dateString":Ljava/lang/String;
    .end local v2    # "holder":Lcom/shishicai/app/activity/adapter/MsgAdapter$Holder;
    .end local v3    # "info":Lcom/shishicai/app/db/dao/MsgInfo;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/activity/adapter/MsgAdapter$Holder;

    .restart local v2    # "holder":Lcom/shishicai/app/activity/adapter/MsgAdapter$Holder;
    goto :goto_0
.end method
