.class public final Lcn/jiguang/a/a/c/a/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile b:Lcn/jiguang/a/a/c/a/a;

.field private static final c:Ljava/lang/Object;

.field private static final z:[Ljava/lang/String;


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v2, "mS\u0010V\u0002hFBZ\reK\u0007W"

    const/4 v0, -0x1

    move-object v5, v3

    move-object v6, v3

    move v3, v1

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v7, v2

    if-gt v7, v4, :cond_2

    move v8, v1

    :cond_0
    move-object v9, v2

    move v10, v8

    move v13, v7

    move-object v7, v2

    move v2, v13

    :goto_1
    aget-char v12, v7, v8

    rem-int/lit8 v11, v10, 0x5

    packed-switch v11, :pswitch_data_0

    const/16 v11, 0x63

    :goto_2
    xor-int/2addr v11, v12

    int-to-char v11, v11

    aput-char v11, v7, v8

    add-int/lit8 v8, v10, 0x1

    if-nez v2, :cond_1

    move-object v7, v9

    move v10, v8

    move v8, v2

    goto :goto_1

    :cond_1
    move v7, v2

    move-object v2, v9

    :goto_3
    if-gt v7, v8, :cond_0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    packed-switch v0, :pswitch_data_1

    aput-object v2, v5, v3

    const-string v0, "DP\rX%m\\\u0016\\\u0011u"

    move-object v2, v0

    move v3, v4

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v2, v5, v3

    sput-object v6, Lcn/jiguang/a/a/c/a/a;->z:[Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jiguang/a/a/c/a/a;->c:Ljava/lang/Object;

    return-void

    :pswitch_1
    const/16 v11, 0xc

    goto :goto_2

    :pswitch_2
    const/16 v11, 0x3f

    goto :goto_2

    :pswitch_3
    const/16 v11, 0x62

    goto :goto_2

    :pswitch_4
    const/16 v11, 0x33

    goto :goto_2

    :cond_2
    move v8, v1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jiguang/a/a/c/a/a;->a:Z

    return-void
.end method

.method public static a()Lcn/jiguang/a/a/c/a/a;
    .locals 2

    sget-object v0, Lcn/jiguang/a/a/c/a/a;->b:Lcn/jiguang/a/a/c/a/a;

    if-nez v0, :cond_1

    sget-object v1, Lcn/jiguang/a/a/c/a/a;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/jiguang/a/a/c/a/a;->b:Lcn/jiguang/a/a/c/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcn/jiguang/a/a/c/a/a;

    invoke-direct {v0}, Lcn/jiguang/a/a/c/a/a;-><init>()V

    sput-object v0, Lcn/jiguang/a/a/c/a/a;->b:Lcn/jiguang/a/a/c/a/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcn/jiguang/a/a/c/a/a;->b:Lcn/jiguang/a/a/c/a/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcn/jiguang/a/a/c/a/a;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jiguang/a/a/c/a/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/a/a/c/a/a;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcn/jiguang/a/a/c/a/a;->a:Z

    new-instance v0, Lcn/jiguang/a/a/c/a/a/c;

    invoke-direct {v0}, Lcn/jiguang/a/a/c/a/a/c;-><init>()V

    invoke-static {p1}, Lcn/jiguang/a/a/c/a/a/c;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
