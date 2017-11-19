.class public Lcom/shishicai/app/ui/HorizontialListView;
.super Landroid/widget/AdapterView;
.source "HorizontialListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field public mAlwaysOverrideTouch:Z

.field protected mCurrentX:I

.field private mDataChanged:Z

.field private mDataObserver:Landroid/database/DataSetObserver;

.field private mDisplayOffset:I

.field private mGesture:Landroid/view/GestureDetector;

.field private mLeftViewIndex:I

.field private mMaxX:I

.field protected mNextX:I

.field private mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

.field private mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mRemovedViewQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mRightViewIndex:I

.field protected mScroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shishicai/app/ui/HorizontialListView;->mAlwaysOverrideTouch:Z

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/shishicai/app/ui/HorizontialListView;->mLeftViewIndex:I

    .line 27
    iput v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mRightViewIndex:I

    .line 30
    const v0, 0x7fffffff

    iput v0, p0, Lcom/shishicai/app/ui/HorizontialListView;->mMaxX:I

    .line 31
    iput v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mDisplayOffset:I

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/shishicai/app/ui/HorizontialListView;->mRemovedViewQueue:Ljava/util/Queue;

    .line 38
    iput-boolean v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mDataChanged:Z

    .line 72
    new-instance v0, Lcom/shishicai/app/ui/HorizontialListView$1;

    invoke-direct {v0, p0}, Lcom/shishicai/app/ui/HorizontialListView$1;-><init>(Lcom/shishicai/app/ui/HorizontialListView;)V

    iput-object v0, p0, Lcom/shishicai/app/ui/HorizontialListView;->mDataObserver:Landroid/database/DataSetObserver;

    .line 293
    new-instance v0, Lcom/shishicai/app/ui/HorizontialListView$3;

    invoke-direct {v0, p0}, Lcom/shishicai/app/ui/HorizontialListView$3;-><init>(Lcom/shishicai/app/ui/HorizontialListView;)V

    iput-object v0, p0, Lcom/shishicai/app/ui/HorizontialListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    .line 43
    invoke-direct {p0}, Lcom/shishicai/app/ui/HorizontialListView;->initView()V

    .line 44
    return-void
.end method

