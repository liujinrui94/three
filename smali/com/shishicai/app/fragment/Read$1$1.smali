.class Lcom/shishicai/app/fragment/Read$1$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "Read.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/fragment/Read$1;->onSuccess(I[Lorg/apache/http/Header;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Lcom/shishicai/app/domain/BaseListModel",
        "<",
        "Lcom/shishicai/app/domain/DayNews;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shishicai/app/fragment/Read$1;


# direct methods
.method constructor <init>(Lcom/shishicai/app/fragment/Read$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shishicai/app/fragment/Read$1;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/shishicai/app/fragment/Read$1$1;->this$1:Lcom/shishicai/app/fragment/Read$1;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
