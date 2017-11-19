.class public abstract Lcom/github/mikephil/charting/data/ChartData;
.super Ljava/lang/Object;
.source "ChartData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/DataSet",
        "<+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mDataSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mLeftAxisMax:F

.field protected mLeftAxisMin:F

.field protected mRightAxisMax:F

.field protected mRightAxisMin:F

.field private mXValAverageLength:F

.field protected mXVals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mYMax:F

.field protected mYMin:F

.field private mYValCount:I

.field private mYValueSum:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 27
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 29
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 31
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 33
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 35
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 38
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 47
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "xVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 27
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 29
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 31
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 33
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 35
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 38
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 47
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    .line 67
    iput-object p1, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    .line 69
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/ChartData;->init(Ljava/util/List;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "xVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sets":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 27
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 29
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 31
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 33
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 35
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 38
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 47
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    .line 93
    iput-object p1, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    .line 94
    iput-object p2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    .line 96
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/ChartData;->init(Ljava/util/List;)V

    .line 97
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 2
    .param p1, "xVals"    # [Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 27
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 29
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 31
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 33
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 35
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 38
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 47
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    .line 79
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/data/ChartData;->arrayToList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    .line 81
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/ChartData;->init(Ljava/util/List;)V

    .line 82
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "xVals"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p2, "sets":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 27
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 29
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 31
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 33
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 35
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 38
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 47
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    .line 108
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/data/ChartData;->arrayToList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    .line 109
    iput-object p2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    .line 111
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/ChartData;->init(Ljava/util/List;)V

    .line 112
    return-void
.end method

.method private arrayToList([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "array"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private calcXValAverageLength()V
    .locals 3

    .prologue
    .line 144
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 145
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    .line 156
    :goto_0
    return-void

    .line 149
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 151
    .local v1, "sum":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    goto :goto_0

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static generateXVals(II)Ljava/util/List;
    .locals 3
    .param p0, "from"    # I
    .param p1, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 821
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 823
    .local v1, "xvals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v0, p0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 827
    return-object v1

    .line 824
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private handleEmptyAxis(Lcom/github/mikephil/charting/data/DataSet;Lcom/github/mikephil/charting/data/DataSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 573
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "firstLeft":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    .local p2, "firstRight":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    if-nez p1, :cond_1

    .line 574
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 575
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    if-nez p2, :cond_0

    .line 577
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 578
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    goto :goto_0
.end method

.method private isLegal(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/github/mikephil/charting/data/DataSet",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "dataSets":Ljava/util/List;, "Ljava/util/List<+Lcom/github/mikephil/charting/data/DataSet<*>;>;"
    if-nez p1, :cond_1

    .line 177
    :cond_0
    return-void

    .line 169
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 170
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/DataSet;

    .line 171
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/DataSet;->getYVals()Ljava/util/List;

    move-result-object v1

    .line 172
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 173
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 174
    const-string v2, "One or more of the DataSet Entry arrays are longer than the x-values array of this ChartData object."

    .line 173
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addDataSet(Lcom/github/mikephil/charting/data/DataSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 519
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "d":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    if-nez p1, :cond_0

    .line 562
    :goto_0
    return-void

    .line 522
    :cond_0
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getEntryCount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 523
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYValueSum()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    .line 525
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 527
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 528
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 530
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v0, v1, :cond_2

    .line 532
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 533
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 559
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->getFirstLeft()Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->getFirstRight()Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/github/mikephil/charting/data/ChartData;->handleEmptyAxis(Lcom/github/mikephil/charting/data/DataSet;Lcom/github/mikephil/charting/data/DataSet;)V

    goto :goto_0

    .line 535
    :cond_2
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 536
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    goto :goto_1

    .line 540
    :cond_3
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 541
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 542
    :cond_4
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 543
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 545
    :cond_5
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v0, v1, :cond_7

    .line 547
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 548
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 549
    :cond_6
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 550
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    goto :goto_1

    .line 552
    :cond_7
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    .line 553
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 554
    :cond_8
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 555
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    goto/16 :goto_1
.end method

.method public addEntry(Lcom/github/mikephil/charting/data/Entry;I)V
    .locals 4
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "dataSetIndex"    # I

    .prologue
    .line 633
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p2, :cond_7

    if-ltz p2, :cond_7

    .line 635
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v1

    .line 637
    .local v1, "val":F
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 638
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    add-float/2addr v2, v1

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    .line 640
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_0

    .line 641
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 642
    :cond_0
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_1

    .line 643
    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 645
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    .line 647
    .local v0, "set":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    if-eqz v0, :cond_4

    .line 649
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v2, v3, :cond_5

    .line 651
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 652
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 653
    :cond_2
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 654
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 662
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->getFirstLeft()Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->getFirstRight()Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/github/mikephil/charting/data/ChartData;->handleEmptyAxis(Lcom/github/mikephil/charting/data/DataSet;Lcom/github/mikephil/charting/data/DataSet;)V

    .line 665
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/DataSet;->addEntry(Lcom/github/mikephil/charting/data/Entry;)V

    .line 670
    .end local v0    # "set":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    .end local v1    # "val":F
    :cond_4
    :goto_1
    return-void

    .line 656
    .restart local v0    # "set":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    .restart local v1    # "val":F
    :cond_5
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 657
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 658
    :cond_6
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 659
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    goto :goto_0

    .line 668
    .end local v0    # "set":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    .end local v1    # "val":F
    :cond_7
    const-string v2, "addEntry"

    const-string v3, "Cannot add Entry because dataSetIndex too high or too low."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public addXValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "xVal"    # Ljava/lang/String;

    .prologue
    .line 393
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    .line 394
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    return-void
.end method

.method protected calcMinMax(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/github/mikephil/charting/data/DataSet",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "dataSets":Ljava/util/List;, "Ljava/util/List<+Lcom/github/mikephil/charting/data/DataSet<*>;>;"
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 192
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 194
    :cond_0
    iput v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 195
    iput v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 251
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 200
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 202
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_6

    .line 211
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->getFirstLeft()Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v1

    .line 213
    .local v1, "firstLeft":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    if-eqz v1, :cond_3

    .line 215
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 216
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 218
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_9

    .line 230
    :cond_3
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->getFirstRight()Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v2

    .line 232
    .local v2, "firstRight":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    if-eqz v2, :cond_5

    .line 234
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    .line 235
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 237
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_b

    .line 249
    :cond_5
    invoke-direct {p0, v1, v2}, Lcom/github/mikephil/charting/data/ChartData;->handleEmptyAxis(Lcom/github/mikephil/charting/data/DataSet;Lcom/github/mikephil/charting/data/DataSet;)V

    goto :goto_0

    .line 203
    .end local v1    # "firstLeft":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    .end local v2    # "firstRight":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    :cond_6
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v4

    iget v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7

    .line 204
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    .line 206
    :cond_7
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v4

    iget v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_8

    .line 207
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v4

    iput v4, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    .line 202
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 218
    .restart local v1    # "firstLeft":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    .line 219
    .local v0, "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v5

    sget-object v6, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v5, v6, :cond_2

    .line 220
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v5

    iget v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_a

    .line 221
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 223
    :cond_a
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v5

    iget v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 224
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    goto/16 :goto_2

    .line 237
    .end local v0    # "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    .restart local v2    # "firstRight":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    .line 238
    .restart local v0    # "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v5

    sget-object v6, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v5, v6, :cond_4

    .line 239
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v5

    iget v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_c

    .line 240
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getYMin()F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    .line 242
    :cond_c
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v5

    iget v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 243
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getYMax()F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    goto/16 :goto_3
.end method

.method protected calcYValueCount(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/github/mikephil/charting/data/DataSet",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "dataSets":Ljava/util/List;, "Ljava/util/List<+Lcom/github/mikephil/charting/data/DataSet<*>;>;"
    const/4 v2, 0x0

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 278
    if-nez p1, :cond_0

    .line 288
    :goto_0
    return-void

    .line 281
    :cond_0
    const/4 v0, 0x0

    .line 283
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 287
    iput v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    goto :goto_0

    .line 284
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/DataSet;->getEntryCount()I

    move-result v2

    add-int/2addr v0, v2

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected calcYValueSum(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/github/mikephil/charting/data/DataSet",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "dataSets":Ljava/util/List;, "Ljava/util/List<+Lcom/github/mikephil/charting/data/DataSet<*>;>;"
    const/4 v1, 0x0

    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    .line 260
    if-nez p1, :cond_1

    .line 266
    :cond_0
    return-void

    .line 263
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 264
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/DataSet;->getYValueSum()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clearValues()V
    .locals 1

    .prologue
    .line 898
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 899
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/ChartData;->notifyDataChanged()V

    .line 900
    return-void
.end method

.method public contains(Lcom/github/mikephil/charting/data/DataSet;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 929
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 934
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 929
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    .line 930
    .local v0, "set":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 931
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public contains(Lcom/github/mikephil/charting/data/Entry;)Z
    .locals 3
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;

    .prologue
    .line 912
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 917
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 912
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    .line 913
    .local v0, "set":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/DataSet;->contains(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 914
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getColors()[I
    .locals 8

    .prologue
    .line 753
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    if-nez v6, :cond_1

    .line 754
    const/4 v4, 0x0

    .line 775
    :cond_0
    return-object v4

    .line 756
    :cond_1
    const/4 v1, 0x0

    .line 758
    .local v1, "clrcnt":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_2

    .line 762
    new-array v4, v1, [I

    .line 763
    .local v4, "colors":[I
    const/4 v3, 0x0

    .line 765
    .local v3, "cnt":I
    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 767
    iget-object v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/DataSet;->getColors()Ljava/util/List;

    move-result-object v2

    .line 769
    .local v2, "clrs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 765
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 759
    .end local v2    # "clrs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "cnt":I
    .end local v4    # "colors":[I
    :cond_2
    iget-object v6, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/DataSet;->getColors()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v1, v6

    .line 758
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 769
    .restart local v2    # "clrs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v3    # "cnt":I
    .restart local v4    # "colors":[I
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 770
    .local v0, "clr":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v4, v3

    .line 771
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 506
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 507
    :cond_0
    const/4 v0, 0x0

    .line 509
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    goto :goto_0
.end method

.method public getDataSetByLabel(Ljava/lang/String;Z)Lcom/github/mikephil/charting/data/DataSet;
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "ignorecase"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 490
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-virtual {p0, v1, p1, p2}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetIndexByLabel(Ljava/util/List;Ljava/lang/String;Z)I

    move-result v0

    .line 492
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 493
    :cond_0
    const/4 v1, 0x0

    .line 495
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/DataSet;

    goto :goto_0
.end method

.method public getDataSetCount()I
    .locals 1

    .prologue
    .line 298
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    if-nez v0, :cond_0

    .line 299
    const/4 v0, 0x0

    .line 300
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDataSetForEntry(Lcom/github/mikephil/charting/data/Entry;)Lcom/github/mikephil/charting/data/DataSet;
    .locals 5
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/data/Entry;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    const/4 v3, 0x0

    .line 729
    if-nez p1, :cond_1

    move-object v2, v3

    .line 742
    :cond_0
    :goto_0
    return-object v2

    .line 732
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_2

    move-object v2, v3

    .line 742
    goto :goto_0

    .line 734
    :cond_2
    iget-object v4, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/DataSet;

    .line 736
    .local v2, "set":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/DataSet;->getEntryCount()I

    move-result v4

    if-lt v1, v4, :cond_3

    .line 732
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 737
    :cond_3
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/github/mikephil/charting/data/Entry;->equalTo(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 736
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method protected getDataSetIndexByLabel(Ljava/util/List;Ljava/lang/String;Z)I
    .locals 2
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "ignorecase"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 429
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "dataSets":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p3, :cond_3

    .line 430
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 439
    :cond_0
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 431
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/DataSet;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    .line 432
    goto :goto_1

    .line 430
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 435
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/DataSet;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v0

    .line 436
    goto :goto_1

    .line 434
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected getDataSetLabels()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 459
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 461
    .local v1, "types":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 465
    return-object v1

    .line 462
    :cond_0
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/DataSet;->getLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 461
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDataSets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 412
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    return-object v0
.end method

.method public getEntryForHighlight(Lcom/github/mikephil/charting/utils/Highlight;)Lcom/github/mikephil/charting/data/Entry;
    .locals 2
    .param p1, "highlight"    # Lcom/github/mikephil/charting/utils/Highlight;

    .prologue
    .line 475
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/utils/Highlight;->getDataSetIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    .line 476
    invoke-virtual {p1}, Lcom/github/mikephil/charting/utils/Highlight;->getXIndex()I

    move-result v1

    .line 475
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    return-object v0
.end method

.method public getFirstLeft()Lcom/github/mikephil/charting/data/DataSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 796
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 801
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 796
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    .line 797
    .local v0, "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v2, v3, :cond_0

    goto :goto_0
.end method

.method public getFirstRight()Lcom/github/mikephil/charting/data/DataSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 805
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 810
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 805
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    .line 806
    .local v0, "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne v2, v3, :cond_0

    goto :goto_0
.end method

.method public getIndexOfDataSet(Lcom/github/mikephil/charting/data/DataSet;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 787
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 792
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 788
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 787
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getXValAverageLength()F
    .locals 1

    .prologue
    .line 354
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXValAverageLength:F

    return v0
.end method

.method public getXValCount()I
    .locals 1

    .prologue
    .line 449
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getXVals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    return-object v0
.end method

.method public getYMax()F
    .locals 1

    .prologue
    .line 331
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMax:F

    return v0
.end method

.method public getYMax(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F
    .locals 1
    .param p1, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    .line 341
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne p1, v0, :cond_0

    .line 342
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMax:F

    .line 344
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMax:F

    goto :goto_0
.end method

.method public getYMin()F
    .locals 1

    .prologue
    .line 309
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYMin:F

    return v0
.end method

.method public getYMin(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F
    .locals 1
    .param p1, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    .line 319
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne p1, v0, :cond_0

    .line 320
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mLeftAxisMin:F

    .line 322
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mRightAxisMin:F

    goto :goto_0
.end method

.method public getYValCount()I
    .locals 1

    .prologue
    .line 374
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    return v0
.end method

.method public getYValueSum()F
    .locals 1

    .prologue
    .line 364
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    return v0
.end method

.method protected init(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/github/mikephil/charting/data/DataSet",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "dataSets":Ljava/util/List;, "Ljava/util/List<+Lcom/github/mikephil/charting/data/DataSet<*>;>;"
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/data/ChartData;->isLegal(Ljava/util/List;)V

    .line 132
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/ChartData;->calcMinMax(Ljava/util/List;)V

    .line 133
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/ChartData;->calcYValueSum(Ljava/util/List;)V

    .line 134
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/ChartData;->calcYValueCount(Ljava/util/List;)V

    .line 136
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/ChartData;->calcXValAverageLength()V

    .line 137
    return-void
.end method

.method public notifyDataChanged()V
    .locals 1

    .prologue
    .line 184
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/ChartData;->init(Ljava/util/List;)V

    .line 185
    return-void
.end method

.method public removeDataSet(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 617
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 618
    :cond_0
    const/4 v1, 0x0

    .line 621
    :goto_0
    return v1

    .line 620
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    .line 621
    .local v0, "set":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/ChartData;->removeDataSet(Lcom/github/mikephil/charting/data/DataSet;)Z

    move-result v1

    goto :goto_0
.end method

.method public removeDataSet(Lcom/github/mikephil/charting/data/DataSet;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 591
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    .local p1, "d":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    if-nez p1, :cond_1

    .line 592
    const/4 v0, 0x0

    .line 605
    :cond_0
    :goto_0
    return v0

    .line 594
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 597
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    .line 599
    iget v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getEntryCount()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 600
    iget v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/DataSet;->getYValueSum()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    .line 602
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/data/ChartData;->calcMinMax(Ljava/util/List;)V

    goto :goto_0
.end method

.method public removeEntry(II)Z
    .locals 3
    .param p1, "xIndex"    # I
    .param p2, "dataSetIndex"    # I

    .prologue
    .line 711
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p2, v2, :cond_0

    .line 712
    const/4 v2, 0x0

    .line 717
    :goto_0
    return v2

    .line 714
    :cond_0
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    .line 715
    .local v0, "dataSet":Lcom/github/mikephil/charting/data/DataSet;, "TT;"
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    .line 717
    .local v1, "e":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {p0, v1, p2}, Lcom/github/mikephil/charting/data/ChartData;->removeEntry(Lcom/github/mikephil/charting/data/Entry;I)Z

    move-result v2

    goto :goto_0
.end method

.method public removeEntry(Lcom/github/mikephil/charting/data/Entry;I)Z
    .locals 4
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "dataSetIndex"    # I

    .prologue
    .line 681
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p2, v2, :cond_2

    .line 682
    :cond_0
    const/4 v0, 0x0

    .line 697
    :cond_1
    :goto_0
    return v0

    .line 685
    :cond_2
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/DataSet;->removeEntry(I)Z

    move-result v0

    .line 687
    .local v0, "removed":Z
    if-eqz v0, :cond_1

    .line 689
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v1

    .line 691
    .local v1, "val":F
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValCount:I

    .line 692
    iget v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    sub-float/2addr v2, v1

    iput v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mYValueSum:F

    .line 694
    iget-object v2, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/github/mikephil/charting/data/ChartData;->calcMinMax(Ljava/util/List;)V

    goto :goto_0
.end method

.method public removeXValue(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 403
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ChartData;->mXVals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 404
    return-void
.end method

.method public setDrawValues(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 888
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 891
    return-void

    .line 888
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    .line 889
    .local v0, "set":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/DataSet;->setDrawValues(Z)V

    goto :goto_0
.end method

.method public setValueFormatter(Lcom/github/mikephil/charting/utils/ValueFormatter;)V
    .locals 3
    .param p1, "f"    # Lcom/github/mikephil/charting/utils/ValueFormatter;

    .prologue
    .line 836
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    if-nez p1, :cond_1

    .line 843
    :cond_0
    return-void

    .line 839
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    .line 840
    .local v0, "set":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/DataSet;->setValueFormatter(Lcom/github/mikephil/charting/utils/ValueFormatter;)V

    goto :goto_0
.end method

.method public setValueTextColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 852
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 855
    return-void

    .line 852
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    .line 853
    .local v0, "set":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/DataSet;->setValueTextColor(I)V

    goto :goto_0
.end method

.method public setValueTextSize(F)V
    .locals 3
    .param p1, "size"    # F

    .prologue
    .line 876
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 879
    return-void

    .line 876
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    .line 877
    .local v0, "set":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/DataSet;->setValueTextSize(F)V

    goto :goto_0
.end method

.method public setValueTypeface(Landroid/graphics/Typeface;)V
    .locals 3
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 864
    .local p0, "this":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/data/ChartData;->mDataSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 867
    return-void

    .line 864
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    .line 865
    .local v0, "set":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/DataSet;->setValueTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method
