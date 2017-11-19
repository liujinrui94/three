.class public final Lcn/bmob/v3/b/thing;
.super Ljava/lang/Object;
.source "Base64Coder.java"


# static fields
.field private static final Code:[C

.field private static final V:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x80

    const/16 v5, 0x40

    const/4 v0, 0x0

    .line 6
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    new-array v1, v5, [C

    sput-object v1, Lcn/bmob/v3/b/thing;->Code:[C

    .line 13
    const/16 v1, 0x41

    move v2, v0

    :goto_0
    const/16 v3, 0x5a

    if-gt v1, v3, :cond_0

    sget-object v4, Lcn/bmob/v3/b/thing;->Code:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v1, v4, v2

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    move v2, v3

    goto :goto_0

    .line 14
    :cond_0
    const/16 v1, 0x61

    :goto_1
    const/16 v3, 0x7a

    if-gt v1, v3, :cond_1

    sget-object v4, Lcn/bmob/v3/b/thing;->Code:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v1, v4, v2

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    move v2, v3

    goto :goto_1

    .line 15
    :cond_1
    const/16 v1, 0x30

    :goto_2
    const/16 v3, 0x39

    if-gt v1, v3, :cond_2

    sget-object v4, Lcn/bmob/v3/b/thing;->Code:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v1, v4, v2

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    move v2, v3

    goto :goto_2

    .line 16
    :cond_2
    sget-object v1, Lcn/bmob/v3/b/thing;->Code:[C

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x2b

    aput-char v4, v1, v2

    .line 17
    sget-object v1, Lcn/bmob/v3/b/thing;->Code:[C

    const/16 v2, 0x2f

    aput-char v2, v1, v3

    .line 21
    new-array v1, v6, [B

    sput-object v1, Lcn/bmob/v3/b/thing;->V:[B

    move v1, v0

    .line 24
    :goto_3
    if-ge v1, v6, :cond_3

    sget-object v2, Lcn/bmob/v3/b/thing;->V:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 25
    :cond_3
    :goto_4
    if-ge v0, v5, :cond_4

    sget-object v1, Lcn/bmob/v3/b/thing;->V:[B

    sget-object v2, Lcn/bmob/v3/b/thing;->Code:[C

    aget-char v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 26
    :cond_4
    return-void
.end method

.method public static Code(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 36
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1084
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Lcn/bmob/v3/b/thing;->Code([BII)[C

    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private static Code([BII)[C
    .locals 13

    .prologue
    const/16 v3, 0x3d

    const/4 v1, 0x0

    .line 109
    shl-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v6, v0, 0x3

    .line 110
    add-int/lit8 v0, p2, 0x2

    div-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x2

    .line 111
    new-array v7, v0, [C

    .line 113
    add-int/lit8 v8, p2, 0x0

    move v5, v1

    move v2, v1

    .line 115
    :goto_0
    if-ge v2, v8, :cond_4

    .line 116
    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v9, v2, 0xff

    .line 117
    if-ge v0, v8, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    move v4, v0

    move v0, v2

    .line 118
    :goto_1
    if-ge v0, v8, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 119
    :goto_2
    ushr-int/lit8 v10, v9, 0x2

    .line 120
    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x4

    ushr-int/lit8 v11, v4, 0x4

    or-int/2addr v9, v11

    .line 121
    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x2

    ushr-int/lit8 v11, v0, 0x6

    or-int/2addr v4, v11

    .line 122
    and-int/lit8 v11, v0, 0x3f

    .line 123
    add-int/lit8 v0, v5, 0x1

    sget-object v12, Lcn/bmob/v3/b/thing;->Code:[C

    aget-char v10, v12, v10

    aput-char v10, v7, v5

    .line 124
    add-int/lit8 v5, v0, 0x1

    sget-object v10, Lcn/bmob/v3/b/thing;->Code:[C

    aget-char v9, v10, v9

    aput-char v9, v7, v0

    .line 125
    if-ge v5, v6, :cond_2

    sget-object v0, Lcn/bmob/v3/b/thing;->Code:[C

    aget-char v0, v0, v4

    :goto_3
    aput-char v0, v7, v5

    .line 126
    add-int/lit8 v4, v5, 0x1

    .line 127
    if-ge v4, v6, :cond_3

    sget-object v0, Lcn/bmob/v3/b/thing;->Code:[C

    aget-char v0, v0, v11

    :goto_4
    aput-char v0, v7, v4

    .line 128
    add-int/lit8 v0, v4, 0x1

    move v5, v0

    .line 129
    goto :goto_0

    :cond_0
    move v4, v1

    .line 117
    goto :goto_1

    :cond_1
    move v2, v0

    move v0, v1

    .line 118
    goto :goto_2

    :cond_2
    move v0, v3

    .line 125
    goto :goto_3

    :cond_3
    move v0, v3

    .line 127
    goto :goto_4

    .line 130
    :cond_4
    return-object v7
.end method
