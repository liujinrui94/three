.class public Lcom/shishicai/app/activity/adapter/TextAdapter;
.super Landroid/widget/BaseAdapter;
.source "TextAdapter.java"


# instance fields
.field private layout:Landroid/widget/RelativeLayout;

.field private lists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/ListData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .param p2, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/ListData;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/shishicai/app/domain/ListData;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/shishicai/app/activity/adapter/TextAdapter;->lists:Ljava/util/List;

    .line 26
    iput-object p2, p0, Lcom/shishicai/app/activity/adapter/TextAdapter;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/shishicai/app/activity/adapter/TextAdapter;->lists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/shishicai/app/activity/adapter/TextAdapter;->lists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 45
    iget-object v2, p0, Lcom/shishicai/app/activity/adapter/TextAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 46
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/shishicai/app/activity/adapter/TextAdapter;->lists:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/domain/ListData;

    invoke-virtual {v2}, Lcom/shishicai/app/domain/ListData;->getFlag()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 47
    const v2, 0x7f030043

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/shishicai/app/activity/adapter/TextAdapter;->layout:Landroid/widget/RelativeLayout;

    .line 49
    :cond_0
    iget-object v2, p0, Lcom/shishicai/app/activity/adapter/TextAdapter;->lists:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/domain/ListData;

    invoke-virtual {v2}, Lcom/shishicai/app/domain/ListData;->getFlag()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 50
    const v2, 0x7f030069

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/shishicai/app/activity/adapter/TextAdapter;->layout:Landroid/widget/RelativeLayout;

    .line 52
    :cond_1
    iget-object v2, p0, Lcom/shishicai/app/activity/adapter/TextAdapter;->layout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0900ea

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 55
    .local v1, "tv":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/shishicai/app/activity/adapter/TextAdapter;->lists:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shishicai/app/domain/ListData;

    invoke-virtual {v2}, Lcom/shishicai/app/domain/ListData;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v2, p0, Lcom/shishicai/app/activity/adapter/TextAdapter;->layout:Landroid/widget/RelativeLayout;

    return-object v2
.end method
