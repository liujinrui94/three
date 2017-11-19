.class public Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;
.super Landroid/widget/BaseAdapter;
.source "PKshiTrendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private index:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;",
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
            "Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;->context:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;->list:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 38
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f02000e

    const v7, 0x7f0200e8

    .line 48
    if-nez p2, :cond_0

    .line 49
    new-instance v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;

    invoke-direct {v0, p0, v9}, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;-><init>(Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$1;)V

    .line 50
    .local v0, "holder":Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;
    iget-object v5, p0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;->context:Landroid/content/Context;

    const v6, 0x7f030060

    invoke-static {v5, v6, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    const v5, 0x7f090059

    .line 53
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->msgTitle:Landroid/widget/TextView;

    .line 54
    const v5, 0x7f090187

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content0:Landroid/widget/TextView;

    .line 55
    const v5, 0x7f090055

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content:Landroid/widget/TextView;

    .line 56
    const v5, 0x7f09017e

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content1:Landroid/widget/TextView;

    .line 57
    const v5, 0x7f09017f

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content2:Landroid/widget/TextView;

    .line 58
    const v5, 0x7f090180

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content3:Landroid/widget/TextView;

    .line 59
    const v5, 0x7f090181

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content4:Landroid/widget/TextView;

    .line 60
    const v5, 0x7f090182

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content5:Landroid/widget/TextView;

    .line 61
    const v5, 0x7f090183

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content6:Landroid/widget/TextView;

    .line 62
    const v5, 0x7f090184

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content7:Landroid/widget/TextView;

    .line 63
    const v5, 0x7f090185

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content8:Landroid/widget/TextView;

    .line 64
    const v5, 0x7f090186

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content9:Landroid/widget/TextView;

    .line 65
    const v5, 0x7f09005a

    .line 66
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->time:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    :goto_0
    iget-object v5, p0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;->list:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;

    .line 72
    .local v1, "info":Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->msgTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->getPeriod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v1}, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->getResult()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "numbers":[Ljava/lang/String;
    iget v5, p0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;->index:I

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 75
    .local v2, "num":I
    packed-switch v2, :pswitch_data_0

    .line 221
    :goto_1
    invoke-virtual {v1}, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->getTime()Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, "timeStr":Ljava/lang/String;
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->time:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    return-object p2

    .line 69
    .end local v0    # "holder":Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;
    .end local v1    # "info":Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;
    .end local v2    # "num":I
    .end local v3    # "numbers":[Ljava/lang/String;
    .end local v4    # "timeStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;

    .restart local v0    # "holder":Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;
    goto :goto_0

    .line 78
    .restart local v1    # "info":Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;
    .restart local v2    # "num":I
    .restart local v3    # "numbers":[Ljava/lang/String;
    :pswitch_0
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content0:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 79
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 80
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content1:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 81
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content2:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 82
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content3:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 83
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content4:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 84
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content5:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 85
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content6:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 86
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content7:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 87
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content8:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 88
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content9:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 91
    :pswitch_1
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content:Landroid/widget/TextView;

    const v6, 0x7f02000b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 92
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content0:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 93
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content1:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 94
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content2:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 95
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content3:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 96
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content4:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 97
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content5:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 98
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content6:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 99
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content7:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 100
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content8:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 101
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content9:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 104
    :pswitch_2
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content1:Landroid/widget/TextView;

    const v6, 0x7f020010

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 105
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content0:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 106
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 107
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content2:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 108
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content3:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 109
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content4:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 110
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content5:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 111
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content6:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 112
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content7:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 113
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content8:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 114
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content9:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 117
    :pswitch_3
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content2:Landroid/widget/TextView;

    const v6, 0x7f02000f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 118
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content0:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 119
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content1:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 120
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 121
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content3:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 122
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content4:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 123
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content5:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 124
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content6:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 125
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content7:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 126
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content8:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 127
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content9:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 130
    :pswitch_4
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content3:Landroid/widget/TextView;

    const v6, 0x7f020009

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 131
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content0:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 132
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content1:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 133
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content2:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 134
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 135
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content4:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 136
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content5:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 137
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content6:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 138
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content7:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 139
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content8:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 140
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content9:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 143
    :pswitch_5
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content4:Landroid/widget/TextView;

    const v6, 0x7f020008

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 144
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content0:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 145
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content1:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 146
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content2:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 147
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content3:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 148
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 149
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content5:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 150
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content6:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 151
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content7:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 152
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content8:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 153
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content9:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 156
    :pswitch_6
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content5:Landroid/widget/TextView;

    const v6, 0x7f02000d

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 157
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content0:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 158
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content1:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 159
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content2:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 160
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content3:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 161
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content4:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 162
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 163
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content6:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 164
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content7:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 165
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content8:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 166
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content9:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 169
    :pswitch_7
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content6:Landroid/widget/TextView;

    const v6, 0x7f02000c

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 170
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content0:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 171
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content1:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 172
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content2:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 173
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content3:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 174
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content4:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 175
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content5:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 176
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 177
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content7:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 178
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content8:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 179
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content9:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 182
    :pswitch_8
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content7:Landroid/widget/TextView;

    const v6, 0x7f020007

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 183
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content0:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 184
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content1:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 185
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content2:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 186
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content3:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 187
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content4:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 188
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content5:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 189
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content6:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 190
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 191
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content8:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 192
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content9:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 195
    :pswitch_9
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content8:Landroid/widget/TextView;

    const v6, 0x7f02000a

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 196
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content0:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 197
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content1:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 198
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content2:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 199
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content3:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 200
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content4:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 201
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content5:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 202
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content6:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 203
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content7:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 204
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 205
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content9:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 208
    :pswitch_a
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content9:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 209
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content0:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 210
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content1:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 211
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content2:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 212
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content3:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 213
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content4:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 214
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content5:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 215
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content6:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 216
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content7:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 217
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content8:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 218
    iget-object v5, v0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter$Holder;->content:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 227
    iput p1, p0, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;->index:I

    .line 228
    return-void
.end method
