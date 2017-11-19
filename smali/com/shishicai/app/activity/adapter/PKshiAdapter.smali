.class public Lcom/shishicai/app/activity/adapter/PKshiAdapter;
.super Landroid/widget/BaseAdapter;
.source "PKshiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

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
    iput-object p1, p0, Lcom/shishicai/app/activity/adapter/PKshiAdapter;->context:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/shishicai/app/activity/adapter/PKshiAdapter;->list:Ljava/util/List;

    .line 22
    return-void
.end method

.method private getBackGround(Ljava/lang/String;)I
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 160
    .local v0, "num":I
    const/4 v1, 0x0

    .line 161
    .local v1, "res":I
    packed-switch v0, :pswitch_data_0

    .line 197
    :goto_0
    return v1

    .line 164
    :pswitch_0
    const v1, 0x7f02000e

    .line 165
    goto :goto_0

    .line 167
    :pswitch_1
    const v1, 0x7f02000b

    .line 168
    goto :goto_0

    .line 170
    :pswitch_2
    const v1, 0x7f020010

    .line 171
    goto :goto_0

    .line 173
    :pswitch_3
    const v1, 0x7f02000f

    .line 174
    goto :goto_0

    .line 176
    :pswitch_4
    const v1, 0x7f020009

    .line 177
    goto :goto_0

    .line 179
    :pswitch_5
    const v1, 0x7f020008

    .line 180
    goto :goto_0

    .line 182
    :pswitch_6
    const v1, 0x7f02000d

    .line 183
    goto :goto_0

    .line 185
    :pswitch_7
    const v1, 0x7f02000c

    .line 186
    goto :goto_0

    .line 188
    :pswitch_8
    const v1, 0x7f020007

    .line 189
    goto :goto_0

    .line 191
    :pswitch_9
    const v1, 0x7f02000a

    .line 192
    goto :goto_0

    .line 194
    :pswitch_a
    const v1, 0x7f02000e

    goto :goto_0

    .line 161
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


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/shishicai/app/activity/adapter/PKshiAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 36
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

    .line 46
    if-nez p2, :cond_0

    .line 47
    new-instance v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;-><init>(Lcom/shishicai/app/activity/adapter/PKshiAdapter;Lcom/shishicai/app/activity/adapter/PKshiAdapter$1;)V

    .line 48
    .local v0, "holder":Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;
    iget-object v4, p0, Lcom/shishicai/app/activity/adapter/PKshiAdapter;->context:Landroid/content/Context;

    const v5, 0x7f03005e

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 50
    const v4, 0x7f090059

    .line 51
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->msgTitle:Landroid/widget/TextView;

    .line 52
    const v4, 0x7f090055

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content:Landroid/widget/TextView;

    .line 53
    const v4, 0x7f09017e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content1:Landroid/widget/TextView;

    .line 54
    const v4, 0x7f09017f

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content2:Landroid/widget/TextView;

    .line 55
    const v4, 0x7f090180

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content3:Landroid/widget/TextView;

    .line 56
    const v4, 0x7f090181

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content4:Landroid/widget/TextView;

    .line 57
    const v4, 0x7f090182

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content5:Landroid/widget/TextView;

    .line 58
    const v4, 0x7f090183

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content6:Landroid/widget/TextView;

    .line 59
    const v4, 0x7f090184

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content7:Landroid/widget/TextView;

    .line 60
    const v4, 0x7f090185

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content8:Landroid/widget/TextView;

    .line 61
    const v4, 0x7f090186

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content9:Landroid/widget/TextView;

    .line 62
    const v4, 0x7f09005a

    .line 63
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->time:Landroid/widget/TextView;

    .line 64
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    :goto_0
    iget-object v4, p0, Lcom/shishicai/app/activity/adapter/PKshiAdapter;->list:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;

    .line 69
    .local v1, "info":Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->msgTitle:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->getPeriod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {v1}, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->getResult()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "numbers":[Ljava/lang/String;
    array-length v4, v2

    if-lez v4, :cond_1

    .line 73
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content:Landroid/widget/TextView;

    aget-object v5, v2, v8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content:Landroid/widget/TextView;

    aget-object v5, v2, v8

    invoke-direct {p0, v5}, Lcom/shishicai/app/activity/adapter/PKshiAdapter;->getBackGround(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 79
    :goto_1
    array-length v4, v2

    if-le v4, v9, :cond_2

    .line 81
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content1:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content1:Landroid/widget/TextView;

    aget-object v5, v2, v9

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content1:Landroid/widget/TextView;

    aget-object v5, v2, v9

    invoke-direct {p0, v5}, Lcom/shishicai/app/activity/adapter/PKshiAdapter;->getBackGround(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 87
    :goto_2
    array-length v4, v2

    if-le v4, v10, :cond_3

    .line 89
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content2:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content2:Landroid/widget/TextView;

    aget-object v5, v2, v10

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content2:Landroid/widget/TextView;

    aget-object v5, v2, v10

    invoke-direct {p0, v5}, Lcom/shishicai/app/activity/adapter/PKshiAdapter;->getBackGround(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 95
    :goto_3
    array-length v4, v2

    if-le v4, v11, :cond_4

    .line 97
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content3:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content3:Landroid/widget/TextView;

    aget-object v5, v2, v11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content3:Landroid/widget/TextView;

    aget-object v5, v2, v11

    invoke-direct {p0, v5}, Lcom/shishicai/app/activity/adapter/PKshiAdapter;->getBackGround(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 103
    :goto_4
    array-length v4, v2

    const/4 v5, 0x4

    if-le v4, v5, :cond_5

    .line 105
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content4:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content4:Landroid/widget/TextView;

    const/4 v5, 0x4

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content4:Landroid/widget/TextView;

    const/4 v5, 0x4

    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lcom/shishicai/app/activity/adapter/PKshiAdapter;->getBackGround(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 111
    :goto_5
    array-length v4, v2

    const/4 v5, 0x5

    if-le v4, v5, :cond_6

    .line 113
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content5:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content5:Landroid/widget/TextView;

    const/4 v5, 0x5

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content5:Landroid/widget/TextView;

    const/4 v5, 0x5

    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lcom/shishicai/app/activity/adapter/PKshiAdapter;->getBackGround(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 119
    :goto_6
    array-length v4, v2

    const/4 v5, 0x6

    if-le v4, v5, :cond_7

    .line 121
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content6:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content6:Landroid/widget/TextView;

    const/4 v5, 0x6

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content6:Landroid/widget/TextView;

    const/4 v5, 0x6

    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lcom/shishicai/app/activity/adapter/PKshiAdapter;->getBackGround(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 127
    :goto_7
    array-length v4, v2

    const/4 v5, 0x7

    if-le v4, v5, :cond_8

    .line 129
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content7:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content7:Landroid/widget/TextView;

    const/4 v5, 0x7

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content7:Landroid/widget/TextView;

    const/4 v5, 0x7

    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lcom/shishicai/app/activity/adapter/PKshiAdapter;->getBackGround(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 135
    :goto_8
    array-length v4, v2

    if-le v4, v7, :cond_9

    .line 137
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content8:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content8:Landroid/widget/TextView;

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content8:Landroid/widget/TextView;

    aget-object v5, v2, v7

    invoke-direct {p0, v5}, Lcom/shishicai/app/activity/adapter/PKshiAdapter;->getBackGround(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 143
    :goto_9
    array-length v4, v2

    const/16 v5, 0x9

    if-le v4, v5, :cond_a

    .line 145
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content9:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content9:Landroid/widget/TextView;

    const/16 v5, 0x9

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content9:Landroid/widget/TextView;

    const/16 v5, 0x9

    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lcom/shishicai/app/activity/adapter/PKshiAdapter;->getBackGround(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 151
    :goto_a
    invoke-virtual {v1}, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->getTime()Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "timeStr":Ljava/lang/String;
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->time:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    return-object p2

    .line 66
    .end local v0    # "holder":Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;
    .end local v1    # "info":Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;
    .end local v2    # "numbers":[Ljava/lang/String;
    .end local v3    # "timeStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;

    .restart local v0    # "holder":Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;
    goto/16 :goto_0

    .line 77
    .restart local v1    # "info":Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;
    .restart local v2    # "numbers":[Ljava/lang/String;
    :cond_1
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 85
    :cond_2
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content1:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 93
    :cond_3
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content2:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 101
    :cond_4
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content3:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 109
    :cond_5
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content4:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 117
    :cond_6
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content5:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 125
    :cond_7
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content6:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 133
    :cond_8
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content7:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    .line 141
    :cond_9
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content8:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 149
    :cond_a
    iget-object v4, v0, Lcom/shishicai/app/activity/adapter/PKshiAdapter$Holder;->content9:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a
.end method
