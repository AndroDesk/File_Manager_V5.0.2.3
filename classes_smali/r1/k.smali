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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr1/k;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 12

    const-string v0, "sha1"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lr1/k;->c:Ljava/util/ArrayList;

    :try_start_c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lr1/k;->b:Ljava/lang/String;

    const-string v2, "block_infos"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_20

    return-void

    :cond_20
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_25
    if-ge v3, v2, :cond_7b

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_30

    move-object v6, v5

    goto :goto_34

    :cond_30
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_34
    if-nez v4, :cond_37

    goto :goto_3d

    :cond_37
    const-string v5, "md5"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_3d
    const/4 v7, -0x1

    if-nez v4, :cond_41

    goto :goto_47

    :cond_41
    const-string v8, "size"

    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    :goto_47
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_61

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_61

    if-ltz v7, :cond_61

    int-to-long v7, v7

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

    const-string v0, "SHA1"

    :try_start_2
    new-instance v1, Lr1/k;

    invoke-direct {v1}, Lr1/k;-><init>()V

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    const/16 v4, 0x2000

    new-array v5, v4, [B

    const/4 v10, 0x1

    const-wide/16 v11, 0x0

    :goto_1c
    move-object/from16 v9, p0

    :goto_1e
    invoke-virtual {v9, v5}, Ljava/io/InputStream;->read([B)I

    move-result v13

    const-wide/32 v14, 0x400000

    if-ltz v13, :cond_c7

    int-to-long v6, v13

    add-long/2addr v11, v6

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v13}, Ljava/security/MessageDigest;->update([BII)V

    int-to-long v8, v10

    mul-long/2addr v8, v14

    cmp-long v16, v11, v8

    if-gez v16, :cond_3a

    invoke-virtual {v0, v5, v6, v13}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v3, v5, v6, v13}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1c

    :cond_3a
    sub-long v8, v11, v8

    long-to-int v8, v8

    sub-int v8, v13, v8

    add-int/lit8 v10, v10, 0x1

    const-string v9, "UploadFileInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "blockoffset: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " len: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " pos: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " blockIndex"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " blockOffset > input.length: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v14, v8

    move-object/from16 v18, v7

    int-to-long v6, v4

    cmp-long v6, v14, v6

    if-lez v6, :cond_7c

    move-object/from16 v6, v18

    const/4 v7, 0x1

    goto :goto_7f

    :cond_7c
    move-object/from16 v6, v18

    const/4 v7, 0x0

    :goto_7f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v8}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v3, v5, v6, v8}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    invoke-static {v6}, La/b;->l([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-static {v7}, La/b;->l([B)Ljava/lang/String;

    move-result-object v7

    iget-object v9, v1, Lr1/k;->c:Ljava/util/ArrayList;

    new-instance v14, Lr1/k$a;

    move-object/from16 v17, v5

    const-wide/32 v4, 0x400000

    long-to-int v4, v4

    invoke-direct {v14, v6, v7, v4}, Lr1/k$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-le v13, v8, :cond_bc

    sub-int/2addr v13, v8

    move-object/from16 v4, v17

    invoke-virtual {v0, v4, v8, v13}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v3, v4, v8, v13}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_be

    :cond_bc
    move-object/from16 v4, v17

    :goto_be
    move-object/from16 v9, p0

    move-object v5, v4

    const/16 v4, 0x2000

    goto/16 :goto_1e

    :catchall_c5
    move-exception v0

    goto :goto_13d

    :cond_c7
    int-to-long v4, v10

    const-wide/32 v6, 0x400000

    mul-long/2addr v4, v6

    cmp-long v8, v4, v11

    if-lez v8, :cond_fa

    add-long v14, v11, v6

    cmp-long v4, v4, v14

    if-gez v4, :cond_fa

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, La/b;->l([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, La/b;->l([B)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    sub-int/2addr v10, v4

    int-to-long v4, v10

    const-wide/32 v6, 0x400000

    mul-long/2addr v4, v6

    sub-long/2addr v11, v4

    iget-object v4, v1, Lr1/k;->c:Ljava/util/ArrayList;

    new-instance v5, Lr1/k$a;

    long-to-int v6, v11

    invoke-direct {v5, v0, v3, v6}, Lr1/k$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_100

    :cond_fa
    const-wide/16 v3, 0x0

    cmp-long v0, v11, v3

    if-eqz v0, :cond_10e

    :goto_100
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, La/b;->l([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lr1/k;->b:Ljava/lang/String;
    :try_end_10a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_10a} :catch_133
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_10a} :catch_12a
    .catchall {:try_start_2 .. :try_end_10a} :catchall_c5

    :try_start_10a
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V
    :try_end_10d
    .catchall {:try_start_10a .. :try_end_10d} :catchall_10d

    :catchall_10d
    return-object v1

    :cond_10e
    :try_start_10e
    new-instance v0, Lcn/kuaipan/android/exception/KscRuntimeException;

    const v1, 0x7a123

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " read error."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_12a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_10e .. :try_end_12a} :catch_133
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_12a} :catch_12a
    .catchall {:try_start_10e .. :try_end_12a} :catchall_c5

    :catch_12a
    move-exception v0

    const/4 v1, 0x0

    :try_start_12c
    sget-object v2, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_GET_FILE_INFO:Lcn/kuaipan/android/kss/TransferStep;

    invoke-static {v0, v1, v2}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object v0

    throw v0

    :catch_133
    move-exception v0

    new-instance v1, Lcn/kuaipan/android/exception/KscRuntimeException;

    const v2, 0x7a125

    invoke-direct {v1, v2, v0}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/Throwable;)V

    throw v1
    :try_end_13d
    .catchall {:try_start_12c .. :try_end_13d} :catchall_c5

    :goto_13d
    :try_start_13d
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V
    :try_end_140
    .catchall {:try_start_13d .. :try_end_140} :catchall_140

    :catchall_140
    throw v0
.end method


# virtual methods
.method public final a()Lorg/json/JSONArray;
    .registers 7

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lr1/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr1/k$a;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "sha1"

    iget-object v5, v2, Lr1/k$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "md5"

    iget-object v5, v2, Lr1/k$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "size"

    iget v2, v2, Lr1/k$a;->c:I

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_36

    goto :goto_b

    :cond_35
    return-object v0

    :catchall_36
    const-string v0, "UploadFileInfo"

    const-string v1, "Failed generate Json String for UploadRequestInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "block_infos"

    invoke-virtual {p0}, Lr1/k;->a()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sha1"

    iget-object v2, p0, Lr1/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_15

    :catchall_15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
