.class public final Lcn/jiguang/b/a/b;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:J

.field private static volatile b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, -0x1

    sput-wide v0, Lcn/jiguang/b/a/b;->a:J

    sput-wide v0, Lcn/jiguang/b/a/b;->b:J

    return-void
.end method

.method static declared-synchronized a(JJ)V
    .locals 2

    const-class v1, Lcn/jiguang/b/a/b;

    monitor-enter v1

    :try_start_0
    sput-wide p0, Lcn/jiguang/b/a/b;->a:J

    sput-wide p2, Lcn/jiguang/b/a/b;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static a()Z
    .locals 4

    const-wide/16 v2, -0x1

    sget-wide v0, Lcn/jiguang/b/a/b;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-wide v0, Lcn/jiguang/b/a/b;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b()J
    .locals 4

    sget-wide v0, Lcn/jiguang/b/a/b;->a:J

    sget-wide v2, Lcn/jiguang/b/a/b;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
