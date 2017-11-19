.class Lcom/shishicai/app/activity/adapter/MsgAdapter$Holder;
.super Ljava/lang/Object;
.source "MsgAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shishicai/app/activity/adapter/MsgAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field content:Landroid/widget/TextView;

.field msgTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/shishicai/app/activity/adapter/MsgAdapter;

.field time:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/shishicai/app/activity/adapter/MsgAdapter;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/shishicai/app/activity/adapter/MsgAdapter$Holder;->this$0:Lcom/shishicai/app/activity/adapter/MsgAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shishicai/app/activity/adapter/MsgAdapter;Lcom/shishicai/app/activity/adapter/MsgAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/shishicai/app/activity/adapter/MsgAdapter;
    .param p2, "x1"    # Lcom/shishicai/app/activity/adapter/MsgAdapter$1;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/shishicai/app/activity/adapter/MsgAdapter$Holder;-><init>(Lcom/shishicai/app/activity/adapter/MsgAdapter;)V

    return-void
.end method
