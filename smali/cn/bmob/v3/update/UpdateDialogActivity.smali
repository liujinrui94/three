.class public Lcn/bmob/v3/update/UpdateDialogActivity;
.super Landroid/app/Activity;
.source "UpdateDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private B:I

.field private C:I

.field Code:Lcn/bmob/v3/update/UpdateResponse;

.field private F:Z

.field private I:I

.field private S:Ljava/io/File;

.field private V:I

.field private Z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const/4 v0, 0x5

    iput v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->V:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->S:Ljava/io/File;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->F:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    iget v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->I:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 124
    const/4 v0, 0x6

    iput v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->V:I

    .line 130
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcn/bmob/v3/update/UpdateDialogActivity;->finish()V

    .line 131
    return-void

    .line 125
    :cond_1
    iget v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->Z:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 126
    const/4 v0, 0x7

    iput v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->V:I

    goto :goto_0

    .line 127
    :cond_2
    iget v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->B:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 128
    const/16 v0, 0x8

    iput v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->V:I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-static {p0}, Lcn/bmob/v3/b/of;->Code(Landroid/content/Context;)Lcn/bmob/v3/b/of;

    move-result-object v0

    const-string v3, "bmob_update_dialog"

    invoke-virtual {v0, v3}, Lcn/bmob/v3/b/of;->V(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/bmob/v3/update/UpdateDialogActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcn/bmob/v3/update/UpdateDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "response"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/bmob/v3/update/UpdateResponse;

    iput-object v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->Code:Lcn/bmob/v3/update/UpdateResponse;

    .line 39
    invoke-virtual {p0}, Lcn/bmob/v3/update/UpdateDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 41
    invoke-virtual {p0}, Lcn/bmob/v3/update/UpdateDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "showCheckBox"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->F:Z

    .line 43
    if-eqz v4, :cond_2

    const/4 v0, 0x1

    move v3, v0

    .line 44
    :goto_0
    if-eqz v3, :cond_0

    .line 45
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->S:Ljava/io/File;

    .line 47
    :cond_0
    invoke-static {p0}, Lcn/bmob/v3/b/of;->Code(Landroid/content/Context;)Lcn/bmob/v3/b/of;

    move-result-object v0

    const-string v4, "bmob_update_content"

    invoke-virtual {v0, v4}, Lcn/bmob/v3/b/of;->Code(Ljava/lang/String;)I

    move-result v4

    .line 48
    invoke-static {p0}, Lcn/bmob/v3/b/of;->Code(Landroid/content/Context;)Lcn/bmob/v3/b/of;

    move-result-object v0

    const-string v5, "bmob_update_wifi_indicator"

    invoke-virtual {v0, v5}, Lcn/bmob/v3/b/of;->Code(Ljava/lang/String;)I

    move-result v5

    .line 50
    invoke-static {p0}, Lcn/bmob/v3/b/of;->Code(Landroid/content/Context;)Lcn/bmob/v3/b/of;

    move-result-object v0

    const-string v6, "bmob_update_id_ok"

    invoke-virtual {v0, v6}, Lcn/bmob/v3/b/of;->Code(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->I:I

    .line 52
    invoke-static {p0}, Lcn/bmob/v3/b/of;->Code(Landroid/content/Context;)Lcn/bmob/v3/b/of;

    move-result-object v0

    const-string v6, "bmob_update_id_cancel"

    invoke-virtual {v0, v6}, Lcn/bmob/v3/b/of;->Code(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->Z:I

    .line 54
    invoke-static {p0}, Lcn/bmob/v3/b/of;->Code(Landroid/content/Context;)Lcn/bmob/v3/b/of;

    move-result-object v0

    const-string v6, "bmob_update_id_ignore"

    invoke-virtual {v0, v6}, Lcn/bmob/v3/b/of;->Code(Ljava/lang/String;)I

    .line 56
    invoke-static {p0}, Lcn/bmob/v3/b/of;->Code(Landroid/content/Context;)Lcn/bmob/v3/b/of;

    move-result-object v0

    const-string v6, "bmob_update_id_close"

    invoke-virtual {v0, v6}, Lcn/bmob/v3/b/of;->Code(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->B:I

    .line 58
    invoke-static {p0}, Lcn/bmob/v3/b/of;->Code(Landroid/content/Context;)Lcn/bmob/v3/b/of;

    move-result-object v0

    const-string v6, "bmob_update_id_check"

    invoke-virtual {v0, v6}, Lcn/bmob/v3/b/of;->Code(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->C:I

    .line 60
    iget-object v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->Code:Lcn/bmob/v3/update/UpdateResponse;

    iget-object v0, v0, Lcn/bmob/v3/update/UpdateResponse;->isforce:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcn/bmob/v3/update/a/This;->B()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcn/bmob/v3/update/a/This;->I()Z

    move-result v0

    if-nez v0, :cond_3

    .line 62
    iget v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->B:I

    invoke-virtual {p0, v0}, Lcn/bmob/v3/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->Z:I

    invoke-virtual {p0, v0}, Lcn/bmob/v3/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    :goto_1
    iget v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->I:I

    invoke-virtual {p0, v0}, Lcn/bmob/v3/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->Z:I

    invoke-virtual {p0, v0}, Lcn/bmob/v3/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->B:I

    invoke-virtual {p0, v0}, Lcn/bmob/v3/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->C:I

    invoke-virtual {p0, v0}, Lcn/bmob/v3/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v6, Lcn/bmob/v3/update/UpdateDialogActivity$1;

    invoke-direct {v6, p0}, Lcn/bmob/v3/update/UpdateDialogActivity$1;-><init>(Lcn/bmob/v3/update/UpdateDialogActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 90
    if-lez v5, :cond_1

    .line 91
    invoke-static {p0}, Lcn/bmob/v3/b/From;->V(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 92
    :goto_2
    invoke-virtual {p0, v5}, Lcn/bmob/v3/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 95
    :cond_1
    iget-boolean v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->F:Z

    if-eqz v0, :cond_5

    .line 96
    iget-object v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->Code:Lcn/bmob/v3/update/UpdateResponse;

    iget-object v0, v0, Lcn/bmob/v3/update/UpdateResponse;->isforce:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 99
    iget v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->C:I

    invoke-virtual {p0, v0}, Lcn/bmob/v3/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    :goto_3
    iget-object v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->Code:Lcn/bmob/v3/update/UpdateResponse;

    invoke-virtual {v0, p0, v3}, Lcn/bmob/v3/update/UpdateResponse;->getUpdateInfo(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-virtual {p0, v4}, Lcn/bmob/v3/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 107
    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-void

    :cond_2
    move v3, v2

    .line 43
    goto/16 :goto_0

    .line 65
    :cond_3
    iget v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->B:I

    invoke-virtual {p0, v0}, Lcn/bmob/v3/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->Z:I

    invoke-virtual {p0, v0}, Lcn/bmob/v3/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    move v0, v2

    .line 91
    goto :goto_2

    .line 102
    :cond_5
    iget v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->C:I

    invoke-virtual {p0, v0}, Lcn/bmob/v3/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 136
    iget v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->V:I

    iget-object v1, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->Code:Lcn/bmob/v3/update/UpdateResponse;

    iget-object v2, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->S:Ljava/io/File;

    invoke-static {v0, p0, v1, v2}, Lcn/bmob/v3/update/BmobUpdateAgent;->Code(ILandroid/content/Context;Lcn/bmob/v3/update/UpdateResponse;Ljava/io/File;)V

    .line 137
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 113
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 114
    iget-object v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity;->Code:Lcn/bmob/v3/update/UpdateResponse;

    iget-object v0, v0, Lcn/bmob/v3/update/UpdateResponse;->isforce:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 118
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
