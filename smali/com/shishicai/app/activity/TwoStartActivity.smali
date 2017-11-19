.class public Lcom/shishicai/app/activity/TwoStartActivity;
.super Lcom/shishicai/app/utils/Base2Activity;
.source "TwoStartActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shishicai/app/activity/TwoStartActivity$CheckBoxTwoOnTagListener;,
        Lcom/shishicai/app/activity/TwoStartActivity$CheckBoxOneOnTagListener;,
        Lcom/shishicai/app/activity/TwoStartActivity$CheckBoxDefaultOnTagListener;,
        Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;,
        Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;,
        Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;
    }
.end annotation


# instance fields
.field checkboxTagsBigorsmail:Lcom/shishicai/app/ui/CheckBoxTagViewGroup2;

.field checkboxTagsOddoreven:Lcom/shishicai/app/ui/CheckBoxTagViewGroup2;

.field mCheckBoxTagViewGroup:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

.field mCheckBoxTagViewGroupOne:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

.field mCheckBoxTagViewGroupTwo:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

.field mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDataChoose:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDataOne:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDataTwo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mIsSetFilterBigOrSmail:Z

.field mIsSetFilterOddOrEven:Z

.field mNullData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTvTJ:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;

.field private titleimgLeft:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/shishicai/app/utils/Base2Activity;-><init>()V

    .line 238
    iput-boolean v0, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mIsSetFilterBigOrSmail:Z

    .line 239
    iput-boolean v0, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mIsSetFilterOddOrEven:Z

    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/activity/TwoStartActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/TwoStartActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/shishicai/app/activity/TwoStartActivity;->initData()V

    return-void
.end method

