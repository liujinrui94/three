.class Lcom/shishicai/app/ui/Activitydetailpopup$1;
.super Ljava/lang/Object;
.source "Activitydetailpopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/ui/Activitydetailpopup;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shishicai/app/ui/Activitydetailpopup;


# direct methods
.method constructor <init>(Lcom/shishicai/app/ui/Activitydetailpopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shishicai/app/ui/Activitydetailpopup;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/shishicai/app/ui/Activitydetailpopup$1;->this$0:Lcom/shishicai/app/ui/Activitydetailpopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/shishicai/app/ui/Activitydetailpopup$1;->this$0:Lcom/shishicai/app/ui/Activitydetailpopup;

    invoke-virtual {v0}, Lcom/shishicai/app/ui/Activitydetailpopup;->dismiss()V

    .line 43
    return-void
.end method
