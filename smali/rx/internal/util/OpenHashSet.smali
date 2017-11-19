.class public final Lrx/internal/util/OpenHashSet;
.super Ljava/lang/Object;
.source "OpenHashSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final INT_PHI:I = -0x61c88647


# instance fields
.field keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final loadFactor:F

.field mask:I

.field maxSize:I

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/util/OpenHashSet;, "Lrx/internal/util/OpenHashSet<TT;>;"
    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lrx/internal/util/OpenHashSet;-><init>(IF)V

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/util/OpenHashSet;, "Lrx/internal/util/OpenHashSet<TT;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lrx/internal/util/OpenHashSet;-><init>(IF)V

    .line 54
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2
    .param p1, "capacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/util/OpenHashSet;, "Lrx/internal/util/OpenHashSet<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p2, p0, Lrx/internal/util/OpenHashSet;->loadFactor:F

    .line 59
    invoke-static {p1}, Lrx/internal/util/unsafe/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    .line 60
    .local v0, "c":I
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lrx/internal/util/OpenHashSet;->mask:I

    .line 61
    int-to-float v1, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lrx/internal/util/OpenHashSet;->maxSize:I

    .line 62
    new-array v1, v0, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Lrx/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    .line 63
    return-void
.end method

.method static mix(I)I
    .locals 2
    .param p0, "x"    # I

    .prologue
    .line 196
    const v1, -0x61c88647

    mul-int v0, p0, v1

    .line 197
    .local v0, "h":I
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/util/OpenHashSet;, "Lrx/internal/util/OpenHashSet<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    .line 66
    iget-object v0, p0, Lrx/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    .line 67
    .local v0, "a":[Ljava/lang/Object;, "[TT;"
    iget v2, p0, Lrx/internal/util/OpenHashSet;->mask:I

    .line 69
    .local v2, "m":I
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Lrx/internal/util/OpenHashSet;->mix(I)I

    move-result v5

    and-int v3, v5, v2

    .line 70
    .local v3, "pos":I
    aget-object v1, v0, v3

    .line 71
    .local v1, "curr":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 90
    :goto_0
    return v4

    .line 76
    :cond_0
    add-int/lit8 v5, v3, 0x1

    and-int v3, v5, v2

    .line 77
    aget-object v1, v0, v3

    .line 78
    if-nez v1, :cond_3

    .line 86
    :cond_1
    aput-object p1, v0, v3

    .line 87
    iget v4, p0, Lrx/internal/util/OpenHashSet;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lrx/internal/util/OpenHashSet;->size:I

    iget v5, p0, Lrx/internal/util/OpenHashSet;->maxSize:I

    if-lt v4, v5, :cond_2

    .line 88
    invoke-virtual {p0}, Lrx/internal/util/OpenHashSet;->rehash()V

    .line 90
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0
.end method

.method public clear(Lrx/functions/Action1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lrx/internal/util/OpenHashSet;, "Lrx/internal/util/OpenHashSet<TT;>;"
    .local p1, "clearAction":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    iget v4, p0, Lrx/internal/util/OpenHashSet;->size:I

    if-nez v4, :cond_0

    .line 156
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lrx/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    .line 147
    .local v0, "a":[Ljava/lang/Object;, "[TT;"
    array-length v3, v0

    .line 148
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 149
    aget-object v1, v0, v2

    .line 150
    .local v1, "e":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_1

    .line 151
    invoke-interface {p1, v1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 148
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 154
    .end local v1    # "e":Ljava/lang/Object;, "TT;"
    :cond_2
    const/4 v4, 0x0

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    const/4 v4, 0x0

    iput v4, p0, Lrx/internal/util/OpenHashSet;->size:I

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 201
    .local p0, "this":Lrx/internal/util/OpenHashSet;, "Lrx/internal/util/OpenHashSet<TT;>;"
    iget v0, p0, Lrx/internal/util/OpenHashSet;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method rehash()V
    .locals 10

    .prologue
    .line 166
    .local p0, "this":Lrx/internal/util/OpenHashSet;, "Lrx/internal/util/OpenHashSet<TT;>;"
    iget-object v0, p0, Lrx/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    .line 167
    .local v0, "a":[Ljava/lang/Object;, "[TT;"
    array-length v2, v0

    .line 168
    .local v2, "i":I
    shl-int/lit8 v6, v2, 0x1

    .line 169
    .local v6, "newCap":I
    add-int/lit8 v5, v6, -0x1

    .line 171
    .local v5, "m":I
    new-array v1, v6, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 174
    .local v1, "b":[Ljava/lang/Object;, "[TT;"
    iget v3, p0, Lrx/internal/util/OpenHashSet;->size:I

    .local v3, "j":I
    move v4, v3

    .end local v3    # "j":I
    .local v4, "j":I
    :goto_0
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    if-eqz v4, :cond_3

    .line 175
    :cond_0
    add-int/lit8 v2, v2, -0x1

    aget-object v8, v0, v2

    if-eqz v8, :cond_0

    .line 176
    aget-object v8, v0, v2

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Lrx/internal/util/OpenHashSet;->mix(I)I

    move-result v8

    and-int v7, v8, v5

    .line 177
    .local v7, "pos":I
    aget-object v8, v1, v7

    if-eqz v8, :cond_2

    .line 179
    :cond_1
    add-int/lit8 v8, v7, 0x1

    and-int v7, v8, v5

    .line 180
    aget-object v8, v1, v7

    if-nez v8, :cond_1

    .line 185
    :cond_2
    aget-object v8, v0, v2

    aput-object v8, v1, v7

    move v4, v3

    .line 186
    .end local v3    # "j":I
    .restart local v4    # "j":I
    goto :goto_0

    .line 188
    .end local v4    # "j":I
    .end local v7    # "pos":I
    .restart local v3    # "j":I
    :cond_3
    iput v5, p0, Lrx/internal/util/OpenHashSet;->mask:I

    .line 189
    int-to-float v8, v6

    iget v9, p0, Lrx/internal/util/OpenHashSet;->loadFactor:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lrx/internal/util/OpenHashSet;->maxSize:I

    .line 190
    iput-object v1, p0, Lrx/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    .line 191
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/util/OpenHashSet;, "Lrx/internal/util/OpenHashSet<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    .line 93
    iget-object v0, p0, Lrx/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    .line 94
    .local v0, "a":[Ljava/lang/Object;, "[TT;"
    iget v2, p0, Lrx/internal/util/OpenHashSet;->mask:I

    .line 95
    .local v2, "m":I
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Lrx/internal/util/OpenHashSet;->mix(I)I

    move-result v5

    and-int v3, v5, v2

    .line 96
    .local v3, "pos":I
    aget-object v1, v0, v3

    .line 97
    .local v1, "curr":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v4

    .line 100
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 101
    invoke-virtual {p0, v3, v0, v2}, Lrx/internal/util/OpenHashSet;->removeEntry(I[Ljava/lang/Object;I)Z

    move-result v4

    goto :goto_0

    .line 104
    :cond_2
    add-int/lit8 v5, v3, 0x1

    and-int v3, v5, v2

    .line 105
    aget-object v1, v0, v3

    .line 106
    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 110
    invoke-virtual {p0, v3, v0, v2}, Lrx/internal/util/OpenHashSet;->removeEntry(I[Ljava/lang/Object;I)Z

    move-result v4

    goto :goto_0
.end method

.method removeEntry(I[Ljava/lang/Object;I)Z
    .locals 4
    .param p1, "pos"    # I
    .param p3, "m"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;I)Z"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lrx/internal/util/OpenHashSet;, "Lrx/internal/util/OpenHashSet<TT;>;"
    .local p2, "a":[Ljava/lang/Object;, "[TT;"
    iget v3, p0, Lrx/internal/util/OpenHashSet;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lrx/internal/util/OpenHashSet;->size:I

    .line 122
    :goto_0
    move v1, p1

    .line 123
    .local v1, "last":I
    add-int/lit8 v3, p1, 0x1

    and-int p1, v3, p3

    .line 125
    :goto_1
    aget-object v0, p2, p1

    .line 126
    .local v0, "curr":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 127
    const/4 v3, 0x0

    aput-object v3, p2, v1

    .line 128
    const/4 v3, 0x1

    return v3

    .line 130
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Lrx/internal/util/OpenHashSet;->mix(I)I

    move-result v3

    and-int v2, v3, p3

    .line 132
    .local v2, "slot":I
    if-gt v1, p1, :cond_2

    if-ge v1, v2, :cond_1

    if-le v2, p1, :cond_3

    .line 138
    :cond_1
    aput-object v0, p2, v1

    goto :goto_0

    .line 132
    :cond_2
    if-lt v1, v2, :cond_3

    if-gt v2, p1, :cond_1

    .line 136
    :cond_3
    add-int/lit8 v3, p1, 0x1

    and-int p1, v3, p3

    goto :goto_1
.end method

.method public terminate()V
    .locals 1

    .prologue
    .local p0, "this":Lrx/internal/util/OpenHashSet;, "Lrx/internal/util/OpenHashSet<TT;>;"
    const/4 v0, 0x0

    .line 160
    iput v0, p0, Lrx/internal/util/OpenHashSet;->size:I

    .line 161
    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lrx/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    .line 162
    return-void
.end method

.method public values()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lrx/internal/util/OpenHashSet;, "Lrx/internal/util/OpenHashSet<TT;>;"
    iget-object v0, p0, Lrx/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    return-object v0
.end method
