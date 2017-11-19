.class public abstract Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;
.super Landroid/view/ViewGroup;
.source "TagViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/widget/Button;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MARGIN:I


# instance fields
.field private isRadio:Z

.field private onTagCheckedChangeListener:Lwang/yuchao/android/library/view/tagviewgroup/OnTagCheckedChangeListener;

.field private onTagClickListener:Lwang/yuchao/android/library/view/tagviewgroup/OnTagClickListener;

.field private singleLine:Z

.field private tagMarginBottom:F

.field private tagMarginLeft:F

.field private tagMarginRight:F

.field private tagMarginTop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    .local p0, "this":Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;, "Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup<TV;TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    .local p0, "this":Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;, "Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup<TV;TT;>;"
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1, p2}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->parseAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;)Lwang/yuchao/android/library/view/tagviewgroup/OnTagCheckedChangeListener;
    .locals 1
    .param p0, "x0"    # Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;

    .prologue
    .line 17
    iget-object v0, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->onTagCheckedChangeListener:Lwang/yuchao/android/library/view/tagviewgroup/OnTagCheckedChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;)Z
    .locals 1
    .param p0, "x0"    # Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;

    .prologue
    .line 17
    iget-boolean v0, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->isRadio:Z

    return v0
.end method

.method static synthetic access$200(Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;I)V
    .locals 0
    .param p0, "x0"    # Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;
    .param p1, "x1"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->radio(I)V

    return-void
.end method

.method static synthetic access$300(Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;)Lwang/yuchao/android/library/view/tagviewgroup/OnTagClickListener;
    .locals 1
    .param p0, "x0"    # Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;

    .prologue
    .line 17
    iget-object v0, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->onTagClickListener:Lwang/yuchao/android/library/view/tagviewgroup/OnTagClickListener;

    return-object v0
.end method

.method private parseAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;, "Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup<TV;TT;>;"
    const/4 v3, 0x0

    .line 42
    sget-object v2, Lwang/yuchao/android/library/view/tagviewgroup/R$styleable;->TagViewGroup:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    .local v0, "array":Landroid/content/res/TypedArray;
    sget v2, Lwang/yuchao/android/library/view/tagviewgroup/R$styleable;->TagViewGroup_singleLine:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    sget v2, Lwang/yuchao/android/library/view/tagviewgroup/R$styleable;->TagViewGroup_singleLine:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->setSingleLine(Z)V

    .line 46
    :cond_0
    sget v2, Lwang/yuchao/android/library/view/tagviewgroup/R$styleable;->TagViewGroup_isRadio:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    sget v2, Lwang/yuchao/android/library/view/tagviewgroup/R$styleable;->TagViewGroup_isRadio:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->setRadio(Z)V

    .line 51
    :cond_1
    sget v2, Lwang/yuchao/android/library/view/tagviewgroup/R$styleable;->TagViewGroup_tagMargin:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    sget v2, Lwang/yuchao/android/library/view/tagviewgroup/R$styleable;->TagViewGroup_tagMargin:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 53
    .local v1, "margin":F
    invoke-virtual {p0, v1}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->setTagMarginLeft(F)V

    .line 54
    invoke-virtual {p0, v1}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->setTagMarginTop(F)V

    .line 55
    invoke-virtual {p0, v1}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->setTagMarginRight(F)V

    .line 56
    invoke-virtual {p0, v1}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->setTagMarginBottom(F)V

    .line 59
    .end local v1    # "margin":F
    :cond_2
    sget v2, Lwang/yuchao/android/library/view/tagviewgroup/R$styleable;->TagViewGroup_tagMarginLeft:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 60
    sget v2, Lwang/yuchao/android/library/view/tagviewgroup/R$styleable;->TagViewGroup_tagMarginLeft:I

    iget v3, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->tagMarginLeft:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {p0, v2}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->setTagMarginLeft(F)V

    .line 62
    :cond_3
    sget v2, Lwang/yuchao/android/library/view/tagviewgroup/R$styleable;->TagViewGroup_tagMarginTop:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 63
    sget v2, Lwang/yuchao/android/library/view/tagviewgroup/R$styleable;->TagViewGroup_tagMarginTop:I

    iget v3, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->tagMarginTop:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {p0, v2}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->setTagMarginTop(F)V

    .line 65
    :cond_4
    sget v2, Lwang/yuchao/android/library/view/tagviewgroup/R$styleable;->TagViewGroup_tagMarginRight:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 66
    sget v2, Lwang/yuchao/android/library/view/tagviewgroup/R$styleable;->TagViewGroup_tagMarginRight:I

    iget v3, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->tagMarginRight:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {p0, v2}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->setTagMarginRight(F)V

    .line 68
    :cond_5
    sget v2, Lwang/yuchao/android/library/view/tagviewgroup/R$styleable;->TagViewGroup_tagMarginBottom:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 69
    sget v2, Lwang/yuchao/android/library/view/tagviewgroup/R$styleable;->TagViewGroup_tagMarginBottom:I

    iget v3, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->tagMarginBottom:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {p0, v2}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->setTagMarginBottom(F)V

    .line 72
    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    return-void
