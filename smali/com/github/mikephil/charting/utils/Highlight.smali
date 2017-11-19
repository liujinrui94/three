.class public Lcom/github/mikephil/charting/utils/Highlight;
.super Ljava/lang/Object;
.source "Highlight.java"


# instance fields
.field private mDataSetIndex:I

.field private mStackIndex:I

.field private mXIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "dataSet"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/mikephil/charting/utils/Highlight;->mStackIndex:I

    .line 28
    iput p1, p0, Lcom/github/mikephil/charting/utils/Highlight;->mXIndex:I

    .line 29
    iput p2, p0, Lcom/github/mikephil/charting/utils/Highlight;->mDataSetIndex:I

    .line 30
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "dataSet"    # I
    .param p3, "stackIndex"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/utils/Highlight;-><init>(II)V

    .line 43
    iput p3, p0, Lcom/github/mikephil/charting/utils/Highlight;->mStackIndex:I

    .line 44
    return-void
.end method


# virtual methods
.method public equalTo(Lcom/github/mikephil/charting/utils/Highlight;)Z
    .locals 3
    .param p1, "h"    # Lcom/github/mikephil/charting/utils/Highlight;

    .prologue
    const/4 v0, 0x0

    .line 83
    if-nez p1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    iget v1, p0, Lcom/github/mikephil/charting/utils/Highlight;->mDataSetIndex:I

    iget v2, p1, Lcom/github/mikephil/charting/utils/Highlight;->mDataSetIndex:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/github/mikephil/charting/utils/Highlight;->mXIndex:I

    iget v2, p1, Lcom/github/mikephil/charting/utils/Highlight;->mXIndex:I

    if-ne v1, v2, :cond_0

    .line 87
    iget v1, p0, Lcom/github/mikephil/charting/utils/Highlight;->mStackIndex:I

    iget v2, p1, Lcom/github/mikephil/charting/utils/Highlight;->mStackIndex:I

    if-ne v1, v2, :cond_0

    .line 88
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDataSetIndex()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/github/mikephil/charting/utils/Highlight;->mDataSetIndex:I

    return v0
.end method

.method public getStackIndex()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/github/mikephil/charting/utils/Highlight;->mStackIndex:I

    return v0
.end method

.method public getXIndex()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/github/mikephil/charting/utils/Highlight;->mXIndex:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Highlight, xIndex: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/github/mikephil/charting/utils/Highlight;->mXIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataSetIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/github/mikephil/charting/utils/Highlight;->mDataSetIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    const-string v1, ", stackIndex (only stacked barentry): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/github/mikephil/charting/utils/Highlight;->mStackIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
