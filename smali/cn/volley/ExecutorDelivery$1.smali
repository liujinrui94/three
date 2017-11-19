.class Lcn/volley/ExecutorDelivery$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final synthetic aX:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcn/volley/ExecutorDelivery;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcn/volley/ExecutorDelivery$1;->aX:Landroid/os/Handler;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcn/volley/ExecutorDelivery$1;->aX:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    return-void
.end method
