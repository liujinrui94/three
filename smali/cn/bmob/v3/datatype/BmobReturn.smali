.class public Lcn/bmob/v3/datatype/BmobReturn;
.super Ljava/lang/Object;
.source "BmobReturn.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private Code:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private V:Lcn/bmob/v3/exception/BmobException;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcn/bmob/v3/exception/BmobException;)V
    .locals 0
    .param p2, "e"    # Lcn/bmob/v3/exception/BmobException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcn/bmob/v3/exception/BmobException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "this":Lcn/bmob/v3/datatype/BmobReturn;, "Lcn/bmob/v3/datatype/BmobReturn<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobReturn;->Code:Ljava/lang/Object;

    .line 17
    iput-object p2, p0, Lcn/bmob/v3/datatype/BmobReturn;->V:Lcn/bmob/v3/exception/BmobException;

    .line 18
    return-void
.end method


# virtual methods
.method public getE()Lcn/bmob/v3/exception/BmobException;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobReturn;->V:Lcn/bmob/v3/exception/BmobException;

    return-object v0
.end method

.method public getT()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobReturn;->Code:Ljava/lang/Object;

    return-object v0
.end method

.method public setE(Lcn/bmob/v3/exception/BmobException;)V
    .locals 0
    .param p1, "e"    # Lcn/bmob/v3/exception/BmobException;

    .prologue
    .line 35
    .local p0, "this":Lcn/bmob/v3/datatype/BmobReturn;, "Lcn/bmob/v3/datatype/BmobReturn<TT;>;"
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobReturn;->V:Lcn/bmob/v3/exception/BmobException;

    .line 36
    return-void
.end method

.method public setT(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcn/bmob/v3/datatype/BmobReturn;, "Lcn/bmob/v3/datatype/BmobReturn<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobReturn;->Code:Ljava/lang/Object;

    .line 28
    return-void
.end method
