.class Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;
.super Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;
.source "UploadChunkRequest.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x1400

.field private static final TAG:Ljava/lang/String; = "UploadChunkRequest"


# instance fields
.field private mChunkLength:I

.field private mCkeyHint:Ljava/lang/String;

.field private mIsLastChunk:Z

.field private mOffset:I


# direct methods
.method public constructor <init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;ZII)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;-><init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;ZIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;ZIILjava/lang/String;)V
    .registers 6

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;-><init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;)V

    .line 3
    iput-boolean p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->mIsLastChunk:Z

    .line 4
    iput p3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->mChunkLength:I

    .line 5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->mCkeyHint:Ljava/lang/String;

    .line 6
    iput p4, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->mOffset:I

    .line 7
    iput-object p5, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getBaseUrl()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    .line 7
    invoke-virtual {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getType()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaSupportedFileType;->isMiXin2(Ljava/lang/String;)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_17

    .line 17
    const-string v1, "/upload"

    .line 19
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    goto :goto_25

    .line 24
    :cond_17
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    .line 26
    invoke-virtual {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->isFirstChunk()Z

    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_25

    .line 32
    const-string v1, "/more"

    .line 34
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    :cond_25
    :goto_25
    return-object v0
.end method

.method public getConn(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->getConn(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_14

    .line 7
    const-string p2, "Connection"

    .line 9
    const-string p3, "Keep-Alive"

    .line 11
    invoke-virtual {p1, p2, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string p2, "Content-Type"

    .line 16
    const-string p3, "multipart/form-data;boundary=*****"

    .line 18
    invoke-virtual {p1, p2, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_14
    return-object p1
.end method

.method public getParams(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    .line 8
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    .line 10
    invoke-virtual {v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getType()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    const-string v3, "UTF-8"

    .line 16
    invoke-static {p1, v2, v3}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    const-string v4, "type"

    .line 22
    invoke-direct {v1, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    .line 30
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->mCkeyHint:Ljava/lang/String;

    .line 32
    const-string v4, "ASCII"

    .line 34
    invoke-static {p1, v2, v4}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    const-string v5, "ckeyhint"

    .line 40
    invoke-direct {v1, v5, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    .line 48
    invoke-virtual {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->isFirstChunk()Z

    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_41

    .line 54
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    .line 56
    invoke-virtual {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getType()Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    invoke-static {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaSupportedFileType;->isMiXin2(Ljava/lang/String;)Z

    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_91

    .line 66
    :cond_41
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    .line 68
    invoke-virtual {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getTempId()Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_dd

    .line 78
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    .line 80
    invoke-virtual {v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getHostingServer()Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 84
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_dd

    .line 90
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    .line 92
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    .line 94
    invoke-virtual {v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getTempId()Ljava/lang/String;

    .line 97
    move-result-object v2

    .line 98
    invoke-static {p1, v2, v4}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    move-result-object v2

    .line 102
    const-string v4, "tmpid"

    .line 104
    invoke-direct {v1, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    .line 112
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    .line 114
    invoke-virtual {v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getHostingServer()Ljava/lang/String;

    .line 117
    move-result-object v2

    .line 118
    const-string v4, "_hostingserver"

    .line 120
    invoke-direct {v1, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    .line 128
    iget v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->mOffset:I

    .line 130
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 133
    move-result-object v2

    .line 134
    invoke-static {p1, v2, v3}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    move-result-object v2

    .line 138
    const-string v4, "offset"

    .line 140
    invoke-direct {v1, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_91
    iget-boolean v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->mIsLastChunk:Z

    .line 148
    const-string v2, "st"

    .line 150
    if-eqz v1, :cond_ce

    .line 152
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    .line 154
    const-string v4, "2"

    .line 156
    invoke-static {p1, v4, v3}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    move-result-object v4

    .line 160
    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    .line 168
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    .line 170
    invoke-virtual {v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getExt()Ljava/lang/String;

    .line 173
    move-result-object v2

    .line 174
    invoke-static {p1, v2, v3}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    move-result-object v2

    .line 178
    const-string v4, "ext"

    .line 180
    invoke-direct {v1, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    .line 188
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    .line 190
    invoke-virtual {v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getHexDigest()Ljava/lang/String;

    .line 193
    move-result-object v2

    .line 194
    invoke-static {p1, v2, v3}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    move-result-object p1

    .line 198
    const-string v2, "digest"

    .line 200
    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    goto :goto_dc

    .line 207
    :cond_ce
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    .line 209
    const-string v4, "1"

    .line 211
    invoke-static {p1, v4, v3}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    move-result-object p1

    .line 215
    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    :goto_dc
    return-object v0

    .line 222
    :cond_dd
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 224
    const-string v0, "The tempid or hosting server should not be null for the non first chunk or mixin2"

    .line 226
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 229
    throw p1
.end method

.method public request(Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 11

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    iget-object v1, p2, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v1, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getParamsWithSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->getBaseUrl()Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x1

    .line 13
    new-array v4, v3, [Ljava/lang/Object;

    .line 15
    const/4 v5, 0x0

    .line 16
    aput-object p1, v4, v5

    .line 18
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    const-string v2, "UTF-8"

    .line 24
    invoke-static {v1, v2}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p0, p1, v1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->getTargetUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1, p3, v5}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->getConn(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    .line 35
    move-result-object p1
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_23} :catch_103
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_23} :catch_ed
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_23} :catch_da
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_23} :catch_c7
    .catchall {:try_start_1 .. :try_end_23} :catchall_c3

    .line 36
    if-nez p1, :cond_2b

    .line 38
    if-eqz p1, :cond_2a

    .line 40
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 43
    :cond_2a
    return-object v0

    .line 44
    :cond_2b
    :try_start_2b
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 47
    new-instance v1, Ljava/io/DataOutputStream;

    .line 49
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 52
    move-result-object v2

    .line 53
    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_37} :catch_c0
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_37} :catch_bd
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2b .. :try_end_37} :catch_ba
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2b .. :try_end_37} :catch_b7
    .catchall {:try_start_2b .. :try_end_37} :catchall_b4

    .line 56
    :try_start_37
    const-string v2, "--*****\r\n"

    .line 58
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 61
    const-string v2, "Content-Disposition:form-data;name=\"uploadfile0\";filename=\"uploadfile0\"\r\n"

    .line 63
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 66
    const-string v2, "\r\n"

    .line 68
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->mCkeyHint:Ljava/lang/String;

    .line 73
    iget-object v4, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    .line 75
    iget v6, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->mChunkLength:I

    .line 77
    invoke-virtual {v4, v6}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getData(I)[B

    .line 80
    move-result-object v4

    .line 81
    invoke-static {v2, v4}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeStream(Ljava/lang/String;[B)[B

    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 88
    const-string v2, "\r\n--*****--\r\n"

    .line 90
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 96
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 99
    move-result v2

    .line 100
    const/16 v4, 0xc8

    .line 102
    if-ne v2, v4, :cond_7c

    .line 104
    invoke-virtual {p0, p1, p2, p3, v5}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Request;->connect(Ljava/net/HttpURLConnection;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;I)Ljava/lang/String;

    .line 107
    move-result-object p2

    .line 108
    new-instance p3, Lorg/json/JSONObject;

    .line 110
    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_70} :catch_b1
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_70} :catch_af
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_37 .. :try_end_70} :catch_ad
    .catch Ljavax/crypto/BadPaddingException; {:try_start_37 .. :try_end_70} :catch_ab
    .catchall {:try_start_37 .. :try_end_70} :catchall_121

    .line 113
    :try_start_70
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    .line 116
    goto :goto_78

    .line 117
    :catch_74
    move-exception p2

    .line 118
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    :goto_78
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 124
    return-object p3

    .line 125
    :cond_7c
    :try_start_7c
    invoke-static {v2}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->isMiCloudServerException(I)Z

    .line 128
    move-result p2

    .line 129
    if-nez p2, :cond_a5

    .line 131
    const-string p2, "The responsed message is %s, code is %d"

    .line 133
    const/4 p3, 0x2

    .line 134
    new-array p3, p3, [Ljava/lang/Object;

    .line 136
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 139
    move-result-object v4

    .line 140
    aput-object v4, p3, v5

    .line 142
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    move-result-object v2

    .line 146
    aput-object v2, p3, v3

    .line 148
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    move-result-object p2

    .line 152
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_9a} :catch_b1
    .catch Lorg/json/JSONException; {:try_start_7c .. :try_end_9a} :catch_af
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_7c .. :try_end_9a} :catch_ad
    .catch Ljavax/crypto/BadPaddingException; {:try_start_7c .. :try_end_9a} :catch_ab
    .catchall {:try_start_7c .. :try_end_9a} :catchall_121

    .line 155
    :try_start_9a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9f

    .line 158
    goto/16 :goto_ff

    .line 160
    :catch_9f
    move-exception p2

    .line 161
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 164
    goto/16 :goto_ff

    .line 166
    :cond_a5
    :try_start_a5
    new-instance p2, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .line 168
    invoke-direct {p2, v2, p1}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/net/HttpURLConnection;)V

    .line 171
    throw p2
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_ab} :catch_b1
    .catch Lorg/json/JSONException; {:try_start_a5 .. :try_end_ab} :catch_af
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_a5 .. :try_end_ab} :catch_ad
    .catch Ljavax/crypto/BadPaddingException; {:try_start_a5 .. :try_end_ab} :catch_ab
    .catchall {:try_start_a5 .. :try_end_ab} :catchall_121

    .line 172
    :catch_ab
    move-exception p2

    .line 173
    goto :goto_ca

    .line 174
    :catch_ad
    move-exception p2

    .line 175
    goto :goto_dd

    .line 176
    :catch_af
    move-exception p2

    .line 177
    goto :goto_f0

    .line 178
    :catch_b1
    move-exception p2

    .line 179
    goto/16 :goto_106

    .line 181
    :catchall_b4
    move-exception p2

    .line 182
    goto/16 :goto_123

    .line 184
    :catch_b7
    move-exception p2

    .line 185
    move-object v1, v0

    .line 186
    goto :goto_ca

    .line 187
    :catch_ba
    move-exception p2

    .line 188
    move-object v1, v0

    .line 189
    goto :goto_dd

    .line 190
    :catch_bd
    move-exception p2

    .line 191
    move-object v1, v0

    .line 192
    goto :goto_f0

    .line 193
    :catch_c0
    move-exception p2

    .line 194
    move-object v1, v0

    .line 195
    goto :goto_106

    .line 196
    :catchall_c3
    move-exception p2

    .line 197
    move-object p1, v0

    .line 198
    goto/16 :goto_123

    .line 200
    :catch_c7
    move-exception p2

    .line 201
    move-object p1, v0

    .line 202
    move-object v1, p1

    .line 203
    :goto_ca
    :try_start_ca
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_121

    .line 206
    if-eqz v1, :cond_d7

    .line 208
    :try_start_cf
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_d3

    .line 211
    goto :goto_d7

    .line 212
    :catch_d3
    move-exception p2

    .line 213
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 216
    :cond_d7
    :goto_d7
    if-eqz p1, :cond_120

    .line 218
    goto :goto_ff

    .line 219
    :catch_da
    move-exception p2

    .line 220
    move-object p1, v0

    .line 221
    move-object v1, p1

    .line 222
    :goto_dd
    :try_start_dd
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e0
    .catchall {:try_start_dd .. :try_end_e0} :catchall_121

    .line 225
    if-eqz v1, :cond_ea

    .line 227
    :try_start_e2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e5} :catch_e6

    .line 230
    goto :goto_ea

    .line 231
    :catch_e6
    move-exception p2

    .line 232
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 235
    :cond_ea
    :goto_ea
    if-eqz p1, :cond_120

    .line 237
    goto :goto_ff

    .line 238
    :catch_ed
    move-exception p2

    .line 239
    move-object p1, v0

    .line 240
    move-object v1, p1

    .line 241
    :goto_f0
    :try_start_f0
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f3
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_121

    .line 244
    if-eqz v1, :cond_fd

    .line 246
    :try_start_f5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_f8} :catch_f9

    .line 249
    goto :goto_fd

    .line 250
    :catch_f9
    move-exception p2

    .line 251
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 254
    :cond_fd
    :goto_fd
    if-eqz p1, :cond_120

    .line 256
    :goto_ff
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 259
    goto :goto_120

    .line 260
    :catch_103
    move-exception p2

    .line 261
    move-object p1, v0

    .line 262
    move-object v1, p1

    .line 263
    :goto_106
    :try_start_106
    const-string p3, "UploadChunkRequest"

    .line 265
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 268
    move-result-object p2

    .line 269
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/utils/RegexUtils;->hideIP(Ljava/lang/String;)Ljava/lang/String;

    .line 272
    move-result-object p2

    .line 273
    invoke-static {p3, p2}, Lcom/xiaomi/micloudsdk/utils/MiCloudLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_113
    .catchall {:try_start_106 .. :try_end_113} :catchall_121

    .line 276
    if-eqz v1, :cond_11d

    .line 278
    :try_start_115
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_118} :catch_119

    .line 281
    goto :goto_11d

    .line 282
    :catch_119
    move-exception p2

    .line 283
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 286
    :cond_11d
    :goto_11d
    if-eqz p1, :cond_120

    .line 288
    goto :goto_ff

    .line 289
    :cond_120
    :goto_120
    return-object v0

    .line 290
    :catchall_121
    move-exception p2

    .line 291
    move-object v0, v1

    .line 292
    :goto_123
    if-eqz v0, :cond_12d

    .line 294
    :try_start_125
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_128} :catch_129

    .line 297
    goto :goto_12d

    .line 298
    :catch_129
    move-exception p3

    .line 299
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 302
    :cond_12d
    :goto_12d
    if-eqz p1, :cond_132

    .line 304
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 307
    :cond_132
    throw p2
.end method

.method public sendDataInRedirect(Ljava/net/HttpURLConnection;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/io/DataOutputStream;

    .line 3
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 10
    const-string p1, "--*****\r\n"

    .line 12
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 15
    const-string p1, "Content-Disposition:form-data;name=\"uploadfile0\";filename=\"uploadfile0\"\r\n"

    .line 17
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 20
    const-string p1, "\r\n"

    .line 22
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    .line 27
    iget v1, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    .line 29
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getLength()I

    .line 32
    move-result p1

    .line 33
    if-ne v1, p1, :cond_31

    .line 35
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    .line 37
    iget v1, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    .line 39
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getLength()I

    .line 42
    move-result v2

    .line 43
    iget v3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->mChunkLength:I

    .line 45
    rem-int/2addr v2, v3

    .line 46
    sub-int/2addr v1, v2

    .line 47
    iput v1, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    .line 49
    goto :goto_3a

    .line 50
    :cond_31
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    .line 52
    iget v1, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    .line 54
    iget v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->mChunkLength:I

    .line 56
    sub-int/2addr v1, v2

    .line 57
    iput v1, p1, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    .line 59
    :goto_3a
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->mCkeyHint:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadRequest;->mFile:Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;

    .line 63
    iget v2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadChunkRequest;->mChunkLength:I

    .line 65
    invoke-virtual {v1, v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getData(I)[B

    .line 68
    move-result-object v1

    .line 69
    invoke-static {p1, v1}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->encodeStream(Ljava/lang/String;[B)[B

    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 76
    const-string p1, "\r\n--*****--\r\n"

    .line 78
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 84
    return-void
.end method
