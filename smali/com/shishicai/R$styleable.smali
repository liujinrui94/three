.class public final Lcom/shishicai/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final Gallery:[I

.field public static final Gallery_android_galleryItemBackground:I = 0x0

.field public static final TagViewGroup:[I

.field public static final TagViewGroup_isRadio:I = 0x1

.field public static final TagViewGroup_singleLine:I = 0x0

.field public static final TagViewGroup_tagMargin:I = 0x6

.field public static final TagViewGroup_tagMarginBottom:I = 0x5

.field public static final TagViewGroup_tagMarginLeft:I = 0x2

.field public static final TagViewGroup_tagMarginRight:I = 0x4

.field public static final TagViewGroup_tagMarginTop:I = 0x3

.field public static final innerrect:[I

.field public static final innerrect_inner_corner_color:I = 0x3

.field public static final innerrect_inner_corner_length:I = 0x4

.field public static final innerrect_inner_corner_width:I = 0x5

.field public static final innerrect_inner_height:I = 0x1

.field public static final innerrect_inner_margintop:I = 0x2

.field public static final innerrect_inner_scan_bitmap:I = 0x6

.field public static final innerrect_inner_scan_speed:I = 0x7

.field public static final innerrect_inner_width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1202
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101004c

    aput v2, v0, v1

    sput-object v0, Lcom/shishicai/R$styleable;->Gallery:[I

    .line 1233
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/shishicai/R$styleable;->TagViewGroup:[I

    .line 1369
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/shishicai/R$styleable;->innerrect:[I

    return-void

    .line 1233
    nop

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
    .end array-data

    .line 1369
    :array_1
    .array-data 4
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
        0x7f01000c
        0x7f01000d
        0x7f01000e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
