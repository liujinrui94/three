.class Lcom/shishicai/app/activity/mine/MineInformation$5;
.super Ljava/lang/Object;
.source "MineInformation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/mine/MineInformation;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MineInformation;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineInformation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/mine/MineInformation;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineInformation$5;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation$5;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/mine/MineInformation;->finish()V

    .line 196
    return-void
.end method
