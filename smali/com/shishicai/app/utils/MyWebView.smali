.class public Lcom/shishicai/app/utils/MyWebView;
.super Landroid/webkit/WebView;
.source "MyWebView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method public stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .param p1, "script"    # Ljava/lang/String;

    .prologue
    .line 29
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    .line 31
    :try_start_0
    const-class v17, Landroid/webkit/WebView;

    const-string v18, "mProvider"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 32
    .local v9, "mp":Ljava/lang/reflect/Field;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 33
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 34
    .local v16, "webViewObject":Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    const-string v18, "mWebViewCore"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 35
    .local v14, "wc":Ljava/lang/reflect/Field;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 36
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 37
    .local v15, "webViewCore":Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    const-string v18, "mBrowserFrame"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 38
    .local v2, "bf":Ljava/lang/reflect/Field;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 39
    invoke-virtual {v2, v15}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 40
    .local v3, "browserFrame":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    const-string v18, "stringByEvaluatingJavaScriptFromString"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-class v21, Ljava/lang/String;

    aput-object v21, v19, v20

    .line 41
    invoke-virtual/range {v17 .. v19}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 43
    .local v13, "stringByEvaluatingJavaScriptFromString":Ljava/lang/reflect/Method;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 44
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p1, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v13, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 46
    .local v11, "obj_value":Ljava/lang/Object;
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 77
    .end local v2    # "bf":Ljava/lang/reflect/Field;
    .end local v3    # "browserFrame":Ljava/lang/Object;
    .end local v9    # "mp":Ljava/lang/reflect/Field;
    .end local v11    # "obj_value":Ljava/lang/Object;
    .end local v13    # "stringByEvaluatingJavaScriptFromString":Ljava/lang/reflect/Method;
    .end local v14    # "wc":Ljava/lang/reflect/Field;
    .end local v15    # "webViewCore":Ljava/lang/Object;
    .end local v16    # "webViewObject":Ljava/lang/Object;
    :goto_0
    return-object v17

    .line 47
    :catch_0
    move-exception v4

    .line 48
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    const-string v17, "stringByEvaluatingJavaScriptFromString"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/16 v17, 0x0

    goto :goto_0

    .line 54
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    const-class v17, Landroid/webkit/WebView;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    .line 56
    .local v7, "fields":[Ljava/lang/reflect/Field;
    const-class v17, Landroid/webkit/WebView;

    const-string v18, "mWebViewCore"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 57
    .local v6, "field_webviewcore":Ljava/lang/reflect/Field;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 58
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 60
    .local v12, "obj_webviewcore":Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    const-string v18, "mBrowserFrame"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 62
    .local v5, "field_BrowserFrame":Ljava/lang/reflect/Field;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 63
    invoke-virtual {v5, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 65
    .local v10, "obj_frame":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    const-string v18, "stringByEvaluatingJavaScriptFromString"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-class v21, Ljava/lang/String;

    aput-object v21, v19, v20

    .line 66
    invoke-virtual/range {v17 .. v19}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 68
    .local v8, "method_stringByEvaluatingJavaScriptFromString":Ljava/lang/reflect/Method;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p1, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v8, v10, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 72
    .restart local v11    # "obj_value":Ljava/lang/Object;
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v17

    goto :goto_0

    .line 73
    .end local v5    # "field_BrowserFrame":Ljava/lang/reflect/Field;
    .end local v6    # "field_webviewcore":Ljava/lang/reflect/Field;
    .end local v7    # "fields":[Ljava/lang/reflect/Field;
    .end local v8    # "method_stringByEvaluatingJavaScriptFromString":Ljava/lang/reflect/Method;
    .end local v10    # "obj_frame":Ljava/lang/Object;
    .end local v11    # "obj_value":Ljava/lang/Object;
    .end local v12    # "obj_webviewcore":Ljava/lang/Object;
    :catch_1
    move-exception v4

    .line 74
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    const-string v17, "stringByEvaluatingJavaScriptFromString"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/shishicai/app/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/16 v17, 0x0

    goto :goto_0
.end method
