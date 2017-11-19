.class public final Lcn/jiguang/a/a/a/d;
.super Ljava/lang/Object;


# static fields
.field private static final f:Ljava/text/SimpleDateFormat;

.field private static final z:[Ljava/lang/String;


# instance fields
.field private a:Landroid/location/LocationManager;

.field private b:Lcn/jiguang/a/a/a/g;

.field private c:Ljava/lang/String;

.field private d:Landroid/os/Handler;

.field private e:Lcn/jiguang/a/a/a/h;

.field private final g:Landroid/location/LocationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x1e

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "\u0001\\*+A\rZ\'3d\rW\u000b&c\u0003^#5-\u000bJf)x\u000eUj7a\u0007X5\"-\u0001Q#$fBP2"

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

    const/16 v9, 0xd

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

    const-string v1, "%I5\u000ec\u0004V\u000b&c\u0003^#5"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "\u0011M)7"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "AL(\"u\u0001\\63h\u0006\u0019kga\rV6\"\u007fBH3.yB_\'.a\u0007]f$l\u0017J#go\u001b\u0019|"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "\u000eV%&y\u000bV("

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, ",Vf4x\u000bM\'%a\u0007\u00196\"\u007f\u000fP54d\rWf.~BI4\"~\u0007W2gz\n\\(gj\u0007Mf\u0000]1f\u0016\u0015B4p\u0002\u0002_C"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "6Q#gD.V%&y\u000bV(\nl\u000cX!\"\u007fBP5gc\u0017U*f"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "6Q#g}\u0010V0.i\u0007Kf\u001cj\u0012J\u001bgd\u0011\u0019/+a\u0007^\'+-\u0003K!2`\u0007W2f"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "\u0012X54d\u0014\\"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "\u000c\\20b\u0010R"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "\u0005I5"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "%I5\u000fl\u000c]*\"\u007f"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "\u000c\\2\u000bb\u0001X2.b\u000c\u0003"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "\u000c\\##-\u000cV2g\u007f\u0007J2&\u007f\u0016\u0019!7~\u000eV%&y\u000bV(ky\n\\f3d\u000f\\f0d\u0016Qf+l\u0011M|"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, ",Vf4x\u000bM\'%a\u0007\u00196\"\u007f\u000fP54d\rWf0e\u0007Wf h\u0016\u0019*&~\u0016\u0019-)b\u0015Wf+b\u0001X2.b\u000c\u0018"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "\u0005I5\u000bb\u0001X2.b\u000c\u0003"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "\u000eV%&y\u000bV(\nl\u000cX!\"\u007fBP5gc\u0017U*"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "6Q#g}\u0010V0.i\u0007Kf.~BP*+h\u0005X*gl\u0010^3*h\u000cMg"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "\u0012X54A\rZ\'3d\rW|"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "JP5\u000bl\u0011M\r)b\u0015\u0010"

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_12
    aput-object v1, v3, v2

    const/16 v2, 0x14

    const-string v1, "\u0017I\"&y\u0007n/3e,\\1\u000bb\u0001X2.b\u000c\u0019#?n\u0007I2\"iX"

    const/16 v0, 0x13

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_13
    aput-object v1, v3, v2

    const/16 v2, 0x15

    const-string v1, "BX2ga\rZ\'+Y\u000bT#z"

    const/16 v0, 0x14

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_14
    aput-object v1, v3, v2

    const/16 v2, 0x16

    const-string v1, "\u0017I\"&y\u0007\u0019*(n\u0003M/(cB_4(`B"

    const/16 v0, 0x15

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_15
    aput-object v1, v3, v2

    const/16 v2, 0x17

    const-string v1, "\u0017I\"&y\u0007\u0019*(n\u0003M/(cBP5gc\u0017U*"

    const/16 v0, 0x16

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_16
    aput-object v1, v3, v2

    const/16 v2, 0x18

    const-string v1, "NJ#5{\u0007K\u0012.`\u0007\u0004"

    const/16 v0, 0x17

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_17
    aput-object v1, v3, v2

    const/16 v2, 0x19

    const-string v1, "\u0017I\"&y\u0007\u0019#?n\u0007I2.b\u000c"

    const/16 v0, 0x18

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_18
    aput-object v1, v3, v2

    const/16 v2, 0x1a

    const-string v1, "\u000eV%&y\u000bV(\nl\u000cX!\"\u007fBP5gc\u0017U*g!B])gc\rM..c\u0005\u0018"

    const/16 v0, 0x19

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_19
    aput-object v1, v3, v2

    const/16 v2, 0x1b

    const-string v1, "\u0010\\+({\u0007\u0019*(n\u0003M/(cBU/4y\u0007W#5-\u0004X/+h\u0006\u0019f\"7"

    const/16 v0, 0x1a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1a
    aput-object v1, v3, v2

    const/16 v2, 0x1c

    const-string v1, ".V%&y\u000bV(ga\u000bJ2\"c\u0007Kf.~BW3+aB\u0015f#bBW)3e\u000bW!f"

    const/16 v0, 0x1b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1b
    aput-object v1, v3, v2

    const/16 v2, 0x1d

    const-string v1, "\u001b@?> /tk#iBq\u000e}`\u000f\u000354"

    const/16 v0, 0x1c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1c
    aput-object v1, v3, v2

    sput-object v4, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/16 v2, 0x1d

    aget-object v1, v1, v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcn/jiguang/a/a/a/d;->f:Ljava/text/SimpleDateFormat;

    return-void

    :pswitch_1d
    const/16 v9, 0x62

    goto/16 :goto_2

    :pswitch_1e
    const/16 v9, 0x39

    goto/16 :goto_2

    :pswitch_1f
    const/16 v9, 0x46

    goto/16 :goto_2

    :pswitch_20
    const/16 v9, 0x47

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
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
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcn/jiguang/a/a/a/d;->c:Ljava/lang/String;

    new-instance v0, Lcn/jiguang/a/a/a/e;

    invoke-direct {v0, p0}, Lcn/jiguang/a/a/a/e;-><init>(Lcn/jiguang/a/a/a/d;)V

    iput-object v0, p0, Lcn/jiguang/a/a/a/d;->g:Landroid/location/LocationListener;

    sget-object v0, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcn/jiguang/a/a/a/d;->a:Landroid/location/LocationManager;

    return-void
.end method

.method static synthetic a(J)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Lcn/jiguang/a/a/a/d;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcn/jiguang/a/a/a/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/a/a/a/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcn/jiguang/a/a/a/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/jiguang/a/a/a/d;->c:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/location/Location;Ljava/lang/String;Z)V
    .locals 16

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcn/jiguang/b/a/a;->a(J)J

    move-result-wide v13

    if-eqz p3, :cond_0

    sget-object v2, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    :goto_0
    sget-object v3, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v3, v3, v8

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/16 v10, 0x16

    aget-object v9, v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/16 v9, 0x15

    aget-object v8, v8, v9

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcn/jiguang/a/a/a/d;->b(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/16 v9, 0x18

    aget-object v8, v8, v9

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v13

    invoke-static {v8, v9}, Lcn/jiguang/a/a/a/d;->b(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/jiguang/a/a/a/g;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v11

    move-object/from16 v12, p2

    move/from16 v15, p3

    invoke-direct/range {v3 .. v15}, Lcn/jiguang/a/a/a/g;-><init>(DDDFFLjava/lang/String;JZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/jiguang/a/a/a/d;->b:Lcn/jiguang/a/a/a/g;

    :goto_1
    return-void

    :cond_0
    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/16 v6, 0x14

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jiguang/c/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/16 v5, 0x19

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcn/jiguang/a/a/a/d;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object v2, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/16 v3, 0x17

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcn/jiguang/a/a/a/d;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcn/jiguang/a/a/a/d;Landroid/location/Location;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/jiguang/a/a/a/d;->a(Landroid/location/Location;Ljava/lang/String;Z)V

    return-void
.end method

.method private static b(J)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/jiguang/a/a/a/d;->f:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcn/jiguang/a/a/a/d;)V
    .locals 0

    invoke-direct {p0}, Lcn/jiguang/a/a/a/d;->d()V

    return-void
.end method

.method static synthetic c(Lcn/jiguang/a/a/a/d;)V
    .locals 0

    invoke-direct {p0}, Lcn/jiguang/a/a/a/d;->e()V

    return-void
.end method

.method static synthetic d(Lcn/jiguang/a/a/a/d;)Landroid/location/LocationListener;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/a/a/a/d;->g:Landroid/location/LocationListener;

    return-object v0
.end method

.method private d()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-object v0, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    aget-object v0, v0, v5

    sget-object v1, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jiguang/a/a/a/d;->e()V

    iget-object v0, p0, Lcn/jiguang/a/a/a/d;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/a/a/a/d;->d:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/a/a/a/d;->d:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v6, p0, Lcn/jiguang/a/a/a/d;->d:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcn/jiguang/a/a/a/d;->e:Lcn/jiguang/a/a/a/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jiguang/a/a/a/d;->e:Lcn/jiguang/a/a/a/h;

    invoke-virtual {v0}, Lcn/jiguang/a/a/a/h;->b()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    aget-object v1, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/c/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    aget-object v0, v0, v5

    sget-object v1, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic e(Lcn/jiguang/a/a/a/d;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/a/a/a/d;->a:Landroid/location/LocationManager;

    return-object v0
.end method

.method private e()V
    .locals 5

    const/4 v3, 0x1

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/a/a/a/d;->g:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jiguang/a/a/a/d;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/a/a/a/d;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcn/jiguang/a/a/a/d;->g:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/16 v2, 0x1a

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    aget-object v1, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/16 v4, 0x1b

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/c/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v0, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/16 v2, 0x1c

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic f(Lcn/jiguang/a/a/a/d;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/a/a/a/d;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Lcn/jiguang/a/a/a/h;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/a/a/a/d;->e:Lcn/jiguang/a/a/a/h;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcn/jiguang/a/a/a/g;

    invoke-direct {v0, p1}, Lcn/jiguang/a/a/a/g;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/jiguang/a/a/a/d;->b:Lcn/jiguang/a/a/a/g;

    return-void
.end method

.method public final a()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcn/jiguang/a/a/a/d;->a:Landroid/location/LocationManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/jiguang/a/a/a/d;->a:Landroid/location/LocationManager;

    sget-object v3, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcn/jiguang/a/a/a/d;->a:Landroid/location/LocationManager;

    sget-object v3, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcn/jiguang/a/a/a/d;->a:Landroid/location/LocationManager;

    sget-object v3, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v2

    sget-object v2, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    aget-object v1, v2, v1

    sget-object v2, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcn/jiguang/c/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v2, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    aget-object v1, v2, v1

    sget-object v2, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcn/jiguang/c/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v2

    sget-object v2, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    aget-object v1, v2, v1

    sget-object v2, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcn/jiguang/c/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 11

    const-wide/16 v4, 0x0

    const/4 v10, 0x1

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/a/a/a/d;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcn/jiguang/a/a/a/d;->a:Landroid/location/LocationManager;

    sget-object v1, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcn/jiguang/a/a/a/d;->a:Landroid/location/LocationManager;

    sget-object v2, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    iget-object v1, p0, Lcn/jiguang/a/a/a/d;->a:Landroid/location/LocationManager;

    sget-object v3, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/16 v6, 0x8

    aget-object v3, v3, v6

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    sget-object v3, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v3, v3, v6

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/16 v8, 0xf

    aget-object v7, v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcn/jiguang/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v3, v3, v6

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/16 v8, 0xc

    aget-object v7, v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcn/jiguang/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v3, v3, v6

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/16 v8, 0x12

    aget-object v7, v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcn/jiguang/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    move-wide v8, v4

    :goto_0
    if-nez v2, :cond_1

    move-wide v6, v4

    :goto_1
    if-nez v1, :cond_2

    :goto_2
    cmp-long v3, v8, v6

    if-lez v3, :cond_4

    cmp-long v2, v8, v4

    if-lez v2, :cond_3

    :goto_3
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcn/jiguang/a/a/a/d;->a(Landroid/location/Location;Ljava/lang/String;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v1, v2, v4

    if-gez v1, :cond_6

    sget-object v1, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/16 v4, 0xd

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jiguang/a/a/a/d;->d()V

    :goto_4
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    move-wide v8, v6

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_3

    :cond_4
    cmp-long v0, v6, v4

    if-lez v0, :cond_5

    move-object v0, v2

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcn/jiguang/a/a/a/d;->a:Landroid/location/LocationManager;

    sget-object v1, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    iput-object v0, p0, Lcn/jiguang/a/a/a/d;->c:Ljava/lang/String;

    :goto_5
    iget-object v0, p0, Lcn/jiguang/a/a/a/d;->d:Landroid/os/Handler;

    if-nez v0, :cond_7

    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcn/jiguang/a/a/a/f;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcn/jiguang/a/a/a/f;-><init>(Lcn/jiguang/a/a/a/d;Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/jiguang/a/a/a/d;->d:Landroid/os/Handler;

    :cond_7
    iget-object v0, p0, Lcn/jiguang/a/a/a/d;->d:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4

    :catch_0
    move-exception v0

    sget-object v0, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    aget-object v0, v0, v10

    sget-object v1, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jiguang/a/a/a/d;->d()V

    goto :goto_4

    :cond_8
    :try_start_1
    iget-object v0, p0, Lcn/jiguang/a/a/a/d;->a:Landroid/location/LocationManager;

    sget-object v1, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    sget-object v0, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    iput-object v0, p0, Lcn/jiguang/a/a/a/d;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    sget-object v0, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    aget-object v0, v0, v10

    sget-object v1, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jiguang/a/a/a/d;->d()V

    goto/16 :goto_4

    :cond_9
    :try_start_2
    sget-object v0, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/a/a/a/d;->z:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jiguang/a/a/a/d;->d()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4
.end method

.method public final c()Lcn/jiguang/a/a/a/g;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/a/a/a/d;->b:Lcn/jiguang/a/a/a/g;

    return-object v0
.end method
