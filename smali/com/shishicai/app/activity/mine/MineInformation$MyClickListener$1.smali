.class Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener$1;
.super Ljava/lang/Object;
.source "MineInformation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener;

.field final synthetic val$items:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener$1;->this$1:Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener;

    iput-object p2, p0, Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener$1;->val$items:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener$1;->this$1:Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener;

    iget-object v0, v0, Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener;->this$0:Lcom/shishicai/app/activity/mine/MineInformation;

    invoke-static {v0}, Lcom/shishicai/app/activity/mine/MineInformation;->access$1400(Lcom/shishicai/app/activity/mine/MineInformation;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shishicai/app/activity/mine/MineInformation$MyClickListener$1;->val$items:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 235
    return-void
.end method
