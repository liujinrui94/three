.class public Lcn/bmob/v3/datatype/BatchResult;
.super Ljava/lang/Object;
.source "BatchResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private B:Lcn/bmob/v3/exception/BmobException;

.field private Code:Z

.field private I:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field private Z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcn/bmob/v3/datatype/BatchResult;->I:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Lcn/bmob/v3/exception/BmobException;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcn/bmob/v3/datatype/BatchResult;->B:Lcn/bmob/v3/exception/BmobException;

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcn/bmob/v3/datatype/BatchResult;->V:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcn/bmob/v3/datatype/BatchResult;->Z:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcn/bmob/v3/datatype/BatchResult;->Code:Z

    return v0
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "createdAt"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcn/bmob/v3/datatype/BatchResult;->I:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setError(Lcn/bmob/v3/exception/BmobException;)V
    .locals 0
    .param p1, "error"    # Lcn/bmob/v3/exception/BmobException;

    .prologue
    .line 68
    iput-object p1, p0, Lcn/bmob/v3/datatype/BatchResult;->B:Lcn/bmob/v3/exception/BmobException;

    .line 69
    return-void
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 0
    .param p1, "objectId"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcn/bmob/v3/datatype/BatchResult;->V:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "isSuccess"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcn/bmob/v3/datatype/BatchResult;->Code:Z

    .line 41
    return-void
.end method

.method public setUpdatedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "updatedAt"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcn/bmob/v3/datatype/BatchResult;->Z:Ljava/lang/String;

    .line 62
    return-void
.end method
