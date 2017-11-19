.class public final Lcn/jiguang/a/c/c;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x1f

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "NY\u00188\u0018}l\u001f:\u0007Gw\u001b4\u001bj[\u00197\u0012m\u007f\u0005"

    const/4 v0, -0x1

    move-object v4, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gt v5, v7, :cond_2

    :cond_0
    move-object v7, v1

    move v8, v6

    move v11, v5

    move-object v5, v1

    move v1, v11

    :goto_1
    aget-char v10, v5, v6

    rem-int/lit8 v9, v8, 0x5

    packed-switch v9, :pswitch_data_0

    const/16 v9, 0x74

    :goto_2
    xor-int/2addr v9, v10

    int-to-char v9, v9

    aput-char v9, v5, v6

    add-int/lit8 v6, v8, 0x1

    if-nez v1, :cond_1

    move-object v5, v7

    move v8, v6

    move v6, v1

    goto :goto_1

    :cond_1
    move v5, v1

    move-object v1, v7

    :cond_2
    if-gt v5, v6, :cond_0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_1

    aput-object v1, v3, v2

    const/4 v2, 0x1

    const-string v1, "t}\u00040\u001b`L\u0017*\u001fw6Xw"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "V}\u00066\u0006pP\u00135\u0004aj"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "hy\u0005-+gw\u001a5\u0011gl\u001f6\u001a[t\u0019:\u0015pq\u00197"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "hy\u0005-+v}\u00066\u0006pG\u0012<\u0002m{\u0013\u0006\u001dj~\u0019"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "jz),\u0004hw\u0017="

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "hw\u00158\u0000mw\u0018\u0006\u0017kt\u001a<\u0017pG\u0010+\u0011um\u00137\u0017}"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "hy\u0005-+gp\u0013:\u001f[m\u0005<\u0006eh\u0006\u0006\u0007py\u0002,\u0007"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "jz)5\u0015wl\u00020\u0019a"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "mk56\u0018h}\u0015-\u001dkv:6\u0017el\u001f6\u001aJ}\u0013=\u0011`8\u001a8\u0007p\""

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "hz\u0005\u0006\u0006ah\u0019+\u0000[}\u00188\u0016h}"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "SQ0\u0010"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "t}\u00040\u001b`L\u0017*\u001fw8\u00108\u001dh}\u0012u\u001dwN\u00175\u001d`J\u0013>\u001dwl\u0013+\u0011`\"\u00108\u0018w}"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "gy\u0018y\u001aklV8\u0018hw\u0001y\u0013alV4\u001bfq\u001a<Ttp\u00197\u0011$v\u00034\u0016aj"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "(v\u0019.N"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "JM:\u0015Tgw\u0018-\u0011|l"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "e{\u00020\u001bj\"\u0004<\u0004kj\u0002\u0016\u0004aj\u0017-\u001dkvVtTgw\u0018-\u0011jlL"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "(8\u00128\u0000e8\u00050\u000ea\"VtT"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "eh\u0006\u0006\u0018mk\u0002"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "gw\u0018-\u0011|lV=\u001d`8\u00186\u0000$q\u00180\u0000(8\u0004<\u0000qj\u0018"

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_12
    aput-object v1, v3, v2

    const/16 v2, 0x14

    const-string v1, "ty\u00152\u0015c}V0\u001abwV-\u001bpy\u001ay\u001aquVtT"

    const/16 v0, 0x13

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_13
    aput-object v1, v3, v2

    const/16 v2, 0x15

    const-string v1, "Cw\u0002y>WW8\u001c\u000cg}\u0006-\u001dkvV.\u001cavV+\u0011tw\u0004-Teh\u00065\u001dwlX"

    const/16 v0, 0x14

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_14
    aput-object v1, v3, v2

    const/16 v2, 0x16

    const-string v1, "Qv\u0013!\u0004a{\u0002<\u0010%8<\t\u0001wpV1\u0015wvQ-Tf}\u00137Tv}\u00110\u0007p}\u0004uTcq\u0000<TqhV-\u001cmkV+\u0011tw\u0004-"

    const/16 v0, 0x15

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_15
    aput-object v1, v3, v2

    const/16 v2, 0x17

    const-string v1, "By\u001f5TpwV*\u0000ej\u0002y\u001bpp\u0013+Teh\u0006y\u0017em\u0005<\u0010$z\u000fy;ql9?9au\u0019+\r*"

    const/16 v0, 0x16

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_16
    aput-object v1, v3, v2

    const/16 v2, 0x18

    const-string v1, "V}\u00066\u0006p8#*\u0011v87)\u0004w8%-\u0015pm\u0005"

    const/16 v0, 0x17

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_17
    aput-object v1, v3, v2

    const/16 v2, 0x19

    const-string v1, "(:"

    const/16 v0, 0x18

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_18
    aput-object v1, v3, v2

    const/16 v2, 0x1a

    const-string v1, "Gy\u0018y\u001aklV>\u0011p8\u00177\r$h\u00134\u001dwk\u001f6\u001a"

    const/16 v0, 0x19

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_19
    aput-object v1, v3, v2

    const/16 v2, 0x1b

    const-string v1, "\u007f:\u00026\u0000etTcQ`4T)\u0015c}TcQ`4T*\u0011j|\u0013+\u001d`:L{Qw:Z{\u0001m|TcQw4T)\u0011vu\u001f*\u0007mw\u0018\u0006\u0018mk\u0002{N!k\u000b"

    const/16 v0, 0x1a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1a
    aput-object v1, v3, v2

    const/16 v2, 0x1c

    const-string v1, "e{\u00020\u001bj\"\u0004<\u0004kj\u0002\t\u0011vu\u001f*\u0007mw\u0018\u0010\u001abw"

    const/16 v0, 0x1b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1b
    aput-object v1, v3, v2

    const/16 v2, 0x1d

    const-string v1, "v}\u00066\u0006pT\u0019:\u0015pq\u00197=j~\u0019y\u0012eq\u001a<\u0010$}\u0004+\u001bv\""

    const/16 v0, 0x1c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1c
    aput-object v1, v3, v2

    const/16 v2, 0x1e

    const-string v1, "V}\u00066\u0006p8:6\u0017el\u001f6\u001a$q\u0018?\u001b"

    const/16 v0, 0x1d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1d
    aput-object v1, v3, v2

    sput-object v4, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/16 v0, 0x5000

    sput v0, Lcn/jiguang/a/c/c;->a:I

    return-void

    :pswitch_1e
    const/4 v9, 0x4

    goto/16 :goto_2

    :pswitch_1f
    const/16 v9, 0x18

    goto/16 :goto_2

    :pswitch_20
    const/16 v9, 0x76

    goto/16 :goto_2

    :pswitch_21
    const/16 v9, 0x59

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    const/4 v3, 0x2

    sget-object v0, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v1, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/16 v2, 0x1e

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcn/jiguang/a/a/a/h;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    aget-object v1, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/16 v4, 0x1d

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/c/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcn/jiguang/a/a/b/a;

    invoke-direct {v0, p0, p1}, Lcn/jiguang/a/a/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/jiguang/a/a/b/a;->start()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    invoke-static {}, Lcn/jiguang/b/a/a;->t()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0, p1}, Lcn/jiguang/b/d/p;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    sget-object v0, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/16 v3, 0x10

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 10

    const/16 v8, 0x12

    const/4 v7, 0x2

    invoke-static {}, Lcn/jiguang/b/a/a;->t()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    aget-object v0, v0, v7

    sget-object v1, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p0, :cond_2

    sget-object v0, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    aget-object v0, v0, v7

    sget-object v1, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcn/jiguang/a/a/b/d;->b(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    aget-object v1, v1, v7

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/16 v6, 0x14

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/16 v6, 0x11

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/jiguang/c/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcn/jiguang/a/c/c;->a:I

    if-gt v0, v1, :cond_3

    sget-object v0, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-static {v0, v2}, Lcn/jiguang/e/a;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {p0, v0}, Lcn/jiguang/b/d/p;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    move v9, v0

    move-object v0, v1

    move v1, v9

    :goto_1
    if-ge v1, v3, :cond_0

    :try_start_0
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Lcn/jiguang/a/c/c;->a:I

    if-gt v4, v5, :cond_4

    add-int/lit8 v4, v3, -0x1

    if-ne v4, v1, :cond_6

    :cond_4
    sget-object v4, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-static {v4, v0}, Lcn/jiguang/e/a;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_5

    invoke-static {p0, v0}, Lcn/jiguang/b/d/p;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_5
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v4

    sget-object v4, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    aget-object v4, v4, v7

    sget-object v5, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/16 v6, 0x15

    aget-object v5, v5, v6

    invoke-static {v4, v5}, Lcn/jiguang/c/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static c(Landroid/content/Context;)V
    .locals 14

    const/4 v13, 0x2

    const/4 v1, 0x0

    sget-object v0, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    aget-object v0, v0, v13

    sget-object v2, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/16 v3, 0x1c

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Lcn/jiguang/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jiguang/a/a/b/d;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v0, v6

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    aget-object v0, v0, v13

    sget-object v1, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/16 v2, 0x1a

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    array-length v7, v6

    const-string v3, "["

    invoke-static {}, Lcn/jiguang/b/a/a;->z()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcn/jiguang/b/a/a;->s()J

    move-result-wide v10

    move v0, v1

    move v5, v1

    move v2, v1

    :goto_0
    if-ge v0, v7, :cond_1

    aget-object v4, v6, v0

    if-nez v5, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "\""

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v0, v5, 0x1

    const/16 v5, 0x32

    if-ge v0, v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v9, 0x3e8

    if-gt v5, v9, :cond_3

    if-ne v4, v7, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/16 v5, 0x1b

    aget-object v3, v3, v5

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v1

    const/4 v9, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v9

    aput-object v8, v5, v13

    const/4 v9, 0x3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v5, v9

    const/4 v9, 0x4

    aput-object v0, v5, v9

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    aget-object v3, v3, v13

    invoke-static {v3, v0}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/16 v5, 0x12

    aget-object v3, v3, v5

    invoke-static {v3, v0}, Lcn/jiguang/e/a;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/jiguang/b/d/p;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    add-int/lit8 v0, v2, 0x1

    const-string v2, "["

    move-object v3, v2

    move v2, v0

    move v0, v1

    :cond_4
    move v5, v0

    move v0, v4

    goto/16 :goto_0

    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v9, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/16 v12, 0x19

    aget-object v9, v9, v12

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method

.method public static d(Landroid/content/Context;)V
    .locals 13

    const/4 v4, 0x2

    const/4 v12, 0x3

    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    aget-object v2, v2, v4

    sget-object v3, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v2, v3}, Lcn/jiguang/c/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/b/a/a;->t()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v0, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    sget-object v1, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcn/jiguang/b/a;->e:Landroid/content/Context;

    sget-object v3, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-static {v2, v3, v10, v11}, Lcn/jiguang/api/MultiSpHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_8

    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    invoke-static {p0}, Lcn/jiguang/a/a/b/b;->c(Landroid/content/Context;)V

    :cond_2
    invoke-static {}, Lcn/jiguang/b/a/a;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcn/jiguang/b/f/c;->a(Landroid/content/Context;)V

    :cond_3
    sget-object v2, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-static {p0, v2, v1}, Lcn/jiguang/api/MultiSpHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    aget-object v2, v2, v12

    invoke-static {p0, v2, v10, v11}, Lcn/jiguang/api/MultiSpHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v2, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    aget-object v2, v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v8, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/16 v9, 0x9

    aget-object v8, v8, v9

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v8, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/16 v9, 0xe

    aget-object v8, v8, v9

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    const-wide/32 v8, 0xdbba0

    invoke-static {p0, v2, v8, v9}, Lcn/jiguang/api/MultiSpHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v8, v2, v10

    if-lez v8, :cond_9

    :goto_2
    cmp-long v8, v4, v10

    if-gtz v8, :cond_a

    sget-object v2, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    aget-object v2, v2, v12

    invoke-static {p0, v2, v6, v7}, Lcn/jiguang/api/MultiSpHelper;->commitLong(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_4
    move v2, v0

    :goto_3
    if-eqz v2, :cond_5

    invoke-static {p0}, Lcn/jiguang/a/c/c;->a(Landroid/content/Context;)V

    :cond_5
    sget-object v2, Lcn/jiguang/b/a;->e:Landroid/content/Context;

    sget-object v3, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-static {v2, v3, v10, v11}, Lcn/jiguang/api/MultiSpHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v6, 0x36ee80

    cmp-long v2, v2, v6

    if-lez v2, :cond_b

    sget-object v2, Lcn/jiguang/b/a;->e:Landroid/content/Context;

    sget-object v3, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/4 v6, 0x7

    aget-object v3, v3, v6

    invoke-static {v2, v3, v4, v5}, Lcn/jiguang/api/MultiSpHelper;->commitLong(Landroid/content/Context;Ljava/lang/String;J)V

    move v2, v1

    :goto_4
    if-eqz v2, :cond_6

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcn/jiguang/a/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    sget-object v2, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-static {p0, v2, v0}, Lcn/jiguang/api/MultiSpHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v1, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    aget-object v1, v1, v0

    sget-object v2, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/16 v3, 0xd

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcn/jiguang/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_5
    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/jiguang/a/a/b/h;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_8
    move v2, v0

    goto/16 :goto_1

    :cond_9
    const-wide/32 v2, 0xdbba0

    goto :goto_2

    :cond_a
    sub-long v4, v6, v4

    cmp-long v2, v4, v2

    if-ltz v2, :cond_4

    sget-object v2, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    aget-object v2, v2, v12

    invoke-static {p0, v2, v6, v7}, Lcn/jiguang/api/MultiSpHelper;->commitLong(Landroid/content/Context;Ljava/lang/String;J)V

    move v2, v1

    goto :goto_3

    :cond_b
    move v2, v0

    goto :goto_4

    :cond_c
    invoke-static {p0}, Lcn/jiguang/e/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/16 v4, 0xb

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-static {p0, v2, v10, v11}, Lcn/jiguang/api/MultiSpHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    move v0, v1

    goto :goto_5
.end method

.method public static e(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcn/jiguang/a/c/c;->d(Landroid/content/Context;)V

    const-wide/16 v0, 0xe10

    :try_start_0
    invoke-static {p0, v0, v1}, Lcn/jiguang/e/l;->a(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/a/c/c;->z:[Ljava/lang/String;

    const/16 v2, 0x17

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
