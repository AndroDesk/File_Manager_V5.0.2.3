.class public final Lcn/kuaipan/android/utils/a;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Landroidx/appcompat/app/u;

.field public final b:Ljava/io/Reader;

.field public final c:[C

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final h:Ljava/util/ArrayList;

.field public i:Lcn/kuaipan/android/utils/JsonToken;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroidx/appcompat/app/u;

    .line 6
    const/4 v1, 0x5

    .line 7
    invoke-direct {v0, v1}, Landroidx/appcompat/app/u;-><init>(I)V

    .line 10
    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->a:Landroidx/appcompat/app/u;

    .line 12
    const/16 v0, 0x400

    .line 14
    new-array v0, v0, [C

    .line 16
    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->c:[C

    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 21
    iput v0, p0, Lcn/kuaipan/android/utils/a;->e:I

    .line 23
    const/4 v0, 0x1

    .line 24
    iput v0, p0, Lcn/kuaipan/android/utils/a;->f:I

    .line 26
    iput v0, p0, Lcn/kuaipan/android/utils/a;->g:I

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->h:Ljava/util/ArrayList;

    .line 35
    sget-object v1, Lcn/kuaipan/android/utils/JsonScope;->EMPTY_DOCUMENT:Lcn/kuaipan/android/utils/JsonScope;

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iput-object p1, p0, Lcn/kuaipan/android/utils/a;->b:Ljava/io/Reader;

    .line 42
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    .line 7
    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->j:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public final close()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    .line 6
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->h:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->h:Ljava/util/ArrayList;

    .line 13
    sget-object v1, Lcn/kuaipan/android/utils/JsonScope;->CLOSED:Lcn/kuaipan/android/utils/JsonScope;

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->b:Ljava/io/Reader;

    .line 20
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 23
    return-void
.end method

.method public final e()V
    .registers 2

    .line 1
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    .line 3
    invoke-virtual {p0, v0}, Lcn/kuaipan/android/utils/a;->u(Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    throw v0
.end method

.method public final g(Lcn/kuaipan/android/utils/JsonToken;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    .line 4
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    .line 6
    if-ne v0, p1, :cond_b

    .line 8
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->a()V

    .line 11
    return-void

    .line 12
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    const-string v2, "Expected "

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    const-string p1, " but was "

    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    throw v0
.end method

.method public final h(I)Z
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    iget v2, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 5
    const/4 v3, 0x1

    .line 6
    if-ge v1, v2, :cond_1f

    .line 8
    iget-object v2, p0, Lcn/kuaipan/android/utils/a;->c:[C

    .line 10
    aget-char v2, v2, v1

    .line 12
    const/16 v4, 0xa

    .line 14
    if-ne v2, v4, :cond_17

    .line 16
    iget v2, p0, Lcn/kuaipan/android/utils/a;->f:I

    .line 18
    add-int/2addr v2, v3

    .line 19
    iput v2, p0, Lcn/kuaipan/android/utils/a;->f:I

    .line 21
    iput v3, p0, Lcn/kuaipan/android/utils/a;->g:I

    .line 23
    goto :goto_1c

    .line 24
    :cond_17
    iget v2, p0, Lcn/kuaipan/android/utils/a;->g:I

    .line 26
    add-int/2addr v2, v3

    .line 27
    iput v2, p0, Lcn/kuaipan/android/utils/a;->g:I

    .line 29
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    .line 31
    goto :goto_2

    .line 32
    :cond_1f
    iget v1, p0, Lcn/kuaipan/android/utils/a;->e:I

    .line 34
    if-eq v1, v2, :cond_2c

    .line 36
    sub-int/2addr v1, v2

    .line 37
    iput v1, p0, Lcn/kuaipan/android/utils/a;->e:I

    .line 39
    iget-object v4, p0, Lcn/kuaipan/android/utils/a;->c:[C

    .line 41
    invoke-static {v4, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    goto :goto_2e

    .line 45
    :cond_2c
    iput v0, p0, Lcn/kuaipan/android/utils/a;->e:I

    .line 47
    :goto_2e
    iput v0, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 49
    :cond_30
    iget-object v1, p0, Lcn/kuaipan/android/utils/a;->b:Ljava/io/Reader;

    .line 51
    iget-object v2, p0, Lcn/kuaipan/android/utils/a;->c:[C

    .line 53
    iget v4, p0, Lcn/kuaipan/android/utils/a;->e:I

    .line 55
    array-length v5, v2

    .line 56
    sub-int/2addr v5, v4

    .line 57
    invoke-virtual {v1, v2, v4, v5}, Ljava/io/Reader;->read([CII)I

    .line 60
    move-result v1

    .line 61
    const/4 v2, -0x1

    .line 62
    if-eq v1, v2, :cond_63

    .line 64
    iget v2, p0, Lcn/kuaipan/android/utils/a;->e:I

    .line 66
    add-int/2addr v2, v1

    .line 67
    iput v2, p0, Lcn/kuaipan/android/utils/a;->e:I

    .line 69
    iget v1, p0, Lcn/kuaipan/android/utils/a;->f:I

    .line 71
    if-ne v1, v3, :cond_60

    .line 73
    iget v1, p0, Lcn/kuaipan/android/utils/a;->g:I

    .line 75
    if-ne v1, v3, :cond_60

    .line 77
    if-lez v2, :cond_60

    .line 79
    iget-object v4, p0, Lcn/kuaipan/android/utils/a;->c:[C

    .line 81
    aget-char v4, v4, v0

    .line 83
    const v5, 0xfeff

    .line 86
    if-ne v4, v5, :cond_60

    .line 88
    iget v4, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 90
    add-int/2addr v4, v3

    .line 91
    iput v4, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 93
    add-int/lit8 v1, v1, -0x1

    .line 95
    iput v1, p0, Lcn/kuaipan/android/utils/a;->g:I

    .line 97
    :cond_60
    if-lt v2, p1, :cond_30

    .line 99
    return v3

    .line 100
    :cond_63
    return v0
.end method

.method public final i(Z)Lcn/kuaipan/android/utils/JsonToken;
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x5d

    .line 4
    const/16 v2, 0x3b

    .line 6
    const/16 v3, 0x2c

    .line 8
    if-eqz p1, :cond_f

    .line 10
    sget-object v4, Lcn/kuaipan/android/utils/JsonScope;->NONEMPTY_ARRAY:Lcn/kuaipan/android/utils/JsonScope;

    .line 12
    invoke-virtual {p0, v4}, Lcn/kuaipan/android/utils/a;->t(Lcn/kuaipan/android/utils/JsonScope;)V

    .line 15
    goto :goto_2b

    .line 16
    :cond_f
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->o()I

    .line 19
    move-result v4

    .line 20
    if-eq v4, v3, :cond_2b

    .line 22
    if-eq v4, v2, :cond_27

    .line 24
    if-ne v4, v1, :cond_21

    .line 26
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->s()V

    .line 29
    sget-object p1, Lcn/kuaipan/android/utils/JsonToken;->END_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

    .line 31
    iput-object p1, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    .line 33
    return-object p1

    .line 34
    :cond_21
    const-string p1, "Unterminated array"

    .line 36
    invoke-virtual {p0, p1}, Lcn/kuaipan/android/utils/a;->u(Ljava/lang/String;)V

    .line 39
    throw v0

    .line 40
    :cond_27
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->e()V

    .line 43
    throw v0

    .line 44
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->o()I

    .line 47
    move-result v4

    .line 48
    if-eq v4, v3, :cond_4a

    .line 50
    if-eq v4, v2, :cond_4a

    .line 52
    if-eq v4, v1, :cond_40

    .line 54
    iget p1, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 56
    add-int/lit8 p1, p1, -0x1

    .line 58
    iput p1, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 60
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->q()Lcn/kuaipan/android/utils/JsonToken;

    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    :cond_40
    if-eqz p1, :cond_4a

    .line 67
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->s()V

    .line 70
    sget-object p1, Lcn/kuaipan/android/utils/JsonToken;->END_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

    .line 72
    iput-object p1, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    .line 74
    return-object p1

    .line 75
    :cond_4a
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->e()V

    .line 78
    throw v0
.end method

.method public final j(Z)Lcn/kuaipan/android/utils/JsonToken;
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x7d

    .line 4
    if-eqz p1, :cond_1a

    .line 6
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->o()I

    .line 9
    move-result p1

    .line 10
    if-eq p1, v1, :cond_12

    .line 12
    iget p1, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 14
    add-int/lit8 p1, p1, -0x1

    .line 16
    iput p1, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 18
    goto :goto_36

    .line 19
    :cond_12
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->s()V

    .line 22
    sget-object p1, Lcn/kuaipan/android/utils/JsonToken;->END_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

    .line 24
    iput-object p1, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    .line 26
    return-object p1

    .line 27
    :cond_1a
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->o()I

    .line 30
    move-result p1

    .line 31
    const/16 v2, 0x2c

    .line 33
    if-eq p1, v2, :cond_36

    .line 35
    const/16 v2, 0x3b

    .line 37
    if-eq p1, v2, :cond_36

    .line 39
    if-ne p1, v1, :cond_30

    .line 41
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->s()V

    .line 44
    sget-object p1, Lcn/kuaipan/android/utils/JsonToken;->END_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

    .line 46
    iput-object p1, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    .line 48
    return-object p1

    .line 49
    :cond_30
    const-string p1, "Unterminated object"

    .line 51
    invoke-virtual {p0, p1}, Lcn/kuaipan/android/utils/a;->u(Ljava/lang/String;)V

    .line 54
    throw v0

    .line 55
    :cond_36
    :goto_36
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->o()I

    .line 58
    move-result p1

    .line 59
    const/16 v1, 0x22

    .line 61
    if-eq p1, v1, :cond_4a

    .line 63
    const/16 v1, 0x27

    .line 65
    if-eq p1, v1, :cond_46

    .line 67
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->e()V

    .line 70
    throw v0

    .line 71
    :cond_46
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->e()V

    .line 74
    throw v0

    .line 75
    :cond_4a
    int-to-char p1, p1

    .line 76
    invoke-virtual {p0, p1}, Lcn/kuaipan/android/utils/a;->p(C)Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p0, Lcn/kuaipan/android/utils/a;->j:Ljava/lang/String;

    .line 82
    sget-object p1, Lcn/kuaipan/android/utils/JsonScope;->DANGLING_NAME:Lcn/kuaipan/android/utils/JsonScope;

    .line 84
    invoke-virtual {p0, p1}, Lcn/kuaipan/android/utils/a;->t(Lcn/kuaipan/android/utils/JsonScope;)V

    .line 87
    sget-object p1, Lcn/kuaipan/android/utils/JsonToken;->NAME:Lcn/kuaipan/android/utils/JsonToken;

    .line 89
    iput-object p1, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    .line 91
    return-object p1
.end method

.method public final k()I
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    .line 4
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    .line 6
    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    .line 8
    if-eq v0, v1, :cond_23

    .line 10
    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->NUMBER:Lcn/kuaipan/android/utils/JsonToken;

    .line 12
    if-ne v0, v1, :cond_e

    .line 14
    goto :goto_23

    .line 15
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    const-string v1, "Expected an int but was "

    .line 19
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    throw v0

    .line 36
    :cond_23
    :goto_23
    :try_start_23
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 41
    move-result v0
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_29} :catch_2a

    .line 42
    goto :goto_37

    .line 43
    :catch_2a
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    .line 45
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 48
    move-result-wide v0

    .line 49
    double-to-int v2, v0

    .line 50
    int-to-double v3, v2

    .line 51
    cmpl-double v0, v3, v0

    .line 53
    if-nez v0, :cond_3b

    .line 55
    move v0, v2

    .line 56
    :goto_37
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->a()V

    .line 59
    return v0

    .line 60
    :cond_3b
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 62
    iget-object v1, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    .line 64
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 67
    throw v0
.end method

.method public final l()J
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    .line 4
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    .line 6
    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    .line 8
    if-eq v0, v1, :cond_23

    .line 10
    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->NUMBER:Lcn/kuaipan/android/utils/JsonToken;

    .line 12
    if-ne v0, v1, :cond_e

    .line 14
    goto :goto_23

    .line 15
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    const-string v1, "Expected a long but was "

    .line 19
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    throw v0

    .line 36
    :cond_23
    :goto_23
    :try_start_23
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    .line 38
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 41
    move-result-wide v0
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_29} :catch_2a

    .line 42
    goto :goto_37

    .line 43
    :catch_2a
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    .line 45
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 48
    move-result-wide v0

    .line 49
    double-to-long v2, v0

    .line 50
    long-to-double v4, v2

    .line 51
    cmpl-double v0, v4, v0

    .line 53
    if-nez v0, :cond_3b

    .line 55
    move-wide v0, v2

    .line 56
    :goto_37
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->a()V

    .line 59
    return-wide v0

    .line 60
    :cond_3b
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 62
    iget-object v1, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    .line 64
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 67
    throw v0
.end method

.method public final m()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    .line 4
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    .line 6
    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->NAME:Lcn/kuaipan/android/utils/JsonToken;

    .line 8
    if-ne v0, v1, :cond_f

    .line 10
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->j:Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->a()V

    .line 15
    return-object v0

    .line 16
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 18
    const-string v1, "Expected a name but was "

    .line 20
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    throw v0
.end method

.method public final o()I
    .registers 6

    .line 1
    :cond_0
    iget v0, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 3
    iget v1, p0, Lcn/kuaipan/android/utils/a;->e:I

    .line 5
    const/4 v2, 0x1

    .line 6
    if-lt v0, v1, :cond_16

    .line 8
    invoke-virtual {p0, v2}, Lcn/kuaipan/android/utils/a;->h(I)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_e

    .line 14
    goto :goto_16

    .line 15
    :cond_e
    new-instance v0, Ljava/io/EOFException;

    .line 17
    const-string v1, "End of input"

    .line 19
    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 22
    throw v0

    .line 23
    :cond_16
    :goto_16
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->c:[C

    .line 25
    iget v1, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 27
    add-int/lit8 v3, v1, 0x1

    .line 29
    iput v3, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 31
    aget-char v0, v0, v1

    .line 33
    const/16 v1, 0x9

    .line 35
    if-eq v0, v1, :cond_0

    .line 37
    const/16 v1, 0xa

    .line 39
    if-eq v0, v1, :cond_0

    .line 41
    const/16 v1, 0xd

    .line 43
    if-eq v0, v1, :cond_0

    .line 45
    const/16 v1, 0x20

    .line 47
    if-eq v0, v1, :cond_0

    .line 49
    const/16 v1, 0x23

    .line 51
    const/4 v4, 0x0

    .line 52
    if-eq v0, v1, :cond_49

    .line 54
    const/16 v1, 0x2f

    .line 56
    if-eq v0, v1, :cond_3a

    .line 58
    return v0

    .line 59
    :cond_3a
    iget v1, p0, Lcn/kuaipan/android/utils/a;->e:I

    .line 61
    if-ne v3, v1, :cond_45

    .line 63
    invoke-virtual {p0, v2}, Lcn/kuaipan/android/utils/a;->h(I)Z

    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_45

    .line 69
    return v0

    .line 70
    :cond_45
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->e()V

    .line 73
    throw v4

    .line 74
    :cond_49
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->e()V

    .line 77
    throw v4
.end method

.method public final p(C)Ljava/lang/String;
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    :goto_2
    iget v2, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 5
    :cond_4
    :goto_4
    iget v3, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 7
    iget v4, p0, Lcn/kuaipan/android/utils/a;->e:I

    .line 9
    const/4 v5, 0x1

    .line 10
    if-ge v3, v4, :cond_b2

    .line 12
    iget-object v4, p0, Lcn/kuaipan/android/utils/a;->c:[C

    .line 14
    add-int/lit8 v6, v3, 0x1

    .line 16
    iput v6, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 18
    aget-char v3, v4, v3

    .line 20
    if-ne v3, p1, :cond_2a

    .line 22
    if-nez v1, :cond_20

    .line 24
    iget-object p1, p0, Lcn/kuaipan/android/utils/a;->a:Landroidx/appcompat/app/u;

    .line 26
    sub-int/2addr v6, v2

    .line 27
    sub-int/2addr v6, v5

    .line 28
    invoke-virtual {p1, v4, v2, v6}, Landroidx/appcompat/app/u;->a([CII)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :cond_20
    sub-int/2addr v6, v2

    .line 34
    sub-int/2addr v6, v5

    .line 35
    invoke-virtual {v1, v4, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :cond_2a
    const/16 v4, 0x5c

    .line 45
    if-ne v3, v4, :cond_4

    .line 47
    if-nez v1, :cond_35

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    :cond_35
    iget-object v3, p0, Lcn/kuaipan/android/utils/a;->c:[C

    .line 56
    iget v4, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 58
    sub-int/2addr v4, v2

    .line 59
    sub-int/2addr v4, v5

    .line 60
    invoke-virtual {v1, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 63
    iget v2, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 65
    iget v3, p0, Lcn/kuaipan/android/utils/a;->e:I

    .line 67
    const-string v4, "Unterminated escape sequence"

    .line 69
    if-ne v2, v3, :cond_51

    .line 71
    invoke-virtual {p0, v5}, Lcn/kuaipan/android/utils/a;->h(I)Z

    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_4d

    .line 77
    goto :goto_51

    .line 78
    :cond_4d
    invoke-virtual {p0, v4}, Lcn/kuaipan/android/utils/a;->u(Ljava/lang/String;)V

    .line 81
    throw v0

    .line 82
    :cond_51
    :goto_51
    iget-object v2, p0, Lcn/kuaipan/android/utils/a;->c:[C

    .line 84
    iget v3, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 86
    add-int/lit8 v5, v3, 0x1

    .line 88
    iput v5, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 90
    aget-char v2, v2, v3

    .line 92
    const/16 v3, 0x62

    .line 94
    if-eq v2, v3, :cond_a9

    .line 96
    const/16 v3, 0x66

    .line 98
    if-eq v2, v3, :cond_a6

    .line 100
    const/16 v3, 0x6e

    .line 102
    if-eq v2, v3, :cond_a3

    .line 104
    const/16 v3, 0x72

    .line 106
    if-eq v2, v3, :cond_a0

    .line 108
    const/16 v3, 0x74

    .line 110
    if-eq v2, v3, :cond_9d

    .line 112
    const/16 v3, 0x75

    .line 114
    if-eq v2, v3, :cond_74

    .line 116
    goto :goto_ab

    .line 117
    :cond_74
    add-int/lit8 v5, v5, 0x4

    .line 119
    iget v2, p0, Lcn/kuaipan/android/utils/a;->e:I

    .line 121
    const/4 v3, 0x4

    .line 122
    if-le v5, v2, :cond_86

    .line 124
    invoke-virtual {p0, v3}, Lcn/kuaipan/android/utils/a;->h(I)Z

    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_82

    .line 130
    goto :goto_86

    .line 131
    :cond_82
    invoke-virtual {p0, v4}, Lcn/kuaipan/android/utils/a;->u(Ljava/lang/String;)V

    .line 134
    throw v0

    .line 135
    :cond_86
    :goto_86
    iget-object v2, p0, Lcn/kuaipan/android/utils/a;->a:Landroidx/appcompat/app/u;

    .line 137
    iget-object v4, p0, Lcn/kuaipan/android/utils/a;->c:[C

    .line 139
    iget v5, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 141
    invoke-virtual {v2, v4, v5, v3}, Landroidx/appcompat/app/u;->a([CII)Ljava/lang/String;

    .line 144
    move-result-object v2

    .line 145
    iget v4, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 147
    add-int/2addr v4, v3

    .line 148
    iput v4, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 150
    const/16 v3, 0x10

    .line 152
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 155
    move-result v2

    .line 156
    int-to-char v2, v2

    .line 157
    goto :goto_ab

    .line 158
    :cond_9d
    const/16 v2, 0x9

    .line 160
    goto :goto_ab

    .line 161
    :cond_a0
    const/16 v2, 0xd

    .line 163
    goto :goto_ab

    .line 164
    :cond_a3
    const/16 v2, 0xa

    .line 166
    goto :goto_ab

    .line 167
    :cond_a6
    const/16 v2, 0xc

    .line 169
    goto :goto_ab

    .line 170
    :cond_a9
    const/16 v2, 0x8

    .line 172
    :goto_ab
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    iget v2, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 177
    goto/16 :goto_4

    .line 179
    :cond_b2
    if-nez v1, :cond_b9

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    .line 183
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    :cond_b9
    iget-object v3, p0, Lcn/kuaipan/android/utils/a;->c:[C

    .line 188
    iget v4, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 190
    sub-int/2addr v4, v2

    .line 191
    invoke-virtual {v1, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p0, v5}, Lcn/kuaipan/android/utils/a;->h(I)Z

    .line 197
    move-result v2

    .line 198
    if-eqz v2, :cond_c9

    .line 200
    goto/16 :goto_2

    .line 202
    :cond_c9
    const-string p1, "Unterminated string"

    .line 204
    invoke-virtual {p0, p1}, Lcn/kuaipan/android/utils/a;->u(Ljava/lang/String;)V

    .line 207
    throw v0
.end method

.method public final q()Lcn/kuaipan/android/utils/JsonToken;
    .registers 15

    .line 1
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->o()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x22

    .line 7
    if-eq v0, v1, :cond_21c

    .line 9
    const/16 v1, 0x27

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eq v0, v1, :cond_218

    .line 14
    const/16 v1, 0x5b

    .line 16
    if-eq v0, v1, :cond_20c

    .line 18
    const/16 v1, 0x7b

    .line 20
    if-eq v0, v1, :cond_200

    .line 22
    iget v0, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 24
    const/4 v3, 0x1

    .line 25
    sub-int/2addr v0, v3

    .line 26
    iput v0, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 28
    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcn/kuaipan/android/utils/a;->l:I

    .line 31
    const/4 v4, 0x0

    .line 32
    iput v4, p0, Lcn/kuaipan/android/utils/a;->m:I

    .line 34
    move-object v6, v2

    .line 35
    :cond_22
    move v5, v4

    .line 36
    :goto_23
    iget v7, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 38
    add-int/2addr v7, v5

    .line 39
    iget v8, p0, Lcn/kuaipan/android/utils/a;->e:I

    .line 41
    if-ge v7, v8, :cond_6a

    .line 43
    iget-object v8, p0, Lcn/kuaipan/android/utils/a;->c:[C

    .line 45
    aget-char v7, v8, v7

    .line 47
    const/16 v8, 0x9

    .line 49
    if-eq v7, v8, :cond_7e

    .line 51
    const/16 v8, 0xa

    .line 53
    if-eq v7, v8, :cond_7e

    .line 55
    const/16 v8, 0xc

    .line 57
    if-eq v7, v8, :cond_7e

    .line 59
    const/16 v8, 0xd

    .line 61
    if-eq v7, v8, :cond_7e

    .line 63
    const/16 v8, 0x20

    .line 65
    if-eq v7, v8, :cond_7e

    .line 67
    const/16 v8, 0x23

    .line 69
    if-eq v7, v8, :cond_66

    .line 71
    const/16 v8, 0x2c

    .line 73
    if-eq v7, v8, :cond_7e

    .line 75
    const/16 v8, 0x2f

    .line 77
    if-eq v7, v8, :cond_66

    .line 79
    const/16 v8, 0x3d

    .line 81
    if-eq v7, v8, :cond_66

    .line 83
    if-eq v7, v1, :cond_7e

    .line 85
    const/16 v8, 0x7d

    .line 87
    if-eq v7, v8, :cond_7e

    .line 89
    const/16 v8, 0x3a

    .line 91
    if-eq v7, v8, :cond_7e

    .line 93
    const/16 v8, 0x3b

    .line 95
    if-eq v7, v8, :cond_66

    .line 97
    packed-switch v7, :pswitch_data_228

    .line 100
    add-int/lit8 v5, v5, 0x1

    .line 102
    goto :goto_23

    .line 103
    :cond_66
    :pswitch_66  #0x5c
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->e()V

    .line 106
    throw v2

    .line 107
    :cond_6a
    iget-object v7, p0, Lcn/kuaipan/android/utils/a;->c:[C

    .line 109
    array-length v7, v7

    .line 110
    if-ge v5, v7, :cond_80

    .line 112
    add-int/lit8 v7, v5, 0x1

    .line 114
    invoke-virtual {p0, v7}, Lcn/kuaipan/android/utils/a;->h(I)Z

    .line 117
    move-result v7

    .line 118
    if-eqz v7, :cond_78

    .line 120
    goto :goto_23

    .line 121
    :cond_78
    iget-object v1, p0, Lcn/kuaipan/android/utils/a;->c:[C

    .line 123
    iget v7, p0, Lcn/kuaipan/android/utils/a;->e:I

    .line 125
    aput-char v4, v1, v7

    .line 127
    :cond_7e
    :pswitch_7e  #0x5b, 0x5d
    move v4, v5

    .line 128
    goto :goto_9e

    .line 129
    :cond_80
    if-nez v6, :cond_87

    .line 131
    new-instance v6, Ljava/lang/StringBuilder;

    .line 133
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    :cond_87
    iget-object v7, p0, Lcn/kuaipan/android/utils/a;->c:[C

    .line 138
    iget v8, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 140
    invoke-virtual {v6, v7, v8, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 143
    iget v7, p0, Lcn/kuaipan/android/utils/a;->m:I

    .line 145
    add-int/2addr v7, v5

    .line 146
    iput v7, p0, Lcn/kuaipan/android/utils/a;->m:I

    .line 148
    iget v7, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 150
    add-int/2addr v7, v5

    .line 151
    iput v7, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 153
    invoke-virtual {p0, v3}, Lcn/kuaipan/android/utils/a;->h(I)Z

    .line 156
    move-result v5

    .line 157
    if-nez v5, :cond_22

    .line 159
    :goto_9e
    if-nez v6, :cond_a6

    .line 161
    iget v1, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 163
    iput v1, p0, Lcn/kuaipan/android/utils/a;->l:I

    .line 165
    move-object v1, v2

    .line 166
    goto :goto_b1

    .line 167
    :cond_a6
    iget-object v1, p0, Lcn/kuaipan/android/utils/a;->c:[C

    .line 169
    iget v5, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 171
    invoke-virtual {v6, v1, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    move-result-object v1

    .line 178
    :goto_b1
    iget v5, p0, Lcn/kuaipan/android/utils/a;->m:I

    .line 180
    add-int/2addr v5, v4

    .line 181
    iput v5, p0, Lcn/kuaipan/android/utils/a;->m:I

    .line 183
    iget v6, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 185
    add-int/2addr v6, v4

    .line 186
    iput v6, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 188
    iput-object v1, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    .line 190
    if-eqz v5, :cond_1fa

    .line 192
    iget v1, p0, Lcn/kuaipan/android/utils/a;->l:I

    .line 194
    if-ne v1, v0, :cond_c7

    .line 196
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    .line 198
    goto/16 :goto_1ef

    .line 200
    :cond_c7
    const/16 v0, 0x55

    .line 202
    const/16 v4, 0x75

    .line 204
    const/16 v6, 0x4c

    .line 206
    const/16 v7, 0x6c

    .line 208
    const/4 v8, 0x4

    .line 209
    if-ne v5, v8, :cond_fe

    .line 211
    const/16 v9, 0x6e

    .line 213
    iget-object v10, p0, Lcn/kuaipan/android/utils/a;->c:[C

    .line 215
    aget-char v11, v10, v1

    .line 217
    if-eq v9, v11, :cond_de

    .line 219
    const/16 v9, 0x4e

    .line 221
    if-ne v9, v11, :cond_fe

    .line 223
    :cond_de
    add-int/lit8 v9, v1, 0x1

    .line 225
    aget-char v9, v10, v9

    .line 227
    if-eq v4, v9, :cond_e6

    .line 229
    if-ne v0, v9, :cond_fe

    .line 231
    :cond_e6
    add-int/lit8 v9, v1, 0x2

    .line 233
    aget-char v9, v10, v9

    .line 235
    if-eq v7, v9, :cond_ee

    .line 237
    if-ne v6, v9, :cond_fe

    .line 239
    :cond_ee
    add-int/lit8 v9, v1, 0x3

    .line 241
    aget-char v9, v10, v9

    .line 243
    if-eq v7, v9, :cond_f6

    .line 245
    if-ne v6, v9, :cond_fe

    .line 247
    :cond_f6
    const-string v0, "null"

    .line 249
    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    .line 251
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->NULL:Lcn/kuaipan/android/utils/JsonToken;

    .line 253
    goto/16 :goto_1ef

    .line 255
    :cond_fe
    const/16 v9, 0x45

    .line 257
    const/16 v10, 0x65

    .line 259
    if-ne v5, v8, :cond_134

    .line 261
    const/16 v8, 0x74

    .line 263
    iget-object v11, p0, Lcn/kuaipan/android/utils/a;->c:[C

    .line 265
    aget-char v12, v11, v1

    .line 267
    if-eq v8, v12, :cond_110

    .line 269
    const/16 v8, 0x54

    .line 271
    if-ne v8, v12, :cond_134

    .line 273
    :cond_110
    const/16 v8, 0x72

    .line 275
    add-int/lit8 v12, v1, 0x1

    .line 277
    aget-char v12, v11, v12

    .line 279
    if-eq v8, v12, :cond_11c

    .line 281
    const/16 v8, 0x52

    .line 283
    if-ne v8, v12, :cond_134

    .line 285
    :cond_11c
    add-int/lit8 v8, v1, 0x2

    .line 287
    aget-char v8, v11, v8

    .line 289
    if-eq v4, v8, :cond_124

    .line 291
    if-ne v0, v8, :cond_134

    .line 293
    :cond_124
    add-int/lit8 v0, v1, 0x3

    .line 295
    aget-char v0, v11, v0

    .line 297
    if-eq v10, v0, :cond_12c

    .line 299
    if-ne v9, v0, :cond_134

    .line 301
    :cond_12c
    const-string v0, "true"

    .line 303
    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    .line 305
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->BOOLEAN:Lcn/kuaipan/android/utils/JsonToken;

    .line 307
    goto/16 :goto_1ef

    .line 309
    :cond_134
    const/4 v0, 0x5

    .line 310
    if-ne v5, v0, :cond_173

    .line 312
    const/16 v0, 0x66

    .line 314
    iget-object v4, p0, Lcn/kuaipan/android/utils/a;->c:[C

    .line 316
    aget-char v8, v4, v1

    .line 318
    if-eq v0, v8, :cond_143

    .line 320
    const/16 v0, 0x46

    .line 322
    if-ne v0, v8, :cond_173

    .line 324
    :cond_143
    const/16 v0, 0x61

    .line 326
    add-int/lit8 v8, v1, 0x1

    .line 328
    aget-char v8, v4, v8

    .line 330
    if-eq v0, v8, :cond_14f

    .line 332
    const/16 v0, 0x41

    .line 334
    if-ne v0, v8, :cond_173

    .line 336
    :cond_14f
    add-int/lit8 v0, v1, 0x2

    .line 338
    aget-char v0, v4, v0

    .line 340
    if-eq v7, v0, :cond_157

    .line 342
    if-ne v6, v0, :cond_173

    .line 344
    :cond_157
    const/16 v0, 0x73

    .line 346
    add-int/lit8 v6, v1, 0x3

    .line 348
    aget-char v6, v4, v6

    .line 350
    if-eq v0, v6, :cond_163

    .line 352
    const/16 v0, 0x53

    .line 354
    if-ne v0, v6, :cond_173

    .line 356
    :cond_163
    add-int/lit8 v0, v1, 0x4

    .line 358
    aget-char v0, v4, v0

    .line 360
    if-eq v10, v0, :cond_16b

    .line 362
    if-ne v9, v0, :cond_173

    .line 364
    :cond_16b
    const-string v0, "false"

    .line 366
    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    .line 368
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->BOOLEAN:Lcn/kuaipan/android/utils/JsonToken;

    .line 370
    goto/16 :goto_1ef

    .line 372
    :cond_173
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->a:Landroidx/appcompat/app/u;

    .line 374
    iget-object v4, p0, Lcn/kuaipan/android/utils/a;->c:[C

    .line 376
    invoke-virtual {v0, v4, v1, v5}, Landroidx/appcompat/app/u;->a([CII)Ljava/lang/String;

    .line 379
    move-result-object v0

    .line 380
    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    .line 382
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->c:[C

    .line 384
    iget v1, p0, Lcn/kuaipan/android/utils/a;->l:I

    .line 386
    iget v4, p0, Lcn/kuaipan/android/utils/a;->m:I

    .line 388
    aget-char v5, v0, v1

    .line 390
    const/16 v6, 0x2d

    .line 392
    if-ne v5, v6, :cond_191

    .line 394
    add-int/lit8 v5, v1, 0x1

    .line 396
    aget-char v7, v0, v5

    .line 398
    move v13, v7

    .line 399
    move v7, v5

    .line 400
    move v5, v13

    .line 401
    goto :goto_192

    .line 402
    :cond_191
    move v7, v1

    .line 403
    :goto_192
    const/16 v8, 0x39

    .line 405
    const/16 v11, 0x30

    .line 407
    if-ne v5, v11, :cond_19c

    .line 409
    add-int/2addr v7, v3

    .line 410
    aget-char v5, v0, v7

    .line 412
    goto :goto_1ae

    .line 413
    :cond_19c
    const/16 v12, 0x31

    .line 415
    if-lt v5, v12, :cond_1ed

    .line 417
    if-gt v5, v8, :cond_1ed

    .line 419
    add-int/2addr v7, v3

    .line 420
    aget-char v5, v0, v7

    .line 422
    :goto_1a5
    if-lt v5, v11, :cond_1ae

    .line 424
    if-gt v5, v8, :cond_1ae

    .line 426
    add-int/lit8 v7, v7, 0x1

    .line 428
    aget-char v5, v0, v7

    .line 430
    goto :goto_1a5

    .line 431
    :cond_1ae
    :goto_1ae
    const/16 v12, 0x2e

    .line 433
    if-ne v5, v12, :cond_1bf

    .line 435
    add-int/lit8 v7, v7, 0x1

    .line 437
    aget-char v5, v0, v7

    .line 439
    :goto_1b6
    if-lt v5, v11, :cond_1bf

    .line 441
    if-gt v5, v8, :cond_1bf

    .line 443
    add-int/lit8 v7, v7, 0x1

    .line 445
    aget-char v5, v0, v7

    .line 447
    goto :goto_1b6

    .line 448
    :cond_1bf
    if-eq v5, v10, :cond_1c3

    .line 450
    if-ne v5, v9, :cond_1e1

    .line 452
    :cond_1c3
    add-int/lit8 v7, v7, 0x1

    .line 454
    aget-char v5, v0, v7

    .line 456
    const/16 v9, 0x2b

    .line 458
    if-eq v5, v9, :cond_1cd

    .line 460
    if-ne v5, v6, :cond_1d1

    .line 462
    :cond_1cd
    add-int/lit8 v7, v7, 0x1

    .line 464
    aget-char v5, v0, v7

    .line 466
    :cond_1d1
    if-lt v5, v11, :cond_1ea

    .line 468
    if-gt v5, v8, :cond_1ea

    .line 470
    add-int/2addr v7, v3

    .line 471
    aget-char v3, v0, v7

    .line 473
    :goto_1d8
    if-lt v3, v11, :cond_1e1

    .line 475
    if-gt v3, v8, :cond_1e1

    .line 477
    add-int/lit8 v7, v7, 0x1

    .line 479
    aget-char v3, v0, v7

    .line 481
    goto :goto_1d8

    .line 482
    :cond_1e1
    add-int/2addr v1, v4

    .line 483
    if-ne v7, v1, :cond_1e7

    .line 485
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->NUMBER:Lcn/kuaipan/android/utils/JsonToken;

    .line 487
    goto :goto_1ef

    .line 488
    :cond_1e7
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    .line 490
    goto :goto_1ef

    .line 491
    :cond_1ea
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    .line 493
    goto :goto_1ef

    .line 494
    :cond_1ed
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    .line 496
    :goto_1ef
    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    .line 498
    sget-object v1, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    .line 500
    if-eq v0, v1, :cond_1f6

    .line 502
    return-object v0

    .line 503
    :cond_1f6
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->e()V

    .line 506
    throw v2

    .line 507
    :cond_1fa
    const-string v0, "Expected literal value"

    .line 509
    invoke-virtual {p0, v0}, Lcn/kuaipan/android/utils/a;->u(Ljava/lang/String;)V

    .line 512
    throw v2

    .line 513
    :cond_200
    sget-object v0, Lcn/kuaipan/android/utils/JsonScope;->EMPTY_OBJECT:Lcn/kuaipan/android/utils/JsonScope;

    .line 515
    iget-object v1, p0, Lcn/kuaipan/android/utils/a;->h:Ljava/util/ArrayList;

    .line 517
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->BEGIN_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

    .line 522
    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    .line 524
    return-object v0

    .line 525
    :cond_20c
    sget-object v0, Lcn/kuaipan/android/utils/JsonScope;->EMPTY_ARRAY:Lcn/kuaipan/android/utils/JsonScope;

    .line 527
    iget-object v1, p0, Lcn/kuaipan/android/utils/a;->h:Ljava/util/ArrayList;

    .line 529
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->BEGIN_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

    .line 534
    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    .line 536
    return-object v0

    .line 537
    :cond_218
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->e()V

    .line 540
    throw v2

    .line 541
    :cond_21c
    int-to-char v0, v0

    .line 542
    invoke-virtual {p0, v0}, Lcn/kuaipan/android/utils/a;->p(C)Ljava/lang/String;

    .line 545
    move-result-object v0

    .line 546
    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->k:Ljava/lang/String;

    .line 548
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->STRING:Lcn/kuaipan/android/utils/JsonToken;

    .line 550
    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    .line 552
    return-object v0

    .line 553
    :pswitch_data_228
    .packed-switch 0x5b
        :pswitch_7e  #0000005b
        :pswitch_66  #0000005c
        :pswitch_7e  #0000005d
    .end packed-switch
.end method

.method public final r()Lcn/kuaipan/android/utils/JsonToken;
    .registers 5

    .line 1
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    sget-object v0, Lcn/kuaipan/android/utils/a$a;->a:[I

    .line 8
    iget-object v1, p0, Lcn/kuaipan/android/utils/a;->h:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v2

    .line 14
    add-int/lit8 v2, v2, -0x1

    .line 16
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcn/kuaipan/android/utils/JsonScope;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 25
    move-result v1

    .line 26
    aget v0, v0, v1

    .line 28
    const/4 v1, 0x0

    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    packed-switch v0, :pswitch_data_9c

    .line 34
    new-instance v0, Ljava/lang/AssertionError;

    .line 36
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 39
    throw v0

    .line 40
    :pswitch_27  #0x8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 42
    const-string v1, "JsonReader is closed"

    .line 44
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    throw v0

    .line 48
    :pswitch_2f  #0x7
    :try_start_2f
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->q()Lcn/kuaipan/android/utils/JsonToken;

    .line 51
    const-string v0, "Expected EOF"

    .line 53
    invoke-virtual {p0, v0}, Lcn/kuaipan/android/utils/a;->u(Ljava/lang/String;)V

    .line 56
    throw v3
    :try_end_38
    .catch Ljava/io/EOFException; {:try_start_2f .. :try_end_38} :catch_38

    .line 57
    :catch_38
    sget-object v0, Lcn/kuaipan/android/utils/JsonToken;->END_DOCUMENT:Lcn/kuaipan/android/utils/JsonToken;

    .line 59
    iput-object v0, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    .line 61
    return-object v0

    .line 62
    :pswitch_3d  #0x6
    invoke-virtual {p0, v1}, Lcn/kuaipan/android/utils/a;->j(Z)Lcn/kuaipan/android/utils/JsonToken;

    .line 65
    move-result-object v0

    .line 66
    return-object v0

    .line 67
    :pswitch_42  #0x5
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->o()I

    .line 70
    move-result v0

    .line 71
    const/16 v1, 0x3a

    .line 73
    if-eq v0, v1, :cond_58

    .line 75
    const/16 v1, 0x3d

    .line 77
    if-eq v0, v1, :cond_54

    .line 79
    const-string v0, "Expected \':\'"

    .line 81
    invoke-virtual {p0, v0}, Lcn/kuaipan/android/utils/a;->u(Ljava/lang/String;)V

    .line 84
    throw v3

    .line 85
    :cond_54
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->e()V

    .line 88
    throw v3

    .line 89
    :cond_58
    sget-object v0, Lcn/kuaipan/android/utils/JsonScope;->NONEMPTY_OBJECT:Lcn/kuaipan/android/utils/JsonScope;

    .line 91
    invoke-virtual {p0, v0}, Lcn/kuaipan/android/utils/a;->t(Lcn/kuaipan/android/utils/JsonScope;)V

    .line 94
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->q()Lcn/kuaipan/android/utils/JsonToken;

    .line 97
    move-result-object v0

    .line 98
    return-object v0

    .line 99
    :pswitch_62  #0x4
    invoke-virtual {p0, v2}, Lcn/kuaipan/android/utils/a;->j(Z)Lcn/kuaipan/android/utils/JsonToken;

    .line 102
    move-result-object v0

    .line 103
    return-object v0

    .line 104
    :pswitch_67  #0x3
    invoke-virtual {p0, v1}, Lcn/kuaipan/android/utils/a;->i(Z)Lcn/kuaipan/android/utils/JsonToken;

    .line 107
    move-result-object v0

    .line 108
    return-object v0

    .line 109
    :pswitch_6c  #0x2
    invoke-virtual {p0, v2}, Lcn/kuaipan/android/utils/a;->i(Z)Lcn/kuaipan/android/utils/JsonToken;

    .line 112
    move-result-object v0

    .line 113
    return-object v0

    .line 114
    :pswitch_71  #0x1
    sget-object v0, Lcn/kuaipan/android/utils/JsonScope;->NONEMPTY_DOCUMENT:Lcn/kuaipan/android/utils/JsonScope;

    .line 116
    invoke-virtual {p0, v0}, Lcn/kuaipan/android/utils/a;->t(Lcn/kuaipan/android/utils/JsonScope;)V

    .line 119
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/a;->q()Lcn/kuaipan/android/utils/JsonToken;

    .line 122
    move-result-object v0

    .line 123
    iget-object v1, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    .line 125
    sget-object v2, Lcn/kuaipan/android/utils/JsonToken;->BEGIN_ARRAY:Lcn/kuaipan/android/utils/JsonToken;

    .line 127
    if-eq v1, v2, :cond_9a

    .line 129
    sget-object v2, Lcn/kuaipan/android/utils/JsonToken;->BEGIN_OBJECT:Lcn/kuaipan/android/utils/JsonToken;

    .line 131
    if-ne v1, v2, :cond_85

    .line 133
    goto :goto_9a

    .line 134
    :cond_85
    new-instance v0, Ljava/io/IOException;

    .line 136
    const-string v1, "Expected JSON document to start with \'[\' or \'{\' but was "

    .line 138
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    move-result-object v1

    .line 142
    iget-object v2, p0, Lcn/kuaipan/android/utils/a;->i:Lcn/kuaipan/android/utils/JsonToken;

    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object v1

    .line 151
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 154
    throw v0

    .line 155
    :cond_9a
    :goto_9a
    return-object v0

    .line 156
    nop

    .line 157
    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_71  #00000001
        :pswitch_6c  #00000002
        :pswitch_67  #00000003
        :pswitch_62  #00000004
        :pswitch_42  #00000005
        :pswitch_3d  #00000006
        :pswitch_2f  #00000007
        :pswitch_27  #00000008
    .end packed-switch
.end method

.method public final s()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->h:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcn/kuaipan/android/utils/JsonScope;

    .line 15
    return-void
.end method

.method public final t(Lcn/kuaipan/android/utils/JsonScope;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/kuaipan/android/utils/a;->h:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 9
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-class v1, Lcn/kuaipan/android/utils/a;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, " near "

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    iget v2, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 27
    const/16 v3, 0x14

    .line 29
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 32
    move-result v2

    .line 33
    iget-object v4, p0, Lcn/kuaipan/android/utils/a;->c:[C

    .line 35
    iget v5, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 37
    sub-int/2addr v5, v2

    .line 38
    invoke-virtual {v1, v4, v5, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 41
    iget v2, p0, Lcn/kuaipan/android/utils/a;->e:I

    .line 43
    iget v4, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 45
    sub-int/2addr v2, v4

    .line 46
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 49
    move-result v2

    .line 50
    iget-object v3, p0, Lcn/kuaipan/android/utils/a;->c:[C

    .line 52
    iget v4, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 54
    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    return-object v0
.end method

.method public final u(Ljava/lang/String;)V
    .registers 8

    .line 1
    new-instance v0, Lcn/kuaipan/android/utils/MalformedJsonException;

    .line 3
    const-string v1, " at line "

    .line 5
    invoke-static {p1, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object p1

    .line 9
    iget v1, p0, Lcn/kuaipan/android/utils/a;->f:I

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_c
    iget v4, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 15
    const/16 v5, 0xa

    .line 17
    if-ge v3, v4, :cond_1d

    .line 19
    iget-object v4, p0, Lcn/kuaipan/android/utils/a;->c:[C

    .line 21
    aget-char v4, v4, v3

    .line 23
    if-ne v4, v5, :cond_1a

    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 27
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    .line 29
    goto :goto_c

    .line 30
    :cond_1d
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, " column "

    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget v1, p0, Lcn/kuaipan/android/utils/a;->g:I

    .line 40
    :goto_27
    iget v3, p0, Lcn/kuaipan/android/utils/a;->d:I

    .line 42
    if-ge v2, v3, :cond_38

    .line 44
    iget-object v3, p0, Lcn/kuaipan/android/utils/a;->c:[C

    .line 46
    aget-char v3, v3, v2

    .line 48
    if-ne v3, v5, :cond_33

    .line 50
    const/4 v1, 0x1

    .line 51
    goto :goto_35

    .line 52
    :cond_33
    add-int/lit8 v1, v1, 0x1

    .line 54
    :goto_35
    add-int/lit8 v2, v2, 0x1

    .line 56
    goto :goto_27

    .line 57
    :cond_38
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    invoke-direct {v0, p1}, Lcn/kuaipan/android/utils/MalformedJsonException;-><init>(Ljava/lang/String;)V

    .line 67
    throw v0
.end method
