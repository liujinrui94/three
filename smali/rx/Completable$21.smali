.class Lrx/Completable$21;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->lift(Lrx/Completable$CompletableOperator;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$onLift:Lrx/Completable$CompletableOperator;


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/Completable$CompletableOperator;)V
    .locals 0

    .prologue
    .line 1542
    iput-object p1, p0, Lrx/Completable$21;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$21;->val$onLift:Lrx/Completable$CompletableOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1542
    check-cast p1, Lrx/Completable$CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$21;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .locals 5
    .param p1, "s"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    .line 1546
    :try_start_0
    sget-object v3, Lrx/Completable;->HOOK:Lrx/plugins/RxJavaCompletableExecutionHook;

    iget-object v4, p0, Lrx/Completable$21;->val$onLift:Lrx/Completable$CompletableOperator;

    invoke-virtual {v3, v4}, Lrx/plugins/RxJavaCompletableExecutionHook;->onLift(Lrx/Completable$CompletableOperator;)Lrx/Completable$CompletableOperator;

    move-result-object v1

    .line 1547
    .local v1, "onLiftDecorated":Lrx/Completable$CompletableOperator;
    invoke-interface {v1, p1}, Lrx/Completable$CompletableOperator;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Completable$CompletableSubscriber;

    .line 1549
    .local v2, "sw":Lrx/Completable$CompletableSubscriber;
    iget-object v3, p0, Lrx/Completable$21;->this$0:Lrx/Completable;

    invoke-virtual {v3, v2}, Lrx/Completable;->unsafeSubscribe(Lrx/Completable$CompletableSubscriber;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1555
    return-void

    .line 1550
    .end local v1    # "onLiftDecorated":Lrx/Completable$CompletableOperator;
    .end local v2    # "sw":Lrx/Completable$CompletableSubscriber;
    :catch_0
    move-exception v0

    .line 1551
    .local v0, "ex":Ljava/lang/NullPointerException;
    throw v0

    .line 1552
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1553
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/Completable;->toNpe(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object v3

    throw v3
.end method
