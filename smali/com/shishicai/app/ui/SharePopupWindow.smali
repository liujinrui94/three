.class public Lcom/shishicai/app/ui/SharePopupWindow;
.super Landroid/widget/PopupWindow;
.source "SharePopupWindow.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "itemsOnClick"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 20
    const-string v2, "layout_inflater"

    .line 21
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 22
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03002e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 23
    .local v1, "mMenuView":Landroid/view/View;
    const v2, 0x7f090060

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    const v2, 0x7f090061

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    const v2, 0x7f090062

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v2}, Lcom/shishicai/app/ui/SharePopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    invoke-virtual {p0, v1}, Lcom/shishicai/app/ui/SharePopupWindow;->setContentView(Landroid/view/View;)V

    .line 30
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/shishicai/app/ui/SharePopupWindow;->setWidth(I)V

    .line 32
    const/4 v2, -0x2

    invoke-virtual {p0, v2}, Lcom/shishicai/app/ui/SharePopupWindow;->setHeight(I)V

    .line 34
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/shishicai/app/ui/SharePopupWindow;->setFocusable(Z)V

    .line 36
    const/high16 v2, 0x7f0b0000

    invoke-virtual {p0, v2}, Lcom/shishicai/app/ui/SharePopupWindow;->setAnimationStyle(I)V

    .line 38
    new-instance v2, Lcom/shishicai/app/ui/SharePopupWindow$1;

    invoke-direct {v2, p0, v1}, Lcom/shishicai/app/ui/SharePopupWindow$1;-><init>(Lcom/shishicai/app/ui/SharePopupWindow;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 55
    return-void
.end method