.method static synthetic access$002(Lcom/shishicai/app/ui/HorizontialListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/ui/HorizontialListView;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mDataChanged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/shishicai/app/ui/HorizontialListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/ui/HorizontialListView;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/shishicai/app/ui/HorizontialListView;->reset()V

    return-void
.end method

.method static synthetic access$200(Lcom/shishicai/app/ui/HorizontialListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/ui/HorizontialListView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/shishicai/app/ui/HorizontialListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shishicai/app/ui/HorizontialListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/ui/HorizontialListView;

    .prologue
    .line 22
    iget v0, p0, Lcom/shishicai/app/ui/HorizontialListView;->mLeftViewIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/shishicai/app/ui/HorizontialListView;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/ui/HorizontialListView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/shishicai/app/ui/HorizontialListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shishicai/app/ui/HorizontialListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/ui/HorizontialListView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/shishicai/app/ui/HorizontialListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "viewPos"    # I

    .prologue
    const/4 v1, -0x1

    const/high16 v3, -0x80000000

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 126
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 127
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 130
    .restart local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/shishicai/app/ui/HorizontialListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 131
    invoke-virtual {p0}, Lcom/shishicai/app/ui/HorizontialListView;->getWidth()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 132
    invoke-virtual {p0}, Lcom/shishicai/app/ui/HorizontialListView;->getHeight()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 131
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 133
    return-void
.end method

.method private fillList(I)V
    .locals 3
    .param p1, "dx"    # I

    .prologue
    .line 187
    const/4 v1, 0x0

    .line 188
    .local v1, "edge":I
    invoke-virtual {p0}, Lcom/shishicai/app/ui/HorizontialListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/shishicai/app/ui/HorizontialListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 189
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 192
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/shishicai/app/ui/HorizontialListView;->fillListRight(II)V

    .line 194
    const/4 v1, 0x0

    .line 195
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/shishicai/app/ui/HorizontialListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 199
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/shishicai/app/ui/HorizontialListView;->fillListLeft(II)V

    .line 202
    return-void
.end method

.method private fillListLeft(II)V
    .locals 4
    .param p1, "leftEdge"    # I
    .param p2, "dx"    # I

    .prologue
    .line 224
    :goto_0
    add-int v1, p1, p2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mLeftViewIndex:I

    if-ltz v1, :cond_0

    .line 225
    iget-object v2, p0, Lcom/shishicai/app/ui/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Lcom/shishicai/app/ui/HorizontialListView;->mLeftViewIndex:I

    iget-object v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v3, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 226
    .local v0, "child":Landroid/view/View;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/shishicai/app/ui/HorizontialListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 227
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    .line 228
    iget v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mLeftViewIndex:I

    .line 229
    iget v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mDisplayOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mDisplayOffset:I

    goto :goto_0

    .line 231
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private fillListRight(II)V
    .locals 4
    .param p1, "rightEdge"    # I
    .param p2, "dx"    # I

    .prologue
    .line 205
    :goto_0
    add-int v1, p1, p2

    invoke-virtual {p0}, Lcom/shishicai/app/ui/HorizontialListView;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mRightViewIndex:I

    iget-object v2, p0, Lcom/shishicai/app/ui/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 207
    iget-object v2, p0, Lcom/shishicai/app/ui/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Lcom/shishicai/app/ui/HorizontialListView;->mRightViewIndex:I

    iget-object v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v3, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 208
    .local v0, "child":Landroid/view/View;
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/shishicai/app/ui/HorizontialListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 209
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr p1, v1

    .line 211
    iget v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mRightViewIndex:I

    iget-object v2, p0, Lcom/shishicai/app/ui/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 212
    iget v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mCurrentX:I

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/shishicai/app/ui/HorizontialListView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mMaxX:I

    .line 215
    :cond_0
    iget v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mMaxX:I

    if-gez v1, :cond_1

    .line 216
    const/4 v1, 0x0

    iput v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mMaxX:I

    .line 218
    :cond_1
    iget v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mRightViewIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mRightViewIndex:I

    goto :goto_0

    .line 221
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private declared-synchronized initView()V
    .locals 3

    .prologue
    .line 47
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/shishicai/app/ui/HorizontialListView;->mLeftViewIndex:I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/shishicai/app/ui/HorizontialListView;->mRightViewIndex:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/shishicai/app/ui/HorizontialListView;->mDisplayOffset:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/shishicai/app/ui/HorizontialListView;->mCurrentX:I

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/shishicai/app/ui/HorizontialListView;->mNextX:I

    .line 52
    const v0, 0x7fffffff

    iput v0, p0, Lcom/shishicai/app/ui/HorizontialListView;->mMaxX:I

    .line 53
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/shishicai/app/ui/HorizontialListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shishicai/app/ui/HorizontialListView;->mScroller:Landroid/widget/Scroller;

    .line 54
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/shishicai/app/ui/HorizontialListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/shishicai/app/ui/HorizontialListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/shishicai/app/ui/HorizontialListView;->mGesture:Landroid/view/GestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private positionItems(I)V
    .locals 7
    .param p1, "dx"    # I

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/shishicai/app/ui/HorizontialListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 255
    iget v4, p0, Lcom/shishicai/app/ui/HorizontialListView;->mDisplayOffset:I

    add-int/2addr v4, p1

    iput v4, p0, Lcom/shishicai/app/ui/HorizontialListView;->mDisplayOffset:I

    .line 256
    iget v3, p0, Lcom/shishicai/app/ui/HorizontialListView;->mDisplayOffset:I

    .line 257
    .local v3, "left":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/shishicai/app/ui/HorizontialListView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 258
    invoke-virtual {p0, v2}, Lcom/shishicai/app/ui/HorizontialListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 259
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 260
    .local v1, "childWidth":I
    const/4 v4, 0x0

    add-int v5, v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 261
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v1

    add-int/2addr v3, v4

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childWidth":I
    .end local v2    # "i":I
    .end local v3    # "left":I
    :cond_0
    return-void
.end method

.method private removeNonVisibleItems(I)V
    .locals 4
    .param p1, "dx"    # I

    .prologue
    const/4 v3, 0x0

    .line 234
    invoke-virtual {p0, v3}, Lcom/shishicai/app/ui/HorizontialListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 235
    .local v0, "child":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    if-gtz v1, :cond_0

    .line 236
    iget v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mDisplayOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mDisplayOffset:I

    .line 237
    iget-object v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {p0, v0}, Lcom/shishicai/app/ui/HorizontialListView;->removeViewInLayout(Landroid/view/View;)V

    .line 239
    iget v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mLeftViewIndex:I

    .line 240
    invoke-virtual {p0, v3}, Lcom/shishicai/app/ui/HorizontialListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/shishicai/app/ui/HorizontialListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/shishicai/app/ui/HorizontialListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 245
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/shishicai/app/ui/HorizontialListView;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 246
    iget-object v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual {p0, v0}, Lcom/shishicai/app/ui/HorizontialListView;->removeViewInLayout(Landroid/view/View;)V

    .line 248
    iget v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mRightViewIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mRightViewIndex:I

    .line 249
    invoke-virtual {p0}, Lcom/shishicai/app/ui/HorizontialListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/shishicai/app/ui/HorizontialListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 251
    :cond_1
    return-void
.end method

.method private declared-synchronized reset()V
    .locals 1

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/shishicai/app/ui/HorizontialListView;->initView()V

    .line 115
    invoke-virtual {p0}, Lcom/shishicai/app/ui/HorizontialListView;->removeAllViewsInLayout()V

    .line 116
    invoke-virtual {p0}, Lcom/shishicai/app/ui/HorizontialListView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 274
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 275
    return v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/shishicai/app/ui/HorizontialListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/shishicai/app/ui/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 289
    iget-object v0, p0, Lcom/shishicai/app/ui/HorizontialListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 290
    return v1
.end method

.method protected onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 280
    monitor-enter p0

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/shishicai/app/ui/HorizontialListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mNextX:I

    const/4 v2, 0x0

    neg-float v3, p3

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/shishicai/app/ui/HorizontialListView;->mMaxX:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 282
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    invoke-virtual {p0}, Lcom/shishicai/app/ui/HorizontialListView;->requestLayout()V

    .line 285
    const/4 v0, 0x1

    return v0

    .line 282
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected declared-synchronized onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 141
    iget-object v3, p0, Lcom/shishicai/app/ui/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 184
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 145
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Lcom/shishicai/app/ui/HorizontialListView;->mDataChanged:Z

    if-eqz v3, :cond_2

    .line 146
    iget v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mCurrentX:I

    .line 147
    .local v1, "oldCurrentX":I
    invoke-direct {p0}, Lcom/shishicai/app/ui/HorizontialListView;->initView()V

    .line 148
    invoke-virtual {p0}, Lcom/shishicai/app/ui/HorizontialListView;->removeAllViewsInLayout()V

    .line 149
    iput v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mNextX:I

    .line 150
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/shishicai/app/ui/HorizontialListView;->mDataChanged:Z

    .line 153
    .end local v1    # "oldCurrentX":I
    :cond_2
    iget-object v3, p0, Lcom/shishicai/app/ui/HorizontialListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 154
    iget-object v3, p0, Lcom/shishicai/app/ui/HorizontialListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 155
    .local v2, "scrollx":I
    iput v2, p0, Lcom/shishicai/app/ui/HorizontialListView;->mNextX:I

    .line 158
    .end local v2    # "scrollx":I
    :cond_3
    iget v3, p0, Lcom/shishicai/app/ui/HorizontialListView;->mNextX:I

    if-gtz v3, :cond_4

    .line 159
    const/4 v3, 0x0

    iput v3, p0, Lcom/shishicai/app/ui/HorizontialListView;->mNextX:I

    .line 160
    iget-object v3, p0, Lcom/shishicai/app/ui/HorizontialListView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 162
    :cond_4
    iget v3, p0, Lcom/shishicai/app/ui/HorizontialListView;->mNextX:I

    iget v4, p0, Lcom/shishicai/app/ui/HorizontialListView;->mMaxX:I

    if-lt v3, v4, :cond_5

    .line 163
    iget v3, p0, Lcom/shishicai/app/ui/HorizontialListView;->mMaxX:I

    iput v3, p0, Lcom/shishicai/app/ui/HorizontialListView;->mNextX:I

    .line 164
    iget-object v3, p0, Lcom/shishicai/app/ui/HorizontialListView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 167
    :cond_5
    iget v3, p0, Lcom/shishicai/app/ui/HorizontialListView;->mCurrentX:I

    iget v4, p0, Lcom/shishicai/app/ui/HorizontialListView;->mNextX:I

    sub-int v0, v3, v4

    .line 169
    .local v0, "dx":I
    invoke-direct {p0, v0}, Lcom/shishicai/app/ui/HorizontialListView;->removeNonVisibleItems(I)V

    .line 170
    invoke-direct {p0, v0}, Lcom/shishicai/app/ui/HorizontialListView;->fillList(I)V

    .line 171
    invoke-direct {p0, v0}, Lcom/shishicai/app/ui/HorizontialListView;->positionItems(I)V

    .line 173
    iget v3, p0, Lcom/shishicai/app/ui/HorizontialListView;->mNextX:I

    iput v3, p0, Lcom/shishicai/app/ui/HorizontialListView;->mCurrentX:I

    .line 175
    iget-object v3, p0, Lcom/shishicai/app/ui/HorizontialListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 176
    new-instance v3, Lcom/shishicai/app/ui/HorizontialListView$2;

    invoke-direct {v3, p0}, Lcom/shishicai/app/ui/HorizontialListView$2;-><init>(Lcom/shishicai/app/ui/HorizontialListView;)V

    invoke-virtual {p0, v3}, Lcom/shishicai/app/ui/HorizontialListView;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 139
    .end local v0    # "dx":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized scrollTo(I)V
    .locals 5
    .param p1, "x"    # I

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/shishicai/app/ui/HorizontialListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mNextX:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/shishicai/app/ui/HorizontialListView;->mNextX:I

    sub-int v3, p1, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 268
    invoke-virtual {p0}, Lcom/shishicai/app/ui/HorizontialListView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    monitor-exit p0

    return-void

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/shishicai/app/ui/HorizontialListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/shishicai/app/ui/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/shishicai/app/ui/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 108
    :cond_0
    iput-object p1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 109
    iget-object v0, p0, Lcom/shishicai/app/ui/HorizontialListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 110
    invoke-direct {p0}, Lcom/shishicai/app/ui/HorizontialListView;->reset()V

    .line 111
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    .line 65
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 70
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/shishicai/app/ui/HorizontialListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 60
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 122
    return-void
.end method
