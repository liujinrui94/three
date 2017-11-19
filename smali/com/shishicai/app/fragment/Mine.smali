.class public Lcom/shishicai/app/fragment/Mine;
.super Landroid/support/v4/app/Fragment;
.source "Mine.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private address:Landroid/widget/TextView;

.field private ckb_remember:Landroid/widget/CheckBox;

.field private coin:Landroid/widget/TextView;

.field private collect:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private et_password:Landroid/widget/EditText;

.field private et_username:Landroid/widget/EditText;

.field private handler:Landroid/os/Handler;

.field private headPic:Landroid/widget/ImageView;

.field private login:Landroid/widget/Button;

.field private loginLayout:Landroid/widget/LinearLayout;

.field private loginedLayout:Landroid/widget/FrameLayout;

.field private mineView:Landroid/view/View;

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private order:Landroid/widget/TextView;

.field private password:Ljava/lang/String;

.field private register:Landroid/widget/Button;

.field private setting:Landroid/widget/TextView;

.field private sharedpreferences:Landroid/content/SharedPreferences;

.field private shopcart:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;

.field private tv_forget:Landroid/widget/TextView;

.field private user_name:Landroid/widget/TextView;

.field private username:Ljava/lang/String;

.field private vip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 70
    new-instance v0, Lcom/shishicai/app/fragment/Mine$1;

    invoke-direct {v0, p0}, Lcom/shishicai/app/fragment/Mine$1;-><init>(Lcom/shishicai/app/fragment/Mine;)V

    iput-object v0, p0, Lcom/shishicai/app/fragment/Mine;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/shishicai/app/fragment/Mine;)V
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Mine;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/shishicai/app/fragment/Mine;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/shishicai/app/fragment/Mine;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Mine;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/shishicai/app/fragment/Mine;->sharedpreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shishicai/app/fragment/Mine;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Mine;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/shishicai/app/fragment/Mine;->user_name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shishicai/app/fragment/Mine;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Mine;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/shishicai/app/fragment/Mine;->headPic:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/shishicai/app/fragment/Mine;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Mine;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/shishicai/app/fragment/Mine;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shishicai/app/fragment/Mine;)V
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Mine;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/shishicai/app/fragment/Mine;->initLogin()V

    return-void
.end method

