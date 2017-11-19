.class public Lcom/shishicai/app/fragment/AwardTrend;
.super Landroid/support/v4/app/Fragment;
.source "AwardTrend.java"

# interfaces
.implements Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderRefreshListener;
.implements Lcom/shishicai/app/ui/PullToRefreshView$OnFooterRefreshListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private array:[Ljava/lang/String;

.field private awardAdapter:Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;

.field private awardTrend:Landroid/view/View;

.field private context:Landroid/app/Activity;

.field private currentDay:Ljava/lang/String;

.field private index:I

.field private isRequesting:Z

.field private length:I

.field private linear:Landroid/widget/LinearLayout;

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

.field private listArticle:Landroid/widget/ListView;

.field private mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

.field private mTimes:[Ljava/lang/String;

.field private msgLayout:Landroid/widget/LinearLayout;

.field private popupWindow:Lcom/shishicai/app/ui/AwardPopupWindow;

.field private title:Ljava/lang/String;

.field private titleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 48
    const-string v0, "AwardTrend"

    iput-object v0, p0, Lcom/shishicai/app/fragment/AwardTrend;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/fragment/AwardTrend;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardTrend;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardTrend;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shishicai/app/fragment/AwardTrend;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardTrend;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardTrend;->msgLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/shishicai/app/fragment/AwardTrend;I)I
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardTrend;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/shishicai/app/fragment/AwardTrend;->length:I

    return p1
.end method

.method static synthetic access$200(Lcom/shishicai/app/fragment/AwardTrend;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardTrend;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardTrend;->linear:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$302(Lcom/shishicai/app/fragment/AwardTrend;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardTrend;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/shishicai/app/fragment/AwardTrend;->isRequesting:Z

    return p1
.end method

.method static synthetic access$400(Lcom/shishicai/app/fragment/AwardTrend;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardTrend;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardTrend;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shishicai/app/fragment/AwardTrend;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardTrend;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/shishicai/app/fragment/AwardTrend;)Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardTrend;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardAdapter:Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/shishicai/app/fragment/AwardTrend;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardTrend;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardTrend;->mTimes:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/shishicai/app/fragment/AwardTrend;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardTrend;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/shishicai/app/fragment/AwardTrend;->mTimes:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/shishicai/app/fragment/AwardTrend;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardTrend;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardTrend;->array:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/shishicai/app/fragment/AwardTrend;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardTrend;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/shishicai/app/fragment/AwardTrend;->array:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/shishicai/app/fragment/AwardTrend;)I
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/AwardTrend;

    .prologue
    .line 38
    iget v0, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    return v0
.end method

.method private gainData()V
    .locals 4

    .prologue
    .line 93
    iget-boolean v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->isRequesting:Z

    if-nez v1, :cond_1

    .line 95
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->isRequesting:Z

    .line 96
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 99
    :cond_0
    sget-object v0, Lcom/shishicai/app/Constant;->AWARD_URL:Ljava/lang/String;

    .line 100
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v1, Lcom/shishicai/app/fragment/AwardTrend$1;

    invoke-direct {v1, p0}, Lcom/shishicai/app/fragment/AwardTrend$1;-><init>(Lcom/shishicai/app/fragment/AwardTrend;)V

    invoke-static {v0, v1}, Lcom/shishicai/app/service/HttpUser;->get(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 155
    .end local v0    # "url":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 162
    iput-object p1, p0, Lcom/shishicai/app/fragment/AwardTrend;->context:Landroid/app/Activity;

    .line 163
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x0

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 390
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 198
    :pswitch_1
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->popupWindow:Lcom/shishicai/app/ui/AwardPopupWindow;

    if-nez v5, :cond_1

    .line 200
    new-instance v5, Lcom/shishicai/app/ui/AwardPopupWindow;

    iget-object v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->context:Landroid/app/Activity;

    iget v7, p0, Lcom/shishicai/app/fragment/AwardTrend;->length:I

    invoke-direct {v5, v6, p0, v7}, Lcom/shishicai/app/ui/AwardPopupWindow;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;I)V

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->popupWindow:Lcom/shishicai/app/ui/AwardPopupWindow;

    .line 202
    :cond_1
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->popupWindow:Lcom/shishicai/app/ui/AwardPopupWindow;

    invoke-virtual {v5, p1, v8, v9}, Lcom/shishicai/app/ui/AwardPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0

    .line 205
    :pswitch_2
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->mTimes:[Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->mTimes:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_2

    .line 207
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->context:Landroid/app/Activity;

    const-class v6, Lcom/shishicai/app/activity/ChartActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "title"

    iget-object v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->title:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 210
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "time"

    iget-object v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->mTimes:[Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 211
    const-string v5, "array"

    iget-object v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->array:[Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 212
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v2}, Lcom/shishicai/app/fragment/AwardTrend;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 215
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->context:Landroid/app/Activity;

    const-string v6, "\u8bf7\u7b49\u5f85\u6570\u636e\u52a0\u8f7d\u5b8c\u6210!"

    invoke-static {v5, v6}, Lcom/shishicai/app/service/HttpMethod;->Toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :pswitch_3
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->popupWindow:Lcom/shishicai/app/ui/AwardPopupWindow;

    invoke-virtual {v5}, Lcom/shishicai/app/ui/AwardPopupWindow;->dismiss()V

    .line 221
    const-string v5, "\u7b2c\u4e00\u7403\u8d70\u52bf\u56fe"

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->title:Ljava/lang/String;

    .line 222
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->mTimes:[Ljava/lang/String;

    .line 223
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->array:[Ljava/lang/String;

    .line 224
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->titleTv:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iput v8, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    .line 226
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardAdapter:Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;

    iget v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    invoke-virtual {v5, v6}, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;->setIndex(I)V

    .line 227
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardAdapter:Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;

    invoke-virtual {v5}, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;->notifyDataSetChanged()V

    .line 228
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 230
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;

    invoke-virtual {v5}, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->getTime()Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, "timeStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->mTimes:[Ljava/lang/String;

    aput-object v4, v5, v1

    .line 232
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;

    invoke-virtual {v5}, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->getResult()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "numbers":[Ljava/lang/String;
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->array:[Ljava/lang/String;

    iget v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    aget-object v6, v3, v6

    aput-object v6, v5, v1

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 237
    .end local v1    # "i":I
    .end local v3    # "numbers":[Ljava/lang/String;
    .end local v4    # "timeStr":Ljava/lang/String;
    :pswitch_4
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->popupWindow:Lcom/shishicai/app/ui/AwardPopupWindow;

    invoke-virtual {v5}, Lcom/shishicai/app/ui/AwardPopupWindow;->dismiss()V

    .line 238
    const-string v5, "\u7b2c\u4e8c\u7403\u8d70\u52bf\u56fe"

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->title:Ljava/lang/String;

    .line 239
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->mTimes:[Ljava/lang/String;

    .line 240
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->array:[Ljava/lang/String;

    .line 241
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->titleTv:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    const/4 v5, 0x1

    iput v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    .line 243
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardAdapter:Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;

    iget v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    invoke-virtual {v5, v6}, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;->setIndex(I)V

    .line 244
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardAdapter:Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;

    invoke-virtual {v5}, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;->notifyDataSetChanged()V

    .line 245
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 247
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;

    invoke-virtual {v5}, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->getTime()Ljava/lang/String;

    move-result-object v4

    .line 248
    .restart local v4    # "timeStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->mTimes:[Ljava/lang/String;

    aput-object v4, v5, v1

    .line 249
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;

    invoke-virtual {v5}, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->getResult()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 250
    .restart local v3    # "numbers":[Ljava/lang/String;
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->array:[Ljava/lang/String;

    iget v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    aget-object v6, v3, v6

    aput-object v6, v5, v1

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 254
    .end local v1    # "i":I
    .end local v3    # "numbers":[Ljava/lang/String;
    .end local v4    # "timeStr":Ljava/lang/String;
    :pswitch_5
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->popupWindow:Lcom/shishicai/app/ui/AwardPopupWindow;

    invoke-virtual {v5}, Lcom/shishicai/app/ui/AwardPopupWindow;->dismiss()V

    .line 255
    const-string v5, "\u7b2c\u4e09\u7403\u8d70\u52bf\u56fe"

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->title:Ljava/lang/String;

    .line 256
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->mTimes:[Ljava/lang/String;

    .line 257
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->array:[Ljava/lang/String;

    .line 258
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->titleTv:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    const/4 v5, 0x2

    iput v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    .line 260
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardAdapter:Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;

    iget v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    invoke-virtual {v5, v6}, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;->setIndex(I)V

    .line 261
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardAdapter:Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;

    invoke-virtual {v5}, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;->notifyDataSetChanged()V

    .line 262
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 264
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;

    invoke-virtual {v5}, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->getTime()Ljava/lang/String;

    move-result-object v4

    .line 265
    .restart local v4    # "timeStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->mTimes:[Ljava/lang/String;

    aput-object v4, v5, v1

    .line 266
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;

    invoke-virtual {v5}, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->getResult()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 267
    .restart local v3    # "numbers":[Ljava/lang/String;
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->array:[Ljava/lang/String;

    iget v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    aget-object v6, v3, v6

    aput-object v6, v5, v1

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 271
    .end local v1    # "i":I
    .end local v3    # "numbers":[Ljava/lang/String;
    .end local v4    # "timeStr":Ljava/lang/String;
    :pswitch_6
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->popupWindow:Lcom/shishicai/app/ui/AwardPopupWindow;

    invoke-virtual {v5}, Lcom/shishicai/app/ui/AwardPopupWindow;->dismiss()V

    .line 272
    const-string v5, "\u7b2c\u56db\u7403\u8d70\u52bf\u56fe"

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->title:Ljava/lang/String;

    .line 273
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->mTimes:[Ljava/lang/String;

    .line 274
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->array:[Ljava/lang/String;

    .line 275
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->titleTv:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    const/4 v5, 0x3

    iput v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    .line 277
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardAdapter:Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;

    iget v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    invoke-virtual {v5, v6}, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;->setIndex(I)V

    .line 278
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardAdapter:Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;

    invoke-virtual {v5}, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;->notifyDataSetChanged()V

    .line 279
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 281
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;

    invoke-virtual {v5}, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->getTime()Ljava/lang/String;

    move-result-object v4

    .line 282
    .restart local v4    # "timeStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->mTimes:[Ljava/lang/String;

    aput-object v4, v5, v1

    .line 283
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;

    invoke-virtual {v5}, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->getResult()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 284
    .restart local v3    # "numbers":[Ljava/lang/String;
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->array:[Ljava/lang/String;

    iget v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    aget-object v6, v3, v6

    aput-object v6, v5, v1

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 288
    .end local v1    # "i":I
    .end local v3    # "numbers":[Ljava/lang/String;
    .end local v4    # "timeStr":Ljava/lang/String;
    :pswitch_7
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->popupWindow:Lcom/shishicai/app/ui/AwardPopupWindow;

    invoke-virtual {v5}, Lcom/shishicai/app/ui/AwardPopupWindow;->dismiss()V

    .line 289
    const-string v5, "\u7b2c\u4e94\u7403\u8d70\u52bf\u56fe"

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->title:Ljava/lang/String;

    .line 290
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->mTimes:[Ljava/lang/String;

    .line 291
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->array:[Ljava/lang/String;

    .line 292
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->titleTv:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    const/4 v5, 0x4

    iput v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    .line 294
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardAdapter:Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;

    iget v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    invoke-virtual {v5, v6}, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;->setIndex(I)V

    .line 295
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardAdapter:Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;

    invoke-virtual {v5}, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;->notifyDataSetChanged()V

    .line 296
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 298
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;

    invoke-virtual {v5}, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->getTime()Ljava/lang/String;

    move-result-object v4

    .line 299
    .restart local v4    # "timeStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->mTimes:[Ljava/lang/String;

    aput-object v4, v5, v1

    .line 300
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;

    invoke-virtual {v5}, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->getResult()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 301
    .restart local v3    # "numbers":[Ljava/lang/String;
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->array:[Ljava/lang/String;

    iget v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    aget-object v6, v3, v6

    aput-object v6, v5, v1

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 305
    .end local v1    # "i":I
    .end local v3    # "numbers":[Ljava/lang/String;
    .end local v4    # "timeStr":Ljava/lang/String;
    :pswitch_8
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->popupWindow:Lcom/shishicai/app/ui/AwardPopupWindow;

    invoke-virtual {v5}, Lcom/shishicai/app/ui/AwardPopupWindow;->dismiss()V

    .line 306
    const-string v5, "\u7b2c\u516d\u7403\u8d70\u52bf\u56fe"

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->title:Ljava/lang/String;

    .line 307
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->mTimes:[Ljava/lang/String;

    .line 308
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->array:[Ljava/lang/String;

    .line 309
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->titleTv:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iput v9, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    .line 311
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardAdapter:Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;

    iget v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    invoke-virtual {v5, v6}, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;->setIndex(I)V

    .line 312
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardAdapter:Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;

    invoke-virtual {v5}, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;->notifyDataSetChanged()V

    .line 313
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 315
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;

    invoke-virtual {v5}, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->getTime()Ljava/lang/String;

    move-result-object v4

    .line 316
    .restart local v4    # "timeStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->mTimes:[Ljava/lang/String;

    aput-object v4, v5, v1

    .line 317
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;

    invoke-virtual {v5}, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->getResult()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 318
    .restart local v3    # "numbers":[Ljava/lang/String;
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->array:[Ljava/lang/String;

    iget v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    aget-object v6, v3, v6

    aput-object v6, v5, v1

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 322
    .end local v1    # "i":I
    .end local v3    # "numbers":[Ljava/lang/String;
    .end local v4    # "timeStr":Ljava/lang/String;
    :pswitch_9
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->popupWindow:Lcom/shishicai/app/ui/AwardPopupWindow;

    invoke-virtual {v5}, Lcom/shishicai/app/ui/AwardPopupWindow;->dismiss()V

    .line 323
    const-string v5, "\u7b2c\u4e03\u7403\u8d70\u52bf\u56fe"

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->title:Ljava/lang/String;

    .line 324
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->mTimes:[Ljava/lang/String;

    .line 325
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->array:[Ljava/lang/String;

    .line 326
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->titleTv:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    const/4 v5, 0x6

    iput v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    .line 328
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardAdapter:Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;

    iget v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    invoke-virtual {v5, v6}, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;->setIndex(I)V

    .line 329
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardAdapter:Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;

    invoke-virtual {v5}, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;->notifyDataSetChanged()V

    .line 330
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 332
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;

    invoke-virtual {v5}, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->getTime()Ljava/lang/String;

    move-result-object v4

    .line 333
    .restart local v4    # "timeStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->mTimes:[Ljava/lang/String;

    aput-object v4, v5, v1

    .line 334
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;

    invoke-virtual {v5}, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->getResult()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 335
    .restart local v3    # "numbers":[Ljava/lang/String;
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->array:[Ljava/lang/String;

    iget v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    aget-object v6, v3, v6

    aput-object v6, v5, v1

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 339
    .end local v1    # "i":I
    .end local v3    # "numbers":[Ljava/lang/String;
    .end local v4    # "timeStr":Ljava/lang/String;
    :pswitch_a
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->popupWindow:Lcom/shishicai/app/ui/AwardPopupWindow;

    invoke-virtual {v5}, Lcom/shishicai/app/ui/AwardPopupWindow;->dismiss()V

    .line 340
    const-string v5, "\u7b2c\u516b\u7403\u8d70\u52bf\u56fe"

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->title:Ljava/lang/String;

    .line 341
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->mTimes:[Ljava/lang/String;

    .line 342
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->array:[Ljava/lang/String;

    .line 343
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->titleTv:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    const/4 v5, 0x7

    iput v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    .line 345
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardAdapter:Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;

    iget v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    invoke-virtual {v5, v6}, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;->setIndex(I)V

    .line 346
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardAdapter:Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;

    invoke-virtual {v5}, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;->notifyDataSetChanged()V

    .line 347
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 349
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;

    invoke-virtual {v5}, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->getTime()Ljava/lang/String;

    move-result-object v4

    .line 350
    .restart local v4    # "timeStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->mTimes:[Ljava/lang/String;

    aput-object v4, v5, v1

    .line 351
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;

    invoke-virtual {v5}, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->getResult()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 352
    .restart local v3    # "numbers":[Ljava/lang/String;
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->array:[Ljava/lang/String;

    iget v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    aget-object v6, v3, v6

    aput-object v6, v5, v1

    .line 347
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 356
    .end local v1    # "i":I
    .end local v3    # "numbers":[Ljava/lang/String;
    .end local v4    # "timeStr":Ljava/lang/String;
    :pswitch_b
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->popupWindow:Lcom/shishicai/app/ui/AwardPopupWindow;

    invoke-virtual {v5}, Lcom/shishicai/app/ui/AwardPopupWindow;->dismiss()V

    .line 357
    const-string v5, "\u7b2c\u4e5d\u540d\u8d70\u52bf\u56fe"

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->title:Ljava/lang/String;

    .line 358
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->mTimes:[Ljava/lang/String;

    .line 359
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->array:[Ljava/lang/String;

    .line 360
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->titleTv:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    const/16 v5, 0x8

    iput v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    .line 362
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardAdapter:Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;

    iget v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    invoke-virtual {v5, v6}, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;->setIndex(I)V

    .line 363
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardAdapter:Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;

    invoke-virtual {v5}, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;->notifyDataSetChanged()V

    .line 364
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_9
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 366
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;

    invoke-virtual {v5}, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->getTime()Ljava/lang/String;

    move-result-object v4

    .line 367
    .restart local v4    # "timeStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->mTimes:[Ljava/lang/String;

    aput-object v4, v5, v1

    .line 368
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;

    invoke-virtual {v5}, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->getResult()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 369
    .restart local v3    # "numbers":[Ljava/lang/String;
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->array:[Ljava/lang/String;

    iget v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    aget-object v6, v3, v6

    aput-object v6, v5, v1

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 373
    .end local v1    # "i":I
    .end local v3    # "numbers":[Ljava/lang/String;
    .end local v4    # "timeStr":Ljava/lang/String;
    :pswitch_c
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->popupWindow:Lcom/shishicai/app/ui/AwardPopupWindow;

    invoke-virtual {v5}, Lcom/shishicai/app/ui/AwardPopupWindow;->dismiss()V

    .line 374
    const-string v5, "\u7b2c\u5341\u540d\u8d70\u52bf\u56fe"

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->title:Ljava/lang/String;

    .line 375
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->mTimes:[Ljava/lang/String;

    .line 376
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->array:[Ljava/lang/String;

    .line 377
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->titleTv:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    const/16 v5, 0x9

    iput v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    .line 379
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardAdapter:Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;

    iget v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    invoke-virtual {v5, v6}, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;->setIndex(I)V

    .line 380
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardAdapter:Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;

    invoke-virtual {v5}, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;->notifyDataSetChanged()V

    .line 381
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_a
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 383
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;

    invoke-virtual {v5}, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->getTime()Ljava/lang/String;

    move-result-object v4

    .line 384
    .restart local v4    # "timeStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->mTimes:[Ljava/lang/String;

    aput-object v4, v5, v1

    .line 385
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;

    invoke-virtual {v5}, Lcom/shishicai/app/domain/PKshiInfo$ItemsBean;->getResult()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 386
    .restart local v3    # "numbers":[Ljava/lang/String;
    iget-object v5, p0, Lcom/shishicai/app/fragment/AwardTrend;->array:[Ljava/lang/String;

    iget v6, p0, Lcom/shishicai/app/fragment/AwardTrend;->index:I

    aget-object v6, v3, v6

    aput-object v6, v5, v1

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 195
    :pswitch_data_0
    .packed-switch 0x7f09005c
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 61
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardTrend:Landroid/view/View;

    if-nez v1, :cond_0

    .line 62
    const v1, 0x7f030019

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardTrend:Landroid/view/View;

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardTrend:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 66
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 68
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardTrend:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardTrend:Landroid/view/View;

    const v2, 0x7f09005d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->titleTv:Landroid/widget/TextView;

    .line 71
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardTrend:Landroid/view/View;

    const v2, 0x7f090021

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->msgLayout:Landroid/widget/LinearLayout;

    .line 72
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardTrend:Landroid/view/View;

    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->linear:Landroid/widget/LinearLayout;

    .line 73
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardTrend:Landroid/view/View;

    const v2, 0x7f09002f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/shishicai/app/ui/PullToRefreshView;

    iput-object v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    .line 74
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardTrend:Landroid/view/View;

    const v2, 0x7f090029

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->listArticle:Landroid/widget/ListView;

    .line 75
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v1, p0}, Lcom/shishicai/app/ui/PullToRefreshView;->setOnHeaderRefreshListener(Lcom/shishicai/app/ui/PullToRefreshView$OnHeaderRefreshListener;)V

    .line 76
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v1, p0}, Lcom/shishicai/app/ui/PullToRefreshView;->setOnFooterRefreshListener(Lcom/shishicai/app/ui/PullToRefreshView$OnFooterRefreshListener;)V

    .line 77
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->msgLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 78
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->linear:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 79
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardTrend:Landroid/view/View;

    const v2, 0x7f09005e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardTrend:Landroid/view/View;

    const v2, 0x7f09005c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const-string v1, "\u7b2c\u4e00\u7403\u8d70\u52bf\u56fe"

    iput-object v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->title:Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/shishicai/app/utils/DateUtil;->getCurrentDate()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->currentDay:Ljava/lang/String;

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    .line 84
    new-instance v1, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;

    iget-object v2, p0, Lcom/shishicai/app/fragment/AwardTrend;->context:Landroid/app/Activity;

    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardAdapter:Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;

    .line 85
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->listArticle:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardAdapter:Lcom/shishicai/app/activity/adapter/PKshiTrendAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->listArticle:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 87
    invoke-direct {p0}, Lcom/shishicai/app/fragment/AwardTrend;->gainData()V

    .line 88
    iget-object v1, p0, Lcom/shishicai/app/fragment/AwardTrend;->awardTrend:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 190
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardTrend;->context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/shishicai/app/service/HttpUser;->cancel(Landroid/content/Context;)V

    .line 191
    return-void
.end method

.method public onFooterRefresh(Lcom/shishicai/app/ui/PullToRefreshView;)V
    .locals 1
    .param p1, "view"    # Lcom/shishicai/app/ui/PullToRefreshView;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardTrend;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v0}, Lcom/shishicai/app/ui/PullToRefreshView;->onFooterRefreshComplete()V

    .line 169
    return-void
.end method

.method public onHeaderRefresh(Lcom/shishicai/app/ui/PullToRefreshView;)V
    .locals 2
    .param p1, "view"    # Lcom/shishicai/app/ui/PullToRefreshView;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardTrend;->msgLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardTrend;->linear:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 175
    invoke-direct {p0}, Lcom/shishicai/app/fragment/AwardTrend;->gainData()V

    .line 176
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardTrend;->mRefreshView:Lcom/shishicai/app/ui/PullToRefreshView;

    invoke-virtual {v0}, Lcom/shishicai/app/ui/PullToRefreshView;->onHeaderRefreshComplete()V

    .line 177
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 394
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shishicai/app/fragment/AwardTrend;->context:Landroid/app/Activity;

    const-class v3, Lcom/shishicai/app/activity/ChartActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 395
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "title"

    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardTrend;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 397
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "time"

    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardTrend;->mTimes:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 398
    const-string v2, "array"

    iget-object v3, p0, Lcom/shishicai/app/fragment/AwardTrend;->array:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 399
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 400
    invoke-virtual {p0, v1}, Lcom/shishicai/app/fragment/AwardTrend;->startActivity(Landroid/content/Intent;)V

    .line 401
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardTrend;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardTrend;->msgLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/shishicai/app/fragment/AwardTrend;->linear:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    invoke-direct {p0}, Lcom/shishicai/app/fragment/AwardTrend;->gainData()V

    .line 185
    :cond_0
    return-void
.end method
