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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->val$spName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p2}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$000(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v0

    return-void

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

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

    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    monitor-exit v0

    return p1

    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 6

    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

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

    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

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

    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_36

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_16

    :cond_36
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_44

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_16

    :cond_44
    instance-of v4, v2, Ljava/lang/Long;

    if-eqz v4, :cond_52

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_16

    :cond_52
    instance-of v4, v2, Ljava/lang/Float;

    if-eqz v4, :cond_60

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_16

    :cond_60
    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_6e

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_16

    :cond_6e
    instance-of v4, v2, Ljava/util/Set;

    if-eqz v4, :cond_78

    check-cast v2, Ljava/util/Set;

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_16

    :cond_78
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown shared preferences value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8f
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v0

    return-void

    :catchall_94
    move-exception p1

    monitor-exit v0
    :try_end_96
    .catchall {:try_start_3 .. :try_end_96} :catchall_94

    throw p1
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public putFloat(Ljava/lang/String;F)V
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public putInt(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public putLong(Ljava/lang/String;J)V
    .registers 6

    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

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

    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public remove(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->access$100(Landroid/content/SharedPreferences;)V

    iget-object v1, p0, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences$1;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method
