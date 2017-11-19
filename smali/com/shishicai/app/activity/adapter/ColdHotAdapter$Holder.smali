.class Lcom/shishicai/app/activity/adapter/ColdHotAdapter$Holder;
.super Ljava/lang/Object;
.source "ColdHotAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/adapter/ColdHotAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field msgNum:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/shishicai/app/activity/adapter/ColdHotAdapter;


# direct methods
.method private constructor <init>(Lcom/shishicai/app/activity/adapter/ColdHotAdapter;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/shishicai/app/activity/adapter/ColdHotAdapter$Holder;->this$0:Lcom/shishicai/app/activity/adapter/ColdHotAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shishicai/app/activity/adapter/ColdHotAdapter;Lcom/shishicai/app/activity/adapter/ColdHotAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/shishicai/app/activity/adapter/ColdHotAdapter;
    .param p2, "x1"    # Lcom/shishicai/app/activity/adapter/ColdHotAdapter$1;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/shishicai/app/activity/adapter/ColdHotAdapter$Holder;-><init>(Lcom/shishicai/app/activity/adapter/ColdHotAdapter;)V

    return-void
.end method
