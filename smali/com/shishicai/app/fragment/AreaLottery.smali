.class public Lcom/shishicai/app/fragment/AreaLottery;
.super Landroid/support/v4/app/Fragment;
.source "AreaLottery.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private adapter:Lcom/shishicai/app/activity/adapter/CategoryAdapter;

.field private areaLottery:Landroid/view/View;

.field private categoryGv:Landroid/widget/GridView;

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

    const/16 v3, 0xc

    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 27
    const-string v0, "AreaLottery"

    iput-object v0, p0, Lcom/shishicai/app/fragment/AreaLottery;->TAG:Ljava/lang/String;

    .line 29
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/shishicai/app/fragment/AreaLottery;->imgIds:[I

    .line 36
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "\u91cd\u5e86\u65f6\u65f6\u5f69"

    aput-object v1, v0, v4

    const-string v1, "\u5317\u4eac\u5feb\u4e508"

    aput-object v1, v0, v5

    const-string v1, "\u5e7f\u4e1c\u5feb\u4e50\u5341\u5206"

    aput-object v1, v0, v6

    const-string v1, "\u6d59\u6c5f\u5feb\u4e50\u5341\u4e8c"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u5e7f\u897f11\u90095"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u8fbd\u5b8111\u90095"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u798f\u5f693d"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u516d\u573a\u534a\u5168\u573a"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u4e0a\u6d77\u5feb3"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u4e03\u4e50\u5f69"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u53cc\u8272\u7403"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u9ed1\u9f99\u6c5f\u65f6\u65f6\u5f69"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/shishicai/app/fragment/AreaLottery;->names:[Ljava/lang/String;

    .line 43
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "http://f.apiplus.cn/cqssc-10.json"

    aput-object v1, v0, v4

    const-string v1, "http://f.apiplus.net/bjkl8.json"

    aput-object v1, v0, v5

    const-string v1, "http://f.apiplus.net/gdklsf.json"

    aput-object v1, v0, v6

    const-string v1, "http://f.apiplus.net/zjkl12.json"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "http://f.apiplus.net/gx11x5.json"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "http://f.apiplus.net/ln11x5.json"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "http://f.apiplus.net/fc3d.json"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "http://f.apiplus.net/zcbqc.json"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "http://f.apiplus.net/shk3.json"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "http://f.apiplus.net/qlc.json"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "http://f.apiplus.net/ssq.json"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "http://f.apiplus.net/hljssc.json"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/shishicai/app/fragment/AreaLottery;->urls:[Ljava/lang/String;

    return-void

    .line 29
    nop

    :array_0
    .array-data 4
        0x7f020089
        0x7f020092
        0x7f020094
        0x7f020095
        0x7f020051
        0x7f020052
        0x7f020066
        0x7f0200ed
        0x7f020054
        0x7f0200e6
        0x7f0200f2
        0x7f0200ee
    .end array-data
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 74
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/shishicai/app/fragment/AreaLottery;->list:Ljava/util/List;

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/shishicai/app/fragment/AreaLottery;->imgIds:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 76
    new-instance v1, Lcom/shishicai/app/domain/CategoryInfo;

    invoke-direct {v1}, Lcom/shishicai/app/domain/CategoryInfo;-><init>()V

    .line 77
    .local v1, "info":Lcom/shishicai/app/domain/CategoryInfo;
    iget-object v2, p0, Lcom/shishicai/app/fragment/AreaLottery;->imgIds:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/shishicai/app/domain/CategoryInfo;->setImgID(I)V

    .line 78
    iget-object v2, p0, Lcom/shishicai/app/fragment/AreaLottery;->names:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/shishicai/app/domain/CategoryInfo;->setName(Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/shishicai/app/fragment/AreaLottery;->urls:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/shishicai/app/domain/CategoryInfo;->setUrl(Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/shishicai/app/fragment/AreaLottery;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "info":Lcom/shishicai/app/domain/CategoryInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 89
    iput-object p1, p0, Lcom/shishicai/app/fragment/AreaLottery;->context:Landroid/app/Activity;

    .line 90
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    iget-object v1, p0, Lcom/shishicai/app/fragment/AreaLottery;->areaLottery:Landroid/view/View;

    if-nez v1, :cond_0

    .line 56
    const v1, 0x7f030012

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/shishicai/app/fragment/AreaLottery;->areaLottery:Landroid/view/View;

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/shishicai/app/fragment/AreaLottery;->areaLottery:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 60
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 62
    iget-object v1, p0, Lcom/shishicai/app/fragment/AreaLottery;->areaLottery:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/shishicai/app/fragment/AreaLottery;->areaLottery:Landroid/view/View;

    const v2, 0x7f090053

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/shishicai/app/fragment/AreaLottery;->categoryGv:Landroid/widget/GridView;

    .line 65
    iget-object v1, p0, Lcom/shishicai/app/fragment/AreaLottery;->categoryGv:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    invoke-direct {p0}, Lcom/shishicai/app/fragment/AreaLottery;->initData()V

    .line 67
    new-instance v1, Lcom/shishicai/app/activity/adapter/CategoryAdapter;

    iget-object v2, p0, Lcom/shishicai/app/fragment/AreaLottery;->context:Landroid/app/Activity;

    iget-object v3, p0, Lcom/shishicai/app/fragment/AreaLottery;->list:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/shishicai/app/activity/adapter/CategoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/shishicai/app/fragment/AreaLottery;->adapter:Lcom/shishicai/app/activity/adapter/CategoryAdapter;

    .line 68
    iget-object v1, p0, Lcom/shishicai/app/fragment/AreaLottery;->categoryGv:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/shishicai/app/fragment/AreaLottery;->adapter:Lcom/shishicai/app/activity/adapter/CategoryAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    iget-object v1, p0, Lcom/shishicai/app/fragment/AreaLottery;->areaLottery:Landroid/view/View;

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
    .line 94
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shishicai/app/fragment/AreaLottery;->context:Landroid/app/Activity;

    const-class v3, Lcom/shishicai/app/activity/AwardActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/shishicai/app/fragment/AreaLottery;->list:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/domain/CategoryInfo;

    invoke-virtual {v2}, Lcom/shishicai/app/domain/CategoryInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "link":Ljava/lang/String;
    const-string v2, "link"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    iget-object v2, p0, Lcom/shishicai/app/fragment/AreaLottery;->TAG:Ljava/lang/String;

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

    .line 98
    const-string v3, "title"

    iget-object v2, p0, Lcom/shishicai/app/fragment/AreaLottery;->list:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/domain/CategoryInfo;

    invoke-virtual {v2}, Lcom/shishicai/app/domain/CategoryInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v0}, Lcom/shishicai/app/fragment/AreaLottery;->startActivity(Landroid/content/Intent;)V

    .line 100
    return-void
.end method
