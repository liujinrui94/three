.class public final Lcn/jiguang/b/d/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x58

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, ":\u001cd:(K*}olK\u001fyyo\r[jb"

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

    const/16 v9, 0x1c

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

    const-string v1, "IUycn\u0011O"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "*\u0005lb<\u0006\u001agby\u0006\u0001`crE\u0002`xtE\u0011lj}\u0010\u0019},t\n\u0006},1E\u001cy6"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "&\u001agby\u0006\u0001`b{-\u0010e|y\u0017"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "*\u0005lb<\u0006\u001agby\u0006\u0001`crE\u0002`xtE\u0011lj}\u0010\u0019},1E\u001cy6"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "6\u0000joy\u0000\u0011)xsE\u001ayirE\u0016fbr\u0000\u0016}es\u000bU$,u\u0015O"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, ",\u001b\u007fmp\u000c\u0011)hy\u0003\u0014|`hE\u0016fbrK"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "*\u0005lb<\u0006\u001agby\u0006\u0001`crE\u0002`xtE\u001dh~x\u0006\u001amixE\u001df\u007fhEX)el_"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "\u000c\u0018?82\u000f\u0005|\u007ftK\u0016g"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, " \rjil\u0011\u001cfb<\u0011\u001a)os\u000b\u001blohE\u001df\u007fhEX)eqSA\'fl\u0010\u0006a\"\u007f\u000b"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, ")\u001ajmpE\u0010{~s\u0017Umio\u0006\u0007`|h\u000c\u001ag6<"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "E4y|W\u0000\u000c3"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "\u5360\u54783,"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "E\u4e7b)Ml\u0015>lu&"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "E\u4e78\u5b51\u5724"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "0\u001bamr\u0001\u0019lh<\u0016\u0010{zy\u0017U{io\u0015\u001ag\u007fyE\u0010{~s\u0017Ujcx\u0000U$,"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "E\u972bhbx\u0017\u001a`h<$\u0005yGy\u001c"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "E\u665a\u65e9\u6544\u7698$\u0005yGy\u001cY\u8bfe\u7862\u8bb8\u4e6b?@KI$;N,k\u0000\u0017\u7ae6\u7688]\u0015\u0005Bie\u4e65\u8181"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, ",8LE<\u000c\u0006)hi\u0015\u0019`o}\u0011\u0010m,n\u0000\u0005f~h\u0000\u0011)neE\u0006l~j\u0000\u0007\',[\u000c\u0003l,i\u0015UgckKU"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "E\u675f\u5721a}\u000b\u001coio\u0011\u4e58\u9144\u7f62]\u0015\u0005Bie"

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_12
    aput-object v1, v3, v2

    const/16 v2, 0x14

    const-string v1, "\u4e68\u534c\u9144"

    const/16 v0, 0x13

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_13
    aput-object v1, v3, v2

    const/16 v2, 0x15

    const-string v1, "7\u0010neo\u0011\u0010{,Z\u0004\u001ceixE\u0002`xtE\u0006l~j\u0000\u0007)in\u0017\u001a{,1E\u0016fhy_"

    const/16 v0, 0x14

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_14
    aput-object v1, v3, v2

    const/16 v2, 0x16

    const-string v1, "!;Z,\u007f\r\u0010jgu\u000b\u0012)xt\u0017\u0010hh<\r\u0014z,~\u0000\u0010g,u\u000b\u0001l~n\u0010\u0005}ixET"

    const/16 v0, 0x15

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_15
    aput-object v1, v3, v2

    const/16 v2, 0x17

    const-string v1, "IUyyo\r#l~o\u000c\u001ag6"

    const/16 v0, 0x16

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_16
    aput-object v1, v3, v2

    const/16 v2, 0x18

    const-string v1, "\t\u001anerEX)fi\u000c\u00113"

    const/16 v0, 0x17

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_17
    aput-object v1, v3, v2

    const/16 v2, 0x19

    const-string v1, ")\u001anerE\u0002`xtEX)fi\u000c\u00113"

    const/16 v0, 0x18

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_18
    aput-object v1, v3, v2

    const/16 v2, 0x1a

    const-string v1, "IUy`i\u0002\u001cg\\p\u0004\u0001ocn\u0008!p|y_"

    const/16 v0, 0x19

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_19
    aput-object v1, v3, v2

    const/16 v2, 0x1b

    const-string v1, "IUzin\u0013\u0010{Xu\u0008\u00102"

    const/16 v0, 0x1a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1a
    aput-object v1, v3, v2

    const/16 v2, 0x1c

    const-string v1, "\u0015\u0000zdC\u0011\u001aVeq:\u0011hx}"

    const/16 v0, 0x1b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1b
    aput-object v1, v3, v2

    const/16 v2, 0x1d

    const-string v1, "E\u0019fku\u000b\'l\u007fl\n\u001bzi<\u000c\u0006)bi\t\u0019"

    const/16 v0, 0x1c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1c
    aput-object v1, v3, v2

    const/16 v2, 0x1e

    const-string v1, ")\u001anerE\u0013hep\u0000\u0011){u\u0011\u001d)@s\u0006\u0014e,y\u0017\u0007f~<HUjcx\u0000O"

    const/16 v0, 0x1d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1d
    aput-object v1, v3, v2

    const/16 v2, 0x1f

    const-string v1, "\u0006\u001b\'fl\u0010\u0006a\"u\u0008[hbx\u0017\u001a`h2\u0004\u0016}es\u000b[@AC70Z\\S+&L"

    const/16 v0, 0x1e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1e
    aput-object v1, v3, v2

    const/16 v2, 0x20

    const-string v1, "\u000f\u0006fbY\u001d\u0016l|h\u000c\u001ag,1E"

    const/16 v0, 0x1f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1f
    aput-object v1, v3, v2

    const/16 v2, 0x21

    const-string v1, "\u0015\u0000zdC\t\u001aner:\u0006l~j\u0000\u0007Vxu\u0008\u0010"

    const/16 v0, 0x20

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_20
    aput-object v1, v3, v2

    const/16 v2, 0x22

    const-string v1, "IUzhw3\u0010{\u007fu\n\u001b3"

    const/16 v0, 0x21

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_21
    aput-object v1, v3, v2

    const/16 v2, 0x23

    const-string v1, "IUhb}\t\u000c}e\u007f\u0016#l~o\u000c\u001ag6"

    const/16 v0, 0x22

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_22
    aput-object v1, v3, v2

    const/16 v2, 0x24

    const-string v1, "$\u0016}es\u000bU$,o\u0000\u001bm_y\u0017\u0003l~H\u000c\u0018l~"

    const/16 v0, 0x23

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_23
    aput-object v1, v3, v2

    const/16 v2, 0x25

    const-string v1, "EYzd}\u0017\u0010_in\u0016\u001cfb&"

    const/16 v0, 0x24

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_24
    aput-object v1, v3, v2

    const/16 v2, 0x26

    const-string v1, "\u0015\u0000zdC\t\u001aner:\u0019fo}\t*}eq\u0000"

    const/16 v0, 0x25

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_25
    aput-object v1, v3, v2

    const/16 v2, 0x27

    const-string v1, ")\u001anerE\u0013hep\u0000\u0011){u\u0011\u001d)~y\u0011\u0000{b<\u0006\u001ami&"

    const/16 v0, 0x26

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_26
    aput-object v1, v3, v2

    const/16 v2, 0x28

    const-string v1, "IUo`}\u0002O"

    const/16 v0, 0x27

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_27
    aput-object v1, v3, v2

    const/16 v2, 0x29

    const-string v1, ")\u001anerE\u0013hep\u0000\u0011){u\u0011\u001d)\u007fy\u0017\u0003l~<\u0000\u0007{cnEX)os\u0001\u00103"

    const/16 v0, 0x28

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_28
    aput-object v1, v3, v2

    const/16 v2, 0x2a

    const-string v1, ")\u001anerE\u0006|o\u007f\u0000\u0010m,1E\u0006`h&"

    const/16 v0, 0x29

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_29
    aput-object v1, v3, v2

    const/16 v2, 0x2b

    const-string v1, "IUh|l.\u0010p6"

    const/16 v0, 0x2a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2a
    aput-object v1, v3, v2

    const/16 v2, 0x2c

    const-string v1, "$\u0016}es\u000bO)~y\u0016\u0001f~y7\u0001j[t\u0000\u001b[i{\u000c\u0006}in6\u0000joy\u0000\u0011"

    const/16 v0, 0x2b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2b
    aput-object v1, v3, v2

    const/16 v2, 0x2d

    const-string v1, "6<Z,N\u0000\u0016lej\u000c\u001bn\"2K"

    const/16 v0, 0x2c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2c
    aput-object v1, v3, v2

    const/16 v2, 0x2e

    const-string v1, "\"\u0010},o\u000c\u0006)er\u0003\u001a)\u007fi\u0006\u0016lixE\u0002`xtE\u001df\u007fh_U"

    const/16 v0, 0x2d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2d
    aput-object v1, v3, v2

    const/16 v2, 0x2f

    const-string v1, "&\u0014g,r\n\u0001)ky\u0011UzeoE\u001cgjsE\u0013{cqE\u001df\u007fh_U"

    const/16 v0, 0x2e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2e
    aput-object v1, v3, v2

    const/16 v2, 0x30

    const-string v1, " \rjil\u0011\u001cfb<\u0012\u001dlb<\u0006\u0019f\u007fyE\u0000m|<\u0016\u001ajgy\u0011U$,"

    const/16 v0, 0x2f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2f
    aput-object v1, v3, v2

    const/16 v2, 0x31

    const-string v1, "#\u0014``y\u0001U}c<\u0017\u0010zcp\u0013\u0010)ds\u0016\u0001)hr\u0016U$,"

    const/16 v0, 0x30

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_30
    aput-object v1, v3, v2

    const/16 v2, 0x32

    const-string v1, "1\u001a)ky\u0011UzeoEX)ds\u0016\u00013"

    const/16 v0, 0x31

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_31
    aput-object v1, v3, v2

    const/16 v2, 0x33

    const-string v1, "IUycn\u0011O85,UE"

    const/16 v0, 0x32

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_32
    aput-object v1, v3, v2

    const/16 v2, 0x34

    const-string v1, "6<Z,N\u0000\u0016lej\u0000\u0011)_h\u0017\u001cgk&E"

    const/16 v0, 0x33

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_33
    aput-object v1, v3, v2

    const/16 v2, 0x35

    const-string v1, "\"\u0010},o\u000c\u0006)er\u0003\u001a)in\u0017\u001a{,1E\u0006`\u007fT\n\u0006}6"

    const/16 v0, 0x34

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_34
    aput-object v1, v3, v2

    const/16 v2, 0x36

    const-string v1, "!\u001a)bs\u0011Ugiy\u0001UZEOE\u0014nmu\u000bU~eh\r\u001cg,/E\u0018`boKU\\\u007fyE\u0019h\u007fhE\u0012fcxE\u0006`\u007f<\u0017\u0010z|s\u000b\u0006l\"<"

    const/16 v0, 0x35

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_35
    aput-object v1, v3, v2

    const/16 v2, 0x37

    const-string v1, "*\u0005lb<\u0006\u001agby\u0006\u0001`crE\u0013hep\u0000\u0011)!<\u0017\u0010}6"

    const/16 v0, 0x36

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_36
    aput-object v1, v3, v2

    const/16 v2, 0x38

    const-string v1, "\u0004\u0016}es\u000bU$,u\u000b\u001floh&\u001agby\u0006\u0001`crIU|by\u001d\u0005loh\u0000\u0011\'\"2"

    const/16 v0, 0x37

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_37
    aput-object v1, v3, v2

    const/16 v2, 0x39

    const-string v1, "\u0016\u0001hxyE\u001cz,r\n\u0001)ot\u0004\u001bnixEX)"

    const/16 v0, 0x38

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_38
    aput-object v1, v3, v2

    const/16 v2, 0x3a

    const-string v1, "\u0006\u001b\'fl\u0010\u0006a\"}\u000b\u0011{cu\u0001[JCR+0JXU*;VOT$;NI"

    const/16 v0, 0x39

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_39
    aput-object v1, v3, v2

    const/16 v2, 0x3b

    const-string v1, "\u0006\u001agby\u0006\u0001lh"

    const/16 v0, 0x3a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3a
    aput-object v1, v3, v2

    const/16 v2, 0x3c

    const-string v1, "$\u0016}es\u000bU$,o\u0000\u001bmOs\u000b\u001bloh\u000c\u001agOt\u0004\u001bnix"

    const/16 v0, 0x3b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3b
    aput-object v1, v3, v2

    const/16 v2, 0x3d

    const-string v1, "\u0006\u001b\'fl\u0010\u0006a\"}\u000b\u0011{cu\u0001[`bh\u0000\u001b}\"_*;GI_1<FB"

    const/16 v0, 0x3c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3c
    aput-object v1, v3, v2

    const/16 v2, 0x3e

    const-string v1, "\u0015\u0014{\u007fy6\u001czEr\u0003\u001a)on\u0004\u0006a6"

    const/16 v0, 0x3d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3d
    aput-object v1, v3, v2

    const/16 v2, 0x3f

    const-string v1, "$\u0016}es\u000bO)\u007fy\u0011\'}oH\n1huH\u000c\u0018l\u007fK\r\u0010g^y\u0002\u001czxy\u00173hep\u0000\u0011"

    const/16 v0, 0x3e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3e
    aput-object v1, v3, v2

    const/16 v2, 0x40

    const-string v1, "IUmij\u000c\u0016lEx_"

    const/16 v0, 0x3f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3f
    aput-object v1, v3, v2

    const/16 v2, 0x41

    const-string v1, "7\u0010neo\u0011\u0010{,k\u000c\u0001a6<\u000e\u0010p6"

    const/16 v0, 0x40

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_40
    aput-object v1, v3, v2

    const/16 v2, 0x42

    const-string v1, "IUj`u\u0000\u001b}Er\u0003\u001a3"

    const/16 v0, 0x41

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_41
    aput-object v1, v3, v2

    const/16 v2, 0x43

    const-string v1, "7\u0010neo\u0011\u0010{,o\u0010\u0016jiy\u0001U$,v\u0010\u001cm6"

    const/16 v0, 0x42

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_42
    aput-object v1, v3, v2

    const/16 v2, 0x44

    const-string v1, "\u0006\u001b\'fl\u0010\u0006a\"}\u000b\u0011{cu\u0001[`bh\u0000\u001b}\"N 2@_H74]ES+"

    const/16 v0, 0x43

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_43
    aput-object v1, v3, v2

    const/16 v2, 0x45

    const-string v1, "7\u0010neo\u0011\u0010{,z\u0004\u001ceixEX)yr\u000e\u001bf{rE\u0016faq\u0004\u001bm"

    const/16 v0, 0x44

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_44
    aput-object v1, v3, v2

    const/16 v2, 0x46

    const-string v1, "\u0006\u001b\'fl\u0010\u0006a\"}\u000b\u0011{cu\u0001[[I[,&]^]1<FBC,1"

    const/16 v0, 0x45

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_45
    aput-object v1, v3, v2

    const/16 v2, 0x47

    const-string v1, "0\u001bltl\u0000\u0016}ix_U{i{\u000c\u0006}~}\u0011\u001cfbU\u0001Zcyu\u0001Uzds\u0010\u0019m,r\n\u0001)nyE\u0010d|h\u001c[)"

    const/16 v0, 0x46

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_46
    aput-object v1, v3, v2

    const/16 v2, 0x48

    const-string v1, "IUlth.\u0010p6"

    const/16 v0, 0x47

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_47
    aput-object v1, v3, v2

    const/16 v2, 0x49

    const-string v1, "7\u0010neo\u0011\u0010{,z\u0004\u001ceixEX)ehE\u001cz,r\n\u0001)~y\u0002\u001czxy\u0017U{io\u0015\u001ag\u007fyK"

    const/16 v0, 0x48

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_48
    aput-object v1, v3, v2

    const/16 v2, 0x4a

    const-string v1, "\u0015\u0014z\u007fk\n\u0007m6"

    const/16 v0, 0x49

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_49
    aput-object v1, v3, v2

    const/16 v2, 0x4b

    const-string v1, "7\u0010neo\u0011\u0010{,z\u0004\u001ceixEX)~y\u0011O"

    const/16 v0, 0x4a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4a
    aput-object v1, v3, v2

    const/16 v2, 0x4c

    const-string v1, "IUh|w3\u0010{\u007fu\n\u001b3"

    const/16 v0, 0x4b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4b
    aput-object v1, v3, v2

    const/16 v2, 0x4d

    const-string v1, "I\u0007lk<\u0007\u0000zer\u0000\u0006z6"

    const/16 v0, 0x4c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4c
    aput-object v1, v3, v2

    const/16 v2, 0x4e

    const-string v1, "IU{i{\u000c\u0006}~}\u0011\u001cfbU\u0001O"

    const/16 v0, 0x4d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4d
    aput-object v1, v3, v2

    const/16 v2, 0x4f

    const-string v1, "*\u0005lb<\u0006\u001agby\u0006\u0001`crE\u0002`xtE\u0019h\u007fhE\u0012fcxEX)el_"

    const/16 v0, 0x4e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4e
    aput-object v1, v3, v2

    const/16 v2, 0x50

    const-string v1, ",\u001b\u007fmp\u000c\u0011)a}\u000c\u001b)os\u000b\u001b"

    const/16 v0, 0x4f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4f
    aput-object v1, v3, v2

    const/16 v2, 0x51

    const-string v1, "#\u0014``y\u0001U~eh\rUh`pE\u0016fbr\u0016["

    const/16 v0, 0x50

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_50
    aput-object v1, v3, v2

    const/16 v2, 0x52

    const-string v1, "IU`bx\u0000\r3"

    const/16 v0, 0x51

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_51
    aput-object v1, v3, v2

    const/16 v2, 0x53

    const-string v1, "*\u0005lb<\u0006\u001agby\u0006\u0001`crE\u0002`xtE\u001ayxu\n\u001bz,1E\u001cy6"

    const/16 v0, 0x52

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_52
    aput-object v1, v3, v2

    const/16 v2, 0x54

    const-string v1, "*\u0005lb<\u0006\u001agby\u0006\u0001`crE\u0002`xtE\u0018herEX)el_"

    const/16 v0, 0x53

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_53
    aput-object v1, v3, v2

    const/16 v2, 0x55

    const-string v1, "\u0015\u001dfby"

    const/16 v0, 0x54

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_54
    aput-object v1, v3, v2

    const/16 v2, 0x56

    const-string v1, "T[8\"."

    const/16 v0, 0x55

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_55
    aput-object v1, v3, v2

    const/16 v2, 0x57

    const-string v1, "\u0006\u001agby\u0006\u0001`cr"

    const/16 v0, 0x56

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_56
    aput-object v1, v3, v2

    sput-object v4, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v2, Lcn/jiguang/b/d/c;->a:Ljava/util/LinkedHashMap;

    const-string v1, "\u0016[c|i\u0016\u001d\'or"

    const/4 v0, -0x1

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v3, v5, :cond_5

    :cond_3
    move-object v5, v1

    move v6, v4

    move v11, v3

    move-object v3, v1

    move v1, v11

    :goto_4
    aget-char v8, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_2

    const/16 v7, 0x1c

    :goto_5
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v1, :cond_4

    move-object v3, v5

    move v6, v4

    move v4, v1

    goto :goto_4

    :pswitch_57
    const/16 v9, 0x65

    goto/16 :goto_2

    :pswitch_58
    const/16 v9, 0x75

    goto/16 :goto_2

    :pswitch_59
    const/16 v9, 0x9

    goto/16 :goto_2

    :pswitch_5a
    const/16 v9, 0xc

    goto/16 :goto_2

    :pswitch_5b
    const/16 v7, 0x65

    goto :goto_5

    :pswitch_5c
    const/16 v7, 0x75

    goto :goto_5

    :pswitch_5d
    const/16 v7, 0x9

    goto :goto_5

    :pswitch_5e
    const/16 v7, 0xc

    goto :goto_5

    :cond_4
    move v3, v1

    move-object v1, v5

    :cond_5
    if-gt v3, v4, :cond_3

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcn/jiguang/b/d/c;->a:Ljava/util/LinkedHashMap;

    const-string v1, "\u0016\u001cz\"v\u0015\u0000zd2\u000c\u001a"

    const/4 v0, 0x0

    goto :goto_3

    :pswitch_5f
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcn/jiguang/b/d/c;->a:Ljava/util/LinkedHashMap;

    const-string v1, "\u0000\u0014zuh\n\u0018l\u007fo\u0004\u0012l\"\u007f\n\u0018"

    const/4 v0, 0x1

    goto :goto_3

    :pswitch_60
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcn/jiguang/b/d/c;->a:Ljava/util/LinkedHashMap;

    const-string v1, "TD:\"/T[8;2TE1"

    const/4 v0, 0x2

    goto :goto_3

    :pswitch_61
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
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
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_60
        :pswitch_61
    .end packed-switch
