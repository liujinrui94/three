.class Lcom/shishicai/app/activity/TwoStartActivity$6;
.super Ljava/lang/Object;
.source "TwoStartActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/TwoStartActivity;->setTvTj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/activity/TwoStartActivity;


# direct methods
.method constructor <init>(Lcom/shishicai/app/activity/TwoStartActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/activity/TwoStartActivity;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/shishicai/app/activity/TwoStartActivity$6;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 329
    iget-object v0, p0, Lcom/shishicai/app/activity/TwoStartActivity$6;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/TwoStartActivity;->access$300(Lcom/shishicai/app/activity/TwoStartActivity;)V

    .line 330
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 331
    return-void
.end method
