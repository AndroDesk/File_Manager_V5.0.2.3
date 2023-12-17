.class public final Ls1/a;
.super Ljava/lang/Object;
.source "ApiDataHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Number;
    .registers 4

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-object p1

    .line 4
    :cond_3
    instance-of p1, p0, Ljava/lang/Number;

    .line 6
    if-eqz p1, :cond_a

    .line 8
    check-cast p0, Ljava/lang/Number;

    .line 10
    goto :goto_1f

    .line 11
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    :try_start_e
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 18
    move-result-wide v0

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    move-result-object p0
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_16} :catch_17

    .line 23
    goto :goto_1f

    .line 24
    :catch_17
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 27
    move-result-wide p0

    .line 28
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 31
    move-result-object p0

    .line 32
    :goto_1f
    return-object p0
.end method

.method public static b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_f

    .line 3
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_a

    .line 9
    const/4 p0, 0x0

    .line 10
    goto :goto_e

    .line 11
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    :goto_e
    return-object p0

    .line 16
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 18
    const-string p1, "DataMap can\'t be null when parse."

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p0
.end method

.method public static c(Lm1/f;Lcn/kuaipan/android/kss/TransferStep;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm1/f;",
            "Lcn/kuaipan/android/kss/TransferStep;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const v0, 0x7a50b

    .line 4
    const v1, 0x7a509

    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_7
    invoke-virtual {p0}, Lm1/f;->b()Ljava/io/InputStream;

    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_29

    .line 14
    invoke-static {v2}, Ls1/h;->b(Ljava/io/InputStream;)Ljava/io/Serializable;

    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Ljava/util/Map;

    .line 20
    if-eqz v3, :cond_1f

    .line 22
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 25
    move-result v4
    :try_end_19
    .catch Landroid/util/MalformedJsonException; {:try_start_7 .. :try_end_19} :catch_55
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_19} :catch_4a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_19} :catch_40
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_19} :catch_35
    .catchall {:try_start_7 .. :try_end_19} :catchall_33

    .line 26
    if-nez v4, :cond_1f

    .line 28
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1e

    .line 31
    :catchall_1e
    return-object v3

    .line 32
    :cond_1f
    :try_start_1f
    new-instance v3, Lcn/kuaipan/android/exception/KscException;

    .line 34
    invoke-virtual {p0}, Lm1/f;->a()Ljava/lang/String;

    .line 37
    move-result-object v4

    .line 38
    invoke-direct {v3, v0, v4, p1}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 41
    throw v3

    .line 42
    :cond_29
    new-instance v3, Lcn/kuaipan/android/exception/KscException;

    .line 44
    invoke-virtual {p0}, Lm1/f;->a()Ljava/lang/String;

    .line 47
    move-result-object v4

    .line 48
    invoke-direct {v3, v1, v4, p1}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 51
    throw v3
    :try_end_33
    .catch Landroid/util/MalformedJsonException; {:try_start_1f .. :try_end_33} :catch_55
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_33} :catch_4a
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_33} :catch_40
    .catch Ljava/lang/ClassCastException; {:try_start_1f .. :try_end_33} :catch_35
    .catchall {:try_start_1f .. :try_end_33} :catchall_33

    .line 52
    :catchall_33
    move-exception p0

    .line 53
    goto :goto_60

    .line 54
    :catch_35
    move-exception v1

    .line 55
    :try_start_36
    new-instance v3, Lcn/kuaipan/android/exception/KscException;

    .line 57
    invoke-virtual {p0}, Lm1/f;->a()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 61
    invoke-direct {v3, v0, p0, v1, p1}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 64
    throw v3

    .line 65
    :catch_40
    move-exception v0

    .line 66
    invoke-virtual {p0}, Lm1/f;->a()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    invoke-static {v0, p0, p1}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    .line 73
    move-result-object p0

    .line 74
    throw p0

    .line 75
    :catch_4a
    move-exception v0

    .line 76
    new-instance v3, Lcn/kuaipan/android/exception/KscException;

    .line 78
    invoke-virtual {p0}, Lm1/f;->a()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    invoke-direct {v3, v1, p0, v0, p1}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 85
    throw v3

    .line 86
    :catch_55
    move-exception v0

    .line 87
    new-instance v3, Lcn/kuaipan/android/exception/KscException;

    .line 89
    invoke-virtual {p0}, Lm1/f;->a()Ljava/lang/String;

    .line 92
    move-result-object p0

    .line 93
    invoke-direct {v3, v1, p0, v0, p1}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 96
    throw v3
    :try_end_60
    .catchall {:try_start_36 .. :try_end_60} :catchall_33

    .line 97
    :goto_60
    :try_start_60
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_63

    .line 100
    :catchall_63
    throw p0
