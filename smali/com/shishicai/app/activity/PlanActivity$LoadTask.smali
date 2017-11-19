.class Lcom/shishicai/app/activity/PlanActivity$LoadTask;
.super Ljava/lang/Object;
.source "PlanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/PlanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadTask"
.end annotation


# instance fields
.field planActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/shishicai/app/activity/PlanActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/PlanActivity;)V
    .locals 1
    .param p1, "planActivity"    # Lcom/shishicai/app/activity/PlanActivity;

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shishicai/app/activity/PlanActivity$LoadTask;->planActivity:Ljava/lang/ref/WeakReference;

    .line 269
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/shishicai/app/activity/PlanActivity$LoadTask;->planActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/shishicai/app/activity/PlanActivity$LoadTask;->planActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shishicai/app/activity/PlanActivity;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/PlanActivity;->finish()V

    .line 275
    :cond_0
    return-void
.end method
