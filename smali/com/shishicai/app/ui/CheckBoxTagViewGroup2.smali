.class public Lcom/shishicai/app/ui/CheckBoxTagViewGroup2;
.super Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;
.source "CheckBoxTagViewGroup2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup",
        "<",
        "Landroid/widget/CheckBox;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lwang/yuchao/android/library/view/tagviewgroup/TagViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method public bridge synthetic getTagItemView(ILjava/lang/Object;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 16
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup2;->getTagItemView(ILjava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v0

    return-object v0
.end method

.method public getTagItemView(ILjava/lang/String;)Landroid/widget/CheckBox;
    .locals 5
    .param p1, "position"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/shishicai/app/ui/CheckBoxTagViewGroup2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03006c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 30
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f09019b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 31
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 32
    return-object v0
.end method
