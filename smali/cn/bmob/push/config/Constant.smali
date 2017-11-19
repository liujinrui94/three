.class public Lcn/bmob/push/config/Constant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static DEBUG_MODE:Z

.field public static HEARTBEAT_TIME:I

.field public static HEART_HALF_TIME:J

.field public static VERSION:Ljava/lang/String;

.field public static initUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "http://push.bmob.cn"

    sput-object v0, Lcn/bmob/push/config/Constant;->initUrl:Ljava/lang/String;

    .line 20
    const-string v0, "0.8"

    sput-object v0, Lcn/bmob/push/config/Constant;->VERSION:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcn/bmob/push/config/Constant;->DEBUG_MODE:Z

    .line 30
    const/16 v0, 0x78

    sput v0, Lcn/bmob/push/config/Constant;->HEARTBEAT_TIME:I

    .line 35
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcn/bmob/push/config/Constant;->HEART_HALF_TIME:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
