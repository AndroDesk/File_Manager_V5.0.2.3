.class public final Lcn/kuaipan/android/kss/download/LoadMap;
.super Ljava/lang/Object;
.source "LoadMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/kuaipan/android/kss/download/LoadMap$a;,
        Lcn/kuaipan/android/kss/download/LoadMap$b;,
        Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcn/kuaipan/android/kss/download/LoadMap$b;",
            "Lcn/kuaipan/android/kss/download/b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/kuaipan/android/kss/download/LoadMap$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:[Lcn/kuaipan/android/kss/download/LoadMap$a;

.field public d:Lm1/c;


# direct methods
.method public constructor <init>(Lp1/c;Lm1/c;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap;->a:Ljava/util/HashMap;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap;->b:Ljava/util/ArrayList;

    .line 18
    invoke-interface {p1}, Lp1/c;->getBlockCount()I

    .line 21
    move-result v0

    .line 22
    new-array v1, v0, [Lcn/kuaipan/android/kss/download/LoadMap$a;

    .line 24
    iput-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap;->c:[Lcn/kuaipan/android/kss/download/LoadMap$a;

    .line 26
    const-wide/16 v1, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    :goto_1c
    if-ge v3, v0, :cond_3e

    .line 31
    invoke-interface {p1, v3}, Lp1/c;->getBlock(I)Lp1/c$a;

    .line 34
    move-result-object v4

    .line 35
    new-instance v5, Lcn/kuaipan/android/kss/download/LoadMap$a;

    .line 37
    invoke-direct {v5, p0, v4, v1, v2}, Lcn/kuaipan/android/kss/download/LoadMap$a;-><init>(Lcn/kuaipan/android/kss/download/LoadMap;Lp1/c$a;J)V

    .line 40
    iget-object v6, p0, Lcn/kuaipan/android/kss/download/LoadMap;->c:[Lcn/kuaipan/android/kss/download/LoadMap$a;

    .line 42
    aput-object v5, v6, v3

    .line 44
    iget-object v6, p0, Lcn/kuaipan/android/kss/download/LoadMap;->b:Ljava/util/ArrayList;

    .line 46
    invoke-static {v5}, Lcn/kuaipan/android/kss/download/LoadMap$a;->a(Lcn/kuaipan/android/kss/download/LoadMap$a;)[Lcn/kuaipan/android/kss/download/LoadMap$b;

    .line 49
    move-result-object v5

    .line 50
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 57
    iget-wide v4, v4, Lp1/c$a;->c:J

    .line 59
    add-long/2addr v1, v4

    .line 60
    add-int/lit8 v3, v3, 0x1

    .line 62
    goto :goto_1c

    .line 63
    :cond_3e
    iput-object p2, p0, Lcn/kuaipan/android/kss/download/LoadMap;->d:Lm1/c;

    .line 65
    if-eqz p2, :cond_49

    .line 67
    invoke-interface {p1}, Lp1/c;->getTotalSize()J

    .line 70
    move-result-wide v0

    .line 71
    invoke-interface {p2, v0, v1}, Lm1/c;->setReceiveTotal(J)V

    .line 74
    :cond_49
    return-void
.end method


# virtual methods
.method public final a(J)J
    .registers 15

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v2, p1, v0

    .line 5
    if-ltz v2, :cond_2c

    .line 7
    const-wide/16 v2, -0x1

    .line 9
    iget-object v4, p0, Lcn/kuaipan/android/kss/download/LoadMap;->c:[Lcn/kuaipan/android/kss/download/LoadMap$a;

    .line 11
    array-length v5, v4

    .line 12
    const/4 v6, 0x0

    .line 13
    :goto_c
    if-ge v6, v5, :cond_21

    .line 15
    aget-object v7, v4, v6

    .line 17
    iget-wide v8, v7, Lcn/kuaipan/android/kss/download/LoadMap$a;->b:J

    .line 19
    cmp-long v10, p1, v8

    .line 21
    if-ltz v10, :cond_1e

    .line 23
    iget-wide v10, v7, Lcn/kuaipan/android/kss/download/LoadMap$a;->c:J

    .line 25
    cmp-long v7, p1, v10

    .line 27
    if-gez v7, :cond_1e

    .line 29
    move-wide v2, v8

    .line 30
    goto :goto_21

    .line 31
    :cond_1e
    add-int/lit8 v6, v6, 0x1

    .line 33
    goto :goto_c

    .line 34
    :cond_21
    :goto_21
    cmp-long p1, v2, v0

    .line 36
    if-ltz p1, :cond_26

    .line 38
    return-wide v2

    .line 39
    :cond_26
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 41
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 44
    throw p1

    .line 45
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    const-string v1, "start: "

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    const-string p2, "LoadMap"

    .line 64
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 69
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 72
    throw p1
.end method

.method public final b(J)V
    .registers 15

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap;->c:[Lcn/kuaipan/android/kss/download/LoadMap$a;

    .line 4
    array-length v0, v0

    .line 5
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap;->b:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 10
    iget-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap;->d:Lm1/c;

    .line 12
    const-wide/16 v2, 0x0

    .line 14
    if-eqz v1, :cond_12

    .line 16
    invoke-interface {v1, v2, v3}, Lm1/c;->setReceivePos(J)V

    .line 19
    :cond_12
    const/4 v1, 0x0

    .line 20
    move v4, v1

    .line 21
    :goto_14
    if-ge v4, v0, :cond_54

    .line 23
    iget-object v5, p0, Lcn/kuaipan/android/kss/download/LoadMap;->c:[Lcn/kuaipan/android/kss/download/LoadMap$a;

    .line 25
    aget-object v5, v5, v4

    .line 27
    invoke-virtual {v5}, Lcn/kuaipan/android/kss/download/LoadMap$a;->b()V

    .line 30
    invoke-virtual {v5}, Lcn/kuaipan/android/kss/download/LoadMap$a;->d()J

    .line 33
    move-result-wide v6

    .line 34
    add-long/2addr v6, v2

    .line 35
    cmp-long v8, p1, v6

    .line 37
    if-ltz v8, :cond_38

    .line 39
    new-array v2, v1, [J

    .line 41
    invoke-virtual {v5, v2}, Lcn/kuaipan/android/kss/download/LoadMap$a;->c([J)V

    .line 44
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap;->d:Lm1/c;

    .line 46
    if-eqz v2, :cond_43

    .line 48
    iget-wide v8, v5, Lcn/kuaipan/android/kss/download/LoadMap$a;->c:J

    .line 50
    iget-wide v10, v5, Lcn/kuaipan/android/kss/download/LoadMap$a;->b:J

    .line 52
    sub-long/2addr v8, v10

    .line 53
    invoke-interface {v2, v8, v9}, Lm1/c;->received(J)V

    .line 56
    goto :goto_43

    .line 57
    :cond_38
    const/4 v8, 0x2

    .line 58
    new-array v8, v8, [J

    .line 60
    aput-wide v2, v8, v1

    .line 62
    const/4 v2, 0x1

    .line 63
    aput-wide v6, v8, v2

    .line 65
    invoke-virtual {v5, v8}, Lcn/kuaipan/android/kss/download/LoadMap$a;->c([J)V

    .line 68
    :cond_43
    :goto_43
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap;->b:Ljava/util/ArrayList;

    .line 70
    invoke-static {v5}, Lcn/kuaipan/android/kss/download/LoadMap$a;->a(Lcn/kuaipan/android/kss/download/LoadMap$a;)[Lcn/kuaipan/android/kss/download/LoadMap$b;

    .line 73
    move-result-object v3

    .line 74
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 81
    add-int/lit8 v4, v4, 0x1

    .line 83
    move-wide v2, v6

    .line 84
    goto :goto_14

    .line 85
    :cond_54
    monitor-exit p0

    .line 86
    return-void

    .line 87
    :catchall_56
    move-exception p1

    .line 88
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_1 .. :try_end_58} :catchall_56

    .line 89
    throw p1
.end method

.method public final declared-synchronized c()Lcn/kuaipan/android/kss/download/b;
    .registers 13

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, -0x1

    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, -0x1

    .line 6
    move-wide v4, v2

    .line 7
    :goto_6
    :try_start_6
    iget-object v6, p0, Lcn/kuaipan/android/kss/download/LoadMap;->b:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v6

    .line 13
    if-ge v1, v6, :cond_23

    .line 15
    iget-object v6, p0, Lcn/kuaipan/android/kss/download/LoadMap;->b:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v6

    .line 21
    check-cast v6, Lcn/kuaipan/android/kss/download/LoadMap$b;

    .line 23
    invoke-virtual {v6}, Lcn/kuaipan/android/kss/download/LoadMap$b;->c()J

    .line 26
    move-result-wide v6

    .line 27
    cmp-long v8, v4, v6

    .line 29
    if-gez v8, :cond_20

    .line 31
    move v0, v1

    .line 32
    move-wide v4, v6

    .line 33
    :cond_20
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_6

    .line 36
    :cond_23
    const/4 v1, 0x0

    .line 37
    if-ltz v0, :cond_2f

    .line 39
    iget-object v4, p0, Lcn/kuaipan/android/kss/download/LoadMap;->b:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcn/kuaipan/android/kss/download/LoadMap$b;

    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    move-object v0, v1

    .line 49
    :goto_30
    if-eqz v0, :cond_41

    .line 51
    new-instance v1, Lcn/kuaipan/android/kss/download/b;

    .line 53
    invoke-direct {v1, p0, v0}, Lcn/kuaipan/android/kss/download/b;-><init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/download/LoadMap$b;)V

    .line 56
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap;->a:Ljava/util/HashMap;

    .line 58
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_6 .. :try_end_3c} :catchall_3e

    .line 61
    monitor-exit p0

    .line 62
    return-object v1

    .line 63
    :catchall_3e
    move-exception v0

    .line 64
    goto/16 :goto_ac

    .line 66
    :cond_41
    :try_start_41
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap;->a:Ljava/util/HashMap;

    .line 68
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 71
    move-result-object v0

    .line 72
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 75
    move-result-object v0

    .line 76
    move-object v4, v1

    .line 77
    :cond_4c
    :goto_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_63

    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    move-result-object v5

    .line 87
    check-cast v5, Lcn/kuaipan/android/kss/download/LoadMap$b;

    .line 89
    invoke-virtual {v5}, Lcn/kuaipan/android/kss/download/LoadMap$b;->c()J

    .line 92
    move-result-wide v6

    .line 93
    cmp-long v8, v2, v6

    .line 95
    if-gez v8, :cond_4c

    .line 97
    move-object v4, v5

    .line 98
    move-wide v2, v6

    .line 99
    goto :goto_4c

    .line 100
    :cond_63
    if-eqz v4, :cond_aa

    .line 102
    invoke-virtual {v4}, Lcn/kuaipan/android/kss/download/LoadMap$b;->c()J

    .line 105
    move-result-wide v2

    .line 106
    const-wide/32 v5, 0x10000

    .line 109
    cmp-long v0, v2, v5

    .line 111
    if-gtz v0, :cond_71

    .line 113
    goto :goto_aa

    .line 114
    :cond_71
    iget-wide v0, v4, Lcn/kuaipan/android/kss/download/LoadMap$b;->b:J

    .line 116
    iget-wide v10, v4, Lcn/kuaipan/android/kss/download/LoadMap$b;->c:J

    .line 118
    sub-long v2, v10, v0

    .line 120
    const-wide/16 v5, 0x2

    .line 122
    div-long/2addr v2, v5

    .line 123
    add-long/2addr v2, v0

    .line 124
    const-wide/16 v0, 0x400

    .line 126
    rem-long v5, v2, v0

    .line 128
    const-wide/16 v7, 0x0

    .line 130
    cmp-long v5, v5, v7

    .line 132
    if-lez v5, :cond_8a

    .line 134
    div-long/2addr v2, v0

    .line 135
    const-wide/16 v5, 0x1

    .line 137
    add-long/2addr v2, v5

    .line 138
    mul-long/2addr v2, v0

    .line 139
    :cond_8a
    new-instance v0, Lcn/kuaipan/android/kss/download/LoadMap$b;

    .line 141
    iget-object v6, v4, Lcn/kuaipan/android/kss/download/LoadMap$b;->d:Lcn/kuaipan/android/kss/download/LoadMap;

    .line 143
    iget-object v7, v4, Lcn/kuaipan/android/kss/download/LoadMap$b;->a:Lcn/kuaipan/android/kss/download/LoadMap$a;

    .line 145
    move-object v5, v0

    .line 146
    move-wide v8, v2

    .line 147
    invoke-direct/range {v5 .. v11}, Lcn/kuaipan/android/kss/download/LoadMap$b;-><init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/download/LoadMap$a;JJ)V

    .line 150
    iget-object v1, v4, Lcn/kuaipan/android/kss/download/LoadMap$b;->a:Lcn/kuaipan/android/kss/download/LoadMap$a;

    .line 152
    iget-object v1, v1, Lcn/kuaipan/android/kss/download/LoadMap$a;->d:Ljava/util/ArrayList;

    .line 154
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    iput-wide v2, v4, Lcn/kuaipan/android/kss/download/LoadMap$b;->c:J

    .line 159
    new-instance v1, Lcn/kuaipan/android/kss/download/b;

    .line 161
    invoke-direct {v1, p0, v0}, Lcn/kuaipan/android/kss/download/b;-><init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/download/LoadMap$b;)V

    .line 164
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap;->a:Ljava/util/HashMap;

    .line 166
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a8
    .catchall {:try_start_41 .. :try_end_a8} :catchall_3e

    .line 169
    monitor-exit p0

    .line 170
    return-object v1

    .line 171
    :cond_aa
    :goto_aa
    monitor-exit p0

    .line 172
    return-object v1

    .line 173
    :goto_ac
    monitor-exit p0

    .line 174
    throw v0
.end method

.method public final d(Lq1/c;Z)V
    .registers 13

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap;->c:[Lcn/kuaipan/android/kss/download/LoadMap$a;

    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_db

    .line 8
    aget-object v2, v2, v1

    .line 10
    monitor-enter v2

    .line 11
    :try_start_a
    iget-object v3, v2, Lcn/kuaipan/android/kss/download/LoadMap$a;->e:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    .line 13
    sget-object v4, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->NOT_VERIFY:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    .line 15
    const/4 v5, 0x1

    .line 16
    if-ne v3, v4, :cond_81

    .line 18
    invoke-virtual {v2}, Lcn/kuaipan/android/kss/download/LoadMap$a;->d()J

    .line 21
    move-result-wide v3

    .line 22
    const-wide/16 v6, 0x0

    .line 24
    cmp-long v3, v3, v6

    .line 26
    if-gtz v3, :cond_81

    .line 28
    iget v3, v2, Lcn/kuaipan/android/kss/download/LoadMap$a;->f:I

    .line 30
    const/4 v4, 0x2

    .line 31
    if-lt v3, v4, :cond_21

    .line 33
    goto :goto_81

    .line 34
    :cond_21
    sget-object v3, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->VERIFING:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    .line 36
    iput-object v3, v2, Lcn/kuaipan/android/kss/download/LoadMap$a;->e:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_d8

    .line 38
    :try_start_25
    invoke-interface {p1}, Lq1/c;->lock()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_74

    .line 41
    :try_start_28
    iget-wide v6, v2, Lcn/kuaipan/android/kss/download/LoadMap$a;->b:J

    .line 43
    iget-wide v8, v2, Lcn/kuaipan/android/kss/download/LoadMap$a;->c:J

    .line 45
    sub-long/2addr v8, v6

    .line 46
    invoke-interface {p1, v6, v7, v8, v9}, Lq1/c;->c(JJ)Ljava/lang/String;

    .line 49
    move-result-object v3

    .line 50
    if-nez v3, :cond_34

    .line 52
    goto :goto_45

    .line 53
    :cond_34
    iget-object v6, v2, Lcn/kuaipan/android/kss/download/LoadMap$a;->a:Ljava/lang/String;

    .line 55
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 58
    move-result v3
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3a} :catch_3d
    .catchall {:try_start_28 .. :try_end_3a} :catchall_3b

    .line 59
    goto :goto_46

    .line 60
    :catchall_3b
    move-exception p2

    .line 61
    goto :goto_70

    .line 62
    :catch_3d
    move-exception v3

    .line 63
    :try_start_3e
    const-string v6, "LoadMap"

    .line 65
    const-string v7, "Meet exception when verify sha1."

    .line 67
    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_3b

    .line 70
    :goto_45
    move v3, v0

    .line 71
    :goto_46
    :try_start_46
    invoke-interface {p1}, Lq1/c;->unlock()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_74

    .line 74
    if-nez v3, :cond_62

    .line 76
    if-eqz p2, :cond_52

    .line 78
    :try_start_4d
    iget v6, v2, Lcn/kuaipan/android/kss/download/LoadMap$a;->f:I

    .line 80
    add-int/2addr v6, v5

    .line 81
    iput v6, v2, Lcn/kuaipan/android/kss/download/LoadMap$a;->f:I

    .line 83
    :cond_52
    iget v5, v2, Lcn/kuaipan/android/kss/download/LoadMap$a;->f:I

    .line 85
    if-ge v5, v4, :cond_57

    .line 87
    goto :goto_62

    .line 88
    :cond_57
    new-instance p1, Ljava/io/IOException;

    .line 90
    const-string p2, "Sha1 verify failed more than MAX_VERIFY_COUNT"

    .line 92
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 95
    throw p1
    :try_end_5f
    .catchall {:try_start_4d .. :try_end_5f} :catchall_5f

    .line 96
    :catchall_5f
    move-exception p1

    .line 97
    move v0, v3

    .line 98
    goto :goto_75

    .line 99
    :cond_62
    :goto_62
    if-eqz v3, :cond_69

    .line 101
    :try_start_64
    sget-object v4, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->VERIFIED:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    .line 103
    iput-object v4, v2, Lcn/kuaipan/android/kss/download/LoadMap$a;->e:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    .line 105
    goto :goto_6d

    .line 106
    :cond_69
    sget-object v4, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->NOT_VERIFY:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    .line 108
    iput-object v4, v2, Lcn/kuaipan/android/kss/download/LoadMap$a;->e:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;
    :try_end_6d
    .catchall {:try_start_64 .. :try_end_6d} :catchall_d8

    .line 110
    :goto_6d
    monitor-exit v2

    .line 111
    move v5, v3

    .line 112
    goto :goto_82

    .line 113
    :goto_70
    :try_start_70
    invoke-interface {p1}, Lq1/c;->unlock()V

    .line 116
    throw p2
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_74

    .line 117
    :catchall_74
    move-exception p1

    .line 118
    :goto_75
    if-eqz v0, :cond_7c

    .line 120
    :try_start_77
    sget-object p2, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->VERIFIED:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    .line 122
    iput-object p2, v2, Lcn/kuaipan/android/kss/download/LoadMap$a;->e:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    .line 124
    goto :goto_80

    .line 125
    :cond_7c
    sget-object p2, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->NOT_VERIFY:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    .line 127
    iput-object p2, v2, Lcn/kuaipan/android/kss/download/LoadMap$a;->e:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    .line 129
    :goto_80
    throw p1
    :try_end_81
    .catchall {:try_start_77 .. :try_end_81} :catchall_d8

    .line 130
    :cond_81
    :goto_81
    monitor-exit v2

    .line 131
    :goto_82
    if-nez v5, :cond_d4

    .line 133
    if-ltz v1, :cond_ce

    .line 135
    iget-object v3, p0, Lcn/kuaipan/android/kss/download/LoadMap;->c:[Lcn/kuaipan/android/kss/download/LoadMap$a;

    .line 137
    array-length v4, v3

    .line 138
    if-ge v1, v4, :cond_ce

    .line 140
    aget-object v3, v3, v1

    .line 142
    monitor-enter v3

    .line 143
    :try_start_8e
    invoke-static {v3}, Lcn/kuaipan/android/kss/download/LoadMap$a;->a(Lcn/kuaipan/android/kss/download/LoadMap$a;)[Lcn/kuaipan/android/kss/download/LoadMap$b;

    .line 146
    move-result-object v4

    .line 147
    array-length v5, v4

    .line 148
    move v6, v0

    .line 149
    :goto_94
    if-ge v6, v5, :cond_ad

    .line 151
    aget-object v7, v4, v6

    .line 153
    iget-object v8, p0, Lcn/kuaipan/android/kss/download/LoadMap;->a:Ljava/util/HashMap;

    .line 155
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    move-result-object v8

    .line 159
    check-cast v8, Lcn/kuaipan/android/kss/download/b;

    .line 161
    if-eqz v8, :cond_a5

    .line 163
    invoke-virtual {v8}, Lcn/kuaipan/android/kss/download/b;->b()V

    .line 166
    :cond_a5
    iget-object v8, p0, Lcn/kuaipan/android/kss/download/LoadMap;->b:Ljava/util/ArrayList;

    .line 168
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v6, v6, 0x1

    .line 173
    goto :goto_94

    .line 174
    :cond_ad
    invoke-virtual {v3}, Lcn/kuaipan/android/kss/download/LoadMap$a;->b()V

    .line 177
    iget-object v4, p0, Lcn/kuaipan/android/kss/download/LoadMap;->b:Ljava/util/ArrayList;

    .line 179
    invoke-static {v3}, Lcn/kuaipan/android/kss/download/LoadMap$a;->a(Lcn/kuaipan/android/kss/download/LoadMap$a;)[Lcn/kuaipan/android/kss/download/LoadMap$b;

    .line 182
    move-result-object v5

    .line 183
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 186
    move-result-object v5

    .line 187
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 190
    monitor-exit v3
    :try_end_be
    .catchall {:try_start_8e .. :try_end_be} :catchall_cb

    .line 191
    iget-object v3, p0, Lcn/kuaipan/android/kss/download/LoadMap;->d:Lm1/c;

    .line 193
    if-eqz v3, :cond_d4

    .line 195
    iget-wide v4, v2, Lcn/kuaipan/android/kss/download/LoadMap$a;->b:J

    .line 197
    iget-wide v6, v2, Lcn/kuaipan/android/kss/download/LoadMap$a;->c:J

    .line 199
    sub-long/2addr v4, v6

    .line 200
    invoke-interface {v3, v4, v5}, Lm1/c;->received(J)V

    .line 203
    goto :goto_d4

    .line 204
    :catchall_cb
    move-exception p1

    .line 205
    :try_start_cc
    monitor-exit v3
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cb

    .line 206
    throw p1

    .line 207
    :cond_ce
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 209
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 212
    throw p1

    .line 213
    :cond_d4
    :goto_d4
    add-int/lit8 v1, v1, 0x1

    .line 215
    goto/16 :goto_2

    .line 217
    :catchall_d8
    move-exception p1

    .line 218
    monitor-exit v2

    .line 219
    throw p1

    .line 220
    :cond_db
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap;->c:[Lcn/kuaipan/android/kss/download/LoadMap$a;

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
