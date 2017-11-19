.class public Lcn/bmob/v3/http/bean/R1;
.super Ljava/lang/Object;
.source "R1.java"


# instance fields
.field private b:Ljava/lang/Boolean;

.field private e:Lcn/bmob/v3/exception/BmobException;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Lcn/bmob/v3/exception/BmobException;)V
    .locals 0
    .param p1, "b"    # Ljava/lang/Boolean;
    .param p2, "e"    # Lcn/bmob/v3/exception/BmobException;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcn/bmob/v3/http/bean/R1;->b:Ljava/lang/Boolean;

    .line 22
    iput-object p2, p0, Lcn/bmob/v3/http/bean/R1;->e:Lcn/bmob/v3/exception/BmobException;

    .line 23
    return-void
.end method


# virtual methods
.method public getB()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcn/bmob/v3/http/bean/R1;->b:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getE()Lcn/bmob/v3/exception/BmobException;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcn/bmob/v3/http/bean/R1;->e:Lcn/bmob/v3/exception/BmobException;

    return-object v0
.end method

.method public setB(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "b"    # Ljava/lang/Boolean;

    .prologue
    .line 29
    iput-object p1, p0, Lcn/bmob/v3/http/bean/R1;->b:Ljava/lang/Boolean;

    .line 30
    return-void
.end method

.method public setE(Lcn/bmob/v3/exception/BmobException;)V
    .locals 0
    .param p1, "e"    # Lcn/bmob/v3/exception/BmobException;

    .prologue
    .line 37
    iput-object p1, p0, Lcn/bmob/v3/http/bean/R1;->e:Lcn/bmob/v3/exception/BmobException;

    .line 38
    return-void
.end method
