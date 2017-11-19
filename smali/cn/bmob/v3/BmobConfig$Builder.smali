.class public final Lcn/bmob/v3/BmobConfig$Builder;
.super Ljava/lang/Object;
.source "BmobConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/BmobConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private B:J

.field private Code:Landroid/content/Context;

.field private I:J

.field private V:Ljava/lang/String;

.field private Z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcn/bmob/v3/BmobConfig$Builder;->Code:Landroid/content/Context;

    .line 36
    return-void
.end method

.method static synthetic B(Lcn/bmob/v3/BmobConfig$Builder;)J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcn/bmob/v3/BmobConfig$Builder;->B:J

    return-wide v0
.end method

.method static synthetic Code(Lcn/bmob/v3/BmobConfig$Builder;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcn/bmob/v3/BmobConfig$Builder;->Code:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic I(Lcn/bmob/v3/BmobConfig$Builder;)J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcn/bmob/v3/BmobConfig$Builder;->I:J

    return-wide v0
.end method

.method static synthetic V(Lcn/bmob/v3/BmobConfig$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcn/bmob/v3/BmobConfig$Builder;->V:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Z(Lcn/bmob/v3/BmobConfig$Builder;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcn/bmob/v3/BmobConfig$Builder;->Z:I

    return v0
.end method


# virtual methods
.method public final build()Lcn/bmob/v3/BmobConfig;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcn/bmob/v3/BmobConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/bmob/v3/BmobConfig;-><init>(Lcn/bmob/v3/BmobConfig$Builder;B)V

    return-object v0
.end method

.method public final setApplicationId(Ljava/lang/String;)Lcn/bmob/v3/BmobConfig$Builder;
    .locals 0
    .param p1, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcn/bmob/v3/BmobConfig$Builder;->V:Ljava/lang/String;

    .line 40
    return-object p0
.end method

.method public final setConnectTimeout(J)Lcn/bmob/v3/BmobConfig$Builder;
    .locals 1
    .param p1, "connectTimeout"    # J

    .prologue
    .line 44
    iput-wide p1, p0, Lcn/bmob/v3/BmobConfig$Builder;->I:J

    .line 45
    return-object p0
.end method

.method public final setFileExpiration(J)Lcn/bmob/v3/BmobConfig$Builder;
    .locals 1
    .param p1, "expiration"    # J

    .prologue
    .line 54
    iput-wide p1, p0, Lcn/bmob/v3/BmobConfig$Builder;->B:J

    .line 55
    return-object p0
.end method

.method public final setUploadBlockSize(I)Lcn/bmob/v3/BmobConfig$Builder;
    .locals 0
    .param p1, "blockSize"    # I

    .prologue
    .line 49
    iput p1, p0, Lcn/bmob/v3/BmobConfig$Builder;->Z:I

    .line 50
    return-object p0
.end method
