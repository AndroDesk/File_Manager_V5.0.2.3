.class public final Lcom/android/fileexplorer/util/HttpsUtil;
.super Ljava/lang/Object;
.source "HttpsUtil.java"


# static fields
.field private static final CONNECT_TIMEOUT_TIME:I

.field private static final READ_TIMEOUT_TIME:I

.field private static final TAG:Ljava/lang/String; = "HttpsUtil"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x9170e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/util/HttpsUtil;->CONNECT_TIMEOUT_TIME:I

    const v0, 0x967ae

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/util/HttpsUtil;->READ_TIMEOUT_TIME:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doHttpAction(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, "doHttpAction is close error"

    const-string v1, "doHttpAction connection close error"

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p3

    check-cast p3, Ljava/net/HttpURLConnection;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_c8
    .catchall {:try_start_5 .. :try_end_10} :catchall_c4

    const/16 v3, 0x3a98

    :try_start_12
    invoke-virtual {p3, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v3, 0x4a38

    invoke-virtual {p3, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    if-eqz p2, :cond_22

    const-string p2, "POST"

    invoke-virtual {p3, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_27

    :cond_22
    const-string p2, "GET"

    invoke-virtual {p3, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_27} :catch_c1
    .catchall {:try_start_12 .. :try_end_27} :catchall_bc

    :goto_27
    const-string p2, "Content-Type"

    if-eqz p1, :cond_31

    :try_start_2b
    const-string p1, "application/json"

    invoke-virtual {p3, p2, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    :cond_31
    const-string p1, "application/x-www-form-urlencoded"

    invoke-virtual {p3, p2, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_36
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_40

    move p1, v3

    goto :goto_41

    :cond_40
    move p1, p2

    :goto_41
    invoke-virtual {p3, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    if-eqz p1, :cond_49

    invoke-virtual {p3, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    :cond_49
    invoke-virtual {p3}, Ljava/net/URLConnection;->connect()V

    if-eqz p1, :cond_6a

    new-instance p1, Ljava/io/DataOutputStream;

    invoke-virtual {p3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_57} :catch_c1
    .catchall {:try_start_2b .. :try_end_57} :catchall_bc

    :try_start_57
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    invoke-virtual {p1, v3, p2, p0}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    goto :goto_6b

    :cond_6a
    move-object p1, v2

    :goto_6b
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    const/16 p2, 0xc8

    if-ne p0, p2, :cond_a5

    invoke-virtual {p3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_77} :catch_ba
    .catchall {:try_start_57 .. :try_end_77} :catchall_b7

    :try_start_77
    new-instance p2, Ljava/util/Scanner;

    invoke-direct {p2, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v3, "\\A"

    invoke-virtual {p2, v3}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    invoke-virtual {p2}, Ljava/util/Scanner;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a6

    invoke-virtual {p2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object p2
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_8b} :catch_cb
    .catchall {:try_start_77 .. :try_end_8b} :catchall_ee

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p1, :cond_99

    :try_start_90
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    goto :goto_99

    :catch_94
    sget-object p1, Lcom/android/fileexplorer/util/HttpsUtil;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_99
    :goto_99
    if-eqz p0, :cond_a4

    :try_start_9b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_9f

    goto :goto_a4

    :catch_9f
    sget-object p0, Lcom/android/fileexplorer/util/HttpsUtil;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a4
    :goto_a4
    return-object p2

    :cond_a5
    move-object p0, v2

    :cond_a6
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p1, :cond_b4

    :try_start_ab
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_af

    goto :goto_b4

    :catch_af
    sget-object p1, Lcom/android/fileexplorer/util/HttpsUtil;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b4
    :goto_b4
    if-eqz p0, :cond_ed

    goto :goto_e4

    :catchall_b7
    move-exception p0

    move-object p2, v2

    goto :goto_bf

    :catch_ba
    move-object p0, v2

    goto :goto_cb

    :catchall_bc
    move-exception p0

    move-object p1, v2

    move-object p2, p1

    :goto_bf
    move-object v2, p3

    goto :goto_f3

    :catch_c1
    move-object p0, v2

    move-object p1, p0

    goto :goto_cb

    :catchall_c4
    move-exception p0

    move-object p1, v2

    move-object p2, p1

    goto :goto_f3

    :catch_c8
    move-object p0, v2

    move-object p1, p0

    move-object p3, p1

    :catch_cb
    :goto_cb
    :try_start_cb
    sget-object p2, Lcom/android/fileexplorer/util/HttpsUtil;->TAG:Ljava/lang/String;

    const-string v3, "doHttpAction quest error"

    invoke-static {p2, v3}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d2
    .catchall {:try_start_cb .. :try_end_d2} :catchall_ee

    if-eqz p3, :cond_d7

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d7
    if-eqz p1, :cond_e2

    :try_start_d9
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_dd

    goto :goto_e2

    :catch_dd
    sget-object p1, Lcom/android/fileexplorer/util/HttpsUtil;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e2
    :goto_e2
    if-eqz p0, :cond_ed

    :goto_e4
    :try_start_e4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_e8

    goto :goto_ed

    :catch_e8
    sget-object p0, Lcom/android/fileexplorer/util/HttpsUtil;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ed
    :goto_ed
    return-object v2

    :catchall_ee
    move-exception p2

    move-object v2, p3

    move-object v4, p2

    move-object p2, p0

    move-object p0, v4

    :goto_f3
    if-eqz v2, :cond_f8

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f8
    if-eqz p1, :cond_103

    :try_start_fa
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_fd} :catch_fe

    goto :goto_103

    :catch_fe
    sget-object p1, Lcom/android/fileexplorer/util/HttpsUtil;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_103
    :goto_103
    if-eqz p2, :cond_10e

    :try_start_105
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_109

    goto :goto_10e

    :catch_109
    sget-object p1, Lcom/android/fileexplorer/util/HttpsUtil;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10e
    :goto_10e
    throw p0
.end method

.method public static getForm(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, p0}, Lcom/android/fileexplorer/util/HttpsUtil;->doHttpAction(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1}, Lcom/android/fileexplorer/util/HttpsUtil;->doHttpAction(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/android/fileexplorer/util/HttpsUtil;->doHttpAction(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static postForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Lcom/android/fileexplorer/util/HttpsUtil;->doHttpAction(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static postJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, v0, v0, p1}, Lcom/android/fileexplorer/util/HttpsUtil;->doHttpAction(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
