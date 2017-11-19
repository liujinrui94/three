.class Lcom/shishicai/app/fragment/Prediction$ScrollToTop;
.super Ljava/lang/Object;
.source "Prediction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/fragment/Prediction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollToTop"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/fragment/Prediction;


# direct methods
.method private constructor <init>(Lcom/shishicai/app/fragment/Prediction;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/shishicai/app/fragment/Prediction$ScrollToTop;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shishicai/app/fragment/Prediction;Lcom/shishicai/app/fragment/Prediction$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/shishicai/app/fragment/Prediction;
    .param p2, "x1"    # Lcom/shishicai/app/fragment/Prediction$1;

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/shishicai/app/fragment/Prediction$ScrollToTop;-><init>(Lcom/shishicai/app/fragment/Prediction;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 232
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction$ScrollToTop;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-static {v0}, Lcom/shishicai/app/fragment/Prediction;->access$1600(Lcom/shishicai/app/fragment/Prediction;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 233
    return-void
.end method
