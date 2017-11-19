.class public Lcom/shishicai/app/utils/TreeViewAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "TreeViewAdapter.java"


# instance fields
.field private animateFirstListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

.field private child:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private group:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private inflater1:Landroid/view/LayoutInflater;

.field public mContext:Landroid/content/Context;

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private uniLoad:Lcom/nostra13/universalimageloader/core/ImageLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/ImageLoader;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p3, "animateFirstListener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
    .param p4, "uniLoad"    # Lcom/nostra13/universalimageloader/core/ImageLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nostra13/universalimageloader/core/DisplayImageOptions;",
            "Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;",
            "Lcom/nostra13/universalimageloader/core/ImageLoader;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p5, "group":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p6, "child":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/shishicai/app/utils/TreeViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/shishicai/app/utils/TreeViewAdapter;->inflater1:Landroid/view/LayoutInflater;

    .line 35
    iput-object p2, p0, Lcom/shishicai/app/utils/TreeViewAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 36
    iput-object p3, p0, Lcom/shishicai/app/utils/TreeViewAdapter;->animateFirstListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .line 37
    iput-object p4, p0, Lcom/shishicai/app/utils/TreeViewAdapter;->uniLoad:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 38
    iput-object p5, p0, Lcom/shishicai/app/utils/TreeViewAdapter;->group:Ljava/util/List;

    .line 39
    iput-object p6, p0, Lcom/shishicai/app/utils/TreeViewAdapter;->child:Ljava/util/List;

    .line 40
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/shishicai/app/utils/TreeViewAdapter;->child:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 52
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isExpanded"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 60
    iget-object v2, p0, Lcom/shishicai/app/utils/TreeViewAdapter;->inflater1:Landroid/view/LayoutInflater;

    const v3, 0x7f030027

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "childView":Landroid/view/View;
    const v2, 0x7f090087

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 62
    .local v1, "textview":Landroid/widget/TextView;
    invoke-virtual {p0, p1, p2}, Lcom/shishicai/app/utils/TreeViewAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/shishicai/app/utils/TreeViewAdapter;->child:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/shishicai/app/utils/TreeViewAdapter;->group:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "imageurl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/shishicai/app/utils/TreeViewAdapter;->child:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 86
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 94
    iget-object v3, p0, Lcom/shishicai/app/utils/TreeViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030028

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 95
    .local v1, "parentView":Landroid/view/View;
    const v3, 0x7f090088

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 96
    .local v0, "icon":Landroid/widget/ImageView;
    const v3, 0x7f090089

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 97
    .local v2, "title":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/shishicai/app/utils/TreeViewAdapter;->uniLoad:Lcom/nostra13/universalimageloader/core/ImageLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/shishicai/app/Constant;->URLDomain:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/shishicai/app/utils/TreeViewAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/shishicai/app/utils/TreeViewAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    iget-object v6, p0, Lcom/shishicai/app/utils/TreeViewAdapter;->animateFirstListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 99
    iget-object v3, p0, Lcom/shishicai/app/utils/TreeViewAdapter;->group:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "name"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    return-object v1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method
