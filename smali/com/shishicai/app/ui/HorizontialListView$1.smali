.class Lcom/shishicai/app/ui/HorizontialListView$1;
.super Landroid/database/DataSetObserver;
.source "HorizontialListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/ui/HorizontialListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/ui/HorizontialListView;


# direct methods
.method constructor <init>(Lcom/shishicai/app/ui/HorizontialListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/ui/HorizontialListView;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/shishicai/app/ui/HorizontialListView$1;->this$0:Lcom/shishicai/app/ui/HorizontialListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 76
    iget-object v1, p0, Lcom/shishicai/app/ui/HorizontialListView$1;->this$0:Lcom/shishicai/app/ui/HorizontialListView;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/shishicai/app/ui/HorizontialListView$1;->this$0:Lcom/shishicai/app/ui/HorizontialListView;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/shishicai/app/ui/HorizontialListView;->access$002(Lcom/shishicai/app/ui/HorizontialListView;Z)Z

    .line 78
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object v0, p0, Lcom/shishicai/app/ui/HorizontialListView$1;->this$0:Lcom/shishicai/app/ui/HorizontialListView;

    invoke-virtual {v0}, Lcom/shishicai/app/ui/HorizontialListView;->invalidate()V

    .line 80
    iget-object v0, p0, Lcom/shishicai/app/ui/HorizontialListView$1;->this$0:Lcom/shishicai/app/ui/HorizontialListView;

    invoke-virtual {v0}, Lcom/shishicai/app/ui/HorizontialListView;->requestLayout()V

    .line 81
    return-void

    .line 78
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/shishicai/app/ui/HorizontialListView$1;->this$0:Lcom/shishicai/app/ui/HorizontialListView;

    invoke-static {v0}, Lcom/shishicai/app/ui/HorizontialListView;->access$100(Lcom/shishicai/app/ui/HorizontialListView;)V

    .line 86
    iget-object v0, p0, Lcom/shishicai/app/ui/HorizontialListView$1;->this$0:Lcom/shishicai/app/ui/HorizontialListView;

    invoke-virtual {v0}, Lcom/shishicai/app/ui/HorizontialListView;->invalidate()V

    .line 87
    iget-object v0, p0, Lcom/shishicai/app/ui/HorizontialListView$1;->this$0:Lcom/shishicai/app/ui/HorizontialListView;

    invoke-virtual {v0}, Lcom/shishicai/app/ui/HorizontialListView;->requestLayout()V

    .line 88
    return-void
.end method