.end method

.method private radio(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 255
    .local p0, "this":Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;, "Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup<TV;TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 256
    invoke-virtual {p0, v1}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 258
    .local v0, "checkBox":Landroid/widget/CheckBox;
    if-eq v1, p1, :cond_0

    .line 259
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 255
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    :cond_1
    return-void
.end method

.method private setListener(Landroid/widget/Button;ILjava/lang/Object;)V
    .locals 2
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;ITT;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;, "Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup<TV;TT;>;"
    .local p1, "view":Landroid/widget/Button;, "TV;"
    .local p3, "tag":Ljava/lang/Object;, "TT;"
    instance-of v1, p1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 210
    check-cast v0, Landroid/widget/CheckBox;

    .line 211
    .local v0, "checkBox":Landroid/widget/CheckBox;
    new-instance v1, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$1;

    invoke-direct {v1, p0, p2, p3}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$1;-><init>(Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 237
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    :goto_0
    return-void

    .line 228
    :cond_0
    new-instance v1, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$2;

    invoke-direct {v1, p0, p2, p3}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$2;-><init>(Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .local p0, "this":Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;, "Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup<TV;TT;>;"
    const/4 v1, -0x2

    .line 177
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 182
    .local p0, "this":Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;, "Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup<TV;TT;>;"
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 187
    .local p0, "this":Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;, "Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup<TV;TT;>;"
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public abstract getTagItemView(ILjava/lang/Object;)Landroid/widget/Button;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TV;"
        }
    .end annotation
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 116
    .local p0, "this":Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;, "Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup<TV;TT;>;"
    sub-int v6, p4, p2

    .line 117
    .local v6, "parentWidth":I
    const/4 v8, 0x0

    .line 118
    .local v8, "width":I
    const/4 v3, 0x0

    .line 119
    .local v3, "height":I
    const/4 v7, 0x0

    .line 121
    .local v7, "rows":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->getChildCount()I

    move-result v9

    if-ge v4, v9, :cond_0

    .line 122
    invoke-virtual {p0, v4}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, "child":Landroid/view/View;
    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 124
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 125
    .local v5, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v2, v9, v10

    .line 126
    .local v2, "childWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v9, v10

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v1, v9, v10

    .line 127
    .local v1, "childHeight":I
    add-int v9, v2, v8

    if-le v9, v6, :cond_2

    .line 128
    iget-boolean v9, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->singleLine:Z

    if-eqz v9, :cond_1

    .line 129
    if-nez v8, :cond_0

    .line 130
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v9, v8

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v10, v3

    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v11, v6, v11

    add-int v12, v3, v1

    iget v13, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 152
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeight":I
    .end local v2    # "childWidth":I
    .end local v5    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void

    .line 136
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childHeight":I
    .restart local v2    # "childWidth":I
    .restart local v5    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    if-eqz v8, :cond_2

    .line 137
    const/4 v8, 0x0

    .line 138
    add-int/lit8 v7, v7, 0x1

    .line 143
    :cond_2
    mul-int v3, v7, v1

    .line 145
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v9, v8

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v10, v3

    add-int v11, v2, v8

    .line 147
    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v11

    iget v12, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v11, v12

    add-int v12, v3, v1

    iget v13, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    .line 146
    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 150
    add-int/2addr v8, v2

    .line 121
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 78
    .local p0, "this":Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;, "Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup<TV;TT;>;"
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 79
    .local v15, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 80
    .local v6, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 81
    .local v14, "sizeWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 83
    .local v13, "sizeHeight":I
    const/4 v11, 0x0

    .line 84
    .local v11, "measuredWidth":I
    const/4 v10, 0x0

    .line 86
    .local v10, "measuredHeight":I
    const/4 v8, 0x0

    .line 87
    .local v8, "length":I
    const/4 v12, 0x0

    .line 89
    .local v12, "rows":I
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->getChildCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v7, v0, :cond_0

    .line 90
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 91
    .local v3, "child":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v3, v1, v2}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->measureChild(Landroid/view/View;II)V

    .line 92
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 93
    .local v9, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    iget v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v17, v0

    add-int v16, v16, v17

    iget v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v17, v0

    add-int v5, v16, v17

    .line 94
    .local v5, "childWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    iget v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v17, v0

    add-int v16, v16, v17

    iget v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v17, v0

    add-int v4, v16, v17

    .line 95
    .local v4, "childHeight":I
    add-int v16, v8, v5

    move/from16 v0, v16

    if-le v0, v14, :cond_2

    .line 96
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->singleLine:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 97
    move v10, v4

    .line 110
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childHeight":I
    .end local v5    # "childWidth":I
    .end local v9    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    const/high16 v16, 0x40000000    # 2.0f

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .end local v14    # "sizeWidth":I
    :goto_1
    const/high16 v16, 0x40000000    # 2.0f

    move/from16 v0, v16

    if-ne v6, v0, :cond_4

    .end local v13    # "sizeHeight":I
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->setMeasuredDimension(II)V

    .line 112
    return-void

    .line 100
    .restart local v3    # "child":Landroid/view/View;
    .restart local v4    # "childHeight":I
    .restart local v5    # "childWidth":I
    .restart local v9    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v13    # "sizeHeight":I
    .restart local v14    # "sizeWidth":I
    :cond_1
    if-eqz v8, :cond_2

    .line 101
    const/4 v8, 0x0

    .line 102
    add-int/lit8 v12, v12, 0x1

    .line 106
    :cond_2
    add-int/2addr v8, v5

    .line 107
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 108
    add-int/lit8 v16, v12, 0x1

    mul-int v10, v16, v4

    .line 89
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childHeight":I
    .end local v5    # "childWidth":I
    .end local v9    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    move v14, v11

    .line 110
    goto :goto_1

    .end local v14    # "sizeWidth":I
    :cond_4
    move v13, v10

    goto :goto_2
.end method

.method public setOnTagCheckedChangeListener(Lwang/yuchao/android/library/view/tagviewgroup/OnTagCheckedChangeListener;)V
    .locals 0
    .param p1, "onTagCheckedChangeListener"    # Lwang/yuchao/android/library/view/tagviewgroup/OnTagCheckedChangeListener;

    .prologue
    .line 248
    .local p0, "this":Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;, "Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup<TV;TT;>;"
    iput-object p1, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->onTagCheckedChangeListener:Lwang/yuchao/android/library/view/tagviewgroup/OnTagCheckedChangeListener;

    .line 249
    return-void
.end method

.method public setOnTagClickListener(Lwang/yuchao/android/library/view/tagviewgroup/OnTagClickListener;)V
    .locals 0
    .param p1, "onTagClickListener"    # Lwang/yuchao/android/library/view/tagviewgroup/OnTagClickListener;

    .prologue
    .line 240
    .local p0, "this":Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;, "Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup<TV;TT;>;"
    iput-object p1, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->onTagClickListener:Lwang/yuchao/android/library/view/tagviewgroup/OnTagClickListener;

    .line 241
    return-void
.end method

.method public setRadio(Z)V
    .locals 0
    .param p1, "radio"    # Z

    .prologue
    .line 244
    .local p0, "this":Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;, "Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup<TV;TT;>;"
    iput-boolean p1, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->isRadio:Z

    .line 245
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0
    .param p1, "isSingleLine"    # Z

    .prologue
    .line 155
    .local p0, "this":Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;, "Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup<TV;TT;>;"
    iput-boolean p1, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->singleLine:Z

    .line 156
    invoke-virtual {p0}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->requestLayout()V

    .line 157
    return-void
.end method

.method public setTagMarginBottom(F)V
    .locals 0
    .param p1, "tagMarginBottom"    # F

    .prologue
    .line 172
    .local p0, "this":Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;, "Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup<TV;TT;>;"
    iput p1, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->tagMarginBottom:F

    .line 173
    return-void
.end method

.method public setTagMarginLeft(F)V
    .locals 0
    .param p1, "tagMarginLeft"    # F

    .prologue
    .line 160
    .local p0, "this":Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;, "Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup<TV;TT;>;"
    iput p1, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->tagMarginLeft:F

    .line 161
    return-void
.end method

.method public setTagMarginRight(F)V
    .locals 0
    .param p1, "tagMarginRight"    # F

    .prologue
    .line 168
    .local p0, "this":Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;, "Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup<TV;TT;>;"
    iput p1, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->tagMarginRight:F

    .line 169
    return-void
.end method

.method public setTagMarginTop(F)V
    .locals 0
    .param p1, "tagMarginTop"    # F

    .prologue
    .line 164
    .local p0, "this":Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;, "Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup<TV;TT;>;"
    iput p1, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->tagMarginTop:F

    .line 165
    return-void
.end method

.method public update(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;, "Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup<TV;TT;>;"
    .local p1, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v8, -0x2

    .line 193
    invoke-virtual {p0}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->removeAllViews()V

    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 195
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 196
    .local v2, "tag":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_0

    .line 197
    invoke-virtual {p0, v0, v2}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->getTagItemView(ILjava/lang/Object;)Landroid/widget/Button;

    move-result-object v3

    .line 198
    .local v3, "view":Landroid/widget/Button;, "TV;"
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 199
    .local v1, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v4, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->tagMarginLeft:F

    float-to-int v4, v4

    iget v5, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->tagMarginTop:F

    float-to-int v5, v5

    iget v6, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->tagMarginRight:F

    float-to-int v6, v6

    iget v7, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->tagMarginBottom:F

    float-to-int v7, v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 200
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    invoke-virtual {p0, v3}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->addView(Landroid/view/View;)V

    .line 202
    invoke-direct {p0, v3, v0, v2}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->setListener(Landroid/widget/Button;ILjava/lang/Object;)V

    .line 194
    .end local v1    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3    # "view":Landroid/widget/Button;, "TV;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    .end local v2    # "tag":Ljava/lang/Object;, "TT;"
    :cond_1
    return-void
.end method
