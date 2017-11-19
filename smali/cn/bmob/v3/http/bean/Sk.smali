.class public Lcn/bmob/v3/http/bean/Sk;
.super Ljava/lang/Object;
.source "Sk.java"


# instance fields
.field private secretKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSecretKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcn/bmob/v3/http/bean/Sk;->secretKey:Ljava/lang/String;

    return-object v0
.end method

.method public setSecretKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "secretKey"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcn/bmob/v3/http/bean/Sk;->secretKey:Ljava/lang/String;

    .line 16
    return-void
.end method
