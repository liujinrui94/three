.class public final Lcn/bmob/v3/socketio/I;
.super Ljava/lang/Object;
.source "HybiParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/bmob/v3/socketio/I$This;,
        Lcn/bmob/v3/socketio/I$thing;
    }
.end annotation


# static fields
.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private B:Z

.field private C:I

.field private Code:Lcn/bmob/v3/socketio/From;

.field private D:I

.field private F:I

.field private I:I

.field private L:[B

.field private S:I

.field private V:Z

.field private Z:Z

.field private a:[B

.field private b:Z

.field private c:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcn/bmob/v3/socketio/I;->d:Ljava/util/List;

    .line 94
    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcn/bmob/v3/socketio/I;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcn/bmob/v3/socketio/From;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/bmob/v3/socketio/I;->V:Z

    .line 59
    new-array v0, v1, [B

    iput-object v0, p0, Lcn/bmob/v3/socketio/I;->L:[B

    .line 60
    new-array v0, v1, [B

    iput-object v0, p0, Lcn/bmob/v3/socketio/I;->a:[B

    .line 62
    iput-boolean v1, p0, Lcn/bmob/v3/socketio/I;->b:Z

    .line 64
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcn/bmob/v3/socketio/I;->c:Ljava/io/ByteArrayOutputStream;

    .line 99
    iput-object p1, p0, Lcn/bmob/v3/socketio/I;->Code:Lcn/bmob/v3/socketio/From;

    .line 100
    return-void
.end method

.method private static Code([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 318
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private Code(Ljava/lang/Object;II)[B
    .locals 12

    .prologue
    .line 199
    const-string v0, "HybiParser"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating frame for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " op: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcn/bmob/v3/socketio/I;->V(Ljava/lang/String;)[B

    move-result-object p1

    .line 202
    :goto_0
    if-lez p3, :cond_3

    const/4 v0, 0x2

    .line 203
    :goto_1
    array-length v1, p1

    add-int v3, v1, v0

    .line 204
    const/16 v1, 0x7d

    if-gt v3, v1, :cond_4

    const/4 v1, 0x2

    .line 205
    :goto_2
    iget-boolean v2, p0, Lcn/bmob/v3/socketio/I;->V:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x4

    :goto_3
    add-int v4, v1, v2

    .line 206
    iget-boolean v2, p0, Lcn/bmob/v3/socketio/I;->V:Z

    if-eqz v2, :cond_7

    const/16 v2, 0x80

    .line 207
    :goto_4
    add-int v5, v3, v4

    new-array v5, v5, [B

    .line 209
    const/4 v6, 0x0

    int-to-byte v7, p2

    or-int/lit8 v7, v7, -0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 211
    const/16 v6, 0x7d

    if-gt v3, v6, :cond_8

    .line 212
    const/4 v6, 0x1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v5, v6

    .line 229
    :goto_5
    if-lez p3, :cond_0

    .line 230
    div-int/lit16 v2, p3, 0x100

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v5, v4

    .line 231
    add-int/lit8 v2, v4, 0x1

    int-to-byte v3, p3

    aput-byte v3, v5, v2

    .line 233
    :cond_0
    const/4 v2, 0x0

    add-int/2addr v0, v4

    array-length v3, p1

    invoke-static {p1, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    iget-boolean v0, p0, Lcn/bmob/v3/socketio/I;->V:Z

    if-eqz v0, :cond_1

    .line 236
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 240
    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v0, v2, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    invoke-static {v5, v0, v4}, Lcn/bmob/v3/socketio/I;->Code([B[BI)[B

    .line 244
    :cond_1
    return-object v5

    .line 201
    :cond_2
    check-cast p1, [B

    goto/16 :goto_0

    .line 202
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 204
    :cond_4
    const v1, 0xffff

    if-gt v3, v1, :cond_5

    const/4 v1, 0x4

    goto/16 :goto_2

    :cond_5
    const/16 v1, 0xa

    goto/16 :goto_2

    .line 205
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 206
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 213
    :cond_8
    const v6, 0xffff

    if-gt v3, v6, :cond_9

    .line 214
    const/4 v6, 0x1

    or-int/lit8 v2, v2, 0x7e

    int-to-byte v2, v2

    aput-byte v2, v5, v6

    .line 215
    const/4 v2, 0x2

    div-int/lit16 v6, v3, 0x100

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 216
    const/4 v2, 0x3

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    goto/16 :goto_5

    .line 218
    :cond_9
    const/4 v6, 0x1

    or-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v5, v6

    .line 219
    const/4 v2, 0x2

    int-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x404c000000000000L    # 56.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 220
    const/4 v2, 0x3

    int-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4048000000000000L    # 48.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 221
    const/4 v2, 0x4

    int-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4044000000000000L    # 40.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 222
    const/4 v2, 0x5

    int-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4040000000000000L    # 32.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 223
    const/4 v2, 0x6

    int-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4038000000000000L    # 24.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 224
    const/4 v2, 0x7

    int-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4030000000000000L    # 16.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 225
    const/16 v2, 0x8

    int-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 226
    const/16 v2, 0x9

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    goto/16 :goto_5
.end method

.method private static Code([B[BI)[B
    .locals 4

    .prologue
    .line 103
    array-length v0, p1

    if-nez v0, :cond_1

    .line 108
    :cond_0
    return-object p0

    .line 105
    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    sub-int/2addr v1, p2

    if-ge v0, v1, :cond_0

    .line 106
    add-int v1, p2, v0

    add-int v2, p2, v0

    aget-byte v2, p0, v2

    rem-int/lit8 v3, v0, 0x4

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static V(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 326
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final Code(Lcn/bmob/v3/socketio/I$This;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 113
    :goto_0
    invoke-virtual {p1}, Lcn/bmob/v3/socketio/I$This;->available()I

    move-result v0

    if-eq v0, v12, :cond_1f

    .line 114
    iget v0, p0, Lcn/bmob/v3/socketio/I;->I:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 116
    :pswitch_0
    invoke-virtual {p1}, Lcn/bmob/v3/socketio/I$This;->readByte()B

    move-result v7

    .line 1139
    and-int/lit8 v0, v7, 0x40

    const/16 v5, 0x40

    if-ne v0, v5, :cond_1

    move v6, v1

    .line 1140
    :goto_1
    and-int/lit8 v0, v7, 0x20

    const/16 v5, 0x20

    if-ne v0, v5, :cond_2

    move v5, v1

    .line 1141
    :goto_2
    and-int/lit8 v0, v7, 0x10

    const/16 v8, 0x10

    if-ne v0, v8, :cond_3

    move v0, v1

    .line 1143
    :goto_3
    if-nez v6, :cond_0

    if-nez v5, :cond_0

    if-eqz v0, :cond_4

    .line 1144
    :cond_0
    new-instance v0, Lcn/bmob/v3/socketio/I$thing;

    const-string v1, "RSV not zero"

    invoke-direct {v0, v1}, Lcn/bmob/v3/socketio/I$thing;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v6, v2

    .line 1139
    goto :goto_1

    :cond_2
    move v5, v2

    .line 1140
    goto :goto_2

    :cond_3
    move v0, v2

    .line 1141
    goto :goto_3

    .line 1147
    :cond_4
    and-int/lit16 v0, v7, 0x80

    const/16 v5, 0x80

    if-ne v0, v5, :cond_5

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcn/bmob/v3/socketio/I;->Z:Z

    .line 1148
    and-int/lit8 v0, v7, 0xf

    iput v0, p0, Lcn/bmob/v3/socketio/I;->C:I

    .line 1149
    new-array v0, v2, [B

    iput-object v0, p0, Lcn/bmob/v3/socketio/I;->L:[B

    .line 1150
    new-array v0, v2, [B

    iput-object v0, p0, Lcn/bmob/v3/socketio/I;->a:[B

    .line 1152
    sget-object v0, Lcn/bmob/v3/socketio/I;->d:Ljava/util/List;

    iget v5, p0, Lcn/bmob/v3/socketio/I;->C:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1153
    new-instance v0, Lcn/bmob/v3/socketio/I$thing;

    const-string v1, "Bad opcode"

    invoke-direct {v0, v1}, Lcn/bmob/v3/socketio/I$thing;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v0, v2

    .line 1147
    goto :goto_4

    .line 1156
    :cond_6
    sget-object v0, Lcn/bmob/v3/socketio/I;->e:Ljava/util/List;

    iget v5, p0, Lcn/bmob/v3/socketio/I;->C:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcn/bmob/v3/socketio/I;->Z:Z

    if-nez v0, :cond_7

    .line 1157
    new-instance v0, Lcn/bmob/v3/socketio/I$thing;

    const-string v1, "Expected non-final packet"

    invoke-direct {v0, v1}, Lcn/bmob/v3/socketio/I$thing;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1160
    :cond_7
    iput v1, p0, Lcn/bmob/v3/socketio/I;->I:I

    goto/16 :goto_0

    .line 119
    :pswitch_1
    invoke-virtual {p1}, Lcn/bmob/v3/socketio/I$This;->readByte()B

    move-result v5

    .line 1164
    and-int/lit16 v0, v5, 0x80

    const/16 v6, 0x80

    if-ne v0, v6, :cond_8

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcn/bmob/v3/socketio/I;->B:Z

    .line 1165
    and-int/lit8 v0, v5, 0x7f

    iput v0, p0, Lcn/bmob/v3/socketio/I;->F:I

    .line 1167
    iget v0, p0, Lcn/bmob/v3/socketio/I;->F:I

    if-ltz v0, :cond_a

    iget v0, p0, Lcn/bmob/v3/socketio/I;->F:I

    const/16 v5, 0x7d

    if-gt v0, v5, :cond_a

    .line 1168
    iget-boolean v0, p0, Lcn/bmob/v3/socketio/I;->B:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    :goto_6
    iput v0, p0, Lcn/bmob/v3/socketio/I;->I:I

    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 1164
    goto :goto_5

    :cond_9
    move v0, v3

    .line 1168
    goto :goto_6

    .line 1170
    :cond_a
    iget v0, p0, Lcn/bmob/v3/socketio/I;->F:I

    const/16 v5, 0x7e

    if-ne v0, v5, :cond_b

    move v0, v4

    :goto_7
    iput v0, p0, Lcn/bmob/v3/socketio/I;->S:I

    .line 1171
    iput v4, p0, Lcn/bmob/v3/socketio/I;->I:I

    goto/16 :goto_0

    .line 1170
    :cond_b
    const/16 v0, 0x8

    goto :goto_7

    .line 122
    :pswitch_2
    iget v0, p0, Lcn/bmob/v3/socketio/I;->S:I

    invoke-virtual {p1, v0}, Lcn/bmob/v3/socketio/I$This;->Code(I)[B

    move-result-object v5

    .line 1333
    array-length v8, v5

    .line 1385
    array-length v0, v5

    if-ge v0, v8, :cond_c

    .line 1386
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length must be less than or equal to b.length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1388
    :cond_c
    const-wide/16 v6, 0x0

    move v0, v2

    .line 1389
    :goto_8
    if-ge v0, v8, :cond_d

    .line 1390
    add-int/lit8 v9, v8, -0x1

    sub-int/2addr v9, v0

    shl-int/lit8 v9, v9, 0x3

    .line 1391
    aget-byte v10, v5, v0

    and-int/lit16 v10, v10, 0xff

    shl-int v9, v10, v9

    int-to-long v10, v9

    add-long/2addr v6, v10

    .line 1389
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1334
    :cond_d
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-ltz v0, :cond_e

    const-wide/32 v8, 0x7fffffff

    cmp-long v0, v6, v8

    if-lez v0, :cond_f

    .line 1335
    :cond_e
    new-instance v0, Lcn/bmob/v3/socketio/I$thing;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad integer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/bmob/v3/socketio/I$thing;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1337
    :cond_f
    long-to-int v0, v6

    .line 1176
    iput v0, p0, Lcn/bmob/v3/socketio/I;->F:I

    .line 1177
    iget-boolean v0, p0, Lcn/bmob/v3/socketio/I;->B:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x3

    :goto_9
    iput v0, p0, Lcn/bmob/v3/socketio/I;->I:I

    goto/16 :goto_0

    :cond_10
    move v0, v3

    goto :goto_9

    .line 125
    :pswitch_3
    invoke-virtual {p1, v3}, Lcn/bmob/v3/socketio/I$This;->Code(I)[B

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/socketio/I;->L:[B

    .line 126
    iput v3, p0, Lcn/bmob/v3/socketio/I;->I:I

    goto/16 :goto_0

    .line 129
    :pswitch_4
    iget v0, p0, Lcn/bmob/v3/socketio/I;->F:I

    invoke-virtual {p1, v0}, Lcn/bmob/v3/socketio/I$This;->Code(I)[B

    move-result-object v0

    iput-object v0, p0, Lcn/bmob/v3/socketio/I;->a:[B

    .line 2258
    iget-object v0, p0, Lcn/bmob/v3/socketio/I;->a:[B

    iget-object v5, p0, Lcn/bmob/v3/socketio/I;->L:[B

    invoke-static {v0, v5, v2}, Lcn/bmob/v3/socketio/I;->Code([B[BI)[B

    move-result-object v5

    .line 2259
    iget v0, p0, Lcn/bmob/v3/socketio/I;->C:I

    .line 2261
    if-nez v0, :cond_14

    .line 2262
    iget v0, p0, Lcn/bmob/v3/socketio/I;->D:I

    if-nez v0, :cond_11

    .line 2263
    new-instance v0, Lcn/bmob/v3/socketio/I$thing;

    const-string v1, "Mode was not set."

    invoke-direct {v0, v1}, Lcn/bmob/v3/socketio/I$thing;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2265
    :cond_11
    iget-object v0, p0, Lcn/bmob/v3/socketio/I;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 2266
    iget-boolean v0, p0, Lcn/bmob/v3/socketio/I;->Z:Z

    if-eqz v0, :cond_13

    .line 2267
    iget-object v0, p0, Lcn/bmob/v3/socketio/I;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 2268
    iget v5, p0, Lcn/bmob/v3/socketio/I;->D:I

    if-ne v5, v1, :cond_12

    .line 2269
    iget-object v5, p0, Lcn/bmob/v3/socketio/I;->Code:Lcn/bmob/v3/socketio/From;

    invoke-virtual {v5}, Lcn/bmob/v3/socketio/From;->Code()Lcn/bmob/v3/socketio/From$This;

    move-result-object v5

    invoke-static {v0}, Lcn/bmob/v3/socketio/I;->Code([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lcn/bmob/v3/socketio/From$This;->Code(Ljava/lang/String;)V

    .line 2312
    :cond_12
    iput v2, p0, Lcn/bmob/v3/socketio/I;->D:I

    .line 2313
    iget-object v0, p0, Lcn/bmob/v3/socketio/I;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 131
    :cond_13
    :goto_a
    iput v2, p0, Lcn/bmob/v3/socketio/I;->I:I

    goto/16 :goto_0

    .line 2276
    :cond_14
    if-ne v0, v1, :cond_16

    .line 2277
    iget-boolean v0, p0, Lcn/bmob/v3/socketio/I;->Z:Z

    if-eqz v0, :cond_15

    .line 2278
    invoke-static {v5}, Lcn/bmob/v3/socketio/I;->Code([B)Ljava/lang/String;

    move-result-object v0

    .line 2279
    iget-object v5, p0, Lcn/bmob/v3/socketio/I;->Code:Lcn/bmob/v3/socketio/From;

    invoke-virtual {v5}, Lcn/bmob/v3/socketio/From;->Code()Lcn/bmob/v3/socketio/From$This;

    move-result-object v5

    invoke-interface {v5, v0}, Lcn/bmob/v3/socketio/From$This;->Code(Ljava/lang/String;)V

    goto :goto_a

    .line 2281
    :cond_15
    iput v1, p0, Lcn/bmob/v3/socketio/I;->D:I

    .line 2282
    iget-object v0, p0, Lcn/bmob/v3/socketio/I;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_a

    .line 2285
    :cond_16
    if-ne v0, v4, :cond_17

    .line 2286
    iget-boolean v0, p0, Lcn/bmob/v3/socketio/I;->Z:Z

    if-nez v0, :cond_13

    .line 2289
    iput v4, p0, Lcn/bmob/v3/socketio/I;->D:I

    .line 2290
    iget-object v0, p0, Lcn/bmob/v3/socketio/I;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_a

    .line 2293
    :cond_17
    const/16 v6, 0x8

    if-ne v0, v6, :cond_1c

    .line 2294
    array-length v0, v5

    if-lt v0, v4, :cond_18

    aget-byte v0, v5, v2

    mul-int/lit16 v0, v0, 0x100

    aget-byte v6, v5, v1

    add-int/2addr v0, v6

    .line 2295
    :goto_b
    array-length v6, v5

    if-le v6, v4, :cond_1b

    .line 2374
    array-length v6, v5

    .line 3359
    if-le v4, v6, :cond_19

    .line 3360
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_18
    move v0, v2

    .line 2294
    goto :goto_b

    .line 3362
    :cond_19
    array-length v7, v5

    .line 3363
    if-le v4, v7, :cond_1a

    .line 3364
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3366
    :cond_1a
    sub-int/2addr v6, v4

    .line 3367
    sub-int/2addr v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 3368
    new-array v6, v6, [B

    .line 3369
    invoke-static {v5, v4, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2295
    invoke-static {v6}, Lcn/bmob/v3/socketio/I;->Code([B)Ljava/lang/String;

    move-result-object v5

    .line 2296
    :goto_c
    const-string v6, "HybiParser"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Got close op! "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    iget-object v6, p0, Lcn/bmob/v3/socketio/I;->Code:Lcn/bmob/v3/socketio/From;

    invoke-virtual {v6}, Lcn/bmob/v3/socketio/From;->Code()Lcn/bmob/v3/socketio/From$This;

    move-result-object v6

    invoke-interface {v6, v0, v5}, Lcn/bmob/v3/socketio/From$This;->Code(ILjava/lang/String;)V

    goto/16 :goto_a

    .line 2295
    :cond_1b
    const/4 v5, 0x0

    goto :goto_c

    .line 2299
    :cond_1c
    const/16 v6, 0x9

    if-ne v0, v6, :cond_1e

    .line 2300
    array-length v0, v5

    const/16 v6, 0x7d

    if-le v0, v6, :cond_1d

    new-instance v0, Lcn/bmob/v3/socketio/I$thing;

    const-string v1, "Ping payload too large"

    invoke-direct {v0, v1}, Lcn/bmob/v3/socketio/I$thing;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2301
    :cond_1d
    const-string v0, "HybiParser"

    const-string v6, "Sending pong!!"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    iget-object v0, p0, Lcn/bmob/v3/socketio/I;->Code:Lcn/bmob/v3/socketio/From;

    .line 4189
    const/16 v6, 0xa

    invoke-direct {p0, v5, v6, v12}, Lcn/bmob/v3/socketio/I;->Code(Ljava/lang/Object;II)[B

    move-result-object v5

    .line 2302
    invoke-virtual {v0, v5}, Lcn/bmob/v3/socketio/From;->Code([B)V

    goto/16 :goto_a

    .line 2304
    :cond_1e
    const/16 v6, 0xa

    if-ne v0, v6, :cond_13

    .line 2305
    invoke-static {v5}, Lcn/bmob/v3/socketio/I;->Code([B)Ljava/lang/String;

    move-result-object v0

    .line 2307
    const-string v5, "HybiParser"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Got pong! "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 135
    :cond_1f
    iget-object v0, p0, Lcn/bmob/v3/socketio/I;->Code:Lcn/bmob/v3/socketio/From;

    invoke-virtual {v0}, Lcn/bmob/v3/socketio/From;->Code()Lcn/bmob/v3/socketio/From$This;

    move-result-object v0

    const-string v1, "EOF"

    invoke-interface {v0, v2, v1}, Lcn/bmob/v3/socketio/From$This;->Code(ILjava/lang/String;)V

    .line 136
    return-void

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final Code(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 181
    .line 4193
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcn/bmob/v3/socketio/I;->Code(Ljava/lang/Object;II)[B

    move-result-object v0

    .line 181
    return-object v0
.end method
