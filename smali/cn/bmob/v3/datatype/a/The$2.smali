.class final Lcn/bmob/v3/datatype/a/The$2;
.super Ljava/lang/Object;
.source "UploadManager.java"

# interfaces
.implements Lcn/bmob/v3/datatype/a/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/datatype/a/The;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Code:Lcn/bmob/v3/datatype/a/I;


# direct methods
.method constructor <init>(Lcn/bmob/v3/datatype/a/The;Lcn/bmob/v3/datatype/a/I;)V
    .locals 0

    .prologue
    .line 99
    iput-object p2, p0, Lcn/bmob/v3/datatype/a/The$2;->Code:Lcn/bmob/v3/datatype/a/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code(ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcn/bmob/v3/datatype/a/The$2$1;

    invoke-direct {v0, p0, p1, p2}, Lcn/bmob/v3/datatype/a/The$2$1;-><init>(Lcn/bmob/v3/datatype/a/The$2;ZLjava/lang/String;)V

    invoke-static {v0}, Lcn/bmob/v3/datatype/a/This;->Code(Ljava/lang/Runnable;)V

    .line 108
    return-void
.end method
