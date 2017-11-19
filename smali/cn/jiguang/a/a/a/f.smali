.class final Lcn/jiguang/a/a/a/f;
.super Landroid/os/Handler;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field final synthetic a:Lcn/jiguang/a/a/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0xb

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, ":\u0007R\u0000\u0013n\u0002R\r"

    const/4 v0, -0x1

    move-object v4, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gt v5, v7, :cond_2

    :cond_0
    move-object v7, v1

    move v8, v6

    move v11, v5

    move-object v5, v1

    move v1, v11

    :goto_1
    aget-char v10, v5, v6

    rem-int/lit8 v9, v8, 0x5

    packed-switch v9, :pswitch_data_0

    const/16 v9, 0x72

    :goto_2
    xor-int/2addr v9, v10

    int-to-char v9, v9

    aput-char v9, v5, v6

    add-int/lit8 v6, v8, 0x1

    if-nez v1, :cond_1

    move-object v5, v7

    move v8, v6

    move v6, v1

    goto :goto_1

    :cond_1
    move v5, v1

    move-object v1, v7

    :cond_2
    if-gt v5, v6, :cond_0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_1

    aput-object v1, v3, v2

    const/4 v2, 0x1

    const-string v1, "N\u0003XC\u0002h\u0004K\n\u0016\u007f\u0019\u001d\n\u0001:\u0002Q\u000f\u0017}\nQC\u0013h\u000cH\u000e\u0017t\u001f\u001c"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "}\u000eIC"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "m\u0003X\rRv\u0004^\u0002\u0006s\u0004SC\u0006s\u0006XC\u001do\u001f\u001d"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "t\u000eI\u0014\u001dh\u0000"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, ":\u001fT\u000e\u0017:\u0004H\u0017R"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "}\u001bN"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "}\u000eIC\u0015j\u0018\u001d\u0017\u001bw\u000e\u001d\u000c\u0007nK"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "]\u001bN*\u001c|\u0004p\u0002\u001c{\u000cX\u0011"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "T\u0004\u001d\u0010\u0007s\u001f\\\u0001\u001e\u007fKM\u0006\u0000w\u0002N\u0010\u001bu\u0005\u001d\u0014\u001a\u007f\u0005\u001d\u0004\u0017nKQ\u0002\u0001nKV\r\u001dm\u0005\u001d\u000f\u001dy\nI\n\u001dtJ"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "h\u000eL\u0016\u0017i\u001f\u001d"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    sput-object v4, Lcn/jiguang/a/a/a/f;->z:[Ljava/lang/String;

    return-void

    :pswitch_a
    const/16 v9, 0x1a

    goto :goto_2

    :pswitch_b
    const/16 v9, 0x6b

    goto :goto_2

    :pswitch_c
    const/16 v9, 0x3d

    goto :goto_2

    :pswitch_d
    const/16 v9, 0x63

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public constructor <init>(Lcn/jiguang/a/a/a/d;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/a/a/a/f;->a:Lcn/jiguang/a/a/a/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const/16 v6, 0x8

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcn/jiguang/a/a/a/f;->a:Lcn/jiguang/a/a/a/d;

    invoke-static {v0}, Lcn/jiguang/a/a/a/d;->a(Lcn/jiguang/a/a/a/d;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/a/a/a/f;->a:Lcn/jiguang/a/a/a/d;

    invoke-static {v0}, Lcn/jiguang/a/a/a/d;->a(Lcn/jiguang/a/a/a/d;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/jiguang/a/a/a/f;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jiguang/a/a/a/f;->z:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/a/a/a/f;->z:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/a/a/a/f;->a:Lcn/jiguang/a/a/a/d;

    sget-object v1, Lcn/jiguang/a/a/a/f;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/a/a/a/d;->a(Lcn/jiguang/a/a/a/d;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcn/jiguang/a/a/a/f;->a:Lcn/jiguang/a/a/a/d;

    invoke-static {v0}, Lcn/jiguang/a/a/a/d;->c(Lcn/jiguang/a/a/a/d;)V

    iget-object v0, p0, Lcn/jiguang/a/a/a/f;->a:Lcn/jiguang/a/a/a/d;

    invoke-static {v0}, Lcn/jiguang/a/a/a/d;->e(Lcn/jiguang/a/a/a/d;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcn/jiguang/a/a/a/f;->a:Lcn/jiguang/a/a/a/d;

    invoke-static {v1}, Lcn/jiguang/a/a/a/d;->a(Lcn/jiguang/a/a/a/d;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/jiguang/a/a/a/f;->a:Lcn/jiguang/a/a/a/d;

    invoke-static {v5}, Lcn/jiguang/a/a/a/d;->d(Lcn/jiguang/a/a/a/d;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    sget-object v0, Lcn/jiguang/a/a/a/f;->z:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jiguang/a/a/a/f;->z:[Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jiguang/a/a/a/f;->a:Lcn/jiguang/a/a/a/d;

    invoke-static {v2}, Lcn/jiguang/a/a/a/d;->a(Lcn/jiguang/a/a/a/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jiguang/a/a/a/f;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/a/a/a/f;->a:Lcn/jiguang/a/a/a/d;

    invoke-static {v0}, Lcn/jiguang/a/a/a/d;->f(Lcn/jiguang/a/a/a/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcn/jiguang/a/a/a/f;->z:[Ljava/lang/String;

    aget-object v1, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jiguang/a/a/a/f;->z:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/c/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/a/a/a/f;->a:Lcn/jiguang/a/a/a/d;

    invoke-static {v0}, Lcn/jiguang/a/a/a/d;->b(Lcn/jiguang/a/a/a/d;)V

    goto/16 :goto_0

    :cond_0
    :try_start_1
    sget-object v0, Lcn/jiguang/a/a/a/f;->z:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jiguang/a/a/a/f;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jiguang/a/a/a/f;->a:Lcn/jiguang/a/a/a/d;

    invoke-static {v2}, Lcn/jiguang/a/a/a/d;->a(Lcn/jiguang/a/a/a/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jiguang/a/a/a/f;->z:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/a/a/a/f;->a:Lcn/jiguang/a/a/a/d;

    invoke-static {v0}, Lcn/jiguang/a/a/a/d;->b(Lcn/jiguang/a/a/a/d;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcn/jiguang/a/a/a/f;->a:Lcn/jiguang/a/a/a/d;

    invoke-static {v0}, Lcn/jiguang/a/a/a/d;->e(Lcn/jiguang/a/a/a/d;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcn/jiguang/a/a/a/f;->a:Lcn/jiguang/a/a/a/d;

    invoke-static {v1}, Lcn/jiguang/a/a/a/d;->a(Lcn/jiguang/a/a/a/d;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/jiguang/a/a/a/f;->a:Lcn/jiguang/a/a/a/d;

    invoke-static {v5}, Lcn/jiguang/a/a/a/d;->d(Lcn/jiguang/a/a/a/d;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    sget-object v0, Lcn/jiguang/a/a/a/f;->z:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jiguang/a/a/a/f;->z:[Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jiguang/a/a/a/f;->a:Lcn/jiguang/a/a/a/d;

    invoke-static {v2}, Lcn/jiguang/a/a/a/d;->a(Lcn/jiguang/a/a/a/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jiguang/a/a/a/f;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/a/a/a/f;->a:Lcn/jiguang/a/a/a/d;

    invoke-static {v0}, Lcn/jiguang/a/a/a/d;->f(Lcn/jiguang/a/a/a/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sget-object v0, Lcn/jiguang/a/a/a/f;->z:[Ljava/lang/String;

    aget-object v0, v0, v6

    sget-object v1, Lcn/jiguang/a/a/a/f;->z:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/a/a/a/f;->a:Lcn/jiguang/a/a/a/d;

    invoke-static {v0}, Lcn/jiguang/a/a/a/d;->b(Lcn/jiguang/a/a/a/d;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    sget-object v0, Lcn/jiguang/a/a/a/f;->z:[Ljava/lang/String;

    aget-object v0, v0, v6

    sget-object v1, Lcn/jiguang/a/a/a/f;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/a/a/a/f;->a:Lcn/jiguang/a/a/a/d;

    invoke-static {v0}, Lcn/jiguang/a/a/a/d;->b(Lcn/jiguang/a/a/a/d;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
