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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Number;
    .registers 4

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_a

    check-cast p0, Ljava/lang/Number;

    goto :goto_1f

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_e
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_16} :catch_17

    goto :goto_1f

    :catch_17
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

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

    if-eqz p0, :cond_f

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_e
    return-object p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DataMap can\'t be null when parse."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

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

    const v0, 0x7a50b

    const v1, 0x7a509

    const/4 v2, 0x0

    :try_start_7
    invoke-virtual {p0}, Lm1/f;->b()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-static {v2}, Ls1/h;->b(Ljava/io/InputStream;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_1f

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4
    :try_end_19
    .catch Landroid/util/MalformedJsonException; {:try_start_7 .. :try_end_19} :catch_55
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_19} :catch_4a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_19} :catch_40
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_19} :catch_35
    .catchall {:try_start_7 .. :try_end_19} :catchall_33

    if-nez v4, :cond_1f

    :try_start_1b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1e

    :catchall_1e
    return-object v3

    :cond_1f
    :try_start_1f
    new-instance v3, Lcn/kuaipan/android/exception/KscException;

    invoke-virtual {p0}, Lm1/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4, p1}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    throw v3

    :cond_29
    new-instance v3, Lcn/kuaipan/android/exception/KscException;

    invoke-virtual {p0}, Lm1/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4, p1}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    throw v3
    :try_end_33
    .catch Landroid/util/MalformedJsonException; {:try_start_1f .. :try_end_33} :catch_55
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_33} :catch_4a
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_33} :catch_40
    .catch Ljava/lang/ClassCastException; {:try_start_1f .. :try_end_33} :catch_35
    .catchall {:try_start_1f .. :try_end_33} :catchall_33

    :catchall_33
    move-exception p0

    goto :goto_60

    :catch_35
    move-exception v1

    :try_start_36
    new-instance v3, Lcn/kuaipan/android/exception/KscException;

    invoke-virtual {p0}, Lm1/f;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v0, p0, v1, p1}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    throw v3

    :catch_40
    move-exception v0

    invoke-virtual {p0}, Lm1/f;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object p0

    throw p0

    :catch_4a
    move-exception v0

    new-instance v3, Lcn/kuaipan/android/exception/KscException;

    invoke-virtual {p0}, Lm1/f;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v1, p0, v0, p1}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    throw v3

    :catch_55
    move-exception v0

    new-instance v3, Lcn/kuaipan/android/exception/KscException;

    invoke-virtual {p0}, Lm1/f;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v1, p0, v0, p1}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    throw v3
    :try_end_60
    .catchall {:try_start_36 .. :try_end_60} :catchall_33

    :goto_60
    :try_start_60
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_63

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

    const-string v0, "IKscData protocol requires a IKscData.Creator object called  PARSER on class "

    const v1, 0x7a127

    :try_start_5
    const-string v2, "PARSER"

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a$a$a;
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_12} :catch_33
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_12} :catch_29
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_12} :catch_1f

    if-eqz v2, :cond_15

    return-object v2

    :cond_15
    new-instance v2, Lcn/kuaipan/android/exception/KscRuntimeException;

    invoke-static {v0, p0}, La/a;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v1, p0}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_1f
    new-instance v2, Lcn/kuaipan/android/exception/KscRuntimeException;

    invoke-static {v0, p0}, La/a;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v1, p0}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_29
    new-instance v2, Lcn/kuaipan/android/exception/KscRuntimeException;

    invoke-static {v0, p0}, La/a;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v1, p0}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_33
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parser Class not found in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApiDataHelper"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcn/kuaipan/android/exception/KscRuntimeException;

    const v2, 0x7a126

    const-string v3, "IllegalAccessException when parser: "

    invoke-static {v3, p0}, La/a;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0, v0}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

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

    const v0, 0x7a50b

    :try_start_3
    invoke-static {p2}, Ls1/a;->d(Ljava/lang/Class;)Ls1/a$a$a;

    move-result-object p2

    invoke-interface {p2, p1, p4}, Ls1/a$a$a;->parserMap(Ljava/util/Map;[Ljava/lang/String;)Ls1/a$a;

    move-result-object p0
    :try_end_b
    .catch Ljava/util/zip/DataFormatException; {:try_start_3 .. :try_end_b} :catch_32
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_b} :catch_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_b} :catch_1c
    .catch Lcn/kuaipan/android/exception/KscRuntimeException; {:try_start_3 .. :try_end_b} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p1

    new-instance p2, Lcn/kuaipan/android/exception/KscRuntimeException;

    const p3, 0x62a1f

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p3, p0, p1}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1a
    move-exception p0

    throw p0

    :catch_1c
    move-exception p1

    new-instance p2, Lcn/kuaipan/android/exception/KscException;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v0, p0, p1, p3}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    throw p2

    :catch_27
    move-exception p1

    new-instance p2, Lcn/kuaipan/android/exception/KscException;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v0, p0, p1, p3}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    throw p2

    :catch_32
    move-exception p1

    new-instance p2, Lcn/kuaipan/android/exception/KscException;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v0, p0, p1, p3}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    throw p2
.end method
