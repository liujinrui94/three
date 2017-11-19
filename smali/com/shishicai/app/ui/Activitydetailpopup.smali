.class public Lcom/shishicai/app/ui/Activitydetailpopup;
.super Landroid/widget/PopupWindow;
.source "Activitydetailpopup.java"


# instance fields
.field private addr:Landroid/widget/TextView;

.field private begin:Landroid/widget/TextView;

.field private end:Landroid/widget/TextView;

.field private fee:Landroid/widget/TextView;

.field private mMenuView:Landroid/view/View;

.field private point:Landroid/widget/TextView;

.field private share_cancel:Landroid/widget/Button;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "titlestr"    # Ljava/lang/String;
    .param p3, "beginstr"    # Ljava/lang/String;
    .param p4, "endstr"    # Ljava/lang/String;
    .param p5, "addrstr"    # Ljava/lang/String;
    .param p6, "feestr"    # Ljava/lang/String;
    .param p7, "pointstr"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 26
    const-string v2, "layout_inflater"

    .line 27
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 28
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03002c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/shishicai/app/ui/Activitydetailpopup;->mMenuView:Landroid/view/View;

    .line 29
    iget-object v2, p0, Lcom/shishicai/app/ui/Activitydetailpopup;->mMenuView:Landroid/view/View;

    const v3, 0x7f090096

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/shishicai/app/ui/Activitydetailpopup;->share_cancel:Landroid/widget/Button;

    .line 30
    iget-object v2, p0, Lcom/shishicai/app/ui/Activitydetailpopup;->mMenuView:Landroid/view/View;

    const v3, 0x7f090097

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/ui/Activitydetailpopup;->title:Landroid/widget/TextView;

    .line 31
    iget-object v2, p0, Lcom/shishicai/app/ui/Activitydetailpopup;->mMenuView:Landroid/view/View;

    const v3, 0x7f090098

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/ui/Activitydetailpopup;->begin:Landroid/widget/TextView;

    .line 32
    iget-object v2, p0, Lcom/shishicai/app/ui/Activitydetailpopup;->mMenuView:Landroid/view/View;

    const v3, 0x7f090099

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/ui/Activitydetailpopup;->end:Landroid/widget/TextView;

    .line 33
    iget-object v2, p0, Lcom/shishicai/app/ui/Activitydetailpopup;->mMenuView:Landroid/view/View;

    const v3, 0x7f09009a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/ui/Activitydetailpopup;->addr:Landroid/widget/TextView;

    .line 34
    iget-object v2, p0, Lcom/shishicai/app/ui/Activitydetailpopup;->mMenuView:Landroid/view/View;

    const v3, 0x7f09009b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/ui/Activitydetailpopup;->fee:Landroid/widget/TextView;

    .line 35
    iget-object v2, p0, Lcom/shishicai/app/ui/Activitydetailpopup;->mMenuView:Landroid/view/View;

    const v3, 0x7f09009c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/ui/Activitydetailpopup;->point:Landroid/widget/TextView;

    .line 37
    iget-object v2, p0, Lcom/shishicai/app/ui/Activitydetailpopup;->share_cancel:Landroid/widget/Button;

    new-instance v3, Lcom/shishicai/app/ui/Activitydetailpopup$1;

    invoke-direct {v3, p0}, Lcom/shishicai/app/ui/Activitydetailpopup$1;-><init>(Lcom/shishicai/app/ui/Activitydetailpopup;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v2, p0, Lcom/shishicai/app/ui/Activitydetailpopup;->title:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v2, p0, Lcom/shishicai/app/ui/Activitydetailpopup;->begin:Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v2, p0, Lcom/shishicai/app/ui/Activitydetailpopup;->end:Landroid/widget/TextView;

    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v2, p0, Lcom/shishicai/app/ui/Activitydetailpopup;->addr:Landroid/widget/TextView;

    invoke-virtual {v2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v2, p0, Lcom/shishicai/app/ui/Activitydetailpopup;->fee:Landroid/widget/TextView;

    invoke-virtual {v2, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v2, p0, Lcom/shishicai/app/ui/Activitydetailpopup;->point:Landroid/widget/TextView;

    invoke-virtual {v2, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v2, p0, Lcom/shishicai/app/ui/Activitydetailpopup;->mMenuView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/shishicai/app/ui/Activitydetailpopup;->setContentView(Landroid/view/View;)V

    .line 54
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/shishicai/app/ui/Activitydetailpopup;->setWidth(I)V

    .line 56
    const/4 v2, -0x2

    invoke-virtual {p0, v2}, Lcom/shishicai/app/ui/Activitydetailpopup;->setHeight(I)V

    .line 58
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/shishicai/app/ui/Activitydetailpopup;->setFocusable(Z)V

    .line 59
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v2, 0x4c4b400

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 60
    .local v0, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0, v0}, Lcom/shishicai/app/ui/Activitydetailpopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    const/high16 v2, 0x7f0b0000

    invoke-virtual {p0, v2}, Lcom/shishicai/app/ui/Activitydetailpopup;->setAnimationStyle(I)V

    .line 64
    iget-object v2, p0, Lcom/shishicai/app/ui/Activitydetailpopup;->mMenuView:Landroid/view/View;

    new-instance v3, Lcom/shishicai/app/ui/Activitydetailpopup$2;

    invoke-direct {v3, p0}, Lcom/shishicai/app/ui/Activitydetailpopup$2;-><init>(Lcom/shishicai/app/ui/Activitydetailpopup;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/ui/Activitydetailpopup;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/ui/Activitydetailpopup;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/shishicai/app/ui/Activitydetailpopup;->mMenuView:Landroid/view/View;

    return-object v0
.end method
