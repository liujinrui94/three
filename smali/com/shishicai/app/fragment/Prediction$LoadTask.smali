.class Lcom/shishicai/app/fragment/Prediction$LoadTask;
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
    name = "LoadTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/fragment/Prediction;


# direct methods
.method private constructor <init>(Lcom/shishicai/app/fragment/Prediction;)V
    .locals 0

    .prologue
    .line 759
    iput-object p1, p0, Lcom/shishicai/app/fragment/Prediction$LoadTask;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shishicai/app/fragment/Prediction;Lcom/shishicai/app/fragment/Prediction$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/shishicai/app/fragment/Prediction;
    .param p2, "x1"    # Lcom/shishicai/app/fragment/Prediction$1;

    .prologue
    .line 759
    invoke-direct {p0, p1}, Lcom/shishicai/app/fragment/Prediction$LoadTask;-><init>(Lcom/shishicai/app/fragment/Prediction;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/shishicai/app/fragment/Prediction$LoadTask;->this$0:Lcom/shishicai/app/fragment/Prediction;

    invoke-virtual {v0}, Lcom/shishicai/app/fragment/Prediction;->gainNewData()V

    .line 764
    return-void
.end method
