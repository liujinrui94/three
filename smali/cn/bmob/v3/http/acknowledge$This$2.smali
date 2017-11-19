.class final Lcn/bmob/v3/http/acknowledge$This$2;
.super Ljava/lang/Object;
.source "RxBmob.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/http/acknowledge$This;->V(Lrx/Observable;)Lcn/bmob/v3/http/acknowledge$This;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/Boolean;",
        "Lrx/Observable",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private synthetic Code:Lrx/Observable;


# direct methods
.method constructor <init>(Lcn/bmob/v3/http/acknowledge$This;Lrx/Observable;)V
    .locals 0

    .prologue
    .line 262
    iput-object p2, p0, Lcn/bmob/v3/http/acknowledge$This$2;->Code:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 262
    .line 1265
    iget-object v0, p0, Lcn/bmob/v3/http/acknowledge$This$2;->Code:Lrx/Observable;

    .line 262
    return-object v0
.end method
