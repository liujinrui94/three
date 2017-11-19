.class Lcom/shishicai/app/activity/mine/MinePasswod$2;
.super Ljava/lang/Object;
.source "MinePasswod.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/mine/MinePasswod;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/mine/MinePasswod;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MinePasswod;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/mine/MinePasswod;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MinePasswod$2;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MinePasswod$2;->this$0:Lcom/shishicai/app/activity/mine/MinePasswod;

    invoke-virtual {v0}, Lcom/shishicai/app/activity/mine/MinePasswod;->finish()V

    .line 72
    return-void
.end method
