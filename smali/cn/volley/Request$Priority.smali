.class public final enum Lcn/volley/Request$Priority;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/volley/Request$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcn/volley/Request$Priority;

.field public static final enum HIGH:Lcn/volley/Request$Priority;

.field public static final enum IMMEDIATE:Lcn/volley/Request$Priority;

.field public static final enum LOW:Lcn/volley/Request$Priority;

.field public static final enum NORMAL:Lcn/volley/Request$Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 464
    new-instance v0, Lcn/volley/Request$Priority;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcn/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/volley/Request$Priority;->LOW:Lcn/volley/Request$Priority;

    .line 465
    new-instance v0, Lcn/volley/Request$Priority;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcn/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/volley/Request$Priority;->NORMAL:Lcn/volley/Request$Priority;

    .line 466
    new-instance v0, Lcn/volley/Request$Priority;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lcn/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/volley/Request$Priority;->HIGH:Lcn/volley/Request$Priority;

    .line 467
    new-instance v0, Lcn/volley/Request$Priority;

    const-string v1, "IMMEDIATE"

    invoke-direct {v0, v1, v5}, Lcn/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/volley/Request$Priority;->IMMEDIATE:Lcn/volley/Request$Priority;

    .line 463
    const/4 v0, 0x4

    new-array v0, v0, [Lcn/volley/Request$Priority;

    sget-object v1, Lcn/volley/Request$Priority;->LOW:Lcn/volley/Request$Priority;

    aput-object v1, v0, v2

    sget-object v1, Lcn/volley/Request$Priority;->NORMAL:Lcn/volley/Request$Priority;

    aput-object v1, v0, v3

    sget-object v1, Lcn/volley/Request$Priority;->HIGH:Lcn/volley/Request$Priority;

    aput-object v1, v0, v4

    sget-object v1, Lcn/volley/Request$Priority;->IMMEDIATE:Lcn/volley/Request$Priority;

    aput-object v1, v0, v5

    sput-object v0, Lcn/volley/Request$Priority;->ENUM$VALUES:[Lcn/volley/Request$Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 463
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
