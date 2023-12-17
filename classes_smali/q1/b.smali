.class public final Lq1/b;
.super Ljava/lang/Object;
.source "KInfo.java"


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Landroid/os/Bundle;

.field public final c:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq1/b;->a:Ljava/io/File;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lq1/b;->b:Landroid/os/Bundle;

    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    iput-object p1, p0, Lq1/b;->c:Ljava/util/Properties;

    return-void
.end method

.method public static a(Ljava/io/File;)Ljava/io/File;
    .registers 4

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".kinfo"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-static {v1, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_25
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static f(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ls1/b;->a(ILjava/lang/String;)[B

    move-result-object p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_9
    array-length v2, p0

    invoke-virtual {v1, p0, v0, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_1c

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_1c
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method


# virtual methods
.method public final b()V
    .registers 7

    iget-object v0, p0, Lq1/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    :try_start_a
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lq1/b;->a:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_11} :catch_3d
    .catchall {:try_start_a .. :try_end_11} :catchall_38

    :try_start_11
    iget-object v0, p0, Lq1/b;->c:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    iget-object v0, p0, Lq1/b;->c:Ljava/util/Properties;

    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-static {v0}, Lq1/b;->f(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lq1/b;->b:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->clear()V

    iget-object v2, p0, Lq1/b;->b:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_32} :catch_36
    .catchall {:try_start_11 .. :try_end_32} :catchall_5b

    :cond_32
    :goto_32
    :try_start_32
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_5a

    goto :goto_5a

    :catch_36
    move-exception v0

    goto :goto_41

    :catchall_38
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_5c

    :catch_3d
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_41
    :try_start_41
    const-string v2, "KInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed load kinfo from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lq1/b;->a:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_59
    .catchall {:try_start_41 .. :try_end_59} :catchall_5b

    goto :goto_32

    :catchall_5a
    :goto_5a
    return-void

    :catchall_5b
    move-exception v0

    :goto_5c
    :try_start_5c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_5f

    :catchall_5f
    throw v0
.end method

.method public final c(Lcn/kuaipan/android/kss/download/LoadMap;)Z
    .registers 16

    iget-object v0, p0, Lq1/b;->b:Landroid/os/Bundle;

    const-string v1, "load_map"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    goto/16 :goto_b6

    :cond_d
    :try_start_d
    const-string v2, "blocks"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p1, Lcn/kuaipan/android/kss/download/LoadMap;->c:[Lcn/kuaipan/android/kss/download/LoadMap$a;

    array-length v3, v3

    if-eq v2, v3, :cond_25

    const-string p1, "LoadMap"

    const-string v0, "Block count is wrong in kinfo, ignore saved map"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b6

    :cond_25
    move v3, v1

    :goto_26
    if-ge v3, v2, :cond_56

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "block_start"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v7, "block_end"

    invoke-virtual {v4, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iget-object v4, p1, Lcn/kuaipan/android/kss/download/LoadMap;->c:[Lcn/kuaipan/android/kss/download/LoadMap$a;

    aget-object v4, v4, v3

    iget-wide v9, v4, Lcn/kuaipan/android/kss/download/LoadMap$a;->b:J

    cmp-long v5, v9, v5

    if-nez v5, :cond_4e

    iget-wide v4, v4, Lcn/kuaipan/android/kss/download/LoadMap$a;->c:J

    cmp-long v4, v4, v7

    if-eqz v4, :cond_4b

    goto :goto_4e

    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_4e
    :goto_4e
    const-string p1, "LoadMap"

    const-string v0, "Block start/ends is wrong in kinfo, ignore saved map"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b6

    :cond_56
    monitor-enter p1
    :try_end_57
    .catchall {:try_start_d .. :try_end_57} :catchall_af

    :try_start_57
    iget-object v3, p1, Lcn/kuaipan/android/kss/download/LoadMap;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p1, Lcn/kuaipan/android/kss/download/LoadMap;->d:Lm1/c;

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_65

    invoke-interface {v3, v4, v5}, Lm1/c;->setReceivePos(J)V

    :cond_65
    move v3, v1

    move-wide v6, v4

    :goto_67
    if-ge v3, v2, :cond_9e

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    iget-object v9, p1, Lcn/kuaipan/android/kss/download/LoadMap;->c:[Lcn/kuaipan/android/kss/download/LoadMap$a;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcn/kuaipan/android/kss/download/LoadMap$a;->b()V

    const-string v10, "space_info"

    invoke-virtual {v8, v10}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v8

    invoke-virtual {v9, v8}, Lcn/kuaipan/android/kss/download/LoadMap$a;->c([J)V

    iget-object v8, p1, Lcn/kuaipan/android/kss/download/LoadMap;->b:Ljava/util/ArrayList;

    invoke-static {v9}, Lcn/kuaipan/android/kss/download/LoadMap$a;->a(Lcn/kuaipan/android/kss/download/LoadMap$a;)[Lcn/kuaipan/android/kss/download/LoadMap$b;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v8, p1, Lcn/kuaipan/android/kss/download/LoadMap;->d:Lm1/c;

    if-eqz v8, :cond_9b

    iget-wide v10, v9, Lcn/kuaipan/android/kss/download/LoadMap$a;->c:J

    iget-wide v12, v9, Lcn/kuaipan/android/kss/download/LoadMap$a;->b:J

    sub-long/2addr v10, v12

    invoke-virtual {v9}, Lcn/kuaipan/android/kss/download/LoadMap$a;->d()J

    move-result-wide v8

    sub-long/2addr v10, v8

    add-long/2addr v6, v10

    :cond_9b
    add-int/lit8 v3, v3, 0x1

    goto :goto_67

    :cond_9e
    iget-object v0, p1, Lcn/kuaipan/android/kss/download/LoadMap;->d:Lm1/c;

    if-eqz v0, :cond_a9

    cmp-long v2, v6, v4

    if-eqz v2, :cond_a9

    invoke-interface {v0, v6, v7}, Lm1/c;->received(J)V

    :cond_a9
    monitor-exit p1

    const/4 v1, 0x1

    goto :goto_b6

    :catchall_ac
    move-exception v0

    monitor-exit p1
    :try_end_ae
    .catchall {:try_start_57 .. :try_end_ae} :catchall_ac

    :try_start_ae
    throw v0
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_af

    :catchall_af
    const-string p1, "LoadMap"

    const-string v0, "Meet exception Block count is wrony in kinfo, ignore saved map"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b6
    return v1
.end method

.method public final d()V
    .registers 7

    iget-object v0, p0, Lq1/b;->c:Ljava/util/Properties;

    iget-object v1, p0, Lq1/b;->b:Landroid/os/Bundle;

    const/4 v2, 0x0

    if-nez v1, :cond_9

    move-object v5, v2

    goto :goto_23

    :cond_9
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_e
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_6d

    :try_start_15
    new-instance v5, Ljava/lang/String;

    invoke-static {v4, v1}, Ls1/b;->b(I[B)[B

    move-result-object v1

    const-string v4, "US-ASCII"

    invoke-direct {v5, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_20
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_20} :catch_66
    .catchall {:try_start_15 .. :try_end_20} :catchall_6d

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :goto_23
    const-string v1, "data"

    invoke-virtual {v0, v1, v5}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_28
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lq1/b;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2f} :catch_43
    .catchall {:try_start_28 .. :try_end_2f} :catchall_40

    :try_start_2f
    iget-object v1, p0, Lq1/b;->c:Ljava/util/Properties;

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_37} :catch_3d
    .catchall {:try_start_2f .. :try_end_37} :catchall_3b

    :try_start_37
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_60

    goto :goto_60

    :catchall_3b
    move-exception v1

    goto :goto_62

    :catch_3d
    move-exception v1

    move-object v2, v0

    goto :goto_45

    :catchall_40
    move-exception v0

    move-object v1, v0

    goto :goto_61

    :catch_43
    move-exception v0

    move-object v1, v0

    :goto_45
    :try_start_45
    const-string v0, "KInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed save kinfo to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lq1/b;->a:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catchall {:try_start_45 .. :try_end_5d} :catchall_40

    :try_start_5d
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_60

    :catchall_60
    :goto_60
    return-void

    :goto_61
    move-object v0, v2

    :goto_62
    :try_start_62
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_65

    :catchall_65
    throw v1

    :catch_66
    move-exception v0

    :try_start_67
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_6d
    .catchall {:try_start_67 .. :try_end_6d} :catchall_6d

    :catchall_6d
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final e(Lcn/kuaipan/android/kss/download/LoadMap;)V
    .registers 16

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p1, Lcn/kuaipan/android/kss/download/LoadMap;->c:[Lcn/kuaipan/android/kss/download/LoadMap$a;

    array-length v1, v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v1, :cond_55

    iget-object v5, p1, Lcn/kuaipan/android/kss/download/LoadMap;->c:[Lcn/kuaipan/android/kss/download/LoadMap$a;

    aget-object v5, v5, v4

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iget-wide v7, v5, Lcn/kuaipan/android/kss/download/LoadMap$a;->b:J

    const-string v9, "block_start"

    invoke-virtual {v6, v9, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-wide v7, v5, Lcn/kuaipan/android/kss/download/LoadMap$a;->c:J

    const-string v9, "block_end"

    invoke-virtual {v6, v9, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v5, v5, Lcn/kuaipan/android/kss/download/LoadMap$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    mul-int/lit8 v8, v7, 0x2

    new-array v8, v8, [J

    move v9, v3

    :goto_33
    if-ge v9, v7, :cond_4a

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/kuaipan/android/kss/download/LoadMap$b;

    mul-int/lit8 v11, v9, 0x2

    iget-wide v12, v10, Lcn/kuaipan/android/kss/download/LoadMap$b;->b:J

    aput-wide v12, v8, v11

    add-int/lit8 v11, v11, 0x1

    iget-wide v12, v10, Lcn/kuaipan/android/kss/download/LoadMap$b;->c:J

    aput-wide v12, v8, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_33

    :cond_4a
    const-string v5, "space_info"

    invoke-virtual {v6, v5, v8}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_55
    const-string p1, "blocks"

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lq1/b;->b:Landroid/os/Bundle;

    const-string v1, "load_map"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
