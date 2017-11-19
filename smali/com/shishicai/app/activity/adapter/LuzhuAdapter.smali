.class public Lcom/shishicai/app/activity/adapter/LuzhuAdapter;
.super Landroid/widget/BaseAdapter;
.source "LuzhuAdapter.java"


# instance fields
.field private adapter:Lcom/shishicai/app/activity/adapter/LuzhuListAdapter;

.field private context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean;",
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
            "Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/shishicai/app/activity/adapter/LuzhuAdapter;->context:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/shishicai/app/activity/adapter/LuzhuAdapter;->list:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/shishicai/app/activity/adapter/LuzhuAdapter;->list:Ljava/util/List;

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
    .line 44
    iget-object v7, p0, Lcom/shishicai/app/activity/adapter/LuzhuAdapter;->context:Landroid/content/Context;

    const v8, 0x7f030046

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 46
    const v7, 0x7f0900ed

    .line 47
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 48
    .local v4, "nameTv":Landroid/widget/TextView;
    const v7, 0x7f0900ee

    .line 49
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 50
    .local v6, "resultTv":Landroid/widget/TextView;
    const v7, 0x7f0900ef

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/shishicai/app/ui/HorizontialListView;

    .line 51
    .local v5, "referLv":Lcom/shishicai/app/ui/HorizontialListView;
    iget-object v7, p0, Lcom/shishicai/app/activity/adapter/LuzhuAdapter;->list:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean;

    .line 52
    .local v0, "bean":Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean;
    invoke-virtual {v0}, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {v0}, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean;->getExtData()Ljava/util/List;

    move-result-object v1

    .line 54
    .local v1, "extData":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$ExtDataBean;>;"
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$ExtDataBean;

    invoke-virtual {v7}, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$ExtDataBean;->getName()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "name1":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$ExtDataBean;

    invoke-virtual {v7}, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean$ExtDataBean;->getName()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "name2":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean;->getFCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean;->getSCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    new-instance v7, Lcom/shishicai/app/activity/adapter/LuzhuListAdapter;

    iget-object v8, p0, Lcom/shishicai/app/activity/adapter/LuzhuAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/shishicai/app/domain/LuzhuInfo$ItemsBean;->getData()Ljava/util/List;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/shishicai/app/activity/adapter/LuzhuListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v7, p0, Lcom/shishicai/app/activity/adapter/LuzhuAdapter;->adapter:Lcom/shishicai/app/activity/adapter/LuzhuListAdapter;

    .line 58
    iget-object v7, p0, Lcom/shishicai/app/activity/adapter/LuzhuAdapter;->adapter:Lcom/shishicai/app/activity/adapter/LuzhuListAdapter;

    invoke-virtual {v5, v7}, Lcom/shishicai/app/ui/HorizontialListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    return-object p2
.end method
