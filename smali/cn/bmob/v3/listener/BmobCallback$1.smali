.class final Lcn/bmob/v3/listener/BmobCallback$1;
.super Ljava/lang/Object;
.source "BmobCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/listener/BmobCallback;->internalStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic Code:Lcn/bmob/v3/listener/BmobCallback;


# direct methods
.method constructor <init>(Lcn/bmob/v3/listener/BmobCallback;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcn/bmob/v3/listener/BmobCallback$1;->Code:Lcn/bmob/v3/listener/BmobCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcn/bmob/v3/listener/BmobCallback$1;->Code:Lcn/bmob/v3/listener/BmobCallback;

    invoke-virtual {v0}, Lcn/bmob/v3/listener/BmobCallback;->onStart()V

    .line 23
    return-void
.end method
