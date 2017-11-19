.class public final Lcn/bmob/v3/http/b/thing$This;
.super Ljava/lang/Enum;
.source "HttpLoggingInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/http/b/thing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "This"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/bmob/v3/http/b/thing$This;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic B:[I

.field public static final enum Code:I

.field public static final enum I:I

.field public static final enum V:I

.field private static enum Z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 34
    const/4 v0, 0x1

    sput v0, Lcn/bmob/v3/http/b/thing$This;->Code:I

    .line 45
    const/4 v0, 0x2

    sput v0, Lcn/bmob/v3/http/b/thing$This;->Z:I

    .line 63
    const/4 v0, 0x3

    sput v0, Lcn/bmob/v3/http/b/thing$This;->V:I

    .line 85
    sput v1, Lcn/bmob/v3/http/b/thing$This;->I:I

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/bmob/v3/http/b/thing$This;->B:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method
