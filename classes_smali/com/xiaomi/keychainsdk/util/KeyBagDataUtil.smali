.class public Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;
.super Ljava/lang/Object;
.source "KeyBagDataUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil$BadBase64DataException;
    }
.end annotation


# static fields
.field private static final FIELD_SEPARATOR:Ljava/lang/String; = "~"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .registers 2

    .line 1
    const/16 v0, 0xb

    .line 3
    :try_start_2
    invoke-static {v0, p0}, Ls1/b;->a(ILjava/lang/String;)[B

    .line 6
    move-result-object p0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_6} :catch_7

    .line 7
    return-object p0

    .line 8
    :catch_7
    move-exception p0

    .line 9
    new-instance v0, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil$BadBase64DataException;

    .line 11
    invoke-direct {v0, p0}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil$BadBase64DataException;-><init>(Ljava/lang/Throwable;)V

    .line 14
    throw v0
.end method

.method public static encodeBase64([B)Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 3
    const/16 v1, 0xb

    .line 5
    invoke-static {v1, p0}, Ls1/b;->b(I[B)[B

    .line 8
    move-result-object p0

    .line 9
    const-string v1, "US-ASCII"

    .line 11
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_d} :catch_e

    .line 14
    return-object v0

    .line 15
    :catch_e
    move-exception p0

    .line 16
    new-instance v0, Ljava/lang/AssertionError;

    .line 18
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 21
    throw v0
.end method

.method public static varargs joinFields([Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_7
    const-string v3, "~"

    .line 10
    if-ge v2, v1, :cond_21

    .line 12
    aget-object v4, p0, v2

    .line 14
    const-string v5, "\\"

    .line 16
    const-string v6, "\\\\"

    .line 18
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 21
    move-result-object v4

    .line 22
    const-string v5, "\\~"

    .line 24
    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_7

    .line 34
    :cond_21
    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public static varargs mixData([Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_7
    if-ge v2, v1, :cond_18

    .line 10
    aget-object v3, p0, v2

    .line 12
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_12

    .line 18
    goto :goto_15

    .line 19
    :cond_12
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :goto_15
    add-int/lit8 v2, v2, 0x1

    .line 24
    goto :goto_7

    .line 25
    :cond_18
    const-string p0, "~"

    .line 27
    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method
