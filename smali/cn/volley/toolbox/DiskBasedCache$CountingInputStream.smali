.class Lcn/volley/toolbox/DiskBasedCache$CountingInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field private bT:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 441
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 438
    const/4 v0, 0x0

    iput v0, p0, Lcn/volley/toolbox/DiskBasedCache$CountingInputStream;->bT:I

    .line 442
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;B)V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcn/volley/toolbox/DiskBasedCache$CountingInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic Code(Lcn/volley/toolbox/DiskBasedCache$CountingInputStream;)I
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lcn/volley/toolbox/DiskBasedCache$CountingInputStream;->bT:I

    return v0
.end method


# virtual methods
.method public read()I
    .locals 2

    .prologue
    .line 446
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 447
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 448
    iget v1, p0, Lcn/volley/toolbox/DiskBasedCache$CountingInputStream;->bT:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/volley/toolbox/DiskBasedCache$CountingInputStream;->bT:I

    .line 450
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2

    .prologue
    .line 455
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 456
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 457
    iget v1, p0, Lcn/volley/toolbox/DiskBasedCache$CountingInputStream;->bT:I

    add-int/2addr v1, v0

    iput v1, p0, Lcn/volley/toolbox/DiskBasedCache$CountingInputStream;->bT:I

    .line 459
    :cond_0
    return v0
.end method
