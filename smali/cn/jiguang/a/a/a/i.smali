.class final Lcn/jiguang/a/a/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/jiguang/a/a/a/h;


# direct methods
.method constructor <init>(Lcn/jiguang/a/a/a/h;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/a/a/a/i;->a:Lcn/jiguang/a/a/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcn/jiguang/a/a/a/h;->c()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/a/a/a/i;->a:Lcn/jiguang/a/a/a/h;

    invoke-static {v0}, Lcn/jiguang/a/a/a/h;->a(Lcn/jiguang/a/a/a/h;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/a/a/a/i;->a:Lcn/jiguang/a/a/a/h;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcn/jiguang/a/a/a/h;->a(Lcn/jiguang/a/a/a/h;Z)Z

    iget-object v0, p0, Lcn/jiguang/a/a/a/i;->a:Lcn/jiguang/a/a/a/h;

    invoke-static {v0}, Lcn/jiguang/a/a/a/h;->b(Lcn/jiguang/a/a/a/h;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
