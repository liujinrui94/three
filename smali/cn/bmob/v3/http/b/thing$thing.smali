.class public interface abstract Lcn/bmob/v3/http/b/thing$thing;
.super Ljava/lang/Object;
.source "HttpLoggingInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bmob/v3/http/b/thing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "thing"
.end annotation


# static fields
.field public static final Code:Lcn/bmob/v3/http/b/thing$thing;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcn/bmob/v3/http/b/thing$thing$1;

    invoke-direct {v0}, Lcn/bmob/v3/http/b/thing$thing$1;-><init>()V

    sput-object v0, Lcn/bmob/v3/http/b/thing$thing;->Code:Lcn/bmob/v3/http/b/thing$thing;

    return-void
.end method


# virtual methods
.method public abstract Code(Ljava/lang/String;)V
.end method
