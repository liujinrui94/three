.class Lcom/shishicai/app/activity/TwoStartActivity$4;
.super Ljava/lang/Object;
.source "TwoStartActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shishicai/app/activity/TwoStartActivity;->onClick(Landroid/view/View;)V
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
    .line 182
    iput-object p1, p0, Lcom/shishicai/app/activity/TwoStartActivity$4;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lcom/shishicai/app/activity/TwoStartActivity$4;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/TwoStartActivity;->access$000(Lcom/shishicai/app/activity/TwoStartActivity;)V

    .line 186
    iget-object v0, p0, Lcom/shishicai/app/activity/TwoStartActivity$4;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/TwoStartActivity;->access$100(Lcom/shishicai/app/activity/TwoStartActivity;)V

    .line 187
    iget-object v0, p0, Lcom/shishicai/app/activity/TwoStartActivity$4;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v0, v0, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroupOne:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    iget-object v1, p0, Lcom/shishicai/app/activity/TwoStartActivity$4;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v1, v1, Lcom/shishicai/app/activity/TwoStartActivity;->mNullData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;->update(Ljava/util/ArrayList;)V

    .line 188
    iget-object v0, p0, Lcom/shishicai/app/activity/TwoStartActivity$4;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v0, v0, Lcom/shishicai/app/activity/TwoStartActivity;->mCheckBoxTagViewGroupTwo:Lcom/shishicai/app/ui/CheckBoxTagViewGroup;

    iget-object v1, p0, Lcom/shishicai/app/activity/TwoStartActivity$4;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    iget-object v1, v1, Lcom/shishicai/app/activity/TwoStartActivity;->mNullData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup;->update(Ljava/util/ArrayList;)V

    .line 189
    iget-object v0, p0, Lcom/shishicai/app/activity/TwoStartActivity$4;->this$0:Lcom/shishicai/app/activity/TwoStartActivity;

    invoke-static {v0}, Lcom/shishicai/app/activity/TwoStartActivity;->access$200(Lcom/shishicai/app/activity/TwoStartActivity;)V

    .line 190
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 191
    return-void
.end method
