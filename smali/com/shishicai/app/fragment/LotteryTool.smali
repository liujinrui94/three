.class public Lcom/shishicai/app/fragment/LotteryTool;
.super Landroid/support/v4/app/Fragment;
.source "LotteryTool.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private adapter:Lcom/shishicai/app/activity/adapter/ToolLotteryAdapter;

.field private areaLottery:Landroid/view/View;

.field private categoryGv:Landroid/widget/ListView;

.field private context:Landroid/app/Activity;

.field private imgIds:[I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/CategoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private names:[Ljava/lang/String;

.field private urls:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 30
    const-string v0, "LotteryTool"

    iput-object v0, p0, Lcom/shishicai/app/fragment/LotteryTool;->TAG:Ljava/lang/String;

    .line 32
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/shishicai/app/fragment/LotteryTool;->imgIds:[I

    .line 35
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "\u4e8c\u661f\u9009\u53f7"

    aput-object v1, v0, v4

    const-string v1, "\u8ffd\u53f7\u8ba1\u5212"

    aput-object v1, v0, v5

    const-string v1, "\u968f\u673a\u9009\u53f7"

    aput-object v1, v0, v6

    const-string v1, "\u7f29\u6c34\u6559\u7a0b"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u73a9\u6cd5\u8bf4\u660e"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/shishicai/app/fragment/LotteryTool;->names:[Ljava/lang/String;

    .line 39
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, ""

    aput-object v1, v0, v5

    const-string v1, ""

    aput-object v1, v0, v6

    const-string v1, "http://www.zjt-cp.com/html/filterInstructionForApp.html?lotteryCategory=Lssc&os=android&appVersion=6.2.1705&appName=Android_ssczs&visitFrom=outside"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "http://www.zjt-cp.com/html/rule/rule_Lssc.html?os=android&appVersion=6.2.1705&appName=Android_ssczs&visitFrom=outside"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/shishicai/app/fragment/LotteryTool;->urls:[Ljava/lang/String;

    return-void

    .line 32
    :array_0
    .array-data 4
        0x7f0200d9
        0x7f02004a
        0x7f0200c8
        0x7f020093
        0x7f0200da
    .end array-data
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 66
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/shishicai/app/fragment/LotteryTool;->list:Ljava/util/List;

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/shishicai/app/fragment/LotteryTool;->imgIds:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 68
    new-instance v1, Lcom/shishicai/app/domain/CategoryInfo;

    invoke-direct {v1}, Lcom/shishicai/app/domain/CategoryInfo;-><init>()V

    .line 69
    .local v1, "info":Lcom/shishicai/app/domain/CategoryInfo;
    iget-object v2, p0, Lcom/shishicai/app/fragment/LotteryTool;->imgIds:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/shishicai/app/domain/CategoryInfo;->setImgID(I)V

    .line 70
    iget-object v2, p0, Lcom/shishicai/app/fragment/LotteryTool;->names:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/shishicai/app/domain/CategoryInfo;->setName(Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lcom/shishicai/app/fragment/LotteryTool;->urls:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/shishicai/app/domain/CategoryInfo;->setUrl(Ljava/lang/String;)V

    .line 72
    iget-object v2, p0, Lcom/shishicai/app/fragment/LotteryTool;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "info":Lcom/shishicai/app/domain/CategoryInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 81
    iput-object p1, p0, Lcom/shishicai/app/fragment/LotteryTool;->context:Landroid/app/Activity;

    .line 82
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    iget-object v1, p0, Lcom/shishicai/app/fragment/LotteryTool;->areaLottery:Landroid/view/View;

    if-nez v1, :cond_0

    .line 48
    const v1, 0x7f030070

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/shishicai/app/fragment/LotteryTool;->areaLottery:Landroid/view/View;

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/shishicai/app/fragment/LotteryTool;->areaLottery:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 52
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 54
    iget-object v1, p0, Lcom/shishicai/app/fragment/LotteryTool;->areaLottery:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/shishicai/app/fragment/LotteryTool;->areaLottery:Landroid/view/View;

    const v2, 0x7f090053

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/shishicai/app/fragment/LotteryTool;->categoryGv:Landroid/widget/ListView;

    .line 57
    iget-object v1, p0, Lcom/shishicai/app/fragment/LotteryTool;->categoryGv:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 58
    invoke-direct {p0}, Lcom/shishicai/app/fragment/LotteryTool;->initData()V

    .line 59
    new-instance v1, Lcom/shishicai/app/activity/adapter/ToolLotteryAdapter;

    iget-object v2, p0, Lcom/shishicai/app/fragment/LotteryTool;->context:Landroid/app/Activity;

    iget-object v3, p0, Lcom/shishicai/app/fragment/LotteryTool;->list:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/shishicai/app/activity/adapter/ToolLotteryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/shishicai/app/fragment/LotteryTool;->adapter:Lcom/shishicai/app/activity/adapter/ToolLotteryAdapter;

    .line 60
    iget-object v1, p0, Lcom/shishicai/app/fragment/LotteryTool;->categoryGv:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/shishicai/app/fragment/LotteryTool;->adapter:Lcom/shishicai/app/activity/adapter/ToolLotteryAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    iget-object v1, p0, Lcom/shishicai/app/fragment/LotteryTool;->areaLottery:Landroid/view/View;

    return-object v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 86
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    packed-switch p3, :pswitch_data_0

    .line 108
    :goto_0
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0, v0}, Lcom/shishicai/app/fragment/LotteryTool;->startActivity(Landroid/content/Intent;)V

    .line 112
    :cond_0
    return-void

    .line 90
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/shishicai/app/fragment/LotteryTool;->context:Landroid/app/Activity;

    const-class v3, Lcom/shishicai/app/activity/TwoStartActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 94
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/shishicai/app/fragment/LotteryTool;->context:Landroid/app/Activity;

    const-class v3, Lcom/shishicai/app/activity/PlanActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 97
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/shishicai/app/fragment/LotteryTool;->context:Landroid/app/Activity;

    const-class v3, Lcom/shishicai/app/activity/GenerateNumberActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 101
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/shishicai/app/fragment/LotteryTool;->context:Landroid/app/Activity;

    const-class v3, Lcom/shishicai/app/activity/WebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/shishicai/app/fragment/LotteryTool;->list:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/domain/CategoryInfo;

    invoke-virtual {v2}, Lcom/shishicai/app/domain/CategoryInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "link":Ljava/lang/String;
    const-string v2, "link"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object v2, p0, Lcom/shishicai/app/fragment/LotteryTool;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "link="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v3, "title"

    iget-object v2, p0, Lcom/shishicai/app/fragment/LotteryTool;->list:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/domain/CategoryInfo;

    invoke-virtual {v2}, Lcom/shishicai/app/domain/CategoryInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
