.class public final Lr1/k;
.super Ljava/lang/Object;
.source "UploadFileInfo.java"

# interfaces
.implements Lp1/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr1/k$a;
    }
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lr1/k$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr1/k;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 12

    const-string v0, "sha1"

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lr1/k;->c:Ljava/util/ArrayList;

    .line 5
    :try_start_c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lr1/k;->b:Ljava/lang/String;

    const-string v2, "block_infos"

    .line 7
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_20

    return-void

    .line 8
    :cond_20
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_25
    if-ge v3, v2, :cond_7b

    .line 9
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_30

    move-object v6, v5

    goto :goto_34

    .line 10
    :cond_30
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_34
    if-nez v4, :cond_37

    goto :goto_3d

    :cond_37
    const-string v5, "md5"

    .line 11
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_3d
    const/4 v7, -0x1

    if-nez v4, :cond_41

    goto :goto_47

    :cond_41
    const-string v8, "size"

    .line 12
    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 13
    :goto_47
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_61

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_61

    if-ltz v7, :cond_61

    int-to-long v7, v7

    .line 14
    iget-object v4, p0, Lr1/k;->c:Ljava/util/ArrayList;

    new-instance v9, Lr1/k$a;

    long-to-int v7, v7

    invoke-direct {v9, v6, v5, v7}, Lr1/k$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_61
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_61} :catch_64

    :cond_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :catch_64
    move-exception v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed parser UploadFileInfo from a String. The String:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UploadFileInfo"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7b
    return-void
.end method

