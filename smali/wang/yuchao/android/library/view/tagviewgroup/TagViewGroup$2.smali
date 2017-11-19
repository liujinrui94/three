.class Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$2;
.super Ljava/lang/Object;
.source "TagViewGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 228
    .local p0, "this":Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$2;, "Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$2;"
    iput-object p1, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$2;->this$0:Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;

    iput p2, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$2;->val$position:I

    iput-object p3, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$2;->val$tag:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 231
    .local p0, "this":Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$2;, "Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$2;"
    iget-object v0, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$2;->this$0:Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;

    invoke-static {v0}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->access$300(Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;)Lwang/yuchao/android/library/view/tagviewgroup/OnTagClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$2;->this$0:Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;

    invoke-static {v0}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;->access$300(Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;)Lwang/yuchao/android/library/view/tagviewgroup/OnTagClickListener;

    move-result-object v0

    iget v1, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$2;->val$position:I

    iget-object v2, p0, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup$2;->val$tag:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lwang/yuchao/android/library/view/tagviewgroup/OnTagClickListener;->onTagClick(ILjava/lang/Object;)V

    .line 234
    :cond_0
    return-void
.end method
