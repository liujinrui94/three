.class public Lcn/volley/toolbox/ByteArrayPool;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final BUF_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field private bK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private bL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private bM:I

.field private final bN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcn/volley/toolbox/ByteArrayPool$1;

    invoke-direct {v0}, Lcn/volley/toolbox/ByteArrayPool$1;-><init>()V

    sput-object v0, Lcn/volley/toolbox/ByteArrayPool;->BUF_COMPARATOR:Ljava/util/Comparator;

    .line 78
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/volley/toolbox/ByteArrayPool;->bK:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcn/volley/toolbox/ByteArrayPool;->bL:Ljava/util/List;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcn/volley/toolbox/ByteArrayPool;->bM:I

    .line 85
    iput p1, p0, Lcn/volley/toolbox/ByteArrayPool;->bN:I

    .line 86
    return-void
.end method

.method private declared-synchronized trim()V
    .locals 2

    .prologue
    .line 135
    monitor-enter p0

    :goto_0
    :try_start_0
    iget v0, p0, Lcn/volley/toolbox/ByteArrayPool;->bM:I

    iget v1, p0, Lcn/volley/toolbox/ByteArrayPool;->bN:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v0, v1, :cond_0

    .line 140
    monitor-exit p0

    return-void

    .line 136
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/volley/toolbox/ByteArrayPool;->bK:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 137
    iget-object v1, p0, Lcn/volley/toolbox/ByteArrayPool;->bL:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 138
    iget v1, p0, Lcn/volley/toolbox/ByteArrayPool;->bM:I

    array-length v0, v0

    sub-int v0, v1, v0

    iput v0, p0, Lcn/volley/toolbox/ByteArrayPool;->bM:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized I(I)[B
    .locals 4

    .prologue
    .line 98
    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcn/volley/toolbox/ByteArrayPool;->bL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 107
    new-array v0, p1, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    .line 99
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/volley/toolbox/ByteArrayPool;->bL:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 100
    array-length v2, v0

    if-lt v2, p1, :cond_1

    .line 101
    iget v2, p0, Lcn/volley/toolbox/ByteArrayPool;->bM:I

    array-length v3, v0

    sub-int/2addr v2, v3

    iput v2, p0, Lcn/volley/toolbox/ByteArrayPool;->bM:I

    .line 102
    iget-object v2, p0, Lcn/volley/toolbox/ByteArrayPool;->bL:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 103
    iget-object v1, p0, Lcn/volley/toolbox/ByteArrayPool;->bK:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final declared-synchronized V([B)V
    .locals 2

    .prologue
    .line 118
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    iget v1, p0, Lcn/volley/toolbox/ByteArrayPool;->bN:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v0, v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 121
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcn/volley/toolbox/ByteArrayPool;->bK:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcn/volley/toolbox/ByteArrayPool;->bL:Ljava/util/List;

    sget-object v1, Lcn/volley/toolbox/ByteArrayPool;->BUF_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 123
    if-gez v0, :cond_2

    .line 124
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 126
    :cond_2
    iget-object v1, p0, Lcn/volley/toolbox/ByteArrayPool;->bL:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 127
    iget v0, p0, Lcn/volley/toolbox/ByteArrayPool;->bM:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/volley/toolbox/ByteArrayPool;->bM:I

    .line 128
    invoke-direct {p0}, Lcn/volley/toolbox/ByteArrayPool;->trim()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
