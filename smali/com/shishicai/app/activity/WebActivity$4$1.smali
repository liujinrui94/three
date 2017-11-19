.class Lcom/shishicai/app/activity/WebActivity$4$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/WebActivity$4;->onSuccess(I[Lorg/apache/http/Header;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Lcom/shishicai/app/domain/BaseModel",
        "<",
        "Lcom/shishicai/app/domain/JudgeInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shishicai/app/activity/WebActivity$4;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/WebActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shishicai/app/activity/WebActivity$4;

    .prologue
    .line 680
    iput-object p1, p0, Lcom/shishicai/app/activity/WebActivity$4$1;->this$1:Lcom/shishicai/app/activity/WebActivity$4;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
