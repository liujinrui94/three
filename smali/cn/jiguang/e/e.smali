.class public final Lcn/jiguang/e/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field public static a:Z

.field private static final z:[Ljava/lang/String;


# instance fields
.field private b:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x7

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "\u0001,kT\u0005!(gR\u0000\u0016\u0010|B\u001d\u0016!j"

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

    const/16 v9, 0x6e

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

    const-string v1, "1\u0017Bc\u001c\u00177zz\u000f\u000c%iR\u001c"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "\u0001%QE\u0001\r0"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "Oi#\u001aC \u0001I~ B\u0007Ke:+\u0002Gt/6\u0001#\u001aCOi\u0004z\'+\u0001ZM-!\u0005tR\t#3Gu/\u0005\rJv\u0004\u00122Cv^%\u0007]F)1\rl\u0004*3\u0001Lt\u00197\u0005Cr\'\u001a\u0007tv$ #@a,#\u001dZv\u00024\u0010\u0004z<;3Hv7&\u0012_f%\'3?\u007f45}[T\u00004>jt,(&cz\u001b/\u0016}@)3\u001dJa?3\u0000KO$*\u001eY\u000e;\u0001*XM\n!\u0006FU)[-\u0004n9\u0015#_\u0007+\u0015\u000cfT /\u0010CO#6\u0005?z\u0004\'>@];\u0015\u0013fT /.G@ 6\ryz\u0004\'>@];\u0015\u0013du+/\u0015}@-3\u001dJa?3\u0003\u0004r\u0019(\u0012[M+5\tLf)#u[r-\n\t@e\\42X\u007f$S\'=f\t1\u0013;]\"\u0008\u0001jz,\u0011\u0003O\u0006;\'\u0005vz;0vXA8*\u000e?T]3#\u0004b_,\tGr  \rM\u0007\t0>C@\t\u0005\u0001gz/R\u0003Md\u001f%\u0017GU]&\u0015Ku/3\u0011OvZ+\u0006J@/\u0015#ir%#+Gu/3\u0000dA\u0000V\u000f\u0004_\u001f2\u0014o\u0005^[\u000f8p6\u0010\u0011e\\:\u0006 =B:0qM|9\u0007+~\u0000\u000b0<Ed>:s\u007fp7\u0003<8rV[\u001c!Q?\u0012wkV9\u001a|EvY7\u001e\u0004bW\u0017(Gm<\u0012\u001d;\u0006\u001f6\u000eKz+\'!%r\u0008\u00127f^9Q5ye\u00013.i}4\u0004\u0005[\u0005\u0006\u000f!%Z\u001d.5<{\u0018\u0008%hA7Q\u0005dF%I\u0006\u0004\u000fW$1gp\n6sL|\u0005)\u001cY|\u001eM\u000eVg\u000f)\u0000c}\u0008\u001b\u0007`\u0004;Wt@B#*,g~\u0002\u000e\u001e{\u007f+\u000c\u0016oX>87Ta>M+wq\u0017\u0011<\u0004]^\u0003#%Z\u00057\"D\u0005\u000851BE#Rp_G\u001c20j\u0005>;3;\u0000^Q 7\u0002\u0003\u000c6[\u0000\u001aU cD\u0014&08[\n\u0018\u0006K\u0001,U0x[X3\u0006\u0004~^\u0007\u0012F\u0001 Qob^=\u001a7hf\u0018\u0001oZp+)whA\u000b\u0007\u001ekE8-||C\u001c/\u0012yX\u0008U\u0011K}\u001c\u0015\u0001ie+\u0010\u0006~U\u000b$\u0006Ha^\u001a2\u0004A7&\u0008ia\u0019\u001679O\\\r\u0016;[/\u0005\tLv/%.iP()\tG~,0.OQ,\u0005\nX\u007f=/\u0001Is/5#Lc/\u00074fX\u0004;*9F\u00194/\u0004s,$}\u007fY_\u000e1CE#6.OS,\u0005\nX\u007f?V\u0001HP?7tc\u0018]\u000e2]q>Q\r6z&R.<X8V)8yV5*y@+\u0005\u001dJa<R\u0010\u0004v?*kLv\t\u0015\u0006ir,M3Gu/&\u0005Au\t,\u0012FfV \u0005h\u000f+ \u0005Ct/3\u001dyy\t;\u0000Xe^\u0004\u0006M\u000f\u0019.\u0010OE\u0001!)i}Z;(\u0004V&0tms\u0001\u0014\u0008<T\u0016.*@\u0002\u000c5\ng{\u0003,2ldW\u0008\'cO\u0014.vj\u00074P<xn\u0003$7BZ \u001b&Jv\u0018 #iE,\u0005\u0001Hu?\u0001\u0006\u0004v?3.Ct+\u0015\u000cyn\')3Wu,3\u0011Fz/%\u0003K\u0005\u0006R FvX.=7Y#\u000bqtR9S.W^[\u0008&<\u0007\u00196\u0005Ws80tiu+73\u0004f\u0014 \u0006LP\u001e\u0005,eP,\n2fq/3\'<z*/3Cf7+\u000fyn, \u0015[\u007f/\u0005\u0001Y}9\ntj\u007f/T\u0008w\u000e]\u0006wmB4P\u0012xS&(u\u0004T]31W\u0005W\u0016\u0008=}\u0002\u0001v7\u0006\r\u000f\nbT\u0017[.m\u007f#\u0015\u000f_n*4\u0016>e,!\ry~%3!Cu\u0019\u001a\u0003dv7 #@a,#\tZr8,q\u0004U9$1jp8\u0008\u0011KC$.\u0010KC 6\t;z/R\u0003Md\u001f%\u0017GU]&\u0015Ku-\u0015\u0011OvZ+\u0006Of-\u0005u^T\u001dIw_{\u0008P\u0010vM;,5\u0004Y\\(\u0010Fv$Z)Dt\u0007U/7X_!\u0005oT\u0016+oj\u0000 3r=|VU+g\u001c\u0008\u001a\"\u007fSZI\u0000Wm82,E\u007f\"//7D\'\u0000s]V48}\u0004nYQ\'E\u0001\t\u0004tLx+\u0001\u00149\u0005 8\u0013D\u001c\u000f8w}r\u000c+19T:[\'bP\u000f\u0006\u001eC\u0018\u001a)\u000b9\u000e \u00053Wt/V!h\u0000\u0007P|fR;\u0010#\u0004\u0004%\t&yU\u0008U3>[4:\u0008X\u0004,R\u0010[[A\u001a\u000eO~\u0002\u0014\u0006e\u0003,\u0001\u0006cD\"\u001a\u000cO\u0003\u001b;\u0014B\u00034..VA*\u0017%mBW2\u0003}q\u0004Vq\u0004d8%!H\u0007\u001a2\u0001JG\u000c\u0012%gd\u000cMw8\u0006\t\u0011\u0000Zb\n5\u0012vY\u0014\u001bvx\u0006V[&^D>:uaO&1\rHz:,\u0000mq\"\'\nonWI\n\u0004f \u0003\u0002F[&\u0012\u0011\\T\u000b#ul}V6\u0007z\u0002[\u0011\u0016aE\u00003\tWp\u000c\u0003\u0008FmX2\u0014c[&U\u000c|_#\u0014,%\u0004?(&LXE\u0006pG`\u0018/4\u0004M 1\u0017\u0004\u001aCOi#r &dMr<6\rH~-#\u0010K\u001aCOi#"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, ":j;\u0007W"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "\u0005!zv\r\u0001!~C\u000b\u0006\r}D\u001b\u00076}"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "\u0001,kT\u00051!|A\u000b\u0010\u0010|B\u001d\u0016!j"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    sput-object v4, Lcn/jiguang/e/e;->z:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jiguang/e/e;->a:Z

    return-void

    :pswitch_6
    const/16 v9, 0x62

    goto :goto_2

    :pswitch_7
    const/16 v9, 0x44

    goto :goto_2

    :pswitch_8
    const/16 v9, 0xe

    goto :goto_2

    :pswitch_9
    const/16 v9, 0x37

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    sget-object v0, Lcn/jiguang/e/e;->z:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/e/e;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    new-instance v1, Ljava/security/KeyStore$TrustedCertificateEntry;

    invoke-direct {v1, v0}, Ljava/security/KeyStore$TrustedCertificateEntry;-><init>(Ljava/security/cert/Certificate;)V

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    sget-object v2, Lcn/jiguang/e/e;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    instance-of v2, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_1

    aget-object v0, v1, v0

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    iput-object v0, p0, Lcn/jiguang/e/e;->b:Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcn/jiguang/e/e;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/e/e;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcn/jiguang/e/e;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/e/e;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/e/e;->b:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 3

    sget-object v0, Lcn/jiguang/e/e;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Lcn/jiguang/e/e;->z:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jiguang/c/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/e/e;->b:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/e/e;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
