.class public Lcom/shishicai/app/activity/ChartActivity;
.super Lcom/shishicai/app/utils/Base2Activity;
.source "ChartActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private array:[Ljava/lang/String;

.field private classLl:Landroid/widget/LinearLayout;

.field private data:Ljava/util/List;
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

.field private index:I

.field private intent:Landroid/content/Intent;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shishicai/app/domain/TrendChartInfo$ItemsBean;",
            ">;"
        }
    .end annotation
.end field

.field private mChart:Lcom/github/mikephil/charting/charts/LineChart;

.field private mTimes:[Ljava/lang/String;

.field private month:Ljava/util/List;
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

.field private months:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tab_1:Landroid/widget/LinearLayout;

.field private tab_10:Landroid/widget/LinearLayout;

.field private tab_2:Landroid/widget/LinearLayout;

.field private tab_3:Landroid/widget/LinearLayout;

.field private tab_4:Landroid/widget/LinearLayout;

.field private tab_5:Landroid/widget/LinearLayout;

.field private tab_6:Landroid/widget/LinearLayout;

.field private tab_7:Landroid/widget/LinearLayout;

.field private tab_8:Landroid/widget/LinearLayout;

.field private tab_9:Landroid/widget/LinearLayout;

.field private title:Landroid/widget/TextView;

.field private titleString:Ljava/lang/String;

.field private titleimgLeft:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/shishicai/app/utils/Base2Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/activity/ChartActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/ChartActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/shishicai/app/activity/ChartActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/ChartActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shishicai/app/activity/ChartActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/ChartActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shishicai/app/activity/ChartActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/ChartActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/shishicai/app/activity/ChartActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/ChartActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->mTimes:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/shishicai/app/activity/ChartActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/ChartActivity;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/shishicai/app/activity/ChartActivity;->mTimes:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/shishicai/app/activity/ChartActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/activity/ChartActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->array:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/shishicai/app/activity/ChartActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/ChartActivity;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/shishicai/app/activity/ChartActivity;->array:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/shishicai/app/activity/ChartActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/activity/ChartActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/shishicai/app/activity/ChartActivity;->initData()V

    return-void
.end method

.method private gainData()V
    .locals 4

    .prologue
    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/shishicai/app/Constant;->TREND_CHART:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?version=3000&ball="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/shishicai/app/activity/ChartActivity;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/shishicai/app/activity/ChartActivity;->TAG:Ljava/lang/String;

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

    .line 383
    new-instance v1, Lcom/shishicai/app/activity/ChartActivity$1;

    invoke-direct {v1, p0}, Lcom/shishicai/app/activity/ChartActivity$1;-><init>(Lcom/shishicai/app/activity/ChartActivity;)V

    invoke-static {v0, v1}, Lcom/shishicai/app/service/HttpUser;->get(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 421
    return-void
.end method

.method private generateLineData()Lcom/github/mikephil/charting/data/LineDataSet;
    .locals 7

    .prologue
    const/16 v6, 0x28

    .line 356
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/Entry;>;"
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->data:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 359
    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->data:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 360
    .local v0, "cdata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lcom/github/mikephil/charting/data/Entry;

    const-string v4, "learnCount"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v5, v4, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 363
    .end local v0    # "cdata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v3, Lcom/github/mikephil/charting/data/LineDataSet;

    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->titleString:Ljava/lang/String;

    invoke-direct {v3, v1, v4}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 365
    .local v3, "set":Lcom/github/mikephil/charting/data/LineDataSet;
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 366
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 367
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColor(I)V

    .line 368
    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleSize(F)V

    .line 369
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillColor(I)V

    .line 372
    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueTextSize(F)V

    .line 373
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueTextColor(I)V

    .line 374
    sget-object v4, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 375
    return-object v3
.end method

.method private initData()V
    .locals 8

    .prologue
    .line 317
    iget-object v6, p0, Lcom/shishicai/app/activity/ChartActivity;->month:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 319
    iget-object v6, p0, Lcom/shishicai/app/activity/ChartActivity;->month:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 321
    :cond_0
    iget-object v6, p0, Lcom/shishicai/app/activity/ChartActivity;->months:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 323
    iget-object v6, p0, Lcom/shishicai/app/activity/ChartActivity;->months:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 325
    :cond_1
    iget-object v6, p0, Lcom/shishicai/app/activity/ChartActivity;->data:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 327
    iget-object v6, p0, Lcom/shishicai/app/activity/ChartActivity;->data:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 329
    :cond_2
    const/4 v5, 0x0

    .line 330
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/shishicai/app/activity/ChartActivity;->mTimes:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_3

    .line 331
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 332
    .restart local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "addDay"

    iget-object v7, p0, Lcom/shishicai/app/activity/ChartActivity;->mTimes:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v6, p0, Lcom/shishicai/app/activity/ChartActivity;->month:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 336
    :cond_3
    const/4 v1, 0x0

    .line 337
    .local v1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lcom/shishicai/app/activity/ChartActivity;->array:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_4

    .line 338
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 339
    .restart local v1    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "learnCount"

    iget-object v7, p0, Lcom/shishicai/app/activity/ChartActivity;->array:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v6, p0, Lcom/shishicai/app/activity/ChartActivity;->data:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 344
    :cond_4
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_2
    iget-object v6, p0, Lcom/shishicai/app/activity/ChartActivity;->month:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 345
    iget-object v6, p0, Lcom/shishicai/app/activity/ChartActivity;->month:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 347
    .local v0, "cdata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/shishicai/app/activity/ChartActivity;->months:Ljava/util/List;

    const-string v7, "addDay"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 349
    .end local v0    # "cdata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    new-instance v4, Lcom/github/mikephil/charting/data/LineData;

    iget-object v6, p0, Lcom/shishicai/app/activity/ChartActivity;->months:Ljava/util/List;

    invoke-direct {p0}, Lcom/shishicai/app/activity/ChartActivity;->generateLineData()Lcom/github/mikephil/charting/data/LineDataSet;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/github/mikephil/charting/data/LineData;-><init>(Ljava/util/List;Lcom/github/mikephil/charting/data/LineDataSet;)V

    .line 350
    .local v4, "lineData":Lcom/github/mikephil/charting/data/LineData;
    iget-object v6, p0, Lcom/shishicai/app/activity/ChartActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v6, v4}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 351
    iget-object v6, p0, Lcom/shishicai/app/activity/ChartActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    .line 352
    iget-object v6, p0, Lcom/shishicai/app/activity/ChartActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/charts/LineChart;->setVisibleXRange(F)V

    .line 353
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 314
    :goto_0
    return-void

    .line 131
    :sswitch_0
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 132
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 133
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 134
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 135
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 136
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_6:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 137
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_7:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 138
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_8:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 139
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_9:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 140
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_10:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 141
    iput v1, p0, Lcom/shishicai/app/activity/ChartActivity;->index:I

    .line 142
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/shishicai/app/activity/ChartActivity;->gainData()V

    goto :goto_0

    .line 149
    :sswitch_1
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 150
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 151
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 152
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 153
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 154
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_6:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 155
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_7:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 156
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_8:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 157
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_9:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 158
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_10:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 159
    iput v2, p0, Lcom/shishicai/app/activity/ChartActivity;->index:I

    .line 160
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 164
    :cond_1
    invoke-direct {p0}, Lcom/shishicai/app/activity/ChartActivity;->gainData()V

    goto/16 :goto_0

    .line 167
    :sswitch_2
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 168
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 169
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 170
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 171
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 172
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_6:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 173
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_7:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 174
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_8:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 175
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_9:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 176
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_10:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 177
    const/4 v0, 0x2

    iput v0, p0, Lcom/shishicai/app/activity/ChartActivity;->index:I

    .line 178
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 182
    :cond_2
    invoke-direct {p0}, Lcom/shishicai/app/activity/ChartActivity;->gainData()V

    goto/16 :goto_0

    .line 185
    :sswitch_3
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 186
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 187
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 188
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 189
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 190
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_6:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 191
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_7:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 192
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_8:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 193
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_9:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 194
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_10:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 195
    const/4 v0, 0x3

    iput v0, p0, Lcom/shishicai/app/activity/ChartActivity;->index:I

    .line 196
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 198
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 200
    :cond_3
    invoke-direct {p0}, Lcom/shishicai/app/activity/ChartActivity;->gainData()V

    goto/16 :goto_0

    .line 203
    :sswitch_4
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 204
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 205
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 206
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 207
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 208
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_6:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 209
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_7:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 210
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_8:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 211
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_9:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 212
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_10:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 213
    const/4 v0, 0x4

    iput v0, p0, Lcom/shishicai/app/activity/ChartActivity;->index:I

    .line 214
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 216
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 218
    :cond_4
    invoke-direct {p0}, Lcom/shishicai/app/activity/ChartActivity;->gainData()V

    goto/16 :goto_0

    .line 221
    :sswitch_5
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_6:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 222
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 223
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 224
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 225
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 226
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 227
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_7:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 228
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_8:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 229
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_9:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 230
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_10:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 231
    const/4 v0, 0x5

    iput v0, p0, Lcom/shishicai/app/activity/ChartActivity;->index:I

    .line 232
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 234
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 236
    :cond_5
    invoke-direct {p0}, Lcom/shishicai/app/activity/ChartActivity;->gainData()V

    goto/16 :goto_0

    .line 239
    :sswitch_6
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_7:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 240
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 241
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 242
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 243
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 244
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_6:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 245
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 246
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_8:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 247
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_9:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 248
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_10:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 249
    const/4 v0, 0x6

    iput v0, p0, Lcom/shishicai/app/activity/ChartActivity;->index:I

    .line 250
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 252
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 254
    :cond_6
    invoke-direct {p0}, Lcom/shishicai/app/activity/ChartActivity;->gainData()V

    goto/16 :goto_0

    .line 257
    :sswitch_7
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_8:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 258
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 259
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 260
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 261
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 262
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_6:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 263
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_7:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 264
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 265
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_9:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 266
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_10:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 267
    const/4 v0, 0x7

    iput v0, p0, Lcom/shishicai/app/activity/ChartActivity;->index:I

    .line 268
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 270
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 272
    :cond_7
    invoke-direct {p0}, Lcom/shishicai/app/activity/ChartActivity;->gainData()V

    goto/16 :goto_0

    .line 275
    :sswitch_8
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_9:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 276
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 277
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 278
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 279
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 280
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_6:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 281
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_7:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 282
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_8:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 283
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 284
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_10:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 285
    const/16 v0, 0x8

    iput v0, p0, Lcom/shishicai/app/activity/ChartActivity;->index:I

    .line 286
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 288
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 290
    :cond_8
    invoke-direct {p0}, Lcom/shishicai/app/activity/ChartActivity;->gainData()V

    goto/16 :goto_0

    .line 293
    :sswitch_9
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_10:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 294
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 295
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 296
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 297
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 298
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_6:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 299
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_7:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 300
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_8:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 301
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_9:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 302
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 303
    const/16 v0, 0x9

    iput v0, p0, Lcom/shishicai/app/activity/ChartActivity;->index:I

    .line 304
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 306
    iget-object v0, p0, Lcom/shishicai/app/activity/ChartActivity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 308
    :cond_9
    invoke-direct {p0}, Lcom/shishicai/app/activity/ChartActivity;->gainData()V

    goto/16 :goto_0

    .line 311
    :sswitch_a
    invoke-virtual {p0}, Lcom/shishicai/app/activity/ChartActivity;->finish()V

    goto/16 :goto_0

    .line 128
    :sswitch_data_0
    .sparse-switch
        0x7f090014 -> :sswitch_0
        0x7f090015 -> :sswitch_1
        0x7f090016 -> :sswitch_2
        0x7f090017 -> :sswitch_3
        0x7f090018 -> :sswitch_4
        0x7f090019 -> :sswitch_5
        0x7f09001a -> :sswitch_6
        0x7f09001b -> :sswitch_7
        0x7f09001c -> :sswitch_8
        0x7f09001d -> :sswitch_9
        0x7f0900f0 -> :sswitch_a
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 59
    invoke-super {p0, p1}, Lcom/shishicai/app/utils/Base2Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v4, 0x7f030002

    invoke-virtual {p0, v4}, Lcom/shishicai/app/activity/ChartActivity;->setContentView(I)V

    .line 61
    const-string v4, "ChartActivity"

    iput-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->TAG:Ljava/lang/String;

    .line 62
    const v4, 0x7f0900f1

    invoke-virtual {p0, v4}, Lcom/shishicai/app/activity/ChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->title:Landroid/widget/TextView;

    .line 63
    const v4, 0x7f0900f0

    invoke-virtual {p0, v4}, Lcom/shishicai/app/activity/ChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->titleimgLeft:Landroid/widget/ImageView;

    .line 64
    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->titleimgLeft:Landroid/widget/ImageView;

    const v5, 0x7f020110

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->titleimgLeft:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v4, 0x7f090013

    invoke-virtual {p0, v4}, Lcom/shishicai/app/activity/ChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->classLl:Landroid/widget/LinearLayout;

    .line 67
    const v4, 0x7f09001e

    invoke-virtual {p0, v4}, Lcom/shishicai/app/activity/ChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/charts/LineChart;

    iput-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 68
    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/charts/LineChart;->setDescription(Ljava/lang/String;)V

    .line 70
    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/charts/LineChart;->setBackgroundColor(I)V

    .line 71
    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v4, v7}, Lcom/github/mikephil/charting/charts/LineChart;->setDrawGridBackground(Z)V

    .line 72
    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/charts/LineChart;->setMaxVisibleValueCount(I)V

    .line 73
    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 75
    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    .line 76
    .local v2, "rightAxis":Lcom/github/mikephil/charting/components/YAxis;
    invoke-virtual {v2, v6}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 78
    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    .line 79
    .local v1, "leftAxis":Lcom/github/mikephil/charting/components/YAxis;
    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 81
    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v3

    .line 82
    .local v3, "xAxis":Lcom/github/mikephil/charting/components/XAxis;
    sget-object v4, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 83
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->months:Ljava/util/List;

    .line 84
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->month:Ljava/util/List;

    .line 85
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->data:Ljava/util/List;

    .line 87
    invoke-virtual {p0}, Lcom/shishicai/app/activity/ChartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->intent:Landroid/content/Intent;

    .line 88
    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->intent:Landroid/content/Intent;

    const-string v5, "title"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->classLl:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 91
    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->intent:Landroid/content/Intent;

    const-string v5, "title"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->titleString:Ljava/lang/String;

    .line 92
    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 93
    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "array"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->array:[Ljava/lang/String;

    .line 94
    const-string v4, "time"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->mTimes:[Ljava/lang/String;

    .line 95
    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->title:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/shishicai/app/activity/ChartActivity;->titleString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-direct {p0}, Lcom/shishicai/app/activity/ChartActivity;->initData()V

    .line 124
    .end local v0    # "b":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->title:Landroid/widget/TextView;

    const-string v5, "\u8d70\u52bf\u56fe"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->classLl:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    const v4, 0x7f090014

    invoke-virtual {p0, v4}, Lcom/shishicai/app/activity/ChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_1:Landroid/widget/LinearLayout;

    .line 101
    const v4, 0x7f090015

    invoke-virtual {p0, v4}, Lcom/shishicai/app/activity/ChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_2:Landroid/widget/LinearLayout;

    .line 102
    const v4, 0x7f090016

    invoke-virtual {p0, v4}, Lcom/shishicai/app/activity/ChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_3:Landroid/widget/LinearLayout;

    .line 103
    const v4, 0x7f090017

    invoke-virtual {p0, v4}, Lcom/shishicai/app/activity/ChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_4:Landroid/widget/LinearLayout;

    .line 104
    const v4, 0x7f090018

    invoke-virtual {p0, v4}, Lcom/shishicai/app/activity/ChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_5:Landroid/widget/LinearLayout;

    .line 105
    const v4, 0x7f090019

    invoke-virtual {p0, v4}, Lcom/shishicai/app/activity/ChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_6:Landroid/widget/LinearLayout;

    .line 106
    const v4, 0x7f09001a

    invoke-virtual {p0, v4}, Lcom/shishicai/app/activity/ChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_7:Landroid/widget/LinearLayout;

    .line 107
    const v4, 0x7f09001b

    invoke-virtual {p0, v4}, Lcom/shishicai/app/activity/ChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_8:Landroid/widget/LinearLayout;

    .line 108
    const v4, 0x7f09001c

    invoke-virtual {p0, v4}, Lcom/shishicai/app/activity/ChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_9:Landroid/widget/LinearLayout;

    .line 109
    const v4, 0x7f09001d

    invoke-virtual {p0, v4}, Lcom/shishicai/app/activity/ChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_10:Landroid/widget/LinearLayout;

    .line 110
    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_3:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_4:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_5:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_6:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_7:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_8:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_9:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_10:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->list:Ljava/util/List;

    .line 121
    iget-object v4, p0, Lcom/shishicai/app/activity/ChartActivity;->tab_1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 122
    invoke-direct {p0}, Lcom/shishicai/app/activity/ChartActivity;->gainData()V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 426
    invoke-super {p0}, Lcom/shishicai/app/utils/Base2Activity;->onDestroy()V

    .line 427
    invoke-static {p0}, Lcom/shishicai/app/service/HttpUser;->cancel(Landroid/content/Context;)V

    .line 428
    return-void
.end method
