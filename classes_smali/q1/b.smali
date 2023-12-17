.class public final Lq1/b;
.super Ljava/lang/Object;
.source "KInfo.java"


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Landroid/os/Bundle;

.field public final c:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lq1/b;->a:Ljava/io/File;

    .line 6
    new-instance p1, Landroid/os/Bundle;

    .line 8
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 11
    iput-object p1, p0, Lq1/b;->b:Landroid/os/Bundle;

    .line 13
    new-instance p1, Ljava/util/Properties;

    .line 15
    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    .line 18
    iput-object p1, p0, Lq1/b;->c:Ljava/util/Properties;

    .line 20
    return-void
.end method

.method public static a(Ljava/io/File;)Ljava/io/File;
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string p0, ".kinfo"

    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    const-string v1, "."

    .line 28
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_25

    .line 34
    invoke-static {v1, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    :cond_25
    new-instance v1, Ljava/io/File;

    .line 40
    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-object v1
.end method

.method public static f(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0}, Ls1/b;->a(ILjava/lang/String;)[B

    .line 5
    move-result-object p0

    .line 6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 9
    move-result-object v1

    .line 10
    :try_start_9
    array-length v2, p0

    .line 11
    invoke-virtual {v1, p0, v0, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 14
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 17
    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 19
    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Landroid/os/Bundle;
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_1c

    .line 25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 28
    return-object p0

    .line 29
    :catchall_1c
    move-exception p0

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 33
    throw p0
.end method


# virtual methods
.method public final b()V
    .registers 7

    .line 1
    iget-object v0, p0, Lq1/b;->a:Ljava/io/File;

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :try_start_a
    new-instance v1, Ljava/io/FileInputStream;

    .line 13
    iget-object v2, p0, Lq1/b;->a:Ljava/io/File;

    .line 15
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_11} :catch_3d
    .catchall {:try_start_a .. :try_end_11} :catchall_38

    .line 18
    :try_start_11
    iget-object v0, p0, Lq1/b;->c:Ljava/util/Properties;

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 23
    iget-object v0, p0, Lq1/b;->c:Ljava/util/Properties;

    .line 25
    const-string v2, "data"

    .line 27
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_32

    .line 37
    invoke-static {v0}, Lq1/b;->f(Ljava/lang/String;)Landroid/os/Bundle;

    .line 40
    move-result-object v0

    .line 41
    iget-object v2, p0, Lq1/b;->b:Landroid/os/Bundle;

    .line 43
    invoke-virtual {v2}, Landroid/os/Bundle;->clear()V

    .line 46
    iget-object v2, p0, Lq1/b;->b:Landroid/os/Bundle;

    .line 48
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_32} :catch_36
    .catchall {:try_start_11 .. :try_end_32} :catchall_5b

    .line 51
    :cond_32
    :goto_32
    :try_start_32
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_5a

    .line 54
    goto :goto_5a

    .line 55
    :catch_36
    move-exception v0

    .line 56
    goto :goto_41

    .line 57
    :catchall_38
    move-exception v1

    .line 58
    move-object v5, v1

    .line 59
    move-object v1, v0

    .line 60
    move-object v0, v5

    .line 61
    goto :goto_5c

    .line 62
    :catch_3d
    move-exception v1

    .line 63
    move-object v5, v1

    .line 64
    move-object v1, v0

    .line 65
    move-object v0, v5

    .line 66
    :goto_41
    :try_start_41
    const-string v2, "KInfo"

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    const-string v4, "Failed load kinfo from "

    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v4, p0, Lq1/b;->a:Ljava/io/File;

    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v3

    .line 87
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_59
    .catchall {:try_start_41 .. :try_end_59} :catchall_5b

    .line 90
    goto :goto_32

    .line 91
    :catchall_5a
    :goto_5a
    return-void

    .line 92
    :catchall_5b
    move-exception v0

    .line 93
    :goto_5c
    :try_start_5c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_5f

    .line 96
    :catchall_5f
    throw v0
.end method

.method public final c(Lcn/kuaipan/android/kss/download/LoadMap;)Z
    .registers 16

    .line 1
    iget-object v0, p0, Lq1/b;->b:Landroid/os/Bundle;

    .line 3
    const-string v1, "load_map"

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_d

    .line 12
    goto/16 :goto_b6

    .line 14
    :cond_d
    :try_start_d
    const-string v2, "blocks"

    .line 16
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    move-result v2

    .line 24
    iget-object v3, p1, Lcn/kuaipan/android/kss/download/LoadMap;->c:[Lcn/kuaipan/android/kss/download/LoadMap$a;

    .line 26
    array-length v3, v3

    .line 27
    if-eq v2, v3, :cond_25

    .line 29
    const-string p1, "LoadMap"

    .line 31
    const-string v0, "Block count is wrong in kinfo, ignore saved map"

    .line 33
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    goto/16 :goto_b6

    .line 38
    :cond_25
    move v3, v1

    .line 39
    :goto_26
    if-ge v3, v2, :cond_56

    .line 41
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Landroid/os/Bundle;

    .line 47
    const-string v5, "block_start"

    .line 49
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 52
    move-result-wide v5

    .line 53
    const-string v7, "block_end"

    .line 55
    invoke-virtual {v4, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 58
    move-result-wide v7

    .line 59
    iget-object v4, p1, Lcn/kuaipan/android/kss/download/LoadMap;->c:[Lcn/kuaipan/android/kss/download/LoadMap$a;

    .line 61
    aget-object v4, v4, v3

    .line 63
    iget-wide v9, v4, Lcn/kuaipan/android/kss/download/LoadMap$a;->b:J

    .line 65
    cmp-long v5, v9, v5

    .line 67
    if-nez v5, :cond_4e

    .line 69
    iget-wide v4, v4, Lcn/kuaipan/android/kss/download/LoadMap$a;->c:J

    .line 71
    cmp-long v4, v4, v7

    .line 73
    if-eqz v4, :cond_4b

    .line 75
    goto :goto_4e

    .line 76
    :cond_4b
    add-int/lit8 v3, v3, 0x1

    .line 78
    goto :goto_26

    .line 79
    :cond_4e
    :goto_4e
    const-string p1, "LoadMap"

    .line 81
    const-string v0, "Block start/ends is wrong in kinfo, ignore saved map"

    .line 83
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    goto :goto_b6

    .line 87
    :cond_56
    monitor-enter p1
    :try_end_57
    .catchall {:try_start_d .. :try_end_57} :catchall_af

    .line 88
    :try_start_57
    iget-object v3, p1, Lcn/kuaipan/android/kss/download/LoadMap;->b:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 93
    iget-object v3, p1, Lcn/kuaipan/android/kss/download/LoadMap;->d:Lm1/c;

    .line 95
    const-wide/16 v4, 0x0

    .line 97
    if-eqz v3, :cond_65

    .line 99
    invoke-interface {v3, v4, v5}, Lm1/c;->setReceivePos(J)V

    .line 102
    :cond_65
    move v3, v1

    .line 103
    move-wide v6, v4

    .line 104
    :goto_67
    if-ge v3, v2, :cond_9e

    .line 106
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 109
    move-result-object v8

    .line 110
    check-cast v8, Landroid/os/Bundle;

    .line 112
    iget-object v9, p1, Lcn/kuaipan/android/kss/download/LoadMap;->c:[Lcn/kuaipan/android/kss/download/LoadMap$a;

    .line 114
    aget-object v9, v9, v3

    .line 116
    invoke-virtual {v9}, Lcn/kuaipan/android/kss/download/LoadMap$a;->b()V

    .line 119
    const-string v10, "space_info"

    .line 121
    invoke-virtual {v8, v10}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    .line 124
    move-result-object v8

    .line 125
    invoke-virtual {v9, v8}, Lcn/kuaipan/android/kss/download/LoadMap$a;->c([J)V

    .line 128
    iget-object v8, p1, Lcn/kuaipan/android/kss/download/LoadMap;->b:Ljava/util/ArrayList;

    .line 130
    invoke-static {v9}, Lcn/kuaipan/android/kss/download/LoadMap$a;->a(Lcn/kuaipan/android/kss/download/LoadMap$a;)[Lcn/kuaipan/android/kss/download/LoadMap$b;

    .line 133
    move-result-object v10

    .line 134
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 137
    move-result-object v10

    .line 138
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 141
    iget-object v8, p1, Lcn/kuaipan/android/kss/download/LoadMap;->d:Lm1/c;

    .line 143
    if-eqz v8, :cond_9b

    .line 145
    iget-wide v10, v9, Lcn/kuaipan/android/kss/download/LoadMap$a;->c:J

    .line 147
    iget-wide v12, v9, Lcn/kuaipan/android/kss/download/LoadMap$a;->b:J

    .line 149
    sub-long/2addr v10, v12

    .line 150
    invoke-virtual {v9}, Lcn/kuaipan/android/kss/download/LoadMap$a;->d()J

    .line 153
    move-result-wide v8

    .line 154
    sub-long/2addr v10, v8

    .line 155
    add-long/2addr v6, v10

    .line 156
    :cond_9b
    add-int/lit8 v3, v3, 0x1

    .line 158
    goto :goto_67

    .line 159
    :cond_9e
    iget-object v0, p1, Lcn/kuaipan/android/kss/download/LoadMap;->d:Lm1/c;

    .line 161
    if-eqz v0, :cond_a9

    .line 163
    cmp-long v2, v6, v4

    .line 165
    if-eqz v2, :cond_a9

    .line 167
    invoke-interface {v0, v6, v7}, Lm1/c;->received(J)V

    .line 170
    :cond_a9
    monitor-exit p1

    .line 171
    const/4 v1, 0x1

    .line 172
    goto :goto_b6

    .line 173
    :catchall_ac
    move-exception v0

    .line 174
    monitor-exit p1
    :try_end_ae
    .catchall {:try_start_57 .. :try_end_ae} :catchall_ac

    .line 175
    :try_start_ae
    throw v0
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_af

    .line 176
    :catchall_af
    const-string p1, "LoadMap"

    .line 178
    const-string v0, "Meet exception Block count is wrony in kinfo, ignore saved map"

    .line 180
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_b6
    return v1
.end method

.method public final d()V
    .registers 7

    .line 1
    iget-object v0, p0, Lq1/b;->c:Ljava/util/Properties;

    .line 3
    iget-object v1, p0, Lq1/b;->b:Landroid/os/Bundle;

    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_9

    .line 8
    move-object v5, v2

    .line 9
    goto :goto_23

    .line 10
    :cond_9
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 13
    move-result-object v3

    .line 14
    const/4 v4, 0x0

    .line 15
    :try_start_e
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 18
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    .line 21
    move-result-object v1
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_6d

    .line 22
    :try_start_15
    new-instance v5, Ljava/lang/String;

    .line 24
    invoke-static {v4, v1}, Ls1/b;->b(I[B)[B

    .line 27
    move-result-object v1

    .line 28
    const-string v4, "US-ASCII"

    .line 30
    invoke-direct {v5, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_20
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_20} :catch_66
    .catchall {:try_start_15 .. :try_end_20} :catchall_6d

    .line 33
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 36
    :goto_23
    const-string v1, "data"

    .line 38
    invoke-virtual {v0, v1, v5}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :try_start_28
    new-instance v0, Ljava/io/FileOutputStream;

    .line 43
    iget-object v1, p0, Lq1/b;->a:Ljava/io/File;

    .line 45
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2f} :catch_43
    .catchall {:try_start_28 .. :try_end_2f} :catchall_40

    .line 48
    :try_start_2f
    iget-object v1, p0, Lq1/b;->c:Ljava/util/Properties;

    .line 50
    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_37} :catch_3d
    .catchall {:try_start_2f .. :try_end_37} :catchall_3b

    .line 56
    :try_start_37
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_60

    .line 59
    goto :goto_60

    .line 60
    :catchall_3b
    move-exception v1

    .line 61
    goto :goto_62

    .line 62
    :catch_3d
    move-exception v1

    .line 63
    move-object v2, v0

    .line 64
    goto :goto_45

    .line 65
    :catchall_40
    move-exception v0

    .line 66
    move-object v1, v0

    .line 67
    goto :goto_61

    .line 68
    :catch_43
    move-exception v0

    .line 69
    move-object v1, v0

    .line 70
    :goto_45
    :try_start_45
    const-string v0, "KInfo"

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    const-string v4, "Failed save kinfo to "

    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v4, p0, Lq1/b;->a:Ljava/io/File;

    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v3

    .line 91
    invoke-static {v0, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catchall {:try_start_45 .. :try_end_5d} :catchall_40

    .line 94
    :try_start_5d
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_60

    .line 97
    :catchall_60
    :goto_60
    return-void

    .line 98
    :goto_61
    move-object v0, v2

    .line 99
    :goto_62
    :try_start_62
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_65

    .line 102
    :catchall_65
    throw v1

    .line 103
    :catch_66
    move-exception v0

    .line 104
    :try_start_67
    new-instance v1, Ljava/lang/AssertionError;

    .line 106
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 109
    throw v1
    :try_end_6d
    .catchall {:try_start_67 .. :try_end_6d} :catchall_6d

    .line 110
    :catchall_6d
    move-exception v0

    .line 111
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 114
    throw v0
.end method

.method public final e(Lcn/kuaipan/android/kss/download/LoadMap;)V
    .registers 16

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget-object v1, p1, Lcn/kuaipan/android/kss/download/LoadMap;->c:[Lcn/kuaipan/android/kss/download/LoadMap$a;

    .line 8
    array-length v1, v1

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    const/4 v3, 0x0

    .line 15
    move v4, v3

    .line 16
    :goto_f
    if-ge v4, v1, :cond_55

    .line 18
    iget-object v5, p1, Lcn/kuaipan/android/kss/download/LoadMap;->c:[Lcn/kuaipan/android/kss/download/LoadMap$a;

    .line 20
    aget-object v5, v5, v4

    .line 22
    new-instance v6, Landroid/os/Bundle;

    .line 24
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 27
    iget-wide v7, v5, Lcn/kuaipan/android/kss/download/LoadMap$a;->b:J

    .line 29
    const-string v9, "block_start"

    .line 31
    invoke-virtual {v6, v9, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 34
    iget-wide v7, v5, Lcn/kuaipan/android/kss/download/LoadMap$a;->c:J

    .line 36
    const-string v9, "block_end"

    .line 38
    invoke-virtual {v6, v9, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 41
    iget-object v5, v5, Lcn/kuaipan/android/kss/download/LoadMap$a;->d:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 46
    move-result v7

    .line 47
    mul-int/lit8 v8, v7, 0x2

    .line 49
    new-array v8, v8, [J

    .line 51
    move v9, v3

    .line 52
    :goto_33
    if-ge v9, v7, :cond_4a

    .line 54
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v10

    .line 58
    check-cast v10, Lcn/kuaipan/android/kss/download/LoadMap$b;

    .line 60
    mul-int/lit8 v11, v9, 0x2

    .line 62
    iget-wide v12, v10, Lcn/kuaipan/android/kss/download/LoadMap$b;->b:J

    .line 64
    aput-wide v12, v8, v11

    .line 66
    add-int/lit8 v11, v11, 0x1

    .line 68
    iget-wide v12, v10, Lcn/kuaipan/android/kss/download/LoadMap$b;->c:J

    .line 70
    aput-wide v12, v8, v11

    .line 72
    add-int/lit8 v9, v9, 0x1

    .line 74
    goto :goto_33

    .line 75
    :cond_4a
    const-string v5, "space_info"

    .line 77
    invoke-virtual {v6, v5, v8}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 80
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v4, v4, 0x1

    .line 85
    goto :goto_f

    .line 86
    :cond_55
    const-string p1, "blocks"

    .line 88
    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 91
    iget-object p1, p0, Lq1/b;->b:Landroid/os/Bundle;

    .line 93
    const-string v1, "load_map"

    .line 95
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 98
    return-void
.end method
