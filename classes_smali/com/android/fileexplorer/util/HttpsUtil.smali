.class public final Lcom/android/fileexplorer/util/HttpsUtil;
.super Ljava/lang/Object;
.source "HttpsUtil.java"


# static fields
.field private static final CONNECT_TIMEOUT_TIME:I = 0x3a98

.field private static final READ_TIMEOUT_TIME:I = 0x4a38

.field private static final TAG:Ljava/lang/String; = "HttpsUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doHttpAction(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1
    const-string v0, "doHttpAction is close error"

    .line 3
    const-string v1, "doHttpAction connection close error"

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_5
    new-instance v3, Ljava/net/URL;

    .line 8
    invoke-direct {v3, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 14
    move-result-object p3

    .line 15
    check-cast p3, Ljava/net/HttpURLConnection;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_c8
    .catchall {:try_start_5 .. :try_end_10} :catchall_c4

    .line 17
    const/16 v3, 0x3a98

    .line 19
    :try_start_12
    invoke-virtual {p3, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 22
    const/16 v3, 0x4a38

    .line 24
    invoke-virtual {p3, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 27
    if-eqz p2, :cond_22

    .line 29
    const-string p2, "POST"

    .line 31
    invoke-virtual {p3, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 34
    goto :goto_27

    .line 35
    :cond_22
    const-string p2, "GET"

    .line 37
    invoke-virtual {p3, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_27} :catch_c1
    .catchall {:try_start_12 .. :try_end_27} :catchall_bc

    .line 40
    :goto_27
    const-string p2, "Content-Type"

    .line 42
    if-eqz p1, :cond_31

    .line 44
    :try_start_2b
    const-string p1, "application/json"

    .line 46
    invoke-virtual {p3, p2, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    goto :goto_36

    .line 50
    :cond_31
    const-string p1, "application/x-www-form-urlencoded"

    .line 52
    invoke-virtual {p3, p2, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_36
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    move-result p1

    .line 59
    const/4 p2, 0x0

    .line 60
    const/4 v3, 0x1

    .line 61
    if-nez p1, :cond_40

    .line 63
    move p1, v3

    .line 64
    goto :goto_41

    .line 65
    :cond_40
    move p1, p2

    .line 66
    :goto_41
    invoke-virtual {p3, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 69
    if-eqz p1, :cond_49

    .line 71
    invoke-virtual {p3, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 74
    :cond_49
    invoke-virtual {p3}, Ljava/net/URLConnection;->connect()V

    .line 77
    if-eqz p1, :cond_6a

    .line 79
    new-instance p1, Ljava/io/DataOutputStream;

    .line 81
    invoke-virtual {p3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 84
    move-result-object v3

    .line 85
    invoke-direct {p1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_57} :catch_c1
    .catchall {:try_start_2b .. :try_end_57} :catchall_bc

    .line 88
    :try_start_57
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 95
    move-result-object p0

    .line 96
    array-length p0, p0

    .line 97
    invoke-virtual {p1, v3, p2, p0}, Ljava/io/DataOutputStream;->write([BII)V

    .line 100
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 103
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 106
    goto :goto_6b

    .line 107
    :cond_6a
    move-object p1, v2

    .line 108
    :goto_6b
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 111
    move-result p0

    .line 112
    const/16 p2, 0xc8

    .line 114
    if-ne p0, p2, :cond_a5

    .line 116
    invoke-virtual {p3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 119
    move-result-object p0
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_77} :catch_ba
    .catchall {:try_start_57 .. :try_end_77} :catchall_b7

    .line 120
    :try_start_77
    new-instance p2, Ljava/util/Scanner;

    .line 122
    invoke-direct {p2, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 125
    const-string v3, "\\A"

    .line 127
    invoke-virtual {p2, v3}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 130
    invoke-virtual {p2}, Ljava/util/Scanner;->hasNext()Z

    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_a6

    .line 136
    invoke-virtual {p2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    .line 139
    move-result-object p2
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_8b} :catch_cb
    .catchall {:try_start_77 .. :try_end_8b} :catchall_ee

    .line 140
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 143
    if-eqz p1, :cond_99

    .line 145
    :try_start_90
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    .line 148
    goto :goto_99

    .line 149
    :catch_94
    sget-object p1, Lcom/android/fileexplorer/util/HttpsUtil;->TAG:Ljava/lang/String;

    .line 151
    invoke-static {p1, v1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_99
    :goto_99
    if-eqz p0, :cond_a4

    .line 156
    :try_start_9b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_9f

    .line 159
    goto :goto_a4

    .line 160
    :catch_9f
    sget-object p0, Lcom/android/fileexplorer/util/HttpsUtil;->TAG:Ljava/lang/String;

    .line 162
    invoke-static {p0, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_a4
    :goto_a4
    return-object p2

    .line 166
    :cond_a5
    move-object p0, v2

    .line 167
    :cond_a6
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 170
    if-eqz p1, :cond_b4

    .line 172
    :try_start_ab
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_af

    .line 175
    goto :goto_b4

    .line 176
    :catch_af
    sget-object p1, Lcom/android/fileexplorer/util/HttpsUtil;->TAG:Ljava/lang/String;

    .line 178
    invoke-static {p1, v1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_b4
    :goto_b4
    if-eqz p0, :cond_ed

    .line 183
    goto :goto_e4

    .line 184
    :catchall_b7
    move-exception p0

    .line 185
    move-object p2, v2

    .line 186
    goto :goto_bf

    .line 187
    :catch_ba
    move-object p0, v2

    .line 188
    goto :goto_cb

    .line 189
    :catchall_bc
    move-exception p0

    .line 190
    move-object p1, v2

    .line 191
    move-object p2, p1

    .line 192
    :goto_bf
    move-object v2, p3

    .line 193
    goto :goto_f3

    .line 194
    :catch_c1
    move-object p0, v2

    .line 195
    move-object p1, p0

    .line 196
    goto :goto_cb

    .line 197
    :catchall_c4
    move-exception p0

    .line 198
    move-object p1, v2

    .line 199
    move-object p2, p1

    .line 200
    goto :goto_f3

    .line 201
    :catch_c8
    move-object p0, v2

    .line 202
    move-object p1, p0

    .line 203
    move-object p3, p1

    .line 204
    :catch_cb
    :goto_cb
    :try_start_cb
    sget-object p2, Lcom/android/fileexplorer/util/HttpsUtil;->TAG:Ljava/lang/String;

    .line 206
    const-string v3, "doHttpAction quest error"

    .line 208
    invoke-static {p2, v3}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d2
    .catchall {:try_start_cb .. :try_end_d2} :catchall_ee

    .line 211
    if-eqz p3, :cond_d7

    .line 213
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 216
    :cond_d7
    if-eqz p1, :cond_e2

    .line 218
    :try_start_d9
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_dd

    .line 221
    goto :goto_e2

    .line 222
    :catch_dd
    sget-object p1, Lcom/android/fileexplorer/util/HttpsUtil;->TAG:Ljava/lang/String;

    .line 224
    invoke-static {p1, v1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_e2
    :goto_e2
    if-eqz p0, :cond_ed

    .line 229
    :goto_e4
    :try_start_e4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_e8

    .line 232
    goto :goto_ed

    .line 233
    :catch_e8
    sget-object p0, Lcom/android/fileexplorer/util/HttpsUtil;->TAG:Ljava/lang/String;

    .line 235
    invoke-static {p0, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_ed
    :goto_ed
    return-object v2

    .line 239
    :catchall_ee
    move-exception p2

    .line 240
    move-object v2, p3

    .line 241
    move-object v4, p2

    .line 242
    move-object p2, p0

    .line 243
    move-object p0, v4

    .line 244
    :goto_f3
    if-eqz v2, :cond_f8

    .line 246
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 249
    :cond_f8
    if-eqz p1, :cond_103

    .line 251
    :try_start_fa
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_fd} :catch_fe

    .line 254
    goto :goto_103

    .line 255
    :catch_fe
    sget-object p1, Lcom/android/fileexplorer/util/HttpsUtil;->TAG:Ljava/lang/String;

    .line 257
    invoke-static {p1, v1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_103
    :goto_103
    if-eqz p2, :cond_10e

    .line 262
    :try_start_105
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_109

    .line 265
    goto :goto_10e

    .line 266
    :catch_109
    sget-object p1, Lcom/android/fileexplorer/util/HttpsUtil;->TAG:Ljava/lang/String;

    .line 268
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_10e
    :goto_10e
    throw p0
.end method

.method public static getForm(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1, v1, p0}, Lcom/android/fileexplorer/util/HttpsUtil;->doHttpAction(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, v0, p1}, Lcom/android/fileexplorer/util/HttpsUtil;->doHttpAction(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1, p1}, Lcom/android/fileexplorer/util/HttpsUtil;->doHttpAction(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static postForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {p0, v0, v1, p1}, Lcom/android/fileexplorer/util/HttpsUtil;->doHttpAction(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static postJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0, v0, p1}, Lcom/android/fileexplorer/util/HttpsUtil;->doHttpAction(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method
