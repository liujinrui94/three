.class public Lcom/shishicai/app/ui/ItemLongClickedPopWindow;
.super Landroid/widget/PopupWindow;
.source "ItemLongClickedPopWindow.java"


# static fields
.field public static final ACHOR_VIEW_POPUPWINDOW:I = 0x6

.field public static final FAVORITES_ITEM_POPUPWINDOW:I = 0x0

.field public static final FAVORITES_VIEW_POPUPWINDOW:I = 0x1

.field public static final HISTORY_ITEM_POPUPWINDOW:I = 0x3

.field public static final HISTORY_VIEW_POPUPWINDOW:I = 0x4

.field public static final IMAGE_VIEW_POPUPWINDOW:I = 0x5


# instance fields
.field private context:Landroid/content/Context;

.field private itemLongClickedPopWindowInflater:Landroid/view/LayoutInflater;

.field private itemLongClickedPopWindowView:Landroid/view/View;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v1, 0x1

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p1, p0, Lcom/shishicai/app/ui/ItemLongClickedPopWindow;->context:Landroid/content/Context;

    .line 49
    iput p2, p0, Lcom/shishicai/app/ui/ItemLongClickedPopWindow;->type:I

    .line 51
    invoke-direct {p0}, Lcom/shishicai/app/ui/ItemLongClickedPopWindow;->initTab()V

    .line 53
    invoke-virtual {p0, p3}, Lcom/shishicai/app/ui/ItemLongClickedPopWindow;->setWidth(I)V

    .line 54
    invoke-virtual {p0, p4}, Lcom/shishicai/app/ui/ItemLongClickedPopWindow;->setHeight(I)V

    .line 55
    iget-object v0, p0, Lcom/shishicai/app/ui/ItemLongClickedPopWindow;->itemLongClickedPopWindowView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/shishicai/app/ui/ItemLongClickedPopWindow;->setContentView(Landroid/view/View;)V

    .line 56
    invoke-virtual {p0, v1}, Lcom/shishicai/app/ui/ItemLongClickedPopWindow;->setOutsideTouchable(Z)V

    .line 57
    invoke-virtual {p0, v1}, Lcom/shishicai/app/ui/ItemLongClickedPopWindow;->setFocusable(Z)V

    .line 58
    return-void
.end method

.method private initTab()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/shishicai/app/ui/ItemLongClickedPopWindow;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/shishicai/app/ui/ItemLongClickedPopWindow;->itemLongClickedPopWindowInflater:Landroid/view/LayoutInflater;

    .line 63
    iget v0, p0, Lcom/shishicai/app/ui/ItemLongClickedPopWindow;->type:I

    packed-switch v0, :pswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcom/shishicai/app/ui/ItemLongClickedPopWindow;->itemLongClickedPopWindowInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030044

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shishicai/app/ui/ItemLongClickedPopWindow;->itemLongClickedPopWindowView:Landroid/view/View;

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getView(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/shishicai/app/ui/ItemLongClickedPopWindow;->itemLongClickedPopWindowView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
