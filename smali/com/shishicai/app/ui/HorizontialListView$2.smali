.class Lcom/shishicai/app/ui/HorizontialListView$2;
.super Ljava/lang/Object;
.source "HorizontialListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/ui/HorizontialListView;->onLayout(ZIIII)V
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
    .line 176
    iput-object p1, p0, Lcom/shishicai/app/ui/HorizontialListView$2;->this$0:Lcom/shishicai/app/ui/HorizontialListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/shishicai/app/ui/HorizontialListView$2;->this$0:Lcom/shishicai/app/ui/HorizontialListView;

    invoke-virtual {v0}, Lcom/shishicai/app/ui/HorizontialListView;->requestLayout()V

    .line 180
    return-void
.end method
