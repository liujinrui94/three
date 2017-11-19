.class public Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter;
.super Landroid/widget/BaseAdapter;
.source "AwardStatisticsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/AwardStatisticInfo$ItemsBean;",
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
            "Lcom/shishicai/app/domain/AwardStatisticInfo$ItemsBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/domain/AwardStatisticInfo$ItemsBean;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter;->context:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter;->list:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 35
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 45
    if-nez p2, :cond_0

    .line 46
    new-instance v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;-><init>(Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter;Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$1;)V

    .line 47
    .local v1, "holder":Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;
    iget-object v4, p0, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter;->context:Landroid/content/Context;

    const v5, 0x7f03005f

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 49
    const v4, 0x7f09005a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->openTime:Landroid/widget/TextView;

    .line 50
    const v4, 0x7f090055

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content:Landroid/widget/TextView;

    .line 51
    const v4, 0x7f09017e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content1:Landroid/widget/TextView;

    .line 52
    const v4, 0x7f09017f

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content2:Landroid/widget/TextView;

    .line 53
    const v4, 0x7f090180

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content3:Landroid/widget/TextView;

    .line 54
    const v4, 0x7f090181

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content4:Landroid/widget/TextView;

    .line 55
    const v4, 0x7f090182

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content5:Landroid/widget/TextView;

    .line 56
    const v4, 0x7f090183

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content6:Landroid/widget/TextView;

    .line 57
    const v4, 0x7f090184

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content7:Landroid/widget/TextView;

    .line 58
    const v4, 0x7f090185

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content8:Landroid/widget/TextView;

    .line 59
    const v4, 0x7f090186

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content9:Landroid/widget/TextView;

    .line 60
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    :goto_0
    iget-object v4, p0, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter;->list:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/domain/AwardStatisticInfo$ItemsBean;

    .line 65
    .local v2, "info":Lcom/shishicai/app/domain/AwardStatisticInfo$ItemsBean;
    invoke-virtual {v2}, Lcom/shishicai/app/domain/AwardStatisticInfo$ItemsBean;->getDate()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "date":Ljava/lang/String;
    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->openTime:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {v2}, Lcom/shishicai/app/domain/AwardStatisticInfo$ItemsBean;->getData()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "numbers":[Ljava/lang/String;
    array-length v4, v3

    if-lez v4, :cond_1

    .line 71
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content:Landroid/widget/TextView;

    aget-object v5, v3, v8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :goto_1
    array-length v4, v3

    if-le v4, v9, :cond_2

    .line 78
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content1:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content1:Landroid/widget/TextView;

    aget-object v5, v3, v9

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :goto_2
    array-length v4, v3

    if-le v4, v10, :cond_3

    .line 85
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content2:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content2:Landroid/widget/TextView;

    aget-object v5, v3, v10

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :goto_3
    array-length v4, v3

    if-le v4, v11, :cond_4

    .line 92
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content3:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content3:Landroid/widget/TextView;

    aget-object v5, v3, v11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :goto_4
    array-length v4, v3

    const/4 v5, 0x4

    if-le v4, v5, :cond_5

    .line 99
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content4:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content4:Landroid/widget/TextView;

    const/4 v5, 0x4

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :goto_5
    array-length v4, v3

    const/4 v5, 0x5

    if-le v4, v5, :cond_6

    .line 106
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content5:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content5:Landroid/widget/TextView;

    const/4 v5, 0x5

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :goto_6
    array-length v4, v3

    const/4 v5, 0x6

    if-le v4, v5, :cond_7

    .line 113
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content6:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content6:Landroid/widget/TextView;

    const/4 v5, 0x6

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :goto_7
    array-length v4, v3

    const/4 v5, 0x7

    if-le v4, v5, :cond_8

    .line 120
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content7:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content7:Landroid/widget/TextView;

    const/4 v5, 0x7

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :goto_8
    array-length v4, v3

    if-le v4, v7, :cond_9

    .line 127
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content8:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content8:Landroid/widget/TextView;

    aget-object v5, v3, v7

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :goto_9
    array-length v4, v3

    const/16 v5, 0x9

    if-le v4, v5, :cond_a

    .line 134
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content9:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content9:Landroid/widget/TextView;

    const/16 v5, 0x9

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :goto_a
    return-object p2

    .line 62
    .end local v0    # "date":Ljava/lang/String;
    .end local v1    # "holder":Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;
    .end local v2    # "info":Lcom/shishicai/app/domain/AwardStatisticInfo$ItemsBean;
    .end local v3    # "numbers":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;

    .restart local v1    # "holder":Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;
    goto/16 :goto_0

    .line 74
    .restart local v0    # "date":Ljava/lang/String;
    .restart local v2    # "info":Lcom/shishicai/app/domain/AwardStatisticInfo$ItemsBean;
    .restart local v3    # "numbers":[Ljava/lang/String;
    :cond_1
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 81
    :cond_2
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content1:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 88
    :cond_3
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content2:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 95
    :cond_4
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content3:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 102
    :cond_5
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content4:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 109
    :cond_6
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content5:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 116
    :cond_7
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content6:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    .line 123
    :cond_8
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content7:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 130
    :cond_9
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content8:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    .line 137
    :cond_a
    iget-object v4, v1, Lcom/shishicai/app/activity/adapter/AwardStatisticsAdapter$Holder;->content9:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a
.end method
