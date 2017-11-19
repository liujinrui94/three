.class final Lcn/bmob/v3/update/UpdateDialogActivity$1;
.super Ljava/lang/Object;
.source "UpdateDialogActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bmob/v3/update/UpdateDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic Code:Lcn/bmob/v3/update/UpdateDialogActivity;


# direct methods
.method constructor <init>(Lcn/bmob/v3/update/UpdateDialogActivity;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcn/bmob/v3/update/UpdateDialogActivity$1;->Code:Lcn/bmob/v3/update/UpdateDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p2, "isChecked"    # Z

    .prologue
    .line 80
    if-eqz p2, :cond_1

    .line 81
    iget-object v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity$1;->Code:Lcn/bmob/v3/update/UpdateDialogActivity;

    iget-object v0, v0, Lcn/bmob/v3/update/UpdateDialogActivity;->Code:Lcn/bmob/v3/update/UpdateResponse;

    iget-object v0, v0, Lcn/bmob/v3/update/UpdateResponse;->version_i:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/v3/update/BmobUpdateAgent;->add2IgnoreVersion(Ljava/lang/String;)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity$1;->Code:Lcn/bmob/v3/update/UpdateDialogActivity;

    iget-object v0, v0, Lcn/bmob/v3/update/UpdateDialogActivity;->Code:Lcn/bmob/v3/update/UpdateResponse;

    iget-object v0, v0, Lcn/bmob/v3/update/UpdateResponse;->version_i:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/v3/update/BmobUpdateAgent;->isIgnored(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcn/bmob/v3/update/UpdateDialogActivity$1;->Code:Lcn/bmob/v3/update/UpdateDialogActivity;

    iget-object v0, v0, Lcn/bmob/v3/update/UpdateDialogActivity;->Code:Lcn/bmob/v3/update/UpdateResponse;

    iget-object v0, v0, Lcn/bmob/v3/update/UpdateResponse;->version_i:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/bmob/v3/update/BmobUpdateAgent;->deleteIgnoreVersion(Ljava/lang/String;)V

    goto :goto_0
.end method
