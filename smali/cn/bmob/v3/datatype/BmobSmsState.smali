.class public Lcn/bmob/v3/datatype/BmobSmsState;
.super Ljava/lang/Object;
.source "BmobSmsState.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private Code:Ljava/lang/String;

.field private V:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "smsState"    # Ljava/lang/String;
    .param p2, "verifyState"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobSmsState;->Code:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcn/bmob/v3/datatype/BmobSmsState;->V:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getSmsState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobSmsState;->Code:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcn/bmob/v3/datatype/BmobSmsState;->V:Ljava/lang/String;

    return-object v0
.end method

.method public setSmsState(Ljava/lang/String;)V
    .locals 0
    .param p1, "smsState"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobSmsState;->Code:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setVerifyState(Ljava/lang/String;)V
    .locals 0
    .param p1, "verifyState"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcn/bmob/v3/datatype/BmobSmsState;->V:Ljava/lang/String;

    .line 47
    return-void
.end method
