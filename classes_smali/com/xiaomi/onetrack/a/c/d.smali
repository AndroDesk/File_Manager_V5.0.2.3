.class public Lcom/xiaomi/onetrack/a/c/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "PollingUploader"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 8

    .line 1
    const-string v0, "PollingUploader"

    .line 3
    :try_start_2
    invoke-static {}, Lcom/xiaomi/onetrack/a/c/d;->b()Z

    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    const-string v1, "即将读取数据库并上传数据"

    .line 12
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const/4 v1, 0x0

    .line 16
    :cond_f
    const/16 v2, 0x14

    .line 18
    if-le v1, v2, :cond_15

    .line 20
    goto/16 :goto_ac

    .line 22
    :cond_15
    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/xiaomi/onetrack/a/a;->d()V

    .line 29
    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lcom/xiaomi/onetrack/a/a;->b()Lcom/xiaomi/onetrack/a/c/a;

    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_91

    .line 39
    iget-object v3, v2, Lcom/xiaomi/onetrack/a/c/a;->b:Ljava/util/ArrayList;

    .line 41
    if-eqz v3, :cond_91

    .line 43
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 46
    move-result v3

    .line 47
    if-gtz v3, :cond_31

    .line 49
    goto :goto_91

    .line 50
    :cond_31
    new-instance v3, Ljava/util/ArrayList;

    .line 52
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 55
    new-instance v4, Ljava/util/ArrayList;

    .line 57
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 60
    iget-object v5, v2, Lcom/xiaomi/onetrack/a/c/a;->b:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object v5

    .line 66
    :goto_41
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_6b

    .line 72
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    move-result-object v6

    .line 76
    check-cast v6, Lcom/xiaomi/onetrack/a/b/a;

    .line 78
    invoke-virtual {v6}, Lcom/xiaomi/onetrack/a/b/a;->c()Ljava/lang/String;

    .line 81
    move-result-object v7

    .line 82
    invoke-static {v7}, Lcom/xiaomi/onetrack/g/b;->b(Ljava/lang/String;)Z

    .line 85
    move-result v7

    .line 86
    invoke-virtual {v6}, Lcom/xiaomi/onetrack/a/b/a;->b()I

    .line 89
    move-result v6

    .line 90
    if-eqz v7, :cond_63

    .line 92
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    goto :goto_41

    .line 100
    :cond_63
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object v6

    .line 104
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    goto :goto_41

    .line 108
    :cond_6b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 111
    move-result v5

    .line 112
    if-lez v5, :cond_78

    .line 114
    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {v5, v3}, Lcom/xiaomi/onetrack/a/a;->a(Ljava/util/ArrayList;)I

    .line 121
    :cond_78
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 124
    move-result v3

    .line 125
    if-lez v3, :cond_85

    .line 127
    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {v3, v4}, Lcom/xiaomi/onetrack/a/a;->b(Ljava/util/ArrayList;)V

    .line 134
    :cond_85
    add-int/lit8 v1, v1, 0x1

    .line 136
    iget-boolean v2, v2, Lcom/xiaomi/onetrack/a/c/a;->c:Z

    .line 138
    if-eqz v2, :cond_f

    .line 140
    const-string v1, "No more ad monitor records"

    .line 142
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    goto :goto_ac

    .line 146
    :cond_91
    :goto_91
    const-string v1, "满足条件的adMonitor记录为空，即将返回"

    .line 148
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_2 .. :try_end_96} :catchall_97

    .line 151
    return-void

    .line 152
    :catchall_97
    move-exception v1

    .line 153
    const-string v2, "uploadData Throwable:"

    .line 155
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object v1

    .line 170
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :goto_ac
    return-void
.end method

.method private static b()Z
    .registers 7

    .line 1
    const-string v0, "PollingUploader"

    .line 3
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;)Z

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_f

    .line 10
    const-string v1, "the device is not provisioned, stop poll!"

    .line 12
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return v2

    .line 16
    :cond_f
    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->a()Z

    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1b

    .line 22
    const-string v1, "network is unconnected, stop poll!"

    .line 24
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return v2

    .line 28
    :cond_1b
    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/xiaomi/onetrack/a/a;->e()J

    .line 35
    move-result-wide v3

    .line 36
    const-wide/16 v5, 0x0

    .line 38
    cmp-long v1, v3, v5

    .line 40
    if-nez v1, :cond_2f

    .line 42
    const-string v1, "no data remain in db, stop poll!"

    .line 44
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return v2

    .line 48
    :cond_2f
    const/4 v0, 0x1

    .line 49
    return v0
.end method
