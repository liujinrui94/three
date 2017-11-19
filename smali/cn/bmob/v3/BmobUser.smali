.class public Lcn/bmob/v3/BmobUser;
.super Lcn/bmob/v3/BmobObject;
.source "BmobUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;
    }
.end annotation


# static fields
.field static current:Lorg/json/JSONObject; = null

.field private static final serialVersionUID:J = -0x16101e51711e897aL


# instance fields
.field private email:Ljava/lang/String;

.field private emailVerified:Ljava/lang/Boolean;

.field private mobilePhoneNumber:Ljava/lang/String;

.field private mobilePhoneNumberVerified:Ljava/lang/Boolean;

.field private password:Ljava/lang/String;

.field private sessionToken:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcn/bmob/v3/BmobObject;-><init>()V

    .line 54
    return-void
.end method

.method private static Code(Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;Lcn/bmob/v3/listener/LogInListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;",
            "Lcn/bmob/v3/listener/LogInListener",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcn/bmob/v3/http/acknowledge;"
        }
    .end annotation

    .prologue
    .line 464
    if-nez p0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 465
    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 467
    :try_start_0
    const-string v1, "data"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "authData"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 468
    const-string v1, "c"

    const-string v3, "_User"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :goto_1
    new-instance v1, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v1}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    const-string v3, "authInfo is null"

    invoke-static {p0, v3}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/util/List;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v1

    const-string v3, "http://open.bmob.cn/8/login_or_signup"

    invoke-virtual {v1, v3, v2}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v1

    new-instance v2, Lcn/bmob/v3/BmobUser$8;

    invoke-direct {v2}, Lcn/bmob/v3/BmobUser$8;-><init>()V

    invoke-virtual {v1, v2}, Lcn/bmob/v3/http/acknowledge$This;->Code(Lrx/functions/Action1;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v1

    new-instance v2, Lcn/bmob/v3/BmobUser$7;

    invoke-direct {v2, v0}, Lcn/bmob/v3/BmobUser$7;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcn/bmob/v3/http/acknowledge$This;->Code(Lrx/functions/Func1;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/bmob/v3/http/acknowledge$This;->V(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0

    .line 464
    :cond_0
    invoke-virtual {p0}, Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 469
    :catch_0
    move-exception v1

    .line 470
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static Code(Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;Lcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 5

    .prologue
    .line 513
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 515
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 516
    const-string v2, "data"

    const-string v3, "authData"

    invoke-virtual {p0}, Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 517
    const-string v0, "c"

    const-string v2, "_User"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    const-string v0, "objectId"

    invoke-static {}, Lcn/bmob/v3/BmobUser;->getCurrentUser()Lcn/bmob/v3/BmobUser;

    move-result-object v2

    invoke-virtual {v2}, Lcn/bmob/v3/BmobUser;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :goto_0
    invoke-static {}, Lcn/bmob/v3/http/thing;->Code()Lcn/bmob/v3/http/thing;

    invoke-static {}, Lcn/bmob/v3/BmobUser;->getCurrentUser()Lcn/bmob/v3/BmobUser;

    move-result-object v0

    const-string v2, " user must be login before associate "

    const-string v3, " authInfo is null"

    invoke-static {v0, v2, p0, v3}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v2, "http://open.bmob.cn/8/update"

    invoke-static {v0, v2, v1, p1}, Lcn/bmob/v3/http/thing;->Code(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0

    .line 519
    :catch_0
    move-exception v0

    .line 520
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private Code(Ljava/lang/Class;Lcn/bmob/v3/listener/SaveListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcn/bmob/v3/listener/SaveListener",
            "<TT;>;)",
            "Lcn/bmob/v3/http/acknowledge;"
        }
    .end annotation

    .prologue
    .line 279
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 281
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 282
    const-string v2, "username"

    invoke-virtual {p0}, Lcn/bmob/v3/BmobUser;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    const-string v2, "password"

    .line 1081
    iget-object v3, p0, Lcn/bmob/v3/BmobUser;->password:Ljava/lang/String;

    .line 283
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    const-string v0, "c"

    invoke-virtual {p0}, Lcn/bmob/v3/BmobUser;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    invoke-virtual {p0}, Lcn/bmob/v3/BmobUser;->getUsername()Ljava/lang/String;

    move-result-object v2

    const-string v3, " username can\'t be empty "

    .line 2081
    iget-object v4, p0, Lcn/bmob/v3/BmobUser;->password:Ljava/lang/String;

    .line 289
    const-string v5, " password can\'t be empty "

    invoke-static {v2, v3, v4, v5}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/util/List;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    const-string v2, "http://open.bmob.cn/8/login"

    invoke-virtual {v0, v2, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/BmobUser$4;

    invoke-direct {v1, p0}, Lcn/bmob/v3/BmobUser$4;-><init>(Lcn/bmob/v3/BmobUser;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Lrx/functions/Action1;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/BmobUser$3;

    invoke-direct {v1, p0, p1}, Lcn/bmob/v3/BmobUser$3;-><init>(Lcn/bmob/v3/BmobUser;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Lrx/functions/Func1;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/bmob/v3/http/acknowledge$This;->V(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static Code(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/LogInListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/listener/LogInListener",
            "<TT;>;)",
            "Lcn/bmob/v3/http/acknowledge;"
        }
    .end annotation

    .prologue
    .line 750
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 752
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 753
    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 754
    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 755
    const-string v1, "data"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 756
    const-string v0, "c"

    const-string v1, "_User"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    :goto_0
    invoke-static {}, Lcn/bmob/v3/http/thing;->Code()Lcn/bmob/v3/http/thing;

    move-result-object v0

    const-string v1, " account can\'t be empty "

    const-string v2, " password can\'t be empty "

    invoke-static {p1, v1, p2, v2}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string v3, "http://open.bmob.cn/8/login"

    move-object v1, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/Class;Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/LogInListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0

    .line 757
    :catch_0
    move-exception v0

    .line 758
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static Code(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/LogInListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/listener/LogInListener",
            "<TT;>;)",
            "Lcn/bmob/v3/http/acknowledge;"
        }
    .end annotation

    .prologue
    .line 824
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 826
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 827
    const-string v1, "mobilePhoneNumber"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 828
    const-string v1, "smsCode"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 829
    const-string v1, "data"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 830
    const-string v0, "c"

    const-string v1, "_User"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :goto_0
    invoke-static {}, Lcn/bmob/v3/http/thing;->Code()Lcn/bmob/v3/http/thing;

    move-result-object v0

    const-string v1, " phoneNumber can\'t be empty "

    const-string v2, " smsCode can\'t be empty "

    invoke-static {p2, v1, p3, v2}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/Class;Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/LogInListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0

    .line 831
    :catch_0
    move-exception v0

    .line 832
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private Code(Ljava/lang/Class;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/SaveListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/http/bean/R1;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/listener/SaveListener",
            "<TT;>;)",
            "Lcn/bmob/v3/http/acknowledge;"
        }
    .end annotation

    .prologue
    .line 207
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 209
    :try_start_0
    invoke-virtual {p0}, Lcn/bmob/v3/BmobUser;->getCurrentData()Lorg/json/JSONObject;

    move-result-object v0

    .line 210
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 211
    const-string v2, "smsCode"

    invoke-virtual {v0, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    :cond_0
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    const-string v0, "c"

    invoke-virtual {p0}, Lcn/bmob/v3/BmobUser;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    invoke-virtual {v0, p2}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/util/List;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0, p3, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/BmobUser$2;

    invoke-direct {v1, p0, p4}, Lcn/bmob/v3/BmobUser$2;-><init>(Lcn/bmob/v3/BmobUser;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Lrx/functions/Action1;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/BmobUser$1;

    invoke-direct {v1, p0, p4, p1}, Lcn/bmob/v3/BmobUser$1;-><init>(Lcn/bmob/v3/BmobUser;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Lrx/functions/Func1;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcn/bmob/v3/http/acknowledge$This;->V(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private Code(Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 6

    .prologue
    .line 380
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 382
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p0}, Lcn/bmob/v3/helper/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/bmob/v3/BmobUser;->current:Lorg/json/JSONObject;

    .line 383
    invoke-virtual {p0}, Lcn/bmob/v3/BmobUser;->getCurrentData()Lorg/json/JSONObject;

    move-result-object v2

    .line 385
    const-string v0, "objectId"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 386
    const-string v0, "sessionToken"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 387
    const-string v0, "createdAt"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 388
    const-string v0, "updatedAt"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lcn/bmob/v3/BmobUser;->increments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 391
    sget-object v0, Lcn/bmob/v3/BmobUser;->increments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 392
    const-string v4, "key"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 393
    const-string v5, "key"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 394
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 404
    :goto_1
    new-instance v0, Lcn/bmob/v3/http/acknowledge$This;

    invoke-direct {v0}, Lcn/bmob/v3/http/acknowledge$This;-><init>()V

    const-string v2, " objectId can\'t be empty "

    invoke-static {p1, v2}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/util/List;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    const-string v2, "http://open.bmob.cn/8/update"

    invoke-virtual {v0, v2, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Ljava/lang/String;Lorg/json/JSONObject;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    new-instance v2, Lcn/bmob/v3/BmobUser$6;

    invoke-direct {v2, p0, p1, v1}, Lcn/bmob/v3/BmobUser$6;-><init>(Lcn/bmob/v3/BmobUser;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v2}, Lcn/bmob/v3/http/acknowledge$This;->Code(Lrx/functions/Action1;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    new-instance v1, Lcn/bmob/v3/BmobUser$5;

    invoke-direct {v1, p0, p1}, Lcn/bmob/v3/BmobUser$5;-><init>(Lcn/bmob/v3/BmobUser;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/bmob/v3/http/acknowledge$This;->Code(Lrx/functions/Func1;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/bmob/v3/http/acknowledge$This;->V(Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge$This;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge$This;->C()Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0

    .line 396
    :cond_0
    :try_start_1
    sget-object v0, Lcn/bmob/v3/BmobUser;->increments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 398
    :cond_1
    const-string v0, "data"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 399
    const-string v0, "c"

    invoke-virtual {p0}, Lcn/bmob/v3/BmobUser;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 400
    const-string v0, "objectId"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static Code(Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 4

    .prologue
    .line 719
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 721
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 723
    const-string v2, "smsCode"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 724
    const-string v2, "password"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 725
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 726
    const-string v1, "c"

    const-string v2, "_User"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 730
    :goto_0
    invoke-static {}, Lcn/bmob/v3/http/thing;->Code()Lcn/bmob/v3/http/thing;

    const-string v1, " Verify code can\'t be empty"

    const-string v2, " newPassword can\'t be empty"

    invoke-static {p0, v1, p1, v2}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v2, "http://open.bmob.cn/8/phone_reset"

    invoke-static {v1, v2, v0, p2}, Lcn/bmob/v3/http/thing;->Code(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0

    .line 727
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 728
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 727
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic Code(Lcn/bmob/v3/BmobUser;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcn/bmob/v3/BmobUser;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method private Code(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/SaveListener;)Lrx/Subscription;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcn/bmob/v3/http/bean/R1;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/listener/SaveListener",
            "<TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 264
    if-nez p4, :cond_0

    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " listener must not be null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Class;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 268
    invoke-direct/range {v0 .. v5}, Lcn/bmob/v3/BmobUser;->Code(Ljava/lang/Class;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/SaveListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method private static I(Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 5

    .prologue
    .line 665
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 667
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    :try_start_1
    const-string v1, "data"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "email"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 669
    const-string v1, "c"

    const-string v2, "_User"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 673
    :goto_0
    invoke-static {}, Lcn/bmob/v3/http/thing;->Code()Lcn/bmob/v3/http/thing;

    const-string v1, " email  can\'t be empty"

    invoke-static {p0, v1}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v2, "http://open.bmob.cn/8/email_verify"

    invoke-static {v1, v2, v0, p1}, Lcn/bmob/v3/http/thing;->Code(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0

    .line 670
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 671
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 670
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static V(Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 5

    .prologue
    .line 539
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 541
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 542
    const-string v2, "authData"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 543
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 544
    const-string v0, "c"

    const-string v2, "_User"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 545
    const-string v0, "objectId"

    invoke-static {}, Lcn/bmob/v3/BmobUser;->getCurrentUser()Lcn/bmob/v3/BmobUser;

    move-result-object v2

    invoke-virtual {v2}, Lcn/bmob/v3/BmobUser;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :goto_0
    invoke-static {}, Lcn/bmob/v3/http/thing;->Code()Lcn/bmob/v3/http/thing;

    invoke-static {}, Lcn/bmob/v3/BmobUser;->getCurrentUser()Lcn/bmob/v3/BmobUser;

    move-result-object v0

    const-string v2, " user must be login before disassociate "

    const-string v3, " type  is null"

    invoke-static {v0, v2, p0, v3}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v2, "http://open.bmob.cn/8/update"

    invoke-static {v0, v2, v1, p1}, Lcn/bmob/v3/http/thing;->Code(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0

    .line 546
    :catch_0
    move-exception v0

    .line 547
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static Z(Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;
    .locals 5

    .prologue
    .line 695
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 697
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    :try_start_1
    const-string v1, "data"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "email"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 702
    :goto_0
    invoke-static {}, Lcn/bmob/v3/http/thing;->Code()Lcn/bmob/v3/http/thing;

    const-string v1, " email  can\'t be empty"

    invoke-static {p0, v1}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v2, "http://open.bmob.cn/8/reset"

    invoke-static {v1, v2, v0, p1}, Lcn/bmob/v3/http/thing;->Code(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    return-object v0

    .line 699
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 700
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 699
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static associateWithAuthData(Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;Lcn/bmob/v3/listener/UpdateListener;)Lrx/Subscription;
    .locals 1
    .param p0, "authInfo"    # Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;
    .param p1, "listener"    # Lcn/bmob/v3/listener/UpdateListener;

    .prologue
    .line 535
    invoke-static {p0, p1}, Lcn/bmob/v3/BmobUser;->Code(Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;Lcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static associateWithAuthDataObservable(Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;Lcn/bmob/v3/listener/UpdateListener;)Lrx/Observable;
    .locals 1
    .param p0, "authInfo"    # Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;
    .param p1, "listener"    # Lcn/bmob/v3/listener/UpdateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;",
            "Lcn/bmob/v3/listener/UpdateListener;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 531
    invoke-static {p0, p1}, Lcn/bmob/v3/BmobUser;->Code(Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;Lcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentUser()Lcn/bmob/v3/BmobUser;
    .locals 1

    .prologue
    .line 880
    const-class v0, Lcn/bmob/v3/BmobUser;

    invoke-static {v0}, Lcn/bmob/v3/BmobUser;->getCurrentUser(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bmob/v3/BmobUser;

    return-object v0
.end method

.method public static getCurrentUser(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 871
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcn/bmob/v3/b/The;

    invoke-direct {v0}, Lcn/bmob/v3/b/The;-><init>()V

    const-string v1, "user"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcn/bmob/v3/b/The;->V(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 872
    invoke-static {v0, p0}, Lcn/bmob/v3/helper/GsonUtil;->toObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getObjectByKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 898
    new-instance v0, Lcn/bmob/v3/b/The;

    invoke-direct {v0}, Lcn/bmob/v3/b/The;-><init>()V

    const-string v1, "user"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcn/bmob/v3/b/The;->V(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 899
    const/4 v0, 0x0

    .line 901
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 902
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 905
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static logOut()V
    .locals 2

    .prologue
    .line 888
    new-instance v0, Lcn/bmob/v3/b/The;

    invoke-direct {v0}, Lcn/bmob/v3/b/The;-><init>()V

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcn/bmob/v3/b/The;->Code(Ljava/lang/String;)V

    .line 890
    new-instance v0, Lcn/bmob/v3/b/The;

    invoke-direct {v0}, Lcn/bmob/v3/b/The;-><init>()V

    const-string v1, "sessionToken"

    invoke-virtual {v0, v1}, Lcn/bmob/v3/b/The;->Code(Ljava/lang/String;)V

    .line 891
    return-void
.end method

.method public static loginByAccount(Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/LogInListener;)Lrx/Subscription;
    .locals 2
    .param p0, "account"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/listener/LogInListener",
            "<TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 772
    .local p2, "listener":Lcn/bmob/v3/listener/LogInListener;, "Lcn/bmob/v3/listener/LogInListener<TT;>;"
    if-nez p2, :cond_0

    .line 773
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " listener must not be null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 775
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    .line 776
    invoke-static {v0, p0, p1, p2}, Lcn/bmob/v3/BmobUser;->Code(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/LogInListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static loginByAccountObservable(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 788
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p0, :cond_0

    .line 789
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " class must not be null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 791
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/bmob/v3/BmobUser;->Code(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/LogInListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static loginBySMSCode(Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/LogInListener;)Lrx/Subscription;
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "smsCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/listener/LogInListener",
            "<TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 802
    .local p2, "listener":Lcn/bmob/v3/listener/LogInListener;, "Lcn/bmob/v3/listener/LogInListener<TT;>;"
    if-nez p2, :cond_0

    .line 803
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " listener must not be null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 805
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    .line 806
    const-string v1, "http://open.bmob.cn/8/login"

    invoke-static {v0, v1, p0, p1, p2}, Lcn/bmob/v3/BmobUser;->Code(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/LogInListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static loginWithAuthData(Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;Lcn/bmob/v3/listener/LogInListener;)Lrx/Subscription;
    .locals 1
    .param p0, "authInfo"    # Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;",
            "Lcn/bmob/v3/listener/LogInListener",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 500
    .local p1, "listener":Lcn/bmob/v3/listener/LogInListener;, "Lcn/bmob/v3/listener/LogInListener<Lorg/json/JSONObject;>;"
    invoke-static {p0, p1}, Lcn/bmob/v3/BmobUser;->Code(Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;Lcn/bmob/v3/listener/LogInListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static loginWithAuthDataObservable(Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;)Lrx/Observable;
    .locals 1
    .param p0, "authInfo"    # Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;",
            ")",
            "Lrx/Observable",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 509
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/bmob/v3/BmobUser;->Code(Lcn/bmob/v3/BmobUser$BmobThirdUserAuth;Lcn/bmob/v3/listener/LogInListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static requestEmailVerify(Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lrx/Subscription;
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "listener"    # Lcn/bmob/v3/listener/UpdateListener;

    .prologue
    .line 682
    invoke-static {p0, p1}, Lcn/bmob/v3/BmobUser;->I(Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static requestEmailVerifyObservable(Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 691
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/bmob/v3/BmobUser;->I(Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static resetPasswordByEmail(Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lrx/Subscription;
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "listener"    # Lcn/bmob/v3/listener/UpdateListener;

    .prologue
    .line 711
    invoke-static {p0, p1}, Lcn/bmob/v3/BmobUser;->Z(Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static resetPasswordByEmailObservable(Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 715
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/bmob/v3/BmobUser;->Z(Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static resetPasswordBySMSCode(Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lrx/Subscription;
    .locals 1
    .param p0, "smsCode"    # Ljava/lang/String;
    .param p1, "newPassword"    # Ljava/lang/String;
    .param p2, "listener"    # Lcn/bmob/v3/listener/UpdateListener;

    .prologue
    .line 742
    invoke-static {p0, p1, p2}, Lcn/bmob/v3/BmobUser;->Code(Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static resetPasswordBySMSCodeObservable(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p0, "smsCode"    # Ljava/lang/String;
    .param p1, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 746
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/bmob/v3/BmobUser;->Code(Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static signOrLoginByMobilePhone(Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/LogInListener;)Lrx/Subscription;
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "smsCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/listener/LogInListener",
            "<TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 817
    .local p2, "listener":Lcn/bmob/v3/listener/LogInListener;, "Lcn/bmob/v3/listener/LogInListener<TT;>;"
    if-nez p2, :cond_0

    .line 818
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " listener must not be null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 820
    :cond_0
    const/4 v0, 0x0

    const-string v1, "http://open.bmob.cn/8/login_or_signup"

    invoke-static {v0, v1, p0, p1, p2}, Lcn/bmob/v3/BmobUser;->Code(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/LogInListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public static updateCurrentUserPassword(Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lrx/Subscription;
    .locals 7
    .param p0, "oldPwd"    # Ljava/lang/String;
    .param p1, "newPwd"    # Ljava/lang/String;
    .param p2, "listener"    # Lcn/bmob/v3/listener/UpdateListener;

    .prologue
    .line 846
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 848
    :try_start_0
    invoke-static {}, Lcn/bmob/v3/BmobUser;->getCurrentUser()Lcn/bmob/v3/BmobUser;

    move-result-object v0

    .line 849
    invoke-virtual {v0}, Lcn/bmob/v3/BmobUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    .line 850
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 851
    const-string v2, "oldPassword"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 852
    const-string v2, "newPassword"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 853
    const-string v2, "data"

    invoke-virtual {v6, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 854
    const-string v1, "objectId"

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 855
    const-string v0, "c"

    const-string v1, "_User"

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    :goto_0
    invoke-static {}, Lcn/bmob/v3/http/thing;->Code()Lcn/bmob/v3/http/thing;

    const-string v1, " oldPassword can\'t be empty"

    const-string v3, " newPassword can\'t be empty"

    invoke-static {}, Lcn/bmob/v3/BmobUser;->getCurrentUser()Lcn/bmob/v3/BmobUser;

    move-result-object v4

    const-string v5, "Cannot update user password until it has been logined. Please call login first."

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "http://open.bmob.cn/8/update_user_password"

    invoke-static {v0, v1, v6, p2}, Lcn/bmob/v3/http/thing;->Code(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;Lcn/bmob/v3/listener/BmobCallback;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0

    .line 856
    :catch_0
    move-exception v0

    .line 857
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dissociateAuthData(Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lrx/Subscription;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Lcn/bmob/v3/listener/UpdateListener;

    .prologue
    .line 560
    invoke-static {p1, p2}, Lcn/bmob/v3/BmobUser;->V(Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public dissociateAuthDataObservable(Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 568
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/bmob/v3/BmobUser;->V(Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcn/bmob/v3/BmobUser;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailVerified()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcn/bmob/v3/BmobUser;->emailVerified:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMobilePhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcn/bmob/v3/BmobUser;->mobilePhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMobilePhoneNumberVerified()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcn/bmob/v3/BmobUser;->mobilePhoneNumberVerified:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcn/bmob/v3/BmobUser;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "_User"

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcn/bmob/v3/BmobUser;->username:Ljava/lang/String;

    return-object v0
.end method

.method public login(Lcn/bmob/v3/listener/SaveListener;)Lrx/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/bmob/v3/listener/SaveListener",
            "<TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 325
    .local p1, "listener":Lcn/bmob/v3/listener/SaveListener;, "Lcn/bmob/v3/listener/SaveListener<TT;>;"
    if-nez p1, :cond_0

    .line 326
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " listener must not be null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    .line 329
    invoke-direct {p0, v0, p1}, Lcn/bmob/v3/BmobUser;->Code(Ljava/lang/Class;Lcn/bmob/v3/listener/SaveListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public loginObservable(Ljava/lang/Class;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 340
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " class must not be null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/bmob/v3/BmobUser;->Code(Ljava/lang/Class;Lcn/bmob/v3/listener/SaveListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public save()Lrx/Subscription;
    .locals 2

    .prologue
    .line 347
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " _User does not support save operation,please use login / signUp method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public save(Lcn/bmob/v3/listener/SaveListener;)Lrx/Subscription;
    .locals 2

    .prologue
    .line 352
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " _User does not support save operation,please use login / signUp method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcn/bmob/v3/BmobUser;->email:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setEmailVerified(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "emailVerified"    # Ljava/lang/Boolean;

    .prologue
    .line 116
    iput-object p1, p0, Lcn/bmob/v3/BmobUser;->emailVerified:Ljava/lang/Boolean;

    .line 117
    return-void
.end method

.method public setMobilePhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "mobilePhoneNumber"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcn/bmob/v3/BmobUser;->mobilePhoneNumber:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setMobilePhoneNumberVerified(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "mobilePhoneNumberVerified"    # Ljava/lang/Boolean;

    .prologue
    .line 160
    iput-object p1, p0, Lcn/bmob/v3/BmobUser;->mobilePhoneNumberVerified:Ljava/lang/Boolean;

    .line 161
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcn/bmob/v3/BmobUser;->password:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setSessionToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcn/bmob/v3/BmobUser;->sessionToken:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcn/bmob/v3/BmobUser;->username:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public signOrLogin(Ljava/lang/String;Lcn/bmob/v3/listener/SaveListener;)Lrx/Subscription;
    .locals 2
    .param p1, "smsCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcn/bmob/v3/listener/SaveListener",
            "<TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 169
    .local p2, "listener":Lcn/bmob/v3/listener/SaveListener;, "Lcn/bmob/v3/listener/SaveListener<TT;>;"
    const-string v0, " Verify code can\'t be empty "

    invoke-static {p1, v0}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "http://open.bmob.cn/8/login_or_signup"

    invoke-direct {p0, v0, v1, p1, p2}, Lcn/bmob/v3/BmobUser;->Code(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/SaveListener;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public signOrLoginObservable(Ljava/lang/Class;Ljava/lang/String;)Lrx/Observable;
    .locals 6
    .param p2, "smsCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " class must not be null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    const-string v0, " Verify code can\'t be empty "

    invoke-static {p2, v0}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string v3, "http://open.bmob.cn/8/login_or_signup"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcn/bmob/v3/BmobUser;->Code(Ljava/lang/Class;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/SaveListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public signUp(Lcn/bmob/v3/listener/SaveListener;)Lrx/Subscription;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/bmob/v3/listener/SaveListener",
            "<TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "listener":Lcn/bmob/v3/listener/SaveListener;, "Lcn/bmob/v3/listener/SaveListener<TT;>;"
    const-string v0, "no check"

    const-string v1, " no check "

    invoke-static {v0, v1}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "http://open.bmob.cn/8/signup"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcn/bmob/v3/BmobUser;->Code(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/SaveListener;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public signUpObservable(Ljava/lang/Class;)Lrx/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 192
    if-nez p1, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " class must not be null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    const-string v0, "no check"

    const-string v1, " no check "

    invoke-static {v0, v1}, Lcn/bmob/v3/http/thing;->Code(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string v3, "http://open.bmob.cn/8/signup"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcn/bmob/v3/BmobUser;->Code(Ljava/lang/Class;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcn/bmob/v3/listener/SaveListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public update()Lrx/Subscription;
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/bmob/v3/BmobUser;->update(Lcn/bmob/v3/listener/UpdateListener;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcn/bmob/v3/listener/UpdateListener;)Lrx/Subscription;
    .locals 1
    .param p1, "listener"    # Lcn/bmob/v3/listener/UpdateListener;

    .prologue
    .line 371
    invoke-virtual {p0}, Lcn/bmob/v3/BmobUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcn/bmob/v3/BmobUser;->update(Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lrx/Subscription;
    .locals 1
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcn/bmob/v3/listener/UpdateListener;

    .prologue
    .line 460
    invoke-direct {p0, p1, p2}, Lcn/bmob/v3/BmobUser;->Code(Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->V()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public updateObservable(Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p1, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/bmob/v3/BmobUser;->Code(Ljava/lang/String;Lcn/bmob/v3/listener/UpdateListener;)Lcn/bmob/v3/http/acknowledge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/bmob/v3/http/acknowledge;->Code()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
