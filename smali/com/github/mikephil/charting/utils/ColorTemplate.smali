.class public Lcom/github/mikephil/charting/utils/ColorTemplate;
.super Ljava/lang/Object;
.source "ColorTemplate.java"


# static fields
.field public static final COLORFUL_COLORS:[I

.field public static final COLOR_NONE:I = -0x1

.field public static final JOYFUL_COLORS:[I

.field public static final LIBERTY_COLORS:[I

.field public static final PASTEL_COLORS:[I

.field public static final VORDIPLOM_COLORS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0xff

    const/4 v5, 0x0

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 26
    const/16 v1, 0xcf

    const/16 v2, 0xf8

    const/16 v3, 0xf6

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v5

    const/16 v1, 0x94

    const/16 v2, 0xd4

    const/16 v3, 0xd4

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v7

    const/16 v1, 0x88

    const/16 v2, 0xb4

    const/16 v3, 0xbb

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v8

    .line 27
    const/16 v1, 0x76

    const/16 v2, 0xae

    const/16 v3, 0xaf

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v9

    const/4 v1, 0x4

    const/16 v2, 0x2a

    const/16 v3, 0x6d

    const/16 v4, 0x82

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    .line 25
    sput-object v0, Lcom/github/mikephil/charting/utils/ColorTemplate;->LIBERTY_COLORS:[I

    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 30
    const/16 v1, 0xd9

    const/16 v2, 0x50

    const/16 v3, 0x8a

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v5

    const/16 v1, 0xfe

    const/16 v2, 0x95

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v7

    const/16 v1, 0xfe

    const/16 v2, 0xf7

    const/16 v3, 0x78

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v8

    .line 31
    const/16 v1, 0x6a

    const/16 v2, 0xa7

    const/16 v3, 0x86

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v9

    const/4 v1, 0x4

    const/16 v2, 0x35

    const/16 v3, 0xc2

    const/16 v4, 0xd1

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    .line 29
    sput-object v0, Lcom/github/mikephil/charting/utils/ColorTemplate;->JOYFUL_COLORS:[I

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 34
    const/16 v1, 0x40

    const/16 v2, 0x59

    const/16 v3, 0x80

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v5

    const/16 v1, 0x95

    const/16 v2, 0xa5

    const/16 v3, 0x7c

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v7

    const/16 v1, 0xd9

    const/16 v2, 0xb8

    const/16 v3, 0xa2

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v8

    .line 35
    const/16 v1, 0xbf

    const/16 v2, 0x86

    const/16 v3, 0x86

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v9

    const/4 v1, 0x4

    const/16 v2, 0xb3

    const/16 v3, 0x30

    const/16 v4, 0x50

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    .line 33
    sput-object v0, Lcom/github/mikephil/charting/utils/ColorTemplate;->PASTEL_COLORS:[I

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 38
    const/16 v1, 0xc1

    const/16 v2, 0x25

    const/16 v3, 0x52

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v5

    const/16 v1, 0x66

    invoke-static {v6, v1, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v7

    const/16 v1, 0xf5

    const/16 v2, 0xc7

    invoke-static {v1, v2, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v8

    .line 39
    const/16 v1, 0x6a

    const/16 v2, 0x96

    const/16 v3, 0x1f

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v9

    const/4 v1, 0x4

    const/16 v2, 0xb3

    const/16 v3, 0x64

    const/16 v4, 0x35

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    .line 37
    sput-object v0, Lcom/github/mikephil/charting/utils/ColorTemplate;->COLORFUL_COLORS:[I

    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 42
    const/16 v1, 0xc0

    const/16 v2, 0x8c

    invoke-static {v1, v6, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v5

    const/16 v1, 0xf7

    const/16 v2, 0x8c

    invoke-static {v6, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v7

    const/16 v1, 0xd0

    const/16 v2, 0x8c

    invoke-static {v6, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v8

    .line 43
    const/16 v1, 0x8c

    const/16 v2, 0xea

    invoke-static {v1, v2, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v9

    const/4 v1, 0x4

    const/16 v2, 0x8c

    const/16 v3, 0x9d

    invoke-static {v6, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    .line 41
    sput-object v0, Lcom/github/mikephil/charting/utils/ColorTemplate;->VORDIPLOM_COLORS:[I

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createColors(Landroid/content/res/Resources;[I)Ljava/util/List;
    .locals 5
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "colors"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 71
    return-object v1

    .line 67
    :cond_0
    aget v0, p1, v2

    .line 68
    .local v0, "i":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static createColors([I)Ljava/util/List;
    .locals 5
    .param p0, "colors"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 89
    return-object v1

    .line 85
    :cond_0
    aget v0, p0, v2

    .line 86
    .local v0, "i":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getHoloBlue()I
    .locals 3

    .prologue
    .line 52
    const/16 v0, 0x33

    const/16 v1, 0xb5

    const/16 v2, 0xe5

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method