.method static synthetic access$600(Lcom/shishicai/app/fragment/Mine;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Mine;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/shishicai/app/fragment/Mine;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$602(Lcom/shishicai/app/fragment/Mine;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Mine;
    .param p1, "x1"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/shishicai/app/fragment/Mine;->editor:Landroid/content/SharedPreferences$Editor;

    return-object p1
.end method

.method static synthetic access$700(Lcom/shishicai/app/fragment/Mine;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Mine;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/shishicai/app/fragment/Mine;->ckb_remember:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/shishicai/app/fragment/Mine;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/shishicai/app/fragment/Mine;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/shishicai/app/fragment/Mine;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/shishicai/app/fragment/Mine;->loginLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/shishicai/app/fragment/Mine;->loginedLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/shishicai/app/fragment/Mine;->title:Landroid/widget/TextView;

    const-string v1, "\u6211\u7684"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/shishicai/app/fragment/Mine;->mineView:Landroid/view/View;

    const v1, 0x7f090141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/fragment/Mine;->address:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lcom/shishicai/app/fragment/Mine;->mineView:Landroid/view/View;

    const v1, 0x7f09013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/fragment/Mine;->collect:Landroid/widget/TextView;

    .line 147
    iget-object v0, p0, Lcom/shishicai/app/fragment/Mine;->mineView:Landroid/view/View;

    const v1, 0x7f09013c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/fragment/Mine;->order:Landroid/widget/TextView;

    .line 148
    iget-object v0, p0, Lcom/shishicai/app/fragment/Mine;->mineView:Landroid/view/View;

    const v1, 0x7f09013d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/fragment/Mine;->shopcart:Landroid/widget/TextView;

    .line 149
    iget-object v0, p0, Lcom/shishicai/app/fragment/Mine;->mineView:Landroid/view/View;

    const v1, 0x7f090142

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/fragment/Mine;->setting:Landroid/widget/TextView;

    .line 150
    iget-object v0, p0, Lcom/shishicai/app/fragment/Mine;->mineView:Landroid/view/View;

    const v1, 0x7f09013f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/fragment/Mine;->coin:Landroid/widget/TextView;

    .line 151
    iget-object v0, p0, Lcom/shishicai/app/fragment/Mine;->mineView:Landroid/view/View;

    const v1, 0x7f090140

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/fragment/Mine;->vip:Landroid/widget/TextView;

    .line 152
    iget-object v0, p0, Lcom/shishicai/app/fragment/Mine;->address:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/shishicai/app/fragment/Mine;->collect:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/shishicai/app/fragment/Mine;->order:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/shishicai/app/fragment/Mine;->shopcart:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/shishicai/app/fragment/Mine;->setting:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/shishicai/app/fragment/Mine;->coin:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/shishicai/app/fragment/Mine;->vip:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/shishicai/app/fragment/Mine;->mineView:Landroid/view/View;

    const v1, 0x7f090139

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shishicai/app/fragment/Mine;->user_name:Landroid/widget/TextView;

    .line 160
    iget-object v0, p0, Lcom/shishicai/app/fragment/Mine;->mineView:Landroid/view/View;

    const v1, 0x7f090138

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shishicai/app/fragment/Mine;->headPic:Landroid/widget/ImageView;

    .line 161
    return-void
.end method

.method private initLogin()V
    .locals 5

    .prologue
    .line 164
    iget-object v2, p0, Lcom/shishicai/app/fragment/Mine;->loginLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    iget-object v2, p0, Lcom/shishicai/app/fragment/Mine;->loginedLayout:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 167
    iget-object v2, p0, Lcom/shishicai/app/fragment/Mine;->title:Landroid/widget/TextView;

    const-string v3, "\u767b\u5f55"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v2, p0, Lcom/shishicai/app/fragment/Mine;->mineView:Landroid/view/View;

    const v3, 0x7f0900ff

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/shishicai/app/fragment/Mine;->login:Landroid/widget/Button;

    .line 169
    iget-object v2, p0, Lcom/shishicai/app/fragment/Mine;->mineView:Landroid/view/View;

    const v3, 0x7f090102

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/shishicai/app/fragment/Mine;->register:Landroid/widget/Button;

    .line 170
    iget-object v2, p0, Lcom/shishicai/app/fragment/Mine;->mineView:Landroid/view/View;

    const v3, 0x7f090100

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/shishicai/app/fragment/Mine;->ckb_remember:Landroid/widget/CheckBox;

    .line 171
    iget-object v2, p0, Lcom/shishicai/app/fragment/Mine;->mineView:Landroid/view/View;

    const v3, 0x7f090101

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shishicai/app/fragment/Mine;->tv_forget:Landroid/widget/TextView;

    .line 172
    iget-object v2, p0, Lcom/shishicai/app/fragment/Mine;->mineView:Landroid/view/View;

    const v3, 0x7f0900fd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/shishicai/app/fragment/Mine;->et_username:Landroid/widget/EditText;

    .line 173
    iget-object v2, p0, Lcom/shishicai/app/fragment/Mine;->mineView:Landroid/view/View;

    const v3, 0x7f0900fe

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/shishicai/app/fragment/Mine;->et_password:Landroid/widget/EditText;

    .line 174
    iget-object v2, p0, Lcom/shishicai/app/fragment/Mine;->login:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v2, p0, Lcom/shishicai/app/fragment/Mine;->register:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v2, p0, Lcom/shishicai/app/fragment/Mine;->tv_forget:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v2, p0, Lcom/shishicai/app/fragment/Mine;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v3, "username"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "username":Ljava/lang/String;
    iget-object v2, p0, Lcom/shishicai/app/fragment/Mine;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v3, "password"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "password":Ljava/lang/String;
    iget-object v2, p0, Lcom/shishicai/app/fragment/Mine;->ckb_remember:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 182
    iget-object v2, p0, Lcom/shishicai/app/fragment/Mine;->et_username:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v2, p0, Lcom/shishicai/app/fragment/Mine;->et_password:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 187
    return-void
.end method

.method private normalLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 250
    iget-object v2, p0, Lcom/shishicai/app/fragment/Mine;->context:Landroid/content/Context;

    const-string v3, ""

    const-string v4, "\u6b63\u5728\u767b\u5f55\uff0c\u8bf7\u7a0d\u7b49 \u2026"

    invoke-static {v2, v3, v4, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 252
    .local v0, "dialog":Landroid/app/ProgressDialog;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 253
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 254
    .local v1, "params":Lcom/loopj/android/http/RequestParams;
    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v2, "pwd"

    invoke-virtual {v1, v2, p2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v2, "login"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/shishicai/app/Constant;->URLUser:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v2, "login"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",pwd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    sget-object v2, Lcom/shishicai/app/Constant;->URLUser:Ljava/lang/String;

    new-instance v3, Lcom/shishicai/app/fragment/Mine$2;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/shishicai/app/fragment/Mine$2;-><init>(Lcom/shishicai/app/fragment/Mine;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    invoke-static {v2, v1, v3}, Lcom/shishicai/app/service/HttpUser;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 292
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 296
    packed-switch p2, :pswitch_data_0

    .line 303
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 305
    return-void

    .line 298
    :pswitch_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 299
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x68

    iput v1, v0, Landroid/os/Message;->what:I

    .line 300
    iget-object v1, p0, Lcom/shishicai/app/fragment/Mine;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/shishicai/app/fragment/Mine;->context:Landroid/content/Context;

    .line 136
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 137
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 247
    :goto_0
    :sswitch_0
    return-void

    .line 196
    :sswitch_1
    iget-object v1, p0, Lcom/shishicai/app/fragment/Mine;->et_username:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shishicai/app/fragment/Mine;->username:Ljava/lang/String;

    .line 197
    iget-object v1, p0, Lcom/shishicai/app/fragment/Mine;->et_password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shishicai/app/fragment/Mine;->password:Ljava/lang/String;

    .line 198
    iget-object v1, p0, Lcom/shishicai/app/fragment/Mine;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/shishicai/app/fragment/Mine;->password:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/shishicai/app/fragment/Mine;->context:Landroid/content/Context;

    const-string v2, "\u7528\u6237\u540d\u548c\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/shishicai/app/fragment/Mine;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/shishicai/app/service/HttpMethod;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    iget-object v1, p0, Lcom/shishicai/app/fragment/Mine;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/shishicai/app/fragment/Mine;->password:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/shishicai/app/fragment/Mine;->normalLogin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_2
    iget-object v1, p0, Lcom/shishicai/app/fragment/Mine;->context:Landroid/content/Context;

    const-string v2, "\u4eb2\uff0c\u7f51\u7edc\u8fde\u63a5\u5931\u8d25"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 212
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shishicai/app/fragment/Mine;->context:Landroid/content/Context;

    const-class v2, Lcom/shishicai/app/activity/mine/MineRegister;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/shishicai/app/fragment/Mine;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 216
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shishicai/app/fragment/Mine;->context:Landroid/content/Context;

    const-class v2, Lcom/shishicai/app/activity/mine/MineFindPassword;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/shishicai/app/fragment/Mine;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 225
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 227
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 229
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shishicai/app/fragment/Mine;->context:Landroid/content/Context;

    const-class v2, Lcom/shishicai/app/activity/mine/MineCollection;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/shishicai/app/fragment/Mine;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 233
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shishicai/app/fragment/Mine;->context:Landroid/content/Context;

    const-class v2, Lcom/shishicai/app/activity/mine/MineOrder;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/shishicai/app/fragment/Mine;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 237
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_7
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shishicai/app/fragment/Mine;->context:Landroid/content/Context;

    const-class v2, Lcom/shishicai/app/activity/mine/MineSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    .restart local v0    # "intent":Landroid/content/Intent;
    const/16 v1, 0x31

    invoke-virtual {p0, v0, v1}, Lcom/shishicai/app/fragment/Mine;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 193
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900ff -> :sswitch_1
        0x7f090101 -> :sswitch_3
        0x7f090102 -> :sswitch_2
        0x7f09013c -> :sswitch_6
        0x7f09013d -> :sswitch_4
        0x7f09013e -> :sswitch_5
        0x7f09013f -> :sswitch_0
        0x7f090141 -> :sswitch_0
        0x7f090142 -> :sswitch_7
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x7f020068

    .line 103
    iget-object v1, p0, Lcom/shishicai/app/fragment/Mine;->mineView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 104
    const v1, 0x7f030053

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/shishicai/app/fragment/Mine;->mineView:Landroid/view/View;

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/shishicai/app/fragment/Mine;->mineView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 108
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 110
    iget-object v1, p0, Lcom/shishicai/app/fragment/Mine;->mineView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/shishicai/app/fragment/Mine;->mineView:Landroid/view/View;

    const v2, 0x7f0900fc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/shishicai/app/fragment/Mine;->loginLayout:Landroid/widget/LinearLayout;

    .line 113
    iget-object v1, p0, Lcom/shishicai/app/fragment/Mine;->mineView:Landroid/view/View;

    const v2, 0x7f090137

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/shishicai/app/fragment/Mine;->loginedLayout:Landroid/widget/FrameLayout;

    .line 114
    iget-object v1, p0, Lcom/shishicai/app/fragment/Mine;->mineView:Landroid/view/View;

    const v2, 0x7f0900f1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shishicai/app/fragment/Mine;->title:Landroid/widget/TextView;

    .line 115
    new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 116
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    .line 117
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    .line 118
    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    .line 119
    invoke-virtual {v1, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    .line 120
    invoke-virtual {v1, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 121
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    .line 122
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/shishicai/app/fragment/Mine;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 124
    iget-object v1, p0, Lcom/shishicai/app/fragment/Mine;->context:Landroid/content/Context;

    const-string v2, "is_open"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/shishicai/app/fragment/Mine;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 125
    sget-boolean v1, Lcom/shishicai/app/Constant;->isLogin:Z

    if-eqz v1, :cond_2

    .line 126
    invoke-direct {p0}, Lcom/shishicai/app/fragment/Mine;->init()V

    .line 130
    :goto_0
    iget-object v1, p0, Lcom/shishicai/app/fragment/Mine;->mineView:Landroid/view/View;

    return-object v1

    .line 128
    :cond_2
    invoke-direct {p0}, Lcom/shishicai/app/fragment/Mine;->initLogin()V

    goto :goto_0
.end method
