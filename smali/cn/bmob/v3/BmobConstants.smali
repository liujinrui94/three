.class public final Lcn/bmob/v3/BmobConstants;
.super Ljava/lang/Object;
.source "BmobConstants.java"


# static fields
.field public static BLOCK_SIZE:I = 0x0

.field public static CONNECT_TIMEOUT:I = 0x0

.field public static final COUNT_RETRY:I = 0x2

.field public static final DEBUG:Z = false

.field public static final ERROR_CLASS:Ljava/lang/String; = " class must not be null "

.field public static final ERROR_LISTENER:Ljava/lang/String; = " listener must not be null "

.field public static EXPIRATION:J = 0x0L

.field public static final LIMIT_BATCH_SIZE:I = 0x32

.field public static final NULL_LISTENER:Ljava/lang/String; = " listener is null "

.field public static final TAG:Ljava/lang/String; = "bmob"

.field public static final TIME_DELAY_RETRY:I = 0x3e8

.field public static final TYPE_CDN:Ljava/lang/String; = "upyun"

.field public static final VERSION_NAME:Ljava/lang/String; = "v3.5.0"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const/high16 v0, 0x80000

    sput v0, Lcn/bmob/v3/BmobConstants;->BLOCK_SIZE:I

    .line 39
    const-wide/16 v0, 0x708

    sput-wide v0, Lcn/bmob/v3/BmobConstants;->EXPIRATION:J

    .line 44
    const/16 v0, 0x1e

    sput v0, Lcn/bmob/v3/BmobConstants;->CONNECT_TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
