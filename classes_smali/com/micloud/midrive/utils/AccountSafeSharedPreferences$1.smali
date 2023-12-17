.class Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;
.super Ljava/lang/Object;
.source "AccountSafeSharedPreferences.java"

# interfaces
.implements Lcom/micloud/midrive/utils/ISharedPreferences;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/micloud/midrive/utils/ISharedPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$spName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->val$context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->val$spName:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 15
    invoke-static {p2}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$000(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    .line 21
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 6
    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    .line 9
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 11
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_17
    move-exception v1

    .line 25
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    .line 26
    throw v1
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 6
    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    .line 9
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 11
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 14
    move-result p1

    .line 15
    monitor-exit v0

    .line 16
    return p1

    .line 17
    :catchall_10
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    .line 19
    throw p1
.end method

.method public getAll()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 6
    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    .line 9
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 11
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 14
    move-result-object v1

    .line 15
    monitor-exit v0

    .line 16
    return-object v1

    .line 17
    :catchall_10
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    .line 19
    throw v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 6
    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    .line 9
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 11
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 14
    move-result p1

    .line 15
    monitor-exit v0

    .line 16
    return p1

    .line 17
    :catchall_10
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    .line 19
    throw p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 6
    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    .line 9
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 11
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 14
    move-result p1

    .line 15
    monitor-exit v0

    .line 16
    return p1

    .line 17
    :catchall_10
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    .line 19
    throw p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 6
    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    .line 9
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 11
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 14
    move-result p1

    .line 15
    monitor-exit v0

    .line 16
    return p1

    .line 17
    :catchall_10
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    .line 19
    throw p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 6
    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    .line 9
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 11
    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 14
    move-result-wide p1

    .line 15
    monitor-exit v0

    .line 16
    return-wide p1

    .line 17
    :catchall_10
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    .line 19
    throw p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 6
    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    .line 9
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 11
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    monitor-exit v0

    .line 16
    return-object p1

    .line 17
    :catchall_10
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    .line 19
    throw p1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 6
    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    .line 9
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 11
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 14
    move-result-object p1

    .line 15
    monitor-exit v0

    .line 16
    return-object p1

    .line 17
    :catchall_10
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    .line 19
    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 6
    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    .line 9
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 11
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 14
    move-result-object v1

    .line 15
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p1

    .line 23
    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_8f

    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/util/Map$Entry;

    .line 35
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/lang/String;

    .line 41
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 45
    instance-of v4, v2, Ljava/lang/String;

    .line 47
    if-eqz v4, :cond_36

    .line 49
    check-cast v2, Ljava/lang/String;

    .line 51
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    goto :goto_16

    .line 55
    :cond_36
    instance-of v4, v2, Ljava/lang/Integer;

    .line 57
    if-eqz v4, :cond_44

    .line 59
    check-cast v2, Ljava/lang/Integer;

    .line 61
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 64
    move-result v2

    .line 65
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 68
    goto :goto_16

    .line 69
    :cond_44
    instance-of v4, v2, Ljava/lang/Long;

    .line 71
    if-eqz v4, :cond_52

    .line 73
    check-cast v2, Ljava/lang/Long;

    .line 75
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 78
    move-result-wide v4

    .line 79
    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 82
    goto :goto_16

    .line 83
    :cond_52
    instance-of v4, v2, Ljava/lang/Float;

    .line 85
    if-eqz v4, :cond_60

    .line 87
    check-cast v2, Ljava/lang/Float;

    .line 89
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 92
    move-result v2

    .line 93
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 96
    goto :goto_16

    .line 97
    :cond_60
    instance-of v4, v2, Ljava/lang/Boolean;

    .line 99
    if-eqz v4, :cond_6e

    .line 101
    check-cast v2, Ljava/lang/Boolean;

    .line 103
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 106
    move-result v2

    .line 107
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 110
    goto :goto_16

    .line 111
    :cond_6e
    instance-of v4, v2, Ljava/util/Set;

    .line 113
    if-eqz v4, :cond_78

    .line 115
    check-cast v2, Ljava/util/Set;

    .line 117
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 120
    goto :goto_16

    .line 121
    :cond_78
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    .line 125
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    const-string v3, "unknown shared preferences value: "

    .line 130
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v1

    .line 140
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 143
    throw p1

    .line 144
    :cond_8f
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 147
    monitor-exit v0

    .line 148
    return-void

    .line 149
    :catchall_94
    move-exception p1

    .line 150
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_3 .. :try_end_96} :catchall_94

    .line 151
    throw p1
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 6
    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    .line 9
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 11
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_17
    move-exception p1

    .line 25
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    .line 26
    throw p1
.end method

.method public putFloat(Ljava/lang/String;F)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 6
    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    .line 9
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 11
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_17
    move-exception p1

    .line 25
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    .line 26
    throw p1
.end method

.method public putInt(Ljava/lang/String;I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 6
    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    .line 9
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 11
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_17
    move-exception p1

    .line 25
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    .line 26
    throw p1
.end method

.method public putLong(Ljava/lang/String;J)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 6
    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    .line 9
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 11
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_17
    move-exception p1

    .line 25
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    .line 26
    throw p1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 6
    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    .line 9
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 11
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_17
    move-exception p1

    .line 25
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    .line 26
    throw p1
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 6
    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    .line 9
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 11
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_17
    move-exception p1

    .line 25
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    .line 26
    throw p1
.end method

.method public remove(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 6
    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    .line 9
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 11
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_17
    move-exception p1

    .line 25
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    .line 26
    throw p1
.end method
