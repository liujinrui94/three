.class public final Lcn/bmob/v3/b/This;
.super Ljava/lang/Object;
.source "BLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/bmob/v3/b/This$This;,
        Lcn/bmob/v3/b/This$thing;
    }
.end annotation


# static fields
.field private static final Code:Lcn/bmob/v3/b/This$thing;

.field private static V:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcn/bmob/v3/b/This$thing;

    invoke-direct {v0}, Lcn/bmob/v3/b/This$thing;-><init>()V

    sput-object v0, Lcn/bmob/v3/b/This;->Code:Lcn/bmob/v3/b/This$thing;

    .line 58
    const-string v0, "bmob"

    sput-object v0, Lcn/bmob/v3/b/This;->V:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method private static Code([Ljava/lang/StackTraceElement;)I
    .locals 3

    .prologue
    .line 420
    const/4 v0, 0x3

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 421
    aget-object v1, p0, v0

    .line 422
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcn/bmob/v3/b/This;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 423
    add-int/lit8 v0, v0, -0x1

    .line 426
    :goto_1
    return v0

    .line 420
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static Code(I)V
    .locals 2

    .prologue
    .line 376
    if-ltz p0, :cond_0

    const/4 v0, 0x5

    if-le p0, v0, :cond_1

    .line 377
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "methodCount must be > 0 and < 5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_1
    return-void
.end method

.method private static Code(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 338
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 339
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 340
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u2551 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v3}, Lcn/bmob/v3/b/This;->V(ILjava/lang/String;Ljava/lang/String;)V

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    :cond_0
    return-void
.end method

.method private static declared-synchronized Code(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 11

    .prologue
    const/16 v10, 0xfa0

    .line 268
    const-class v2, Lcn/bmob/v3/b/This;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcn/bmob/v3/b/This;->Code:Lcn/bmob/v3/b/This$thing;

    iget v0, v0, Lcn/bmob/v3/b/This$thing;->I:I

    sget v1, Lcn/bmob/v3/b/This$This;->Code:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 294
    :goto_0
    monitor-exit v2

    return-void

    .line 1297
    :cond_0
    :try_start_1
    const-string v0, "\u2554\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    invoke-static {p0, p1, v0}, Lcn/bmob/v3/b/This;->V(ILjava/lang/String;Ljava/lang/String;)V

    .line 1301
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 1302
    sget-object v0, Lcn/bmob/v3/b/This;->Code:Lcn/bmob/v3/b/This$thing;

    iget-boolean v0, v0, Lcn/bmob/v3/b/This$thing;->V:Z

    if-eqz v0, :cond_1

    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u2551 Thread: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcn/bmob/v3/b/This;->V(ILjava/lang/String;Ljava/lang/String;)V

    .line 1334
    const-string v0, "\u255f\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    invoke-static {p0, p1, v0}, Lcn/bmob/v3/b/This;->V(ILjava/lang/String;Ljava/lang/String;)V

    .line 1306
    :cond_1
    const-string v0, ""

    .line 1308
    invoke-static {v3}, Lcn/bmob/v3/b/This;->Code([Ljava/lang/StackTraceElement;)I

    move-result v4

    move v1, p3

    .line 1310
    :goto_1
    if-lez v1, :cond_2

    .line 1311
    add-int v5, v1, v4

    .line 1312
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1313
    const-string v7, "\u2551 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v5

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 1371
    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 1372
    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1313
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v5

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v5

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v5, v3, v5

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "   "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1325
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, p1, v5}, Lcn/bmob/v3/b/This;->V(ILjava/lang/String;Ljava/lang/String;)V

    .line 1310
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 275
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 276
    array-length v3, v1

    .line 277
    if-gt v3, v10, :cond_4

    .line 278
    if-lez p3, :cond_3

    .line 2334
    const-string v0, "\u255f\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    invoke-static {p0, p1, v0}, Lcn/bmob/v3/b/This;->V(ILjava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_3
    invoke-static {p0, p1, p2}, Lcn/bmob/v3/b/This;->Code(ILjava/lang/String;Ljava/lang/String;)V

    .line 3330
    const-string v0, "\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    invoke-static {p0, p1, v0}, Lcn/bmob/v3/b/This;->V(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 285
    :cond_4
    if-lez p3, :cond_5

    .line 3334
    :try_start_2
    const-string v0, "\u255f\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    invoke-static {p0, p1, v0}, Lcn/bmob/v3/b/This;->V(ILjava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_6

    .line 289
    sub-int v4, v3, v0

    const/16 v5, 0xfa0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 291
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1, v0, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {p0, p1, v5}, Lcn/bmob/v3/b/This;->Code(ILjava/lang/String;Ljava/lang/String;)V

    .line 288
    add-int/lit16 v0, v0, 0xfa0

    goto :goto_2

    .line 4330
    :cond_6
    const-string v0, "\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    invoke-static {p0, p1, v0}, Lcn/bmob/v3/b/This;->V(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public static Code(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 107
    sget-object v0, Lcn/bmob/v3/b/This;->V:Ljava/lang/String;

    .line 1111
    sget-object v1, Lcn/bmob/v3/b/This;->Code:Lcn/bmob/v3/b/This$thing;

    iget v1, v1, Lcn/bmob/v3/b/This$thing;->Code:I

    .line 1137
    invoke-static {v1}, Lcn/bmob/v3/b/This;->Code(I)V

    .line 1144
    if-nez p0, :cond_0

    .line 1145
    const-string p0, "No message/exception is set"

    .line 1147
    :cond_0
    const/4 v2, 0x6

    invoke-static {v2, v0, p0, v1}, Lcn/bmob/v3/b/This;->Code(ILjava/lang/String;Ljava/lang/String;I)V

    .line 108
    return-void
.end method

.method private static Code(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 102
    invoke-static {p2}, Lcn/bmob/v3/b/This;->Code(I)V

    .line 103
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lcn/bmob/v3/b/This;->Code(ILjava/lang/String;Ljava/lang/String;I)V

    .line 104
    return-void
.end method

.method public static I(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 224
    sget-object v0, Lcn/bmob/v3/b/This;->V:Ljava/lang/String;

    .line 1228
    sget-object v1, Lcn/bmob/v3/b/This;->Code:Lcn/bmob/v3/b/This$thing;

    iget v1, v1, Lcn/bmob/v3/b/This$thing;->Code:I

    invoke-static {v0, p0, v1}, Lcn/bmob/v3/b/This;->V(Ljava/lang/String;Ljava/lang/String;I)V

    .line 225
    return-void
.end method

.method private static V(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 345
    .line 4382
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/bmob/v3/b/This;->V:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/bmob/v3/b/This;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    :goto_0
    packed-switch p0, :pswitch_data_0

    .line 365
    :pswitch_0
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :goto_1
    return-void

    .line 4385
    :cond_0
    sget-object v0, Lcn/bmob/v3/b/This;->V:Ljava/lang/String;

    goto :goto_0

    .line 348
    :pswitch_1
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 351
    :pswitch_2
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 354
    :pswitch_3
    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 357
    :pswitch_4
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 360
    :pswitch_5
    invoke-static {v0, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 346
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public static V(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 168
    sget-object v0, Lcn/bmob/v3/b/This;->V:Ljava/lang/String;

    .line 1172
    sget-object v1, Lcn/bmob/v3/b/This;->Code:Lcn/bmob/v3/b/This$thing;

    iget v1, v1, Lcn/bmob/v3/b/This$thing;->Code:I

    .line 1180
    invoke-static {v1}, Lcn/bmob/v3/b/This;->Code(I)V

    .line 1181
    const/4 v2, 0x4

    invoke-static {v2, v0, p0, v1}, Lcn/bmob/v3/b/This;->Code(ILjava/lang/String;Ljava/lang/String;I)V

    .line 169
    return-void
.end method

.method private static V(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 242
    invoke-static {p2}, Lcn/bmob/v3/b/This;->Code(I)V

    .line 243
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    const-string v0, "Empty/Null json content"

    invoke-static {p0, v0, p2}, Lcn/bmob/v3/b/This;->Code(Ljava/lang/String;Ljava/lang/String;I)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    :try_start_0
    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 250
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-static {p0, v0, p2}, Lcn/bmob/v3/b/This;->Code(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcn/bmob/v3/b/This;->Code(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 254
    :cond_2
    :try_start_1
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 256
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {p0, v0, p2}, Lcn/bmob/v3/b/This;->Code(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
