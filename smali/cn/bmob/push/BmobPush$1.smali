.class Lcn/bmob/push/BmobPush$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/bmob/push/lib/service/Client$VolleyListener;


# instance fields
.field private final synthetic Code:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/bmob/push/BmobPush$1;->Code:Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcn/bmob/push/BmobPush$1;->Code:Landroid/content/Context;

    invoke-static {v0}, Lcn/bmob/push/PushSDK;->Code(Landroid/content/Context;)Lcn/bmob/push/PushSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/push/PushSDK;->V()Z

    .line 30
    return-void
.end method
