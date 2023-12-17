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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lp1/c;Lm1/c;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap;->b:Ljava/util/ArrayList;

    invoke-interface {p1}, Lp1/c;->getBlockCount()I

    move-result v0

    new-array v1, v0, [Lcn/kuaipan/android/kss/download/LoadMap$a;

    iput-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap;->c:[Lcn/kuaipan/android/kss/download/LoadMap$a;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v0, :cond_3e

    invoke-interface {p1, v3}, Lp1/c;->getBlock(I)Lp1/c$a;

    move-result-object v4

    new-instance v5, Lcn/kuaipan/android/kss/download/LoadMap$a;

    invoke-direct {v5, p0, v4, v1, v2}, Lcn/kuaipan/android/kss/download/LoadMap$a;-><init>(Lcn/kuaipan/android/kss/download/LoadMap;Lp1/c$a;J)V

    iget-object v6, p0, Lcn/kuaipan/android/kss/download/LoadMap;->c:[Lcn/kuaipan/android/kss/download/LoadMap$a;

    aput-object v5, v6, v3

    iget-object v6, p0, Lcn/kuaipan/android/kss/download/LoadMap;->b:Ljava/util/ArrayList;

    invoke-static {v5}, Lcn/kuaipan/android/kss/download/LoadMap$a;->a(Lcn/kuaipan/android/kss/download/LoadMap$a;)[Lcn/kuaipan/android/kss/download/LoadMap$b;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-wide v4, v4, Lp1/c$a;->c:J

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_3e
    iput-object p2, p0, Lcn/kuaipan/android/kss/download/LoadMap;->d:Lm1/c;

    if-eqz p2, :cond_49

    invoke-interface {p1}, Lp1/c;->getTotalSize()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lm1/c;->setReceiveTotal(J)V

    :cond_49
    return-void
.end method


# virtual methods
.method public final a(J)J
    .registers 15

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2c

    const-wide/16 v2, -0x1

    iget-object v4, p0, Lcn/kuaipan/android/kss/download/LoadMap;->c:[Lcn/kuaipan/android/kss/download/LoadMap$a;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v5, :cond_21

    aget-object v7, v4, v6

    iget-wide v8, v7, Lcn/kuaipan/android/kss/download/LoadMap$a;->b:J

    cmp-long v10, p1, v8

    if-ltz v10, :cond_1e

    iget-wide v10, v7, Lcn/kuaipan/android/kss/download/LoadMap$a;->c:J

    cmp-long v7, p1, v10

    if-gez v7, :cond_1e

    move-wide v2, v8

    goto :goto_21

    :cond_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_21
    :goto_21
    cmp-long p1, v2, v0

    if-ltz p1, :cond_26

    return-wide v2

    :cond_26
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LoadMap"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final b(J)V
    .registers 15

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap;->c:[Lcn/kuaipan/android/kss/download/LoadMap$a;

    array-length v0, v0

    iget-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcn/kuaipan/android/kss/download/LoadMap;->d:Lm1/c;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_12

    invoke-interface {v1, v2, v3}, Lm1/c;->setReceivePos(J)V

    :cond_12
    const/4 v1, 0x0

    move v4, v1

    :goto_14
    if-ge v4, v0, :cond_54

    iget-object v5, p0, Lcn/kuaipan/android/kss/download/LoadMap;->c:[Lcn/kuaipan/android/kss/download/LoadMap$a;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcn/kuaipan/android/kss/download/LoadMap$a;->b()V

    invoke-virtual {v5}, Lcn/kuaipan/android/kss/download/LoadMap$a;->d()J

    move-result-wide v6

    add-long/2addr v6, v2

    cmp-long v8, p1, v6

    if-ltz v8, :cond_38

    new-array v2, v1, [J

    invoke-virtual {v5, v2}, Lcn/kuaipan/android/kss/download/LoadMap$a;->c([J)V

    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap;->d:Lm1/c;

    if-eqz v2, :cond_43

    iget-wide v8, v5, Lcn/kuaipan/android/kss/download/LoadMap$a;->c:J

    iget-wide v10, v5, Lcn/kuaipan/android/kss/download/LoadMap$a;->b:J

    sub-long/2addr v8, v10

    invoke-interface {v2, v8, v9}, Lm1/c;->received(J)V

    goto :goto_43

    :cond_38
    const/4 v8, 0x2

    new-array v8, v8, [J

    aput-wide v2, v8, v1

    const/4 v2, 0x1

    aput-wide v6, v8, v2

    invoke-virtual {v5, v8}, Lcn/kuaipan/android/kss/download/LoadMap$a;->c([J)V

    :cond_43
    :goto_43
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap;->b:Ljava/util/ArrayList;

    invoke-static {v5}, Lcn/kuaipan/android/kss/download/LoadMap$a;->a(Lcn/kuaipan/android/kss/download/LoadMap$a;)[Lcn/kuaipan/android/kss/download/LoadMap$b;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v4, v4, 0x1

    move-wide v2, v6

    goto :goto_14

    :cond_54
    monitor-exit p0

    return-void

    :catchall_56
    move-exception p1

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_1 .. :try_end_58} :catchall_56

    throw p1
.end method

.method public final declared-synchronized c()Lcn/kuaipan/android/kss/download/b;
    .registers 13

    monitor-enter p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    move-wide v4, v2

    :goto_6
    :try_start_6
    iget-object v6, p0, Lcn/kuaipan/android/kss/download/LoadMap;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_23

    iget-object v6, p0, Lcn/kuaipan/android/kss/download/LoadMap;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/kuaipan/android/kss/download/LoadMap$b;

    invoke-virtual {v6}, Lcn/kuaipan/android/kss/download/LoadMap$b;->c()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_20

    move v0, v1

    move-wide v4, v6

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_23
    const/4 v1, 0x0

    if-ltz v0, :cond_2f

    iget-object v4, p0, Lcn/kuaipan/android/kss/download/LoadMap;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuaipan/android/kss/download/LoadMap$b;

    goto :goto_30

    :cond_2f
    move-object v0, v1

    :goto_30
    if-eqz v0, :cond_41

    new-instance v1, Lcn/kuaipan/android/kss/download/b;

    invoke-direct {v1, p0, v0}, Lcn/kuaipan/android/kss/download/b;-><init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/download/LoadMap$b;)V

    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_6 .. :try_end_3c} :catchall_3e

    monitor-exit p0

    return-object v1

    :catchall_3e
    move-exception v0

    goto/16 :goto_ac

    :cond_41
    :try_start_41
    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v4, v1

    :cond_4c
    :goto_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/kuaipan/android/kss/download/LoadMap$b;

    invoke-virtual {v5}, Lcn/kuaipan/android/kss/download/LoadMap$b;->c()J

    move-result-wide v6

    cmp-long v8, v2, v6

    if-gez v8, :cond_4c

    move-object v4, v5

    move-wide v2, v6

    goto :goto_4c

    :cond_63
    if-eqz v4, :cond_aa

    invoke-virtual {v4}, Lcn/kuaipan/android/kss/download/LoadMap$b;->c()J

    move-result-wide v2

    const-wide/32 v5, 0x10000

    cmp-long v0, v2, v5

    if-gtz v0, :cond_71

    goto :goto_aa

    :cond_71
    iget-wide v0, v4, Lcn/kuaipan/android/kss/download/LoadMap$b;->b:J

    iget-wide v10, v4, Lcn/kuaipan/android/kss/download/LoadMap$b;->c:J

    sub-long v2, v10, v0

    const-wide/16 v5, 0x2

    div-long/2addr v2, v5

    add-long/2addr v2, v0

    const-wide/16 v0, 0x400

    rem-long v5, v2, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_8a

    div-long/2addr v2, v0

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    mul-long/2addr v2, v0

    :cond_8a
    new-instance v0, Lcn/kuaipan/android/kss/download/LoadMap$b;

    iget-object v6, v4, Lcn/kuaipan/android/kss/download/LoadMap$b;->d:Lcn/kuaipan/android/kss/download/LoadMap;

    iget-object v7, v4, Lcn/kuaipan/android/kss/download/LoadMap$b;->a:Lcn/kuaipan/android/kss/download/LoadMap$a;

    move-object v5, v0

    move-wide v8, v2

    invoke-direct/range {v5 .. v11}, Lcn/kuaipan/android/kss/download/LoadMap$b;-><init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/download/LoadMap$a;JJ)V

    iget-object v1, v4, Lcn/kuaipan/android/kss/download/LoadMap$b;->a:Lcn/kuaipan/android/kss/download/LoadMap$a;

    iget-object v1, v1, Lcn/kuaipan/android/kss/download/LoadMap$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-wide v2, v4, Lcn/kuaipan/android/kss/download/LoadMap$b;->c:J

    new-instance v1, Lcn/kuaipan/android/kss/download/b;

    invoke-direct {v1, p0, v0}, Lcn/kuaipan/android/kss/download/b;-><init>(Lcn/kuaipan/android/kss/download/LoadMap;Lcn/kuaipan/android/kss/download/LoadMap$b;)V

    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a8
    .catchall {:try_start_41 .. :try_end_a8} :catchall_3e

    monitor-exit p0

    return-object v1

    :cond_aa
    :goto_aa
    monitor-exit p0

    return-object v1

    :goto_ac
    monitor-exit p0

    throw v0
.end method

.method public final d(Lq1/c;Z)V
    .registers 13

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcn/kuaipan/android/kss/download/LoadMap;->c:[Lcn/kuaipan/android/kss/download/LoadMap$a;

    array-length v3, v2

    if-ge v1, v3, :cond_db

    aget-object v2, v2, v1

    monitor-enter v2

    :try_start_a
    iget-object v3, v2, Lcn/kuaipan/android/kss/download/LoadMap$a;->e:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    sget-object v4, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->NOT_VERIFY:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_81

    invoke-virtual {v2}, Lcn/kuaipan/android/kss/download/LoadMap$a;->d()J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-gtz v3, :cond_81

    iget v3, v2, Lcn/kuaipan/android/kss/download/LoadMap$a;->f:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_21

    goto :goto_81

    :cond_21
    sget-object v3, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->VERIFING:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    iput-object v3, v2, Lcn/kuaipan/android/kss/download/LoadMap$a;->e:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_d8

    :try_start_25
    invoke-interface {p1}, Lq1/c;->lock()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_74

    :try_start_28
    iget-wide v6, v2, Lcn/kuaipan/android/kss/download/LoadMap$a;->b:J

    iget-wide v8, v2, Lcn/kuaipan/android/kss/download/LoadMap$a;->c:J

    sub-long/2addr v8, v6

    invoke-interface {p1, v6, v7, v8, v9}, Lq1/c;->c(JJ)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_34

    goto :goto_45

    :cond_34
    iget-object v6, v2, Lcn/kuaipan/android/kss/download/LoadMap$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3a} :catch_3d
    .catchall {:try_start_28 .. :try_end_3a} :catchall_3b

    goto :goto_46

    :catchall_3b
    move-exception p2

    goto :goto_70

    :catch_3d
    move-exception v3

    :try_start_3e
    const-string v6, "LoadMap"

    const-string v7, "Meet exception when verify sha1."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_3b

    :goto_45
    move v3, v0

    :goto_46
    :try_start_46
    invoke-interface {p1}, Lq1/c;->unlock()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_74

    if-nez v3, :cond_62

    if-eqz p2, :cond_52

    :try_start_4d
    iget v6, v2, Lcn/kuaipan/android/kss/download/LoadMap$a;->f:I

    add-int/2addr v6, v5

    iput v6, v2, Lcn/kuaipan/android/kss/download/LoadMap$a;->f:I

    :cond_52
    iget v5, v2, Lcn/kuaipan/android/kss/download/LoadMap$a;->f:I

    if-ge v5, v4, :cond_57

    goto :goto_62

    :cond_57
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Sha1 verify failed more than MAX_VERIFY_COUNT"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5f
    .catchall {:try_start_4d .. :try_end_5f} :catchall_5f

    :catchall_5f
    move-exception p1

    move v0, v3

    goto :goto_75

    :cond_62
    :goto_62
    if-eqz v3, :cond_69

    :try_start_64
    sget-object v4, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->VERIFIED:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    iput-object v4, v2, Lcn/kuaipan/android/kss/download/LoadMap$a;->e:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    goto :goto_6d

    :cond_69
    sget-object v4, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->NOT_VERIFY:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    iput-object v4, v2, Lcn/kuaipan/android/kss/download/LoadMap$a;->e:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;
    :try_end_6d
    .catchall {:try_start_64 .. :try_end_6d} :catchall_d8

    :goto_6d
    monitor-exit v2

    move v5, v3

    goto :goto_82

    :goto_70
    :try_start_70
    invoke-interface {p1}, Lq1/c;->unlock()V

    throw p2
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_74

    :catchall_74
    move-exception p1

    :goto_75
    if-eqz v0, :cond_7c

    :try_start_77
    sget-object p2, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->VERIFIED:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    iput-object p2, v2, Lcn/kuaipan/android/kss/download/LoadMap$a;->e:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    goto :goto_80

    :cond_7c
    sget-object p2, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->NOT_VERIFY:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    iput-object p2, v2, Lcn/kuaipan/android/kss/download/LoadMap$a;->e:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    :goto_80
    throw p1
    :try_end_81
    .catchall {:try_start_77 .. :try_end_81} :catchall_d8

    :cond_81
    :goto_81
    monitor-exit v2

    :goto_82
    if-nez v5, :cond_d4

    if-ltz v1, :cond_ce

    iget-object v3, p0, Lcn/kuaipan/android/kss/download/LoadMap;->c:[Lcn/kuaipan/android/kss/download/LoadMap$a;

    array-length v4, v3

    if-ge v1, v4, :cond_ce

    aget-object v3, v3, v1

    monitor-enter v3

    :try_start_8e
    invoke-static {v3}, Lcn/kuaipan/android/kss/download/LoadMap$a;->a(Lcn/kuaipan/android/kss/download/LoadMap$a;)[Lcn/kuaipan/android/kss/download/LoadMap$b;

    move-result-object v4

    array-length v5, v4

    move v6, v0

    :goto_94
    if-ge v6, v5, :cond_ad

    aget-object v7, v4, v6

    iget-object v8, p0, Lcn/kuaipan/android/kss/download/LoadMap;->a:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/kuaipan/android/kss/download/b;

    if-eqz v8, :cond_a5

    invoke-virtual {v8}, Lcn/kuaipan/android/kss/download/b;->b()V

    :cond_a5
    iget-object v8, p0, Lcn/kuaipan/android/kss/download/LoadMap;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_94

    :cond_ad
    invoke-virtual {v3}, Lcn/kuaipan/android/kss/download/LoadMap$a;->b()V

    iget-object v4, p0, Lcn/kuaipan/android/kss/download/LoadMap;->b:Ljava/util/ArrayList;

    invoke-static {v3}, Lcn/kuaipan/android/kss/download/LoadMap$a;->a(Lcn/kuaipan/android/kss/download/LoadMap$a;)[Lcn/kuaipan/android/kss/download/LoadMap$b;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v3
    :try_end_be
    .catchall {:try_start_8e .. :try_end_be} :catchall_cb

    iget-object v3, p0, Lcn/kuaipan/android/kss/download/LoadMap;->d:Lm1/c;

    if-eqz v3, :cond_d4

    iget-wide v4, v2, Lcn/kuaipan/android/kss/download/LoadMap$a;->b:J

    iget-wide v6, v2, Lcn/kuaipan/android/kss/download/LoadMap$a;->c:J

    sub-long/2addr v4, v6

    invoke-interface {v3, v4, v5}, Lm1/c;->received(J)V

    goto :goto_d4

    :catchall_cb
    move-exception p1

    :try_start_cc
    monitor-exit v3
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cb

    throw p1

    :cond_ce
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_d4
    :goto_d4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :catchall_d8
    move-exception p1

    monitor-exit v2

    throw p1

    :cond_db
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcn/kuaipan/android/kss/download/LoadMap;->c:[Lcn/kuaipan/android/kss/download/LoadMap$a;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
