.class public Lcn/bmob/push/PushConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ACTION_MESSAGE:Ljava/lang/String;

.field public static EXTRA_PUSH_MESSAGE_STRING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-string v0, "cn.bmob.push.action.MESSAGE"

    sput-object v0, Lcn/bmob/push/PushConstants;->ACTION_MESSAGE:Ljava/lang/String;

    .line 7
    const-string v0, "msg"

    sput-object v0, Lcn/bmob/push/PushConstants;->EXTRA_PUSH_MESSAGE_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
