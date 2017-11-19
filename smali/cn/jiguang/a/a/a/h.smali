.class public final Lcn/jiguang/a/a/a/h;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Z

.field private static volatile c:Lcn/jiguang/a/a/a/h;

.field private static final d:Ljava/lang/Object;

.field private static final z:[Ljava/lang/String;


# instance fields
.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Lcn/jiguang/a/a/a/b;

.field private m:Lcn/jiguang/a/a/a/d;

.field private n:Lcn/jiguang/a/a/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x2a

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "\rkG"

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

    const/16 v9, 0x1f

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

    const-string v1, "\u001drR~"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "\u001ebDr"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "\u0006tWvs5\u007fZd"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "\u0006tWHx\u001ah"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "-~@7z\u0018i[e?\u0006tW7v\u0004}["

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "\u000e~Xrk\u000f;R~s\u000f;Rvv\u0006~P;?\u000crXrq\u000bvQ-u\u001anG\u007f@\u0006yGHv\u0004}[9u\u0019tZ"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "&tWvk\u0003tZ-?"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "\u001fuQoo\u000fx@r{JtZ7s\u0008h\u0014ez\u001atFcO\u0018~Dvm\u000f"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "\u0006tWHh\u0003}]"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "&tWvk\u0003tZ7q\u0005o\u0014tw\u000buSr{F;S~i\u000f;Ag?\u0018~Dxm\u001e"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "\rkGV{\u000eiQdlP"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "\ttZcz\u0004o"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "+wX7p\u000c;Xx|\u000bo]xqJrZqpJlUd?\u0004nX{3J|]azJnD7m\u000fk[ek"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "\u0006tWH|\u000fwX"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "\u000bwX"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "\u001drR~@\u001etCrm\u0019"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "=rR~?\u0006~Zpk\u0002!\u0014"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "\u0019h]s"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "\t~X{@\u001etCrm\u0019"

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_12
    aput-object v1, v3, v2

    const/16 v2, 0x14

    const-string v1, "\u0003o]zz"

    const/16 v0, 0x13

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_13
    aput-object v1, v3, v2

    const/16 v2, 0x15

    const-string v1, "\u0006yG:v\u0004}[7s\u0005|\u0014ts\u000fzF7l\u001fxWrz\u000e"

    const/16 v0, 0x14

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_14
    aput-object v1, v3, v2

    const/16 v2, 0x16

    const-string v1, "\u001drR~K\u0005lQe?P"

    const/16 v0, 0x15

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_15
    aput-object v1, v3, v2

    const/16 v2, 0x17

    const-string v1, "\u0006tWHv\u0004}["

    const/16 v0, 0x16

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_16
    aput-object v1, v3, v2

    const/16 v2, 0x18

    const-string v1, "\u0004~@`p\u0018pkcf\u001a~"

    const/16 v0, 0x17

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_17
    aput-object v1, v3, v2

    const/16 v2, 0x19

    const-string v1, "\u0006zGc@\u0018~Dxm\u001eDXx|\u000bo]xq"

    const/16 v0, 0x18

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_18
    aput-object v1, v3, v2

    const/16 v2, 0x1a

    const-string v1, "\u0000kAdw5wVd@\u0003uRx1\u0000h[y"

    const/16 v0, 0x19

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_19
    aput-object v1, v3, v2

    const/16 v2, 0x1b

    const-string v1, "\t~X{"

    const/16 v0, 0x1a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1a
    aput-object v1, v3, v2

    const/16 v2, 0x1c

    const-string v1, "\t~X{K\u0005lZrmJ!"

    const/16 v0, 0x1b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1b
    aput-object v1, v3, v2

    const/16 v2, 0x1d

    const-string v1, "\u0006yGHm\u000fk[ek5u[`"

    const/16 v0, 0x1c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1c
    aput-object v1, v3, v2

    const/16 v2, 0x1e

    const-string v1, "\u000e~Xrk\u000f;R~s\u000f;Gb|\t~Gd3J}]{z\u0004zYr%\u0000kAdw5wVd@\u0003uRx1\u0000h[y"

    const/16 v0, 0x1d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1d
    aput-object v1, v3, v2

    const/16 v2, 0x1f

    const-string v1, "\'bxx|\u000bo]xq\'zZvx\u000fi"

    const/16 v0, 0x1e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1e
    aput-object v1, v3, v2

    const/16 v2, 0x20

    const-string v1, "InZrg\t~Dcz\u000e;\u00197|\u0005u@rg\u001e;CvlJuA{s"

    const/16 v0, 0x1f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1f
    aput-object v1, v3, v2

    const/16 v2, 0x21

    const-string v1, "\t~X{?\u000et\u0014yp\u001e;W\u007f~\u0004|Qs"

    const/16 v0, 0x20

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_20
    aput-object v1, v3, v2

    const/16 v2, 0x22

    const-string v1, "\u000buPep\u0003\u007f\u001agz\u0018v]dl\u0003tZ9^)XqDL5X{VM9^k[P)Z`^P$"

    const/16 v0, 0x21

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_21
    aput-object v1, v3, v2

    const/16 v2, 0x23

    const-string v1, "\u000buPep\u0003\u007f\u001agz\u0018v]dl\u0003tZ9^)XqDL5L}QV5H`VK/"

    const/16 v0, 0x22

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_22
    aput-object v1, v3, v2

    const/16 v2, 0x24

    const-string v1, "\u000buPep\u0003\u007f\u001agz\u0018v]dl\u0003tZ9^)XqDL5]}YZ5W{T^>R{Y"

    const/16 v0, 0x23

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_23
    aput-object v1, v3, v2

    const/16 v2, 0x25

    const-string v1, "8~Ebv\u0018~\u0014cw\u000f;Drm\u0007rGdv\u0005uUy{\u0018t]s1\u001a~Fzv\u0019h]xqDZwTZ9HkQV$^k[P)Z`^P$"

    const/16 v0, 0x24

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_24
    aput-object v1, v3, v2

    const/16 v2, 0x26

    const-string v1, "\u000buPep\u0003\u007f\u001agz\u0018v]dl\u0003tZ9\\\"ZzPZ5L}QV5H`VK/"

    const/16 v0, 0x25

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_25
    aput-object v1, v3, v2

    const/16 v2, 0x27

    const-string v1, "\u0004t\u0014rq\u000byXr{JkFxi\u0003\u007fQe"

    const/16 v0, 0x26

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_26
    aput-object v1, v3, v2

    const/16 v2, 0x28

    const-string v1, "\u0004t\u0014gz\u0018v]dl\u0003tZ"

    const/16 v0, 0x27

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_27
    aput-object v1, v3, v2

    const/16 v2, 0x29

    const-string v1, "8~Ebv\u0018~\u0014cw\u000f;Drm\u0007rGdv\u0005uUy{\u0018t]s1\u001a~Fzv\u0019h]xqDZwTZ9Hk@V,RkDK+Oq"

    const/16 v0, 0x28

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_28
    aput-object v1, v3, v2

    sput-object v4, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jiguang/a/a/a/h;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jiguang/a/a/a/h;->a:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jiguang/a/a/a/h;->b:Z

    return-void

    :pswitch_29
    const/16 v9, 0x6a

    goto/16 :goto_2

    :pswitch_2a
    const/16 v9, 0x1b

    goto/16 :goto_2

    :pswitch_2b
    const/16 v9, 0x34

    goto/16 :goto_2

    :pswitch_2c
    const/16 v9, 0x17

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
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
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
    .end packed-switch
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    iput-object v0, p0, Lcn/jiguang/a/a/a/h;->f:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jiguang/a/a/a/h;->g:Z

    iput-object v2, p0, Lcn/jiguang/a/a/a/h;->h:Ljava/lang/String;

    iput-object v2, p0, Lcn/jiguang/a/a/a/h;->i:Ljava/lang/String;

    iput-object v2, p0, Lcn/jiguang/a/a/a/h;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jiguang/a/a/a/h;->k:Z

    iput-object p1, p0, Lcn/jiguang/a/a/a/h;->e:Landroid/content/Context;

    new-instance v0, Lcn/jiguang/a/a/a/b;

    invoke-direct {v0, p1}, Lcn/jiguang/a/a/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/jiguang/a/a/a/h;->l:Lcn/jiguang/a/a/a/b;

    new-instance v0, Lcn/jiguang/a/a/a/k;

    invoke-direct {v0, p1}, Lcn/jiguang/a/a/a/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/jiguang/a/a/a/h;->n:Lcn/jiguang/a/a/a/k;

    new-instance v0, Lcn/jiguang/a/a/a/d;

    invoke-direct {v0, p1}, Lcn/jiguang/a/a/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/jiguang/a/a/a/h;->m:Lcn/jiguang/a/a/a/d;

    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->m:Lcn/jiguang/a/a/a/d;

    invoke-virtual {v0, p0}, Lcn/jiguang/a/a/a/d;->a(Lcn/jiguang/a/a/a/h;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    sget-object v0, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v1, 0x1f

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v2, 0x20

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/jiguang/a/a/a/h;->c:Lcn/jiguang/a/a/a/h;

    if-nez v0, :cond_2

    sget-object v1, Lcn/jiguang/a/a/a/h;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/jiguang/a/a/a/h;->c:Lcn/jiguang/a/a/a/h;

    if-nez v0, :cond_1

    new-instance v0, Lcn/jiguang/a/a/a/h;

    invoke-direct {v0, p0}, Lcn/jiguang/a/a/a/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/jiguang/a/a/a/h;->c:Lcn/jiguang/a/a/a/h;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sget-object v0, Lcn/jiguang/a/a/a/h;->c:Lcn/jiguang/a/a/a/h;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcn/jiguang/a/a/a/i;

    invoke-direct {v2, v0}, Lcn/jiguang/a/a/a/i;-><init>(Lcn/jiguang/a/a/a/h;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->m:Lcn/jiguang/a/a/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->m:Lcn/jiguang/a/a/a/d;

    invoke-virtual {v0, p1}, Lcn/jiguang/a/a/a/d;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/jiguang/a/a/a/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/jiguang/a/a/a/h;->k:Z

    return v0
.end method

.method static synthetic a(Lcn/jiguang/a/a/a/h;Z)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jiguang/a/a/a/h;->k:Z

    return v0
.end method

.method private a(Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {p3}, Lcn/jiguang/e/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->j:Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/e/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->j:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->i:Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/e/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->i:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    sget-object v0, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v2, 0x1f

    aget-object v0, v0, v2

    sget-object v2, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v3, 0x21

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Lcn/jiguang/c/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->h:Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/e/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_0

    :cond_7
    if-nez p1, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    sget-object v2, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v3, 0x12

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/e/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcn/jiguang/a/a/a/h;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method static synthetic b(Lcn/jiguang/a/a/a/h;)V
    .locals 3

    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->e:Landroid/content/Context;

    sget-object v1, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v2, 0x22

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/e/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcn/jiguang/a/a/a/j;

    invoke-direct {v0, p0}, Lcn/jiguang/a/a/a/j;-><init>(Lcn/jiguang/a/a/a/h;)V

    iget-object v1, p0, Lcn/jiguang/a/a/a/h;->l:Lcn/jiguang/a/a/a/b;

    invoke-virtual {v1, v0}, Lcn/jiguang/a/a/a/b;->a(Lcn/jiguang/a/a/a/a;)V

    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->l:Lcn/jiguang/a/a/a/b;

    invoke-virtual {v0, p0}, Lcn/jiguang/a/a/a/b;->a(Lcn/jiguang/a/a/a/h;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcn/jiguang/a/a/a/h;->a()V

    goto :goto_0
.end method

.method static synthetic c()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcn/jiguang/a/a/a/h;->d:Ljava/lang/Object;

    return-object v0
.end method

.method private d()Lcn/jiguang/a/a/a/g;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->m:Lcn/jiguang/a/a/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->m:Lcn/jiguang/a/a/a/d;

    invoke-virtual {v0}, Lcn/jiguang/a/a/a/d;->c()Lcn/jiguang/a/a/a/g;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/16 v5, 0x24

    const/16 v4, 0x23

    const/16 v3, 0x1f

    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->e:Landroid/content/Context;

    sget-object v1, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-static {v0, v1}, Lcn/jiguang/e/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v1, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v2, 0x29

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->e:Landroid/content/Context;

    sget-object v1, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lcn/jiguang/e/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v1, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v2, 0x25

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v1, 0x28

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcn/jiguang/a/a/a/h;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jiguang/a/a/a/h;->b()V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->e:Landroid/content/Context;

    sget-object v1, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v2, 0x22

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/e/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-static {v0, v1}, Lcn/jiguang/e/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v2, 0x26

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/e/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lcn/jiguang/e/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->e:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/e/a;->r(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->n:Lcn/jiguang/a/a/a/k;

    invoke-virtual {v0}, Lcn/jiguang/a/a/a/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->n:Lcn/jiguang/a/a/a/k;

    invoke-virtual {v0}, Lcn/jiguang/a/a/a/k;->b()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->m:Lcn/jiguang/a/a/a/d;

    invoke-virtual {v0}, Lcn/jiguang/a/a/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->m:Lcn/jiguang/a/a/a/d;

    invoke-virtual {v0}, Lcn/jiguang/a/a/a/d;->b()V

    goto :goto_1

    :cond_5
    sget-object v0, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v1, 0x27

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcn/jiguang/a/a/a/h;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jiguang/a/a/a/h;->b()V

    goto :goto_1
.end method

.method public final b()V
    .locals 12

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v0, p0, Lcn/jiguang/a/a/a/h;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcn/jiguang/a/a/a/h;->k:Z

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->f:Ljava/lang/String;

    sget-object v2, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcn/jiguang/b/a/a;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->l:Lcn/jiguang/a/a/a/b;

    invoke-virtual {v0}, Lcn/jiguang/a/a/a/b;->a()Lorg/json/JSONArray;

    move-result-object v0

    sget-object v2, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-static {v2, v0}, Lcn/jiguang/e/a;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcn/jiguang/a/a/a/h;->e:Landroid/content/Context;

    invoke-static {v2, v0}, Lcn/jiguang/b/d/p;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    sget-object v2, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v3, 0x1f

    aget-object v2, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/c/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    iput-boolean v1, p0, Lcn/jiguang/a/a/a/h;->k:Z

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->f:Ljava/lang/String;

    sget-object v2, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v3, 0x10

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcn/jiguang/b/a/a;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->n:Lcn/jiguang/a/a/a/k;

    invoke-virtual {v0}, Lcn/jiguang/a/a/a/k;->c()Lorg/json/JSONArray;

    move-result-object v0

    sget-object v2, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-static {v2, v0}, Lcn/jiguang/e/a;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcn/jiguang/a/a/a/h;->e:Landroid/content/Context;

    invoke-static {v2, v0}, Lcn/jiguang/b/d/p;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    sget-object v2, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v3, 0x1f

    aget-object v2, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v5, 0x11

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jiguang/c/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v3, 0x1f

    aget-object v2, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/c/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v2, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v3, 0x1f

    aget-object v2, v2, v3

    sget-object v3, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-static {v2, v3, v0}, Lcn/jiguang/c/d;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-boolean v1, p0, Lcn/jiguang/a/a/a/h;->k:Z

    goto/16 :goto_0

    :cond_3
    :try_start_4
    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->f:Ljava/lang/String;

    sget-object v2, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcn/jiguang/b/a/a;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/jiguang/a/a/a/h;->d()Lcn/jiguang/a/a/a/g;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcn/jiguang/a/a/a/g;->a()Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    sget-object v2, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-static {v2, v0}, Lcn/jiguang/e/a;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcn/jiguang/a/a/a/h;->e:Landroid/content/Context;

    invoke-static {v2, v0}, Lcn/jiguang/b/d/p;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    sget-object v2, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v3, 0x1f

    aget-object v2, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/c/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_6
    sget-object v2, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v3, 0x1f

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/c/d;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcn/jiguang/a/a/a/h;->k:Z

    throw v0

    :cond_4
    :try_start_7
    const-string v0, ""

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->f:Ljava/lang/String;

    sget-object v2, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v3, 0xf

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/jiguang/b/a/a;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->n:Lcn/jiguang/a/a/a/k;

    invoke-virtual {v0}, Lcn/jiguang/a/a/a/k;->c()Lorg/json/JSONArray;

    move-result-object v4

    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->l:Lcn/jiguang/a/a/a/b;

    invoke-virtual {v0}, Lcn/jiguang/a/a/a/b;->a()Lorg/json/JSONArray;

    move-result-object v5

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-direct {p0}, Lcn/jiguang/a/a/a/h;->d()Lcn/jiguang/a/a/a/g;

    move-result-object v3

    sget-object v2, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v6, 0x1f

    aget-object v6, v2, v6

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v8, 0xb

    aget-object v2, v2, v8

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcn/jiguang/a/a/a/g;->b()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v6, 0x1f

    aget-object v2, v2, v6

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v8, 0x16

    aget-object v7, v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v6, 0x1f

    aget-object v2, v2, v6

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v8, 0x1c

    aget-object v7, v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcn/jiguang/a/a/a/g;->a()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v5, :cond_8

    if-nez v4, :cond_8

    sget-object v0, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v2, 0x1f

    aget-object v0, v0, v2

    sget-object v2, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v3, 0xd

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string v2, ""

    goto :goto_3

    :cond_7
    const-string v2, ""

    move-object v3, v2

    goto :goto_4

    :cond_8
    invoke-direct {p0, v4, v5, v3}, Lcn/jiguang/a/a/a/h;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v0, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v2, 0x1f

    aget-object v0, v0, v2

    sget-object v2, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Lcn/jiguang/c/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    if-eqz v3, :cond_14

    const-string v2, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v2

    if-nez v2, :cond_14

    :try_start_8
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v2, v0

    :goto_5
    :try_start_9
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    sget-object v0, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v0, v0, v7

    sget-object v7, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v8, 0x17

    aget-object v7, v7, v8

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v7, 0x14

    aget-object v0, v0, v7

    invoke-static {}, Lcn/jiguang/b/a/a;->h()J

    move-result-wide v8

    invoke-virtual {v6, v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v0, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v7, 0x18

    aget-object v0, v0, v7

    iget-object v7, p0, Lcn/jiguang/a/a/a/h;->e:Landroid/content/Context;

    invoke-static {v7}, Lcn/jiguang/e/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v0, v0, v7

    invoke-static {}, Lcn/jiguang/e/a;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_a

    sget-object v0, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v0, v0, v7

    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    sget-object v4, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v7, 0x12

    aget-object v4, v4, v7

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/a/a/a/h;->h:Ljava/lang/String;

    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_b

    sget-object v0, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v4, 0x1b

    aget-object v0, v0, v4

    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/a/a/a/h;->i:Ljava/lang/String;

    :cond_b
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_c

    sget-object v0, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iput-object v3, p0, Lcn/jiguang/a/a/a/h;->j:Ljava/lang/String;

    :cond_c
    iget-object v4, p0, Lcn/jiguang/a/a/a/h;->e:Landroid/content/Context;

    sget-object v0, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v2, 0x1a

    aget-object v0, v0, v2

    invoke-static {v4, v0}, Lcn/jiguang/b/d/p;->a(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_13

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v3, v0

    :goto_6
    sget-object v0, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_12

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object v2, v0

    :goto_7
    :try_start_b
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    sget-object v0, Lcn/jiguang/b/a;->e:Landroid/content/Context;

    sget-object v5, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v6, 0x19

    aget-object v5, v5, v6

    const-wide/16 v6, 0x0

    invoke-static {v0, v5, v6, v7}, Lcn/jiguang/api/MultiSpHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Lcn/jiguang/a/b/a;->c()J

    move-result-wide v10

    sub-long v6, v8, v6

    cmp-long v0, v6, v10

    if-lez v0, :cond_e

    sget-object v0, Lcn/jiguang/b/a;->e:Landroid/content/Context;

    sget-object v5, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v6, 0x19

    aget-object v5, v5, v6

    invoke-static {v0, v5, v8, v9}, Lcn/jiguang/api/MultiSpHelper;->commitLong(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 v0, 0x1

    :goto_8
    if-nez v0, :cond_d

    sget-object v0, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v5, 0x1d

    aget-object v0, v0, v5

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Lcn/jiguang/api/MultiSpHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_d
    const/4 v0, 0x0

    sget-object v3, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v5, 0x1d

    aget-object v3, v3, v5

    invoke-static {v4, v3, v0}, Lcn/jiguang/api/MultiSpHelper;->commitBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    sget-object v0, Lcn/jiguang/b/a;->e:Landroid/content/Context;

    sget-object v3, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v5, 0x19

    aget-object v3, v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v0, v3, v6, v7}, Lcn/jiguang/api/MultiSpHelper;->commitLong(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {v4, v2}, Lcn/jiguang/b/d/p;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    sget-object v0, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v2, 0x1a

    aget-object v0, v0, v2

    const/4 v2, 0x0

    invoke-static {v4, v0, v2}, Lcn/jiguang/b/d/p;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v2, 0x1a

    aget-object v0, v0, v2

    invoke-virtual {v4, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v2, 0x1f

    aget-object v0, v0, v2

    sget-object v2, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v3, 0x1e

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    :try_start_c
    sget-object v2, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v3, 0x1f

    aget-object v2, v2, v3

    sget-object v3, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-static {v2, v3, v0}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto/16 :goto_1

    :catch_4
    move-exception v0

    const/4 v0, 0x0

    move-object v2, v0

    goto/16 :goto_5

    :cond_e
    move v0, v1

    goto :goto_8

    :cond_f
    :try_start_d
    sget-object v0, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v2, 0x1f

    aget-object v0, v0, v2

    sget-object v2, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Lcn/jiguang/c/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    sget-object v0, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v2, 0x1f

    aget-object v0, v0, v2

    sget-object v2, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v3, 0x15

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_11
    sget-object v0, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v5, 0xc

    aget-object v0, v0, v5

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcn/jiguang/a/a/a/h;->z:[Ljava/lang/String;

    const/16 v2, 0x1a

    aget-object v0, v0, v2

    invoke-static {v4, v0, v3}, Lcn/jiguang/b/d/p;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    :cond_12
    move-object v2, v0

    goto/16 :goto_7

    :cond_13
    move-object v3, v0

    goto/16 :goto_6

    :cond_14
    move-object v2, v0

    goto/16 :goto_5
.end method
