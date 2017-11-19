.class public Lcom/shishicai/app/ui/NiftyDialog;
.super Landroid/app/Dialog;
.source "NiftyDialog.java"


# instance fields
.field private final defDialogColor:Ljava/lang/String;

.field private final defDividerColor:Ljava/lang/String;

.field private final defMsgColor:Ljava/lang/String;

.field private final defTextColor:Ljava/lang/String;

.field private mBtn_cancel:Landroid/widget/Button;

.field private mBtn_sure:Landroid/widget/Button;

.field private mDialogView:Landroid/view/View;

.field private mDivider:Landroid/view/View;

.field private mFrameLayoutCustomView:Landroid/widget/FrameLayout;

.field private mIcon:Landroid/widget/ImageView;

.field private mLinearLayoutMsgView:Landroid/widget/LinearLayout;

.field private mLinearLayoutTopView:Landroid/widget/LinearLayout;

.field private mLinearLayoutView:Landroid/widget/LinearLayout;

.field private mMessage:Landroid/widget/TextView;

.field private mRelativeLayoutView:Landroid/widget/LinearLayout;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const v0, 0x7f0b0004

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 32
    const-string v0, "#FFFFFFFF"

    iput-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->defTextColor:Ljava/lang/String;

    .line 33
    const-string v0, "#11000000"

    iput-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->defDividerColor:Ljava/lang/String;

    .line 34
    const-string v0, "#FFFFFFFF"

    iput-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->defMsgColor:Ljava/lang/String;

    .line 35
    const-string v0, "#FFE74C3C"

    iput-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->defDialogColor:Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1}, Lcom/shishicai/app/ui/NiftyDialog;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 32
    const-string v0, "#FFFFFFFF"

    iput-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->defTextColor:Ljava/lang/String;

    .line 33
    const-string v0, "#11000000"

    iput-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->defDividerColor:Ljava/lang/String;

    .line 34
    const-string v0, "#FFFFFFFF"

    iput-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->defMsgColor:Ljava/lang/String;

    .line 35
    const-string v0, "#FFE74C3C"

    iput-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->defDialogColor:Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Lcom/shishicai/app/ui/NiftyDialog;->init(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const v0, 0x7f03002d

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mDialogView:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mDialogView:Landroid/view/View;

    const v1, 0x7f09009d

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mRelativeLayoutView:Landroid/widget/LinearLayout;

    .line 57
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mDialogView:Landroid/view/View;

    const v1, 0x7f09009e

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mLinearLayoutView:Landroid/widget/LinearLayout;

    .line 59
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mDialogView:Landroid/view/View;

    const v1, 0x7f09009f

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mLinearLayoutTopView:Landroid/widget/LinearLayout;

    .line 61
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mDialogView:Landroid/view/View;

    const v1, 0x7f0900a0

    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mLinearLayoutMsgView:Landroid/widget/LinearLayout;

    .line 63
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mDialogView:Landroid/view/View;

    const v1, 0x7f0900a2

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mFrameLayoutCustomView:Landroid/widget/FrameLayout;

    .line 65
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mDialogView:Landroid/view/View;

    const v1, 0x7f09008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mTitle:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mDialogView:Landroid/view/View;

    const v1, 0x7f0900a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mMessage:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mDialogView:Landroid/view/View;

    const v1, 0x7f09008e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mIcon:Landroid/widget/ImageView;

    .line 68
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mDialogView:Landroid/view/View;

    const v1, 0x7f0900a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mDivider:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mDialogView:Landroid/view/View;

    const v1, 0x7f0900a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mBtn_sure:Landroid/widget/Button;

    .line 70
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mDialogView:Landroid/view/View;

    const v1, 0x7f0900a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mBtn_cancel:Landroid/widget/Button;

    .line 71
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mDialogView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/shishicai/app/ui/NiftyDialog;->setContentView(Landroid/view/View;)V

    .line 73
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mBtn_cancel:Landroid/widget/Button;

    new-instance v1, Lcom/shishicai/app/ui/NiftyDialog$1;

    invoke-direct {v1, p0}, Lcom/shishicai/app/ui/NiftyDialog$1;-><init>(Lcom/shishicai/app/ui/NiftyDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method private toggleView(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 214
    if-nez p2, :cond_0

    .line 215
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 237
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    .line 238
    return-void
.end method

.method public dismiss()V
    .locals 0

    .prologue
    .line 242
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 243
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 50
    return-void
.end method

.method public setButtonLeftClick(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "click"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mBtn_sure:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    return-void
.end method

.method public setButtonRightClick(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "click"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mBtn_cancel:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 228
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 229
    return-void
.end method

.method public toDefault()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mTitle:Landroid/widget/TextView;

    const-string v1, "#FFFFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mDivider:Landroid/view/View;

    const-string v1, "#11000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 85
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mMessage:Landroid/widget/TextView;

    const-string v1, "#FFFFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mLinearLayoutView:Landroid/widget/LinearLayout;

    const-string v1, "#FFE74C3C"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 87
    return-void
.end method

.method public withButtonLeftText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mBtn_sure:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mBtn_sure:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 178
    return-void
.end method

.method public withButtonRightText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mBtn_cancel:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mBtn_cancel:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 189
    return-void
.end method

.method public withDividerColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mDivider:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 101
    return-void
.end method

.method public withDividerColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "colorString"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mDivider:Landroid/view/View;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 97
    return-void
.end method

.method public withIcon(I)V
    .locals 1
    .param p1, "drawableResId"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    return-void
.end method

.method public withIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    return-void
.end method

.method public withMessage(I)V
    .locals 2
    .param p1, "textResId"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mLinearLayoutMsgView:Landroid/widget/LinearLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/shishicai/app/ui/NiftyDialog;->toggleView(Landroid/view/View;Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 137
    return-void
.end method

.method public withMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mLinearLayoutMsgView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/shishicai/app/ui/NiftyDialog;->toggleView(Landroid/view/View;Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    return-void
.end method

.method public withMessageColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "colorString"    # Ljava/lang/String;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mMessage:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    return-void
.end method

.method public withTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mLinearLayoutTopView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/shishicai/app/ui/NiftyDialog;->toggleView(Landroid/view/View;Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method

.method public withTitleColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    return-void
.end method

.method public withTitleColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "colorString"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/shishicai/app/ui/NiftyDialog;->mTitle:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    return-void
.end method
