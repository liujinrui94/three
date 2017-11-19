.class public final Lcn/bmob/v3/http/c/This;
.super Ljava/lang/Object;
.source "RetryWithDelay.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lrx/Observable",
        "<+",
        "Ljava/lang/Throwable;",
        ">;",
        "Lrx/Observable",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private final Code:I

.field private I:I

.field private final V:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcn/bmob/v3/http/c/This;->Code:I

    .line 21
    const/16 v0, 0x3e8

    iput v0, p0, Lcn/bmob/v3/http/c/This;->V:I

    .line 22
    return-void
.end method

.method static synthetic Code(Lcn/bmob/v3/http/c/This;)I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcn/bmob/v3/http/c/This;->I:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/bmob/v3/http/c/This;->I:I

    return v0
.end method

.method static synthetic I(Lcn/bmob/v3/http/c/This;)I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcn/bmob/v3/http/c/This;->V:I

    return v0
.end method

.method static synthetic V(Lcn/bmob/v3/http/c/This;)I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcn/bmob/v3/http/c/This;->Code:I

    return v0
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    check-cast p1, Lrx/Observable;

    .line 1026
    new-instance v0, Lcn/bmob/v3/http/c/This$1;

    invoke-direct {v0, p0}, Lcn/bmob/v3/http/c/This$1;-><init>(Lcn/bmob/v3/http/c/This;)V

    invoke-virtual {p1, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 13
    return-object v0
.end method
