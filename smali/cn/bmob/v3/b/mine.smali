.class public final Lcn/bmob/v3/b/mine;
.super Ljava/lang/Object;
.source "EncryptMD5.java"


# static fields
.field private static final Code:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcn/bmob/v3/b/mine;->Code:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static final Code(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 14
    const/16 v1, 0x10

    new-array v2, v1, [C

    fill-array-data v2, :array_0

    .line 17
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 18
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 19
    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 20
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 21
    array-length v4, v3

    .line 22
    shl-int/lit8 v1, v4, 0x1

    new-array v5, v1, [C

    move v1, v0

    .line 24
    :goto_0
    if-ge v0, v4, :cond_0

    .line 25
    aget-byte v6, v3, v0

    .line 26
    add-int/lit8 v7, v1, 0x1

    ushr-int/lit8 v8, v6, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v2, v8

    aput-char v8, v5, v1

    .line 27
    add-int/lit8 v1, v7, 0x1

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v2, v6

    aput-char v6, v5, v7

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1

    .line 14
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static Code([B)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 74
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 75
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 76
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 77
    const/16 v1, 0x20

    new-array v3, v1, [C

    move v1, v0

    .line 81
    :goto_0
    const/16 v4, 0x10

    if-lt v1, v4, :cond_0

    .line 82
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    .line 92
    :goto_1
    return-object v0

    .line 83
    :cond_0
    aget-byte v4, v2, v1

    .line 84
    add-int/lit8 v5, v0, 0x1

    .line 85
    sget-object v6, Lcn/bmob/v3/b/mine;->Code:[C

    ushr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v3, v0

    .line 86
    add-int/lit8 v0, v5, 0x1

    .line 87
    sget-object v6, Lcn/bmob/v3/b/mine;->Code:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v3, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    add-int/lit8 v1, v1, 0x1

    .line 89
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method