.end method

.method public static d(Ljava/lang/Class;)Ls1/a$a$a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ls1/a$a;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ls1/a$a$a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-string v0, "IKscData protocol requires a IKscData.Creator object called  PARSER on class "

    .line 3
    const v1, 0x7a127

    .line 6
    :try_start_5
    const-string v2, "PARSER"

    .line 8
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ls1/a$a$a;
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_12} :catch_33
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_12} :catch_29
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_12} :catch_1f

    .line 19
    if-eqz v2, :cond_15

    .line 21
    return-object v2

    .line 22
    :cond_15
    new-instance v2, Lcn/kuaipan/android/exception/KscRuntimeException;

    .line 24
    invoke-static {v0, p0}, La/a;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v2, v1, p0}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    .line 31
    throw v2

    .line 32
    :catch_1f
    new-instance v2, Lcn/kuaipan/android/exception/KscRuntimeException;

    .line 34
    invoke-static {v0, p0}, La/a;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    invoke-direct {v2, v1, p0}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    .line 41
    throw v2

    .line 42
    :catch_29
    new-instance v2, Lcn/kuaipan/android/exception/KscRuntimeException;

    .line 44
    invoke-static {v0, p0}, La/a;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    invoke-direct {v2, v1, p0}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    .line 51
    throw v2

    .line 52
    :catch_33
    move-exception v0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    const-string v2, "Parser Class not found in "

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    const-string v2, "ApiDataHelper"

    .line 72
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    new-instance v1, Lcn/kuaipan/android/exception/KscRuntimeException;

    .line 77
    const v2, 0x7a126

    .line 80
    const-string v3, "IllegalAccessException when parser: "

    .line 82
    invoke-static {v3, p0}, La/a;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    invoke-direct {v1, v2, p0, v0}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    throw v1
.end method

.method public static varargs e(Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/Class;Lcn/kuaipan/android/kss/TransferStep;[Ljava/lang/String;)Ls1/a$a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ls1/a$a;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcn/kuaipan/android/kss/TransferStep;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    const v0, 0x7a50b

    .line 4
    :try_start_3
    invoke-static {p2}, Ls1/a;->d(Ljava/lang/Class;)Ls1/a$a$a;

    .line 7
    move-result-object p2

    .line 8
    invoke-interface {p2, p1, p4}, Ls1/a$a$a;->parserMap(Ljava/util/Map;[Ljava/lang/String;)Ls1/a$a;

    .line 11
    move-result-object p0
    :try_end_b
    .catch Ljava/util/zip/DataFormatException; {:try_start_3 .. :try_end_b} :catch_32
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_b} :catch_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_b} :catch_1c
    .catch Lcn/kuaipan/android/exception/KscRuntimeException; {:try_start_3 .. :try_end_b} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_b} :catch_c

    .line 12
    return-object p0

    .line 13
    :catch_c
    move-exception p1

    .line 14
    new-instance p2, Lcn/kuaipan/android/exception/KscRuntimeException;

    .line 16
    const p3, 0x62a1f

    .line 19
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    invoke-direct {p2, p3, p0, p1}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    throw p2

    .line 27
    :catch_1a
    move-exception p0

    .line 28
    throw p0

    .line 29
    :catch_1c
    move-exception p1

    .line 30
    new-instance p2, Lcn/kuaipan/android/exception/KscException;

    .line 32
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    invoke-direct {p2, v0, p0, p1, p3}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 39
    throw p2

    .line 40
    :catch_27
    move-exception p1

    .line 41
    new-instance p2, Lcn/kuaipan/android/exception/KscException;

    .line 43
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    invoke-direct {p2, v0, p0, p1, p3}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 50
    throw p2

    .line 51
    :catch_32
    move-exception p1

    .line 52
    new-instance p2, Lcn/kuaipan/android/exception/KscException;

    .line 54
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    invoke-direct {p2, v0, p0, p1, p3}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 61
    throw p2
.end method
