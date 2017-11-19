.class Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$1;
.super Ljava/lang/Object;
.source "TagViewGroup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->setListener(Landroid/widget/Button;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;

.field final synthetic val$position:I

.field final synthetic val$tag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;

    .prologue
    .line 211
    .local p0, "this":Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$1;, "Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$1;"
    iput-object p1, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$1;->this$0:Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;

    iput p2, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$1;->val$position:I

    iput-object p3, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$1;->val$tag:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .line 214
    .local p0, "this":Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$1;, "Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$1;"
    iget-object v0, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$1;->this$0:Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;

    invoke-static {v0}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->access$000(Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;)Lwang/yuchao/android/library/view/tagviewgroup/OnTagCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$1;->this$0:Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;

    invoke-static {v0}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->access$100(Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    if-eqz p2, :cond_0

    .line 217
    iget-object v0, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$1;->this$0:Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;

    iget v1, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$1;->val$position:I

    invoke-static {v0, v1}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->access$200(Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;I)V

    .line 218
    iget-object v0, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$1;->this$0:Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;

    invoke-static {v0}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->access$000(Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;)Lwang/yuchao/android/library/view/tagviewgroup/OnTagCheckedChangeListener;

    move-result-object v0

    iget v1, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$1;->val$position:I

    iget-object v2, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$1;->val$tag:Ljava/lang/Object;

    invoke-interface {v0, p1, p2, v1, v2}, Lwang/yuchao/android/library/view/tagviewgroup/OnTagCheckedChangeListener;->onTagCheckedChanged(Landroid/widget/CompoundButton;ZILjava/lang/Object;)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$1;->this$0:Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;

    invoke-static {v0}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->access$000(Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;)Lwang/yuchao/android/library/view/tagviewgroup/OnTagCheckedChangeListener;

    move-result-object v0

    iget v1, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$1;->val$position:I

    iget-object v2, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$1;->val$tag:Ljava/lang/Object;

    invoke-interface {v0, p1, p2, v1, v2}, Lwang/yuchao/android/library/view/tagviewgroup/OnTagCheckedChangeListener;->onTagCheckedChanged(Landroid/widget/CompoundButton;ZILjava/lang/Object;)V

    goto :goto_0
.end method