.method public static b(Ljava/io/InputStream;Ljava/lang/String;)Lr1/k;
    .registers 21

    .line 1
    const-string v0, "SHA1"

    .line 3
    :try_start_2
    new-instance v1, Lr1/k;

    .line 5
    invoke-direct {v1}, Lr1/k;-><init>()V

    .line 8
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 11
    move-result-object v2

    .line 12
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 15
    move-result-object v0

    .line 16
    const-string v3, "MD5"

    .line 18
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 21
    move-result-object v3

    .line 22
    const/16 v4, 0x2000

    .line 24
    new-array v5, v4, [B

    .line 26
    const/4 v10, 0x1

    .line 27
    const-wide/16 v11, 0x0

    .line 29
    :goto_1c
    move-object/from16 v9, p0

    .line 31
    :goto_1e
    invoke-virtual {v9, v5}, Ljava/io/InputStream;->read([B)I

    .line 34
    move-result v13

    .line 35
    const-wide/32 v14, 0x400000

    .line 38
    if-ltz v13, :cond_c7

    .line 40
    int-to-long v6, v13

    .line 41
    add-long/2addr v11, v6

    .line 42
    const/4 v6, 0x0

    .line 43
    invoke-virtual {v2, v5, v6, v13}, Ljava/security/MessageDigest;->update([BII)V

    .line 46
    int-to-long v8, v10

    .line 47
    mul-long/2addr v8, v14

    .line 48
    cmp-long v16, v11, v8

    .line 50
    if-gez v16, :cond_3a

    .line 52
    invoke-virtual {v0, v5, v6, v13}, Ljava/security/MessageDigest;->update([BII)V

    .line 55
    invoke-virtual {v3, v5, v6, v13}, Ljava/security/MessageDigest;->update([BII)V

    .line 58
    goto :goto_1c

    .line 59
    :cond_3a
    sub-long v8, v11, v8

    .line 61
    long-to-int v8, v8

    .line 62
    sub-int v8, v13, v8

    .line 64
    add-int/lit8 v10, v10, 0x1

    .line 66
    const-string v9, "UploadFileInfo"

    .line 68
    new-instance v7, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    const-string v14, "blockoffset: "

    .line 75
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string v14, " len: "

    .line 83
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    const-string v14, " pos: "

    .line 91
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    const-string v14, " blockIndex"

    .line 99
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    const-string v14, " blockOffset > input.length: "

    .line 110
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    int-to-long v14, v8

    .line 114
    move-object/from16 v18, v7

    .line 116
    int-to-long v6, v4

    .line 117
    cmp-long v6, v14, v6

    .line 119
    if-lez v6, :cond_7c

    .line 121
    move-object/from16 v6, v18

    .line 123
    const/4 v7, 0x1

    .line 124
    goto :goto_7f

    .line 125
    :cond_7c
    move-object/from16 v6, v18

    .line 127
    const/4 v7, 0x0

    .line 128
    :goto_7f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v6

    .line 135
    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v6, 0x0

    .line 139
    invoke-virtual {v0, v5, v6, v8}, Ljava/security/MessageDigest;->update([BII)V

    .line 142
    invoke-virtual {v3, v5, v6, v8}, Ljava/security/MessageDigest;->update([BII)V

    .line 145
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 148
    move-result-object v6

    .line 149
    invoke-static {v6}, La/b;->l([B)Ljava/lang/String;

    .line 152
    move-result-object v6

    .line 153
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    .line 156
    move-result-object v7

    .line 157
    invoke-static {v7}, La/b;->l([B)Ljava/lang/String;

    .line 160
    move-result-object v7

    .line 161
    iget-object v9, v1, Lr1/k;->c:Ljava/util/ArrayList;

    .line 163
    new-instance v14, Lr1/k$a;

    .line 165
    move-object/from16 v17, v5

    .line 167
    const-wide/32 v4, 0x400000

    .line 170
    long-to-int v4, v4

    .line 171
    invoke-direct {v14, v6, v7, v4}, Lr1/k$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 174
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    if-le v13, v8, :cond_bc

    .line 179
    sub-int/2addr v13, v8

    .line 180
    move-object/from16 v4, v17

    .line 182
    invoke-virtual {v0, v4, v8, v13}, Ljava/security/MessageDigest;->update([BII)V

    .line 185
    invoke-virtual {v3, v4, v8, v13}, Ljava/security/MessageDigest;->update([BII)V

    .line 188
    goto :goto_be

    .line 189
    :cond_bc
    move-object/from16 v4, v17

    .line 191
    :goto_be
    move-object/from16 v9, p0

    .line 193
    move-object v5, v4

    .line 194
    const/16 v4, 0x2000

    .line 196
    goto/16 :goto_1e

    .line 198
    :catchall_c5
    move-exception v0

    .line 199
    goto :goto_13d

    .line 200
    :cond_c7
    int-to-long v4, v10

    .line 201
    const-wide/32 v6, 0x400000

    .line 204
    mul-long/2addr v4, v6

    .line 205
    cmp-long v8, v4, v11

    .line 207
    if-lez v8, :cond_fa

    .line 209
    add-long v14, v11, v6

    .line 211
    cmp-long v4, v4, v14

    .line 213
    if-gez v4, :cond_fa

    .line 215
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 218
    move-result-object v0

    .line 219
    invoke-static {v0}, La/b;->l([B)Ljava/lang/String;

    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    .line 226
    move-result-object v3

    .line 227
    invoke-static {v3}, La/b;->l([B)Ljava/lang/String;

    .line 230
    move-result-object v3

    .line 231
    const/4 v4, 0x1

    .line 232
    sub-int/2addr v10, v4

    .line 233
    int-to-long v4, v10

    .line 234
    const-wide/32 v6, 0x400000

    .line 237
    mul-long/2addr v4, v6

    .line 238
    sub-long/2addr v11, v4

    .line 239
    iget-object v4, v1, Lr1/k;->c:Ljava/util/ArrayList;

    .line 241
    new-instance v5, Lr1/k$a;

    .line 243
    long-to-int v6, v11

    .line 244
    invoke-direct {v5, v0, v3, v6}, Lr1/k$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 247
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    goto :goto_100

    .line 251
    :cond_fa
    const-wide/16 v3, 0x0

    .line 253
    cmp-long v0, v11, v3

    .line 255
    if-eqz v0, :cond_10e

    .line 257
    :goto_100
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    .line 260
    move-result-object v0

    .line 261
    invoke-static {v0}, La/b;->l([B)Ljava/lang/String;

    .line 264
    move-result-object v0

    .line 265
    iput-object v0, v1, Lr1/k;->b:Ljava/lang/String;
    :try_end_10a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_10a} :catch_133
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_10a} :catch_12a
    .catchall {:try_start_2 .. :try_end_10a} :catchall_c5

    .line 267
    :try_start_10a
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V
    :try_end_10d
    .catchall {:try_start_10a .. :try_end_10d} :catchall_10d

    .line 270
    :catchall_10d
    return-object v1

    .line 271
    :cond_10e
    :try_start_10e
    new-instance v0, Lcn/kuaipan/android/exception/KscRuntimeException;

    .line 273
    const v1, 0x7a123

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    .line 278
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    move-object/from16 v3, p1

    .line 283
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const-string v3, " read error."

    .line 288
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    move-result-object v2

    .line 295
    invoke-direct {v0, v1, v2}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    .line 298
    throw v0
    :try_end_12a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_10e .. :try_end_12a} :catch_133
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_12a} :catch_12a
    .catchall {:try_start_10e .. :try_end_12a} :catchall_c5

    .line 299
    :catch_12a
    move-exception v0

    .line 300
    const/4 v1, 0x0

    .line 301
    :try_start_12c
    sget-object v2, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_GET_FILE_INFO:Lcn/kuaipan/android/kss/TransferStep;

    .line 303
    invoke-static {v0, v1, v2}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    .line 306
    move-result-object v0

    .line 307
    throw v0

    .line 308
    :catch_133
    move-exception v0

    .line 309
    new-instance v1, Lcn/kuaipan/android/exception/KscRuntimeException;

    .line 311
    const v2, 0x7a125

    .line 314
    invoke-direct {v1, v2, v0}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/Throwable;)V

    .line 317
    throw v1
    :try_end_13d
    .catchall {:try_start_12c .. :try_end_13d} :catchall_c5

    .line 318
    :goto_13d
    :try_start_13d
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V
    :try_end_140
    .catchall {:try_start_13d .. :try_end_140} :catchall_140

    .line 321
    :catchall_140
    throw v0
.end method


# virtual methods
.method public final a()Lorg/json/JSONArray;
    .registers 7

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 6
    iget-object v1, p0, Lr1/k;->c:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_35

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lr1/k$a;

    .line 24
    new-instance v3, Lorg/json/JSONObject;

    .line 26
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 29
    const-string v4, "sha1"

    .line 31
    iget-object v5, v2, Lr1/k$a;->a:Ljava/lang/String;

    .line 33
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    const-string v4, "md5"

    .line 38
    iget-object v5, v2, Lr1/k$a;->b:Ljava/lang/String;

    .line 40
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string v4, "size"

    .line 45
    iget v2, v2, Lr1/k$a;->c:I

    .line 47
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_36

    .line 53
    goto :goto_b

    .line 54
    :cond_35
    return-object v0

    .line 55
    :catchall_36
    const-string v0, "UploadFileInfo"

    .line 57
    const-string v1, "Failed generate Json String for UploadRequestInfo"

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v0, 0x0

    .line 63
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    :try_start_5
    const-string v1, "block_infos"

    .line 8
    invoke-virtual {p0}, Lr1/k;->a()Lorg/json/JSONArray;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    const-string v1, "sha1"

    .line 17
    iget-object v2, p0, Lr1/k;->b:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_15

    .line 22
    :catchall_15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
