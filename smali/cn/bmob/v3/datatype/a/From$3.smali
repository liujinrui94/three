.class final Lcn/bmob/v3/datatype/a/From$3;
.super Ljava/lang/Object;
.source "UpYunUploader.java"

# interfaces
.implements Lcn/bmob/v3/datatype/a/darkness;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/datatype/a/From;->Code()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic Code:Lcn/bmob/v3/datatype/a/From;


# direct methods
.method constructor <init>(Lcn/bmob/v3/datatype/a/From;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcn/bmob/v3/datatype/a/From$3;->Code:Lcn/bmob/v3/datatype/a/From;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/bmob/v3/datatype/a/From$3;->Code:Lcn/bmob/v3/datatype/a/From;

    iget-object v1, v1, Lcn/bmob/v3/datatype/a/From;->I:Lcn/bmob/v3/http/bean/Upyun;

    invoke-virtual {v1}, Lcn/bmob/v3/http/bean/Upyun;->getSecret()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/v3/datatype/a/This;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