.end method

.method private static a(Lcn/jiguang/b/b/g;J)I
    .locals 11

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    :try_start_0
    sget-object v0, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-static {v0}, Lcn/jiguang/b/c/f;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/b/c/p;

    invoke-virtual {v0}, Lcn/jiguang/b/c/p;->i()Lcn/jiguang/b/c/j;

    move-result-object v4

    invoke-virtual {v4}, Lcn/jiguang/b/c/j;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0}, Lcn/jiguang/b/c/p;->i()Lcn/jiguang/b/c/j;

    move-result-object v6

    invoke-virtual {v6}, Lcn/jiguang/b/c/j;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/jiguang/b/d/c;->b(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcn/jiguang/b/c/p;->h()I

    move-result v3

    sget-object v0, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v0, v0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v6, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcn/jiguang/e/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz v3, :cond_b

    invoke-static {p0, p1, p2, v2, v3}, Lcn/jiguang/b/d/c;->a(Lcn/jiguang/b/b/g;JLjava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v0, v0, v4

    invoke-static {v0}, Lcn/jiguang/b/d/c;->b(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, -0x1

    :cond_2
    :goto_3
    return v0

    :cond_3
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x4

    new-array v4, v0, [I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    fill-array-data v4, :array_0

    const/4 v0, 0x0

    move v9, v0

    move v0, v1

    move v1, v3

    move v3, v9

    :goto_4
    const/4 v5, 0x4

    if-ge v3, v5, :cond_5

    :try_start_3
    aget v1, v4, v3

    sget-object v5, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, v2, v1}, Lcn/jiguang/b/d/c;->a(Lcn/jiguang/b/b/g;JLjava/lang/String;I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    move-object v9, v2

    move v2, v1

    move-object v1, v9

    :goto_5
    if-eqz v0, :cond_9

    invoke-static {}, Lcn/jiguang/b/a/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/jiguang/b/a/a;->p()I

    move-result v2

    sget-object v0, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcn/jiguang/e/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    if-nez v2, :cond_8

    :cond_6
    sget-object v0, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    goto/16 :goto_3

    :catch_0
    move-exception v0

    :goto_6
    sget-object v0, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v0, v0, v4

    sget-object v4, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    invoke-static {v0, v4}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move v0, v1

    move-object v1, v2

    move v2, v3

    goto :goto_5

    :cond_8
    invoke-static {p0, p1, p2, v1, v2}, Lcn/jiguang/b/d/c;->a(Lcn/jiguang/b/b/g;JLjava/lang/String;I)I

    move-result v0

    :cond_9
    if-nez v0, :cond_2

    invoke-static {v1, v2}, Lcn/jiguang/b/a/a;->a(Ljava/lang/String;I)V

    sget-object v3, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/jiguang/c/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_1
    move-exception v3

    move v3, v1

    move v1, v0

    goto :goto_6

    :catch_2
    move-exception v6

    goto/16 :goto_1

    :cond_a
    move-object v1, v2

    move v2, v3

    goto/16 :goto_5

    :cond_b
    move v0, v1

    goto/16 :goto_2

    nop

    :array_0
    .array-data 4
        0xbb8
        0x1b58
        0x1b5a
        0x1b5b
    .end array-data
.end method

.method private static a(Lcn/jiguang/b/b/g;JLjava/lang/String;I)I
    .locals 5

    const/16 v4, 0x37

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcn/jiguang/b/b/g;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v2, 0x38

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x3df

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcn/jiguang/service/Protocol;->InitPush(JLjava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/jiguang/b/b/g;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcn/jiguang/b/b/j;
    .locals 12

    const-class v4, Lcn/jiguang/b/d/c;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Lcn/jiguang/e/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/b/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/jiguang/b/a/a;->f()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v2, 0x36

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/b/a/a;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/b/d/c;->a(Ljava/lang/String;)Lcn/jiguang/b/b/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    :goto_0
    monitor-exit v4

    return-object v0

    :cond_1
    :try_start_1
    const-string v3, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget-object v0, Lcn/jiguang/b/a;->f:Ljava/lang/String;

    invoke-static {}, Lcn/jiguang/b/a/a;->s()J

    move-result-wide v6

    invoke-static {p0, v0, v6, v7}, Lcn/jiguang/b/d/c;->a(Landroid/content/Context;Ljava/lang/String;J)[B

    move-result-object v5

    sget-object v0, Lcn/jiguang/b/d/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    sget-object v3, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v3, v3, v7

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v9, 0x32

    aget-object v8, v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v9, 0x33

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_3

    sget-object v0, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v7, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v8, 0x35

    aget-object v7, v7, v8

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/Exception;

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v10, 0x31

    aget-object v9, v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v7}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v1

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcn/jiguang/b/d/c;->b(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_2

    :cond_3
    new-instance v3, Ljava/net/DatagramPacket;

    const/16 v7, 0x80

    const/16 v8, 0x4a38

    invoke-direct {v3, v5, v7, v0, v8}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V
    :try_end_4
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v0, 0x1770

    :try_start_5
    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    new-instance v3, Ljava/net/DatagramPacket;

    const/16 v7, 0x400

    invoke-direct {v3, v0, v7}, Ljava/net/DatagramPacket;-><init>([BI)V

    sget-object v0, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v0, v0, v7

    sget-object v7, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v8, 0x2d

    aget-object v7, v7, v8

    invoke-static {v0, v7}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    array-length v9, v0

    invoke-static {v3, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    sget-object v0, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v0, v0, v7

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v9, 0x34

    aget-object v8, v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcn/jiguang/c/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {v3}, Lcn/jiguang/b/d/c;->a(Ljava/lang/String;)Lcn/jiguang/b/b/j;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v3, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v3, v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v7, 0x2e

    aget-object v6, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/jiguang/c/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/b/a/a;->g()V
    :try_end_6
    .catch Ljava/lang/AssertionError; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v2, :cond_0

    :try_start_7
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_7
    .catch Ljava/lang/AssertionError; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_8
    sget-object v2, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v6, 0x30

    aget-object v5, v5, v6

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/AssertionError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/c/d;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_1
    move-exception v0

    :try_start_9
    sget-object v3, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v3, v3, v7

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v9, 0x2f

    aget-object v8, v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v0}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v1

    goto/16 :goto_1

    :cond_4
    sget-object v0, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v7, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v8, 0x2f

    aget-object v7, v7, v8

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/jiguang/c/d;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/AssertionError; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object v3, v1

    goto/16 :goto_1

    :cond_5
    if-eqz v2, :cond_6

    :try_start_a
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_a
    .catch Ljava/lang/AssertionError; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_6
    :goto_3
    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_b
    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v5, 0x30

    aget-object v3, v3, v5

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/AssertionError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/c/d;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v2, v3

    :goto_4
    :try_start_c
    sget-object v3, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v3, v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v7, 0x35

    aget-object v6, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v1, :cond_6

    :try_start_d
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V
    :try_end_d
    .catch Ljava/lang/AssertionError; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_3

    :catch_4
    move-exception v0

    :try_start_e
    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v5, 0x30

    aget-object v3, v3, v5

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/AssertionError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/c/d;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    :goto_5
    :try_start_f
    sget-object v3, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v3, v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v7, 0x35

    aget-object v6, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-eqz v2, :cond_6

    :try_start_10
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_10
    .catch Ljava/lang/AssertionError; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_3

    :catch_6
    move-exception v0

    :try_start_11
    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v5, 0x30

    aget-object v3, v3, v5

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/AssertionError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/c/d;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_6
    if-eqz v2, :cond_7

    :try_start_12
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_12
    .catch Ljava/lang/AssertionError; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :cond_7
    :goto_7
    :try_start_13
    throw v0

    :catch_7
    move-exception v1

    sget-object v2, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v6, 0x30

    aget-object v5, v5, v6

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/AssertionError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/c/d;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catch_8
    move-exception v0

    move-object v1, v3

    goto :goto_5

    :catch_9
    move-exception v0

    goto :goto_5

    :catch_a
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_4

    :catch_b
    move-exception v0

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto/16 :goto_4
.end method

.method private static a(Ljava/lang/String;)Lcn/jiguang/b/b/j;
    .locals 4

    :try_start_0
    new-instance v0, Lcn/jiguang/b/b/j;

    invoke-direct {v0}, Lcn/jiguang/b/b/j;-><init>()V

    invoke-virtual {v0, p0}, Lcn/jiguang/b/b/j;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcn/jiguang/b/b/j;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/jiguang/b/b/j;->e()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    sget-object v2, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v3, 0x3e

    aget-object v2, v2, v3

    invoke-static {v1, v2, v0}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;IZ)V
    .locals 9

    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v6, 0x3

    const/4 v5, -0x1

    if-eqz p2, :cond_0

    sget-object v0, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    aget-object v0, v0, v6

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v3, 0x15

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcn/jiguang/e/f;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    aget-object v1, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/c/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x3ee

    if-ne v0, p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/jiguang/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Lcn/jiguang/e/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Lcn/jiguang/b/d/c;->c()V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x3ef

    if-ne v0, p1, :cond_2

    sget-object v0, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    aget-object v0, v0, v6

    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x3ed

    if-ne v0, p1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/jiguang/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jiguang/b/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Lcn/jiguang/e/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Lcn/jiguang/b/d/c;->c()V

    goto :goto_0

    :cond_3
    const/16 v0, 0x3f1

    if-ne v0, p1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/jiguang/b/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Lcn/jiguang/e/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Lcn/jiguang/b/d/c;->c()V

    goto :goto_0

    :cond_4
    const/16 v0, 0x3f0

    if-ne v0, p1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/jiguang/b/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Lcn/jiguang/e/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x2711

    if-ne v0, p1, :cond_6

    sget-object v0, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v1, 0x13

    aget-object v0, v0, v1

    invoke-static {p0, v0, v5}, Lcn/jiguang/e/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    aget-object v0, v0, v6

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v3, 0xf

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Lcn/jiguang/b/b/a;)V
    .locals 5

    const/4 v3, 0x3

    sget-object v0, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v2, 0x3c

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jiguang/b/a/a;->c(Landroid/content/Context;)Lcn/jiguang/b/b/a;

    move-result-object v0

    if-ne p1, v0, :cond_0

    sget-object v0, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v3, 0x39

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcn/jiguang/b/a/a;->a(Landroid/content/Context;Lcn/jiguang/b/b/a;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v2, 0x3a

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcn/jiguang/b/b/a;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v4, 0x3b

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v2, 0x3d

    aget-object v1, v1, v2

    invoke-static {p0, v1, v0}, Lcn/jiguang/e/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static a(Landroid/os/Message;J)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v2, 0x57

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static a()Z
    .locals 1

    invoke-static {}, Lcn/jiguang/b/a/a;->n()Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;J)Z
    .locals 11

    const/16 v0, 0x80

    new-array v0, v0, [B

    invoke-static {}, Lcn/jiguang/b/f/b;->e()Lcn/jiguang/b/f/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jiguang/b/f/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/jiguang/b/f/b;->e()Lcn/jiguang/b/f/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jiguang/b/f/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcn/jiguang/b/f/b;->e()Lcn/jiguang/b/f/b;

    move-result-object v3

    invoke-virtual {v3}, Lcn/jiguang/b/f/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcn/jiguang/b/f/b;->e()Lcn/jiguang/b/f/b;

    move-result-object v4

    invoke-virtual {v4}, Lcn/jiguang/b/f/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcn/jiguang/b/d/h;->a()Lcn/jiguang/b/d/h;

    move-result-object v5

    invoke-virtual {v5}, Lcn/jiguang/b/d/h;->d()S

    move-result v5

    sget-object v6, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v9, 0x41

    aget-object v8, v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v9, 0x4c

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v9, 0x42

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v9, 0x48

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v9, 0x4d

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/b/a/a;->j()J

    move-result-wide v6

    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    invoke-virtual {v8}, Ljava/util/Random;->nextInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v8}, Lcn/jiguang/b/f/a/a;->a(I)V

    new-instance v9, Lcn/jiguang/api/utils/OutputDataUtil;

    const/16 v10, 0x5000

    invoke-direct {v9, v10}, Lcn/jiguang/api/utils/OutputDataUtil;-><init>(I)V

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16(I)V

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    invoke-virtual {v9, v6, v7}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU64(J)V

    int-to-long v6, v8

    invoke-virtual {v9, v6, v7}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU32(J)V

    const-wide/16 v6, 0x0

    invoke-virtual {v9, v6, v7}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU64(J)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v9, v1}, Lcn/jiguang/api/utils/OutputDataUtil;->writeByteArrayincludeLength([B)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v9, v1}, Lcn/jiguang/api/utils/OutputDataUtil;->writeByteArrayincludeLength([B)V

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v9, v1}, Lcn/jiguang/api/utils/OutputDataUtil;->writeByteArrayincludeLength([B)V

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v9, v1}, Lcn/jiguang/api/utils/OutputDataUtil;->writeByteArrayincludeLength([B)V

    invoke-static {}, Lcn/jiguang/b/d/h;->a()Lcn/jiguang/b/d/h;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jiguang/b/d/h;->e()S

    invoke-virtual {v9, v5}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    invoke-virtual {v9}, Lcn/jiguang/api/utils/OutputDataUtil;->current()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16At(II)V

    invoke-virtual {v9}, Lcn/jiguang/api/utils/OutputDataUtil;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/jiguang/b/e/a/a/b;->a([BI)[B

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2}, Lcn/jiguang/service/Protocol;->SendData(J[BI)I

    move-result v1

    const/16 v2, -0x3df

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x1e

    invoke-static {p1, p2, v0, v1}, Lcn/jiguang/service/Protocol;->RecvPush(J[BI)I

    move-result v1

    if-lez v1, :cond_7

    invoke-static {v0}, Lcn/jiguang/b/e/a/a/a;->a([B)Lcn/jiguang/api/JResponse;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v2, 0x45

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lcn/jiguang/api/JResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/jiguang/api/JResponse;->getCommand()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v2, 0x49

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move-object v4, v0

    check-cast v4, Lcn/jiguang/b/e/a/d;

    iget v0, v4, Lcn/jiguang/b/e/a/d;->code:I

    invoke-static {p0, v0}, Lcn/jiguang/b/a/a;->a(Landroid/content/Context;I)V

    invoke-static {}, Lcn/jiguang/b/b/e;->a()Lcn/jiguang/b/b/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/jiguang/b/b/e;->b(I)V

    if-nez v0, :cond_6

    invoke-virtual {v4}, Lcn/jiguang/b/e/a/d;->getJuid()J

    move-result-wide v0

    invoke-virtual {v4}, Lcn/jiguang/b/e/a/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcn/jiguang/b/e/a/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcn/jiguang/b/e/a/d;->c()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v8, 0x43

    aget-object v7, v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v8, 0x4e

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v8, 0x40

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/jiguang/c/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v8, 0x4a

    aget-object v7, v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/jiguang/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcn/jiguang/e/h;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-wide/16 v6, 0x0

    cmp-long v5, v6, v0

    if-nez v5, :cond_5

    :cond_4
    sget-object v5, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    sget-object v6, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v7, 0x47

    aget-object v6, v6, v7

    invoke-static {v5, v6}, Lcn/jiguang/c/d;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {p0, v4}, Lcn/jiguang/e/a;->g(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v5, Lcn/jiguang/b/a;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcn/jiguang/b/a/a;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-wide v0, Lcn/jiguang/b/a;->g:J

    sput-object v2, Lcn/jiguang/b/a;->h:Ljava/lang/String;

    sget-object v0, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v1, 0x44

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v2, 0x46

    aget-object v1, v1, v2

    invoke-static {p0, v0, v1, v3}, Lcn/jiguang/e/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcn/jiguang/b/d/c;->a(Landroid/content/Context;IZ)V

    :goto_1
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v4, 0x4b

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static declared-synchronized a(Lcn/jiguang/b/b/g;JLcn/jiguang/b/b/j;)Z
    .locals 13

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-class v6, Lcn/jiguang/b/d/c;

    monitor-enter v6

    if-nez p3, :cond_2

    :try_start_0
    invoke-static {}, Lcn/jiguang/b/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/jiguang/b/a/a;->d()I

    move-result v1

    if-eqz v0, :cond_0

    sget-object v4, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v7, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v8, 0x4f

    aget-object v7, v7, v8

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, v0, v1}, Lcn/jiguang/b/d/c;->a(Lcn/jiguang/b/b/g;JLjava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    monitor-exit v6

    return v0

    :cond_0
    :try_start_1
    invoke-static {p0, p1, p2}, Lcn/jiguang/b/d/c;->a(Lcn/jiguang/b/b/g;J)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcn/jiguang/b/b/j;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcn/jiguang/b/b/j;->b()I

    move-result v1

    sget-object v0, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v0, v0, v5

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v7, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v8, 0x54

    aget-object v7, v7, v8

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_3

    if-nez v1, :cond_4

    :cond_3
    const/4 v0, -0x1

    sget-object v5, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v5, v5, v7

    sget-object v7, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v8, 0x50

    aget-object v7, v7, v8

    invoke-static {v5, v7}, Lcn/jiguang/c/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual/range {p3 .. p3}, Lcn/jiguang/b/b/j;->c()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v5, v3

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lcn/jiguang/b/b/j;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v8, 0x3

    aget-object v1, v1, v8

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v10, 0x53

    aget-object v9, v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v10, 0x52

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, v0, v4}, Lcn/jiguang/b/d/c;->a(Lcn/jiguang/b/b/g;JLjava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v5, v5, 0x1

    move v11, v1

    move v1, v4

    move-object v4, v0

    move v0, v11

    goto :goto_2

    :cond_4
    invoke-static {p0, p1, p2, v4, v1}, Lcn/jiguang/b/d/c;->a(Lcn/jiguang/b/b/g;JLjava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_5
    move v11, v1

    move v1, v4

    move-object v4, v0

    move v0, v11

    :cond_6
    if-nez v0, :cond_7

    invoke-static {v4, v1}, Lcn/jiguang/b/a/a;->a(Ljava/lang/String;I)V

    sget-object v0, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v5, v5, v7

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_0

    :cond_7
    if-eqz v0, :cond_8

    invoke-static {p0, p1, p2}, Lcn/jiguang/b/d/c;->a(Lcn/jiguang/b/b/g;J)I

    move-result v0

    :cond_8
    if-nez v0, :cond_9

    move v0, v2

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v2, 0x51

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;J)[B
    .locals 6

    const/4 v5, 0x2

    const/4 v2, 0x0

    invoke-static {p0}, Lcn/jiguang/e/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v1, 0x55

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, ""

    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {}, Lcn/jiguang/b/d/h;->a()Lcn/jiguang/b/d/h;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jiguang/b/d/h;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_1
    const/16 v3, 0x80

    new-array v3, v3, [B

    new-array v4, v5, [B

    fill-array-data v4, :array_0

    invoke-static {v4, v2, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v1, v5}, Lcn/jiguang/api/utils/ProtocolUtil;->fillStringData([BLjava/lang/String;I)V

    const/16 v1, 0x22

    invoke-static {v3, v0, v1}, Lcn/jiguang/api/utils/ProtocolUtil;->fillIntData([BII)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v4, p2

    long-to-int v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x26

    invoke-static {v3, v0, v1}, Lcn/jiguang/api/utils/ProtocolUtil;->fillIntData([BII)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    const/16 v0, 0x31

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v0, 0x2a

    invoke-static {v3, p1, v0}, Lcn/jiguang/api/utils/ProtocolUtil;->fillStringData([BLjava/lang/String;I)V

    sget-object v0, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v1, 0x56

    aget-object v0, v0, v1

    const/16 v1, 0x5c

    invoke-static {v3, v0, v1}, Lcn/jiguang/api/utils/ProtocolUtil;->fillStringData([BLjava/lang/String;I)V

    const/16 v0, 0x66

    invoke-static {v3, v2, v0}, Lcn/jiguang/api/utils/ProtocolUtil;->fillIntData([BII)V

    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x0t
        -0x80t
    .end array-data
.end method

.method public static b(Landroid/content/Context;J)I
    .locals 27

    const/4 v8, 0x0

    const/16 v4, 0x80

    new-array v9, v4, [B

    invoke-static {}, Lcn/jiguang/b/a/a;->s()J

    move-result-wide v10

    invoke-static {}, Lcn/jiguang/b/a/a;->v()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/jiguang/e/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcn/jiguang/b/a/a;->z()Ljava/lang/String;

    move-result-object v13

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcn/jiguang/b/d/b;->a()Lcn/jiguang/b/d/b;

    sget-object v14, Lcn/jiguang/api/SdkType;->JCORE:Lcn/jiguang/api/SdkType;

    invoke-virtual {v14}, Lcn/jiguang/api/SdkType;->name()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-static {v14, v15}, Lcn/jiguang/b/d/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    invoke-static {v14}, Lcn/jiguang/e/a;->c(Ljava/lang/String;)I

    move-result v4

    :cond_0
    invoke-static {}, Lcn/jiguang/b/d/b;->a()Lcn/jiguang/b/d/b;

    sget-object v14, Lcn/jiguang/api/SdkType;->JANALYTICS:Lcn/jiguang/api/SdkType;

    invoke-virtual {v14}, Lcn/jiguang/api/SdkType;->name()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-static {v14, v15}, Lcn/jiguang/b/d/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    invoke-static {v14}, Lcn/jiguang/e/a;->c(Ljava/lang/String;)I

    move-result v5

    :cond_1
    invoke-static {}, Lcn/jiguang/b/d/b;->a()Lcn/jiguang/b/d/b;

    sget-object v14, Lcn/jiguang/api/SdkType;->JSHARE:Lcn/jiguang/api/SdkType;

    invoke-virtual {v14}, Lcn/jiguang/api/SdkType;->name()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-static {v14, v15}, Lcn/jiguang/b/d/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    invoke-static {v14}, Lcn/jiguang/e/a;->c(Ljava/lang/String;)I

    move-result v6

    :cond_2
    invoke-static {}, Lcn/jiguang/b/d/b;->a()Lcn/jiguang/b/d/b;

    sget-object v14, Lcn/jiguang/api/SdkType;->JPUSH:Lcn/jiguang/api/SdkType;

    invoke-virtual {v14}, Lcn/jiguang/api/SdkType;->name()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-static {v14, v15}, Lcn/jiguang/b/d/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    invoke-static {v14}, Lcn/jiguang/e/a;->c(Ljava/lang/String;)I

    move-result v7

    :cond_3
    invoke-static {}, Lcn/jiguang/b/f/b;->e()Lcn/jiguang/b/f/b;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcn/jiguang/b/f/b;->c(Landroid/content/Context;)B

    move-result v14

    sget-object v15, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v16, 0x3

    aget-object v15, v15, v16

    new-instance v16, Ljava/lang/StringBuilder;

    sget-object v17, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v18, 0x19

    aget-object v17, v17, v18

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v18, 0x2b

    aget-object v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v18, 0x22

    aget-object v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v18, 0x17

    aget-object v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v18, 0x23

    aget-object v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v18, 0x25

    aget-object v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v18, 0x1a

    aget-object v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcn/jiguang/c/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static {}, Lcn/jiguang/b/d/h;->a()Lcn/jiguang/b/d/h;

    move-result-object v15

    invoke-virtual {v15}, Lcn/jiguang/b/d/h;->e()S

    move-result v15

    sget-object v18, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v19, 0x3

    aget-object v18, v18, v19

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v21, 0x18

    aget-object v20, v20, v21

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v21, 0x28

    aget-object v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/b/a/a;->j()J

    move-result-wide v18

    int-to-long v0, v4

    move-wide/from16 v20, v0

    int-to-long v0, v7

    move-wide/from16 v22, v0

    int-to-long v4, v5

    int-to-long v6, v6

    new-instance v24, Lcn/jiguang/api/utils/OutputDataUtil;

    const/16 v25, 0x5000

    invoke-direct/range {v24 .. v25}, Lcn/jiguang/api/utils/OutputDataUtil;-><init>(I)V

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16(I)V

    const/16 v25, 0x11

    invoke-virtual/range {v24 .. v25}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    move-object/from16 v0, v24

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU64(J)V

    const-wide/16 v18, 0x0

    move-object/from16 v0, v24

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU32(J)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v10, v11}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU64(J)V

    const/16 v10, 0x61

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    const/4 v10, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    const/4 v10, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16(I)V

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lcn/jiguang/api/utils/OutputDataUtil;->writeByteArrayincludeLength([B)V

    move-object/from16 v0, v24

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU32(J)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU32(J)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU32(J)V

    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU32(J)V

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcn/jiguang/api/utils/OutputDataUtil;->writeByteArrayincludeLength([B)V

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    invoke-virtual/range {v24 .. v24}, Lcn/jiguang/api/utils/OutputDataUtil;->current()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16At(II)V

    invoke-virtual/range {v24 .. v24}, Lcn/jiguang/api/utils/OutputDataUtil;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcn/jiguang/b/e/a/a/b;->a([BI)[B

    move-result-object v4

    if-eqz v4, :cond_4

    array-length v5, v4

    if-gtz v5, :cond_5

    :cond_4
    const/4 v5, -0x1

    :goto_0
    return v5

    :cond_5
    const/4 v5, 0x0

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v9, v4, v5}, Lcn/jiguang/service/Protocol;->LogPush(J[B[BI)I

    move-result v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    if-eqz v5, :cond_6

    const/16 v4, 0x270f

    if-ne v5, v4, :cond_b

    :cond_6
    invoke-static {v9}, Lcn/jiguang/b/e/a/a/a;->a([B)Lcn/jiguang/api/JResponse;

    move-result-object v4

    const/4 v6, 0x0

    instance-of v7, v4, Lcn/jiguang/b/e/a/c;

    if-eqz v7, :cond_7

    check-cast v4, Lcn/jiguang/b/e/a/c;

    move-object v6, v4

    :cond_7
    if-nez v6, :cond_8

    sget-object v4, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v4, v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v8, 0x27

    aget-object v7, v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v8, 0x1d

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcn/jiguang/c/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    sub-long v6, v10, v16

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6, v7, v4}, Lcn/jiguang/b/f/c;->a(Landroid/content/Context;IJI)V

    const/4 v5, -0x1

    goto :goto_0

    :cond_8
    sget-object v4, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v6}, Lcn/jiguang/b/e/a/c;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v6, Lcn/jiguang/b/e/a/c;->code:I

    invoke-static {}, Lcn/jiguang/b/b/e;->a()Lcn/jiguang/b/b/e;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcn/jiguang/b/b/e;->a(I)V

    if-nez v4, :cond_9

    invoke-virtual {v6}, Lcn/jiguang/b/e/a/c;->getSid()I

    move-result v5

    invoke-virtual {v6}, Lcn/jiguang/b/e/a/c;->a()I

    move-result v6

    int-to-long v6, v6

    const-wide/16 v12, 0x3e8

    mul-long/2addr v6, v12

    invoke-static {v5}, Lcn/jiguang/b/a/a;->a(I)V

    invoke-static {v6, v7}, Lcn/jiguang/b/a/a;->b(J)V

    sget-object v9, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v12, 0x3

    aget-object v9, v9, v12

    new-instance v12, Ljava/lang/StringBuilder;

    sget-object v13, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v14, 0x2a

    aget-object v13, v13, v14

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v12, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v13, 0x1b

    aget-object v12, v12, v13

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcn/jiguang/c/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v9, 0x3

    aget-object v5, v5, v9

    sget-object v9, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v12, 0x24

    aget-object v9, v9, v12

    invoke-static {v5, v9}, Lcn/jiguang/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    sget-object v12, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v13, 0x21

    aget-object v12, v12, v13

    invoke-virtual {v9, v12, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v6, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v7, 0x26

    aget-object v6, v6, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v9, v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v6, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v7, 0x1c

    aget-object v6, v6, v7

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v7, 0x1f

    aget-object v6, v6, v7

    move-object/from16 v0, p0

    invoke-static {v0, v6, v5}, Lcn/jiguang/e/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v5, v4

    move v4, v8

    :goto_2
    sub-long v6, v10, v16

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6, v7, v4}, Lcn/jiguang/b/f/c;->a(Landroid/content/Context;IJI)V

    goto/16 :goto_0

    :catch_0
    move-exception v5

    sget-object v6, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v9, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v12, 0x20

    aget-object v9, v9, v12

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcn/jiguang/c/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    move v4, v8

    goto :goto_2

    :cond_9
    const/16 v5, 0x2710

    if-ne v4, v5, :cond_a

    sget-object v5, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v8, 0x1e

    aget-object v7, v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcn/jiguang/c/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, -0x1

    goto :goto_2

    :cond_a
    sget-object v5, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v9, 0x29

    aget-object v7, v7, v9

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcn/jiguang/e/f;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/jiguang/c/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    const/4 v4, 0x1

    sget-object v6, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v9, 0x27

    aget-object v8, v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/jiguang/c/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private static b(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Lcn/jiguang/b/d/d;

    invoke-direct {v1, p0}, Lcn/jiguang/b/d/d;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Lcn/jiguang/b/d/d;->start()V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Lcn/jiguang/b/d/d;->join(J)V

    invoke-virtual {v1}, Lcn/jiguang/b/d/d;->a()Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    sget-object v2, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v3, 0x16

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcn/jiguang/c/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static b()V
    .locals 3

    sget-object v0, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v2, 0x2c

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/b/a/a;->l()V

    return-void
.end method

.method private static c()V
    .locals 3

    sget-object v0, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/b/d/c;->z:[Ljava/lang/String;

    const/16 v2, 0x3f

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/b/a/a;->m()V

    return-void
.end method
