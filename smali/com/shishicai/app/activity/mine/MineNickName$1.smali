.class Lcom/shishicai/app/activity/mine/MineNickName$1;
.super Ljava/lang/Object;
.source "MineNickName.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/mine/MineNickName;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineNickName;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineNickName;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/mine/MineNickName;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineNickName$1;->this$0:Lcom/shishicai/app/activity/mine/MineNickName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineNickName$1;->this$0:Lcom/shishicai/app/activity/mine/MineNickName;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/mine/MineNickName;->finish()V

    .line 41
    return-void
.end method