.method static synthetic access$100(Lcom/shishicai/app/activity/TwoStartActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/TwoStartActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/shishicai/app/activity/TwoStartActivity;->initmCheckBoxTagView()V

    return-void
.end method

.method static synthetic access$200(Lcom/shishicai/app/activity/TwoStartActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/TwoStartActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/shishicai/app/activity/TwoStartActivity;->setTvTj()V

    return-void
.end method

.method static synthetic access$300(Lcom/shishicai/app/activity/TwoStartActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/TwoStartActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/shishicai/app/activity/TwoStartActivity;->setSuoShui()V

    return-void
.end method

.method static synthetic access$400(Lcom/shishicai/app/activity/TwoStartActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/TwoStartActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shishicai/app/activity/TwoStartActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shishicai/app/activity/TwoStartActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/TwoStartActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/shishicai/app/activity/TwoStartActivity;->setDataChoose()V

    return-void
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 105
    iget-object v1, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mNullData:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mNullData:Ljava/util/ArrayList;

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mData:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mData:Ljava/util/ArrayList;

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mDataOne:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mDataOne:Ljava/util/ArrayList;

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mDataTwo:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mDataTwo:Ljava/util/ArrayList;

    .line 113
    :cond_3
    iget-object v1, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    if-nez v1, :cond_4

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    .line 115
    :cond_4
    iget-object v1, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 116
    iget-object v1, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 117
    iget-object v1, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mDataOne:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 118
    iget-object v1, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mDataTwo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 119
    iget-object v1, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 121
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_5

    .line 122
    iget-object v1, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mData:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_5
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 127
    const v0, 0x7f0900cb

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/TwoStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mTvTJ:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f0900d3

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/TwoStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;-><init>(Lcom/shishicai/app/activity/TwoStartActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v0, 0x7f0900d4

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/TwoStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;-><init>(Lcom/shishicai/app/activity/TwoStartActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v0, 0x7f0900d5

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/TwoStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;-><init>(Lcom/shishicai/app/activity/TwoStartActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v0, 0x7f0900d6

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/TwoStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;-><init>(Lcom/shishicai/app/activity/TwoStartActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v0, 0x7f0900d7

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/TwoStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;-><init>(Lcom/shishicai/app/activity/TwoStartActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v0, 0x7f0900d8

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/TwoStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/TwoStartActivity$BaseOnClickListener;-><init>(Lcom/shishicai/app/activity/TwoStartActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v0, 0x7f0900db

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/TwoStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;-><init>(Lcom/shishicai/app/activity/TwoStartActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v0, 0x7f0900dc

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/TwoStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;-><init>(Lcom/shishicai/app/activity/TwoStartActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v0, 0x7f0900dd

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/TwoStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;-><init>(Lcom/shishicai/app/activity/TwoStartActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v0, 0x7f0900de

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/TwoStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;-><init>(Lcom/shishicai/app/activity/TwoStartActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v0, 0x7f0900df

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/TwoStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;-><init>(Lcom/shishicai/app/activity/TwoStartActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v0, 0x7f0900e0

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/TwoStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/TwoStartActivity$OneBigOnClickListener;-><init>(Lcom/shishicai/app/activity/TwoStartActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const v0, 0x7f0900e3

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/TwoStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;-><init>(Lcom/shishicai/app/activity/TwoStartActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const v0, 0x7f0900e4

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/TwoStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;-><init>(Lcom/shishicai/app/activity/TwoStartActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const v0, 0x7f0900e5

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/TwoStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;-><init>(Lcom/shishicai/app/activity/TwoStartActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    const v0, 0x7f0900e6

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/TwoStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;-><init>(Lcom/shishicai/app/activity/TwoStartActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const v0, 0x7f0900e7

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/TwoStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;-><init>(Lcom/shishicai/app/activity/TwoStartActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v0, 0x7f0900e8

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/TwoStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/TwoStartActivity$TwoBigOnClickListener;-><init>(Lcom/shishicai/app/activity/TwoStartActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    const v0, 0x7f0900b3

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/TwoStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const v0, 0x7f0900b4

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/TwoStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const v0, 0x7f0900b5

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/TwoStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v0, 0x7f0900b6

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/TwoStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-void
.end method

.method private initmCheckBoxTagView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 71
    iget-object v2, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroup:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    if-nez v2, :cond_0

    .line 72
    const v2, 0x7f0900d2

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/TwoStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    iput-object v2, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroup:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroupOne:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    if-nez v2, :cond_1

    .line 74
    const v2, 0x7f0900da

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/TwoStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    iput-object v2, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroupOne:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    .line 75
    :cond_1
    iget-object v2, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroupTwo:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    if-nez v2, :cond_2

    .line 76
    const v2, 0x7f0900e2

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/TwoStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    iput-object v2, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroupTwo:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    .line 77
    :cond_2
    iget-object v2, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroup:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    invoke-virtual {v2, v3}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;->setSingleLine(Z)V

    .line 78
    iget-object v2, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroupOne:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    invoke-virtual {v2, v3}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;->setSingleLine(Z)V

    .line 79
    iget-object v2, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroupTwo:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    invoke-virtual {v2, v3}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;->setSingleLine(Z)V

    .line 80
    iget-object v2, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroup:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    new-instance v3, Lcom/shishicai/app/activity/TwoStartActivity$CheckBoxDefaultOnTagListener;

    invoke-direct {v3, p0}, Lcom/shishicai/app/activity/TwoStartActivity$CheckBoxDefaultOnTagListener;-><init>(Lcom/shishicai/app/activity/TwoStartActivity;)V

    invoke-virtual {v2, v3}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;->setOnTagCheckedChangeListener(Lwang/yuchao/android/library/view/tagviewgroup/OnTagCheckedChangeListener;)V

    .line 81
    iget-object v2, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroupOne:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    new-instance v3, Lcom/shishicai/app/activity/TwoStartActivity$CheckBoxOneOnTagListener;

    invoke-direct {v3, p0}, Lcom/shishicai/app/activity/TwoStartActivity$CheckBoxOneOnTagListener;-><init>(Lcom/shishicai/app/activity/TwoStartActivity;)V

    invoke-virtual {v2, v3}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;->setOnTagCheckedChangeListener(Lwang/yuchao/android/library/view/tagviewgroup/OnTagCheckedChangeListener;)V

    .line 82
    iget-object v2, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroupTwo:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    new-instance v3, Lcom/shishicai/app/activity/TwoStartActivity$CheckBoxTwoOnTagListener;

    invoke-direct {v3, p0}, Lcom/shishicai/app/activity/TwoStartActivity$CheckBoxTwoOnTagListener;-><init>(Lcom/shishicai/app/activity/TwoStartActivity;)V

    invoke-virtual {v2, v3}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;->setOnTagCheckedChangeListener(Lwang/yuchao/android/library/view/tagviewgroup/OnTagCheckedChangeListener;)V

    .line 83
    iget-object v2, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroup:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;->update(Ljava/util/ArrayList;)V

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v1, "checkboxBigOrSmailLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "\u5927\u5927"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    const-string v2, "\u5927\u5c0f"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    const-string v2, "\u5c0f\u5c0f"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    const-string v2, "\u5c0f\u5927"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "checbkoxOddOrEventLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "\u5947\u5947"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    const-string v2, "\u5947\u5076"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    const-string v2, "\u5076\u5076"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    const-string v2, "\u5076\u5947"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    const v2, 0x7f0900c9

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/TwoStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/ui/CheckBoxTagViewGroup2;

    iput-object v2, p0, Lcom/shishicai/app/activity/TwoStartActivity;->checkboxTagsBigorsmail:Lcom/shishicai/app/ui/CheckBoxTagViewGroup2;

    .line 98
    iget-object v2, p0, Lcom/shishicai/app/activity/TwoStartActivity;->checkboxTagsBigorsmail:Lcom/shishicai/app/ui/CheckBoxTagViewGroup2;

    invoke-virtual {v2, v1}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup2;->update(Ljava/util/ArrayList;)V

    .line 99
    const v2, 0x7f0900ca

    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/TwoStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/ui/CheckBoxTagViewGroup2;

    iput-object v2, p0, Lcom/shishicai/app/activity/TwoStartActivity;->checkboxTagsOddoreven:Lcom/shishicai/app/ui/CheckBoxTagViewGroup2;

    .line 100
    iget-object v2, p0, Lcom/shishicai/app/activity/TwoStartActivity;->checkboxTagsOddoreven:Lcom/shishicai/app/ui/CheckBoxTagViewGroup2;

    invoke-virtual {v2, v0}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup2;->update(Ljava/util/ArrayList;)V

    .line 102
    return-void
.end method

.method private setDataChoose()V
    .locals 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mDataOne:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 621
    iget-object v0, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mDataTwo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 622
    iget-object v0, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 623
    iget-object v0, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroupOne:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    iget-object v1, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;->update(Ljava/util/ArrayList;)V

    .line 624
    iget-object v0, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroupTwo:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    iget-object v1, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;->update(Ljava/util/ArrayList;)V

    .line 625
    return-void
.end method

.method private setSuoShui()V
    .locals 6

    .prologue
    .line 216
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mDataOne:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mDataTwo:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lcom/shishicai/app/utils/UtilsSF;->SuoShui(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 217
    .local v0, "plszArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "plszArrayList:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-direct {p0, v0}, Lcom/shishicai/app/activity/TwoStartActivity;->setfilterBigOrSmail(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 219
    .local v1, "plszArrayList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "plszArrayList1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-direct {p0, v0}, Lcom/shishicai/app/activity/TwoStartActivity;->setfilterOddOrEven(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 221
    .local v2, "plszArrayList2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    iget-object v3, p0, Lcom/shishicai/app/activity/TwoStartActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "plszArrayList2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-boolean v3, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mIsSetFilterBigOrSmail:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mIsSetFilterOddOrEven:Z

    if-eqz v3, :cond_1

    .line 227
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 228
    invoke-static {p0, v1}, Lcom/shishicai/app/activity/SuoShuiListActivity;->OnNewInstance(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-boolean v3, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mIsSetFilterBigOrSmail:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mIsSetFilterOddOrEven:Z

    if-nez v3, :cond_2

    .line 230
    invoke-static {p0, v1}, Lcom/shishicai/app/activity/SuoShuiListActivity;->OnNewInstance(Landroid/app/Activity;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 231
    :cond_2
    iget-boolean v3, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mIsSetFilterBigOrSmail:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mIsSetFilterOddOrEven:Z

    if-eqz v3, :cond_3

    .line 232
    invoke-static {p0, v2}, Lcom/shishicai/app/activity/SuoShuiListActivity;->OnNewInstance(Landroid/app/Activity;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 233
    :cond_3
    iget-boolean v3, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mIsSetFilterBigOrSmail:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mIsSetFilterOddOrEven:Z

    if-nez v3, :cond_0

    .line 234
    invoke-static {p0, v0}, Lcom/shishicai/app/activity/SuoShuiListActivity;->OnNewInstance(Landroid/app/Activity;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private setTvTj()V
    .locals 7

    .prologue
    .line 313
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[\u57fa\u7840\u53f7\u7801]\u5df2\u9009:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "basetjString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[\u4e00\u4f4d\u9009\u53f7]\u5df2\u9009:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mDataOne:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "onetjString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[\u4e8c\u4f4d\u9009\u53f7]\u5df2\u9009:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mDataTwo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, "twojString":Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "\u6761\u4ef6\u9884\u89c8"

    .line 318
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 319
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 320
    .local v1, "dialog":Landroid/app/AlertDialog$Builder;
    const-string v4, "\u8fd4\u56de"

    new-instance v5, Lcom/shishicai/app/activity/TwoStartActivity$5;

    invoke-direct {v5, p0}, Lcom/shishicai/app/activity/TwoStartActivity$5;-><init>(Lcom/shishicai/app/activity/TwoStartActivity;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 326
    const-string v4, "\u5f00\u59cb\u7f29\u6c34"

    new-instance v5, Lcom/shishicai/app/activity/TwoStartActivity$6;

    invoke-direct {v5, p0}, Lcom/shishicai/app/activity/TwoStartActivity$6;-><init>(Lcom/shishicai/app/activity/TwoStartActivity;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 333
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 335
    return-void
.end method

.method private setfilterBigOrSmail(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shishicai/app/domain/Plsz;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shishicai/app/domain/Plsz;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "plszArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    const/4 v11, 0x1

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v0, "bsFilterLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    iget-object v9, p0, Lcom/shishicai/app/activity/TwoStartActivity;->checkboxTagsBigorsmail:Lcom/shishicai/app/ui/CheckBoxTagViewGroup2;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 243
    .local v1, "cbBB":Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 245
    invoke-static {p1}, Lcom/shishicai/app/utils/UtilsSF;->getPlszBB(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    .line 246
    .local v5, "plszBB":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 247
    iput-boolean v11, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mIsSetFilterBigOrSmail:Z

    .line 249
    .end local v5    # "plszBB":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    :cond_0
    iget-object v9, p0, Lcom/shishicai/app/activity/TwoStartActivity;->checkboxTagsBigorsmail:Lcom/shishicai/app/ui/CheckBoxTagViewGroup2;

    invoke-virtual {v9, v11}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 250
    .local v2, "cbBS":Landroid/widget/CheckBox;
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 252
    invoke-static {p1}, Lcom/shishicai/app/utils/UtilsSF;->getPlszBS(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    .line 253
    .local v6, "plszBS":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 254
    iput-boolean v11, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mIsSetFilterBigOrSmail:Z

    .line 256
    .end local v6    # "plszBS":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    :cond_1
    iget-object v9, p0, Lcom/shishicai/app/activity/TwoStartActivity;->checkboxTagsBigorsmail:Lcom/shishicai/app/ui/CheckBoxTagViewGroup2;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 257
    .local v4, "cbSS":Landroid/widget/CheckBox;
    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 259
    invoke-static {p1}, Lcom/shishicai/app/utils/UtilsSF;->getPlszBS(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v8

    .line 260
    .local v8, "plszSS":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 261
    iput-boolean v11, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mIsSetFilterBigOrSmail:Z

    .line 263
    .end local v8    # "plszSS":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    :cond_2
    iget-object v9, p0, Lcom/shishicai/app/activity/TwoStartActivity;->checkboxTagsBigorsmail:Lcom/shishicai/app/ui/CheckBoxTagViewGroup2;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup2;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 264
    .local v3, "cbSB":Landroid/widget/CheckBox;
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 266
    invoke-static {p1}, Lcom/shishicai/app/utils/UtilsSF;->getPlszSB(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    .line 267
    .local v7, "plszSB":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 268
    iput-boolean v11, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mIsSetFilterBigOrSmail:Z

    .line 270
    .end local v7    # "plszSB":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    :cond_3
    return-object v0
.end method

.method private setfilterOddOrEven(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shishicai/app/domain/Plsz;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/shishicai/app/domain/Plsz;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "plszArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    const/4 v8, 0x1

    .line 274
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v4, "oEFilterLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    iget-object v6, p0, Lcom/shishicai/app/activity/TwoStartActivity;->checkboxTagsOddoreven:Lcom/shishicai/app/ui/CheckBoxTagViewGroup2;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup2;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 276
    .local v3, "cboo":Landroid/widget/CheckBox;
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 278
    invoke-static {p1}, Lcom/shishicai/app/utils/UtilsSF;->getPlszOO(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    .line 279
    .local v5, "plszList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 280
    iput-boolean v8, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mIsSetFilterOddOrEven:Z

    .line 283
    .end local v5    # "plszList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    :cond_0
    iget-object v6, p0, Lcom/shishicai/app/activity/TwoStartActivity;->checkboxTagsOddoreven:Lcom/shishicai/app/ui/CheckBoxTagViewGroup2;

    invoke-virtual {v6, v8}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 284
    .local v2, "cboe":Landroid/widget/CheckBox;
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 286
    invoke-static {p1}, Lcom/shishicai/app/utils/UtilsSF;->getPlszOE(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    .line 287
    .restart local v5    # "plszList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 288
    iput-boolean v8, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mIsSetFilterOddOrEven:Z

    .line 291
    .end local v5    # "plszList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    :cond_1
    iget-object v6, p0, Lcom/shishicai/app/activity/TwoStartActivity;->checkboxTagsOddoreven:Lcom/shishicai/app/ui/CheckBoxTagViewGroup2;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 292
    .local v0, "cbee":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 294
    invoke-static {p1}, Lcom/shishicai/app/utils/UtilsSF;->getPlszEE(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    .line 295
    .restart local v5    # "plszList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 296
    iput-boolean v8, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mIsSetFilterOddOrEven:Z

    .line 299
    .end local v5    # "plszList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    :cond_2
    iget-object v6, p0, Lcom/shishicai/app/activity/TwoStartActivity;->checkboxTagsOddoreven:Lcom/shishicai/app/ui/CheckBoxTagViewGroup2;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 300
    .local v1, "cbeo":Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 302
    invoke-static {p1}, Lcom/shishicai/app/utils/UtilsSF;->getPlszEO(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    .line 303
    .restart local v5    # "plszList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 304
    iput-boolean v8, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mIsSetFilterOddOrEven:Z

    .line 307
    .end local v5    # "plszList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shishicai/app/domain/Plsz;>;"
    :cond_3
    return-object v4
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 211
    :goto_0
    return-void

    .line 159
    :pswitch_0
    iget-object v4, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mDataChoose:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mDataOne:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/shishicai/app/activity/TwoStartActivity;->mDataTwo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 160
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "\u81f3\u5c11\u8981\u8bbe\u7f6e\u57fa\u7840\u53f7\u7801"

    .line 161
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 162
    .local v1, "dialog":Landroid/app/AlertDialog$Builder;
    const-string v4, "\u786e\u5b9a"

    new-instance v5, Lcom/shishicai/app/activity/TwoStartActivity$2;

    invoke-direct {v5, p0}, Lcom/shishicai/app/activity/TwoStartActivity$2;-><init>(Lcom/shishicai/app/activity/TwoStartActivity;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 168
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 170
    .end local v1    # "dialog":Landroid/app/AlertDialog$Builder;
    :cond_0
    invoke-direct {p0}, Lcom/shishicai/app/activity/TwoStartActivity;->setTvTj()V

    goto :goto_0

    .line 174
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 175
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v4, "\u60a8\u786e\u8ba4\u8981\u6e05\u7a7a\u6570\u636e"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 176
    const-string v4, "\u53d6\u6d88"

    new-instance v5, Lcom/shishicai/app/activity/TwoStartActivity$3;

    invoke-direct {v5, p0}, Lcom/shishicai/app/activity/TwoStartActivity$3;-><init>(Lcom/shishicai/app/activity/TwoStartActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 182
    const-string v4, "\u786e\u5b9a"

    new-instance v5, Lcom/shishicai/app/activity/TwoStartActivity$4;

    invoke-direct {v5, p0}, Lcom/shishicai/app/activity/TwoStartActivity$4;-><init>(Lcom/shishicai/app/activity/TwoStartActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 193
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 197
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_2
    invoke-direct {p0}, Lcom/shishicai/app/activity/TwoStartActivity;->setSuoShui()V

    goto :goto_0

    .line 202
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/shishicai/app/activity/WebActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "http://www.zjt-cp.com/html/filterInstructionForApp.html?lotteryCategory=Lssc&os=android&appVersion=6.2.1705&appName=Android_ssczs&visitFrom=outside"

    .line 204
    .local v3, "link":Ljava/lang/String;
    const-string v4, "link"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    iget-object v4, p0, Lcom/shishicai/app/activity/TwoStartActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "link="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v4, "title"

    const-string v5, "\u7f29\u6c34\u6559\u7a0b"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0, v2}, Lcom/shishicai/app/activity/TwoStartActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x7f0900b3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/shishicai/app/utils/Base2Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f03003e

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/TwoStartActivity;->setContentView(I)V

    .line 49
    const-string v0, "TwoStartActivity"

    iput-object v0, p0, Lcom/shishicai/app/activity/TwoStartActivity;->TAG:Ljava/lang/String;

    .line 50
    const v0, 0x7f0900f1

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/TwoStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/activity/TwoStartActivity;->title:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0900f0

    invoke-virtual {p0, v0}, Lcom/shishicai/app/activity/TwoStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shishicai/app/activity/TwoStartActivity;->titleimgLeft:Landroid/widget/ImageView;

    .line 52
    iget-object v0, p0, Lcom/shishicai/app/activity/TwoStartActivity;->titleimgLeft:Landroid/widget/ImageView;

    const v1, 0x7f020110

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    iget-object v0, p0, Lcom/shishicai/app/activity/TwoStartActivity;->titleimgLeft:Landroid/widget/ImageView;

    new-instance v1, Lcom/shishicai/app/activity/TwoStartActivity$1;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/TwoStartActivity$1;-><init>(Lcom/shishicai/app/activity/TwoStartActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/shishicai/app/activity/TwoStartActivity;->title:Landroid/widget/TextView;

    const-string v1, "\u4e8c\u661f\u7f29\u6c34"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-direct {p0}, Lcom/shishicai/app/activity/TwoStartActivity;->initView()V

    .line 61
    invoke-direct {p0}, Lcom/shishicai/app/activity/TwoStartActivity;->initData()V

    .line 62
    invoke-direct {p0}, Lcom/shishicai/app/activity/TwoStartActivity;->initmCheckBoxTagView()V

    .line 63
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Lcom/shishicai/app/utils/Base2Activity;->onStart()V

    .line 68
    return-void
.end method
