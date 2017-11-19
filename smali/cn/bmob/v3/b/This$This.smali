.class public final Lcn/bmob/v3/b/This$This;
.super Ljava/lang/Enum;
.source "BLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/b/This;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "This"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/bmob/v3/b/This$This;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Code:I

.field private static final synthetic I:[I

.field private static enum V:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 434
    const/4 v0, 0x1

    sput v0, Lcn/bmob/v3/b/This$This;->V:I

    .line 439
    sput v1, Lcn/bmob/v3/b/This$This;->Code:I

    .line 429
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/bmob/v3/b/This$This;->I:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method
