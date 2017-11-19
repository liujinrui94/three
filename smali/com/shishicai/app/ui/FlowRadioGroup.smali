.class public Lcom/shishicai/app/ui/FlowRadioGroup;
.super Landroid/widget/RadioGroup;
.source "FlowRadioGroup.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/shishicai/app/ui/FlowRadioGroup;->getChildCount()I

    move-result v1

    .line 53
    .local v1, "childCount":I
    sub-int v4, p4, p2

    .line 54
    .local v4, "maxWidth":I
    const/4 v7, 0x0

    .line 55
    .local v7, "x":I
    const/4 v8, 0x0

    .line 56
    .local v8, "y":I
    const/4 v5, 0x0

    .line 57
    .local v5, "row":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 58
    invoke-virtual {p0, v3}, Lcom/shishicai/app/ui/FlowRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_1

    .line 60
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/lit8 v6, v9, 0x14

    .line 61
    .local v6, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/lit8 v2, v9, 0x14

    .line 62
    .local v2, "height":I
    add-int/2addr v7, v6

    .line 63
    mul-int v9, v5, v2

    add-int v8, v9, v2

    .line 64
    if-le v7, v4, :cond_0

    .line 65
    move v7, v6

    .line 66
    add-int/lit8 v5, v5, 0x1

    .line 67
    mul-int v9, v5, v2

    add-int v8, v9, v2

    .line 69
    :cond_0
    sub-int v9, v7, v6

    add-int/lit8 v9, v9, 0xa

    sub-int v10, v8, v2

    add-int/lit8 v10, v10, 0xa

    add-int/lit8 v11, v7, -0xa

    add-int/lit8 v12, v8, -0xa

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 57
    .end local v2    # "height":I
    .end local v6    # "width":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v11, 0x0

    .line 23
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 24
    .local v4, "maxWidth":I
    invoke-virtual {p0}, Lcom/shishicai/app/ui/FlowRadioGroup;->getChildCount()I

    move-result v1

    .line 25
    .local v1, "childCount":I
    const/4 v7, 0x0

    .line 26
    .local v7, "x":I
    const/4 v8, 0x0

    .line 27
    .local v8, "y":I
    const/4 v5, 0x0

    .line 29
    .local v5, "row":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 30
    invoke-virtual {p0, v3}, Lcom/shishicai/app/ui/FlowRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 31
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_0

    .line 32
    invoke-virtual {v0, v11, v11}, Landroid/view/View;->measure(II)V

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 35
    .local v6, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/lit8 v2, v9, 0x14

    .line 36
    .local v2, "height":I
    add-int/2addr v7, v6

    .line 37
    mul-int v9, v5, v2

    add-int v8, v9, v2

    .line 38
    if-le v7, v4, :cond_0

    .line 39
    move v7, v6

    .line 40
    add-int/lit8 v5, v5, 0x1

    .line 41
    mul-int v9, v5, v2

    add-int v8, v9, v2

    .line 29
    .end local v2    # "height":I
    .end local v6    # "width":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v4, v8}, Lcom/shishicai/app/ui/FlowRadioGroup;->setMeasuredDimension(II)V

    .line 48
    return-void
.end method
