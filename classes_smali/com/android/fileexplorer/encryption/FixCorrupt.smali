.class public Lcom/android/fileexplorer/encryption/FixCorrupt;
.super Ljava/lang/Object;
.source "FixCorrupt.java"


# static fields
.field public static final RESULT_ERROR:I = 0x1

.field public static final RESULT_NO_NEED:I = 0x4

.field public static final RESULT_NO_ORDER:I = 0x3

.field public static final RESULT_OK:I = 0x0

.field public static final TAG:Ljava/lang/String; = "FixCorrupt"


# instance fields
.field private final ID1_DECRYPT:I

.field private final ID1_ENCRYPT:I

.field private final ID2_DECRYPT:I

.field private final ID2_ENCRYPT:I

.field private final ORDER_LENGTH:I

.field private mDeviceIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;"
        }
    .end annotation
.end field

.field private mOrders:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/fileexplorer/encryption/FixCorrupt;->ID1_ENCRYPT:I

    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/android/fileexplorer/encryption/FixCorrupt;->ID1_DECRYPT:I

    .line 10
    const/4 v0, 0x2

    .line 11
    iput v0, p0, Lcom/android/fileexplorer/encryption/FixCorrupt;->ID2_ENCRYPT:I

    .line 13
    const/4 v0, -0x2

    .line 14
    iput v0, p0, Lcom/android/fileexplorer/encryption/FixCorrupt;->ID2_DECRYPT:I

    .line 16
    const/4 v0, 0x4

    .line 17
    iput v0, p0, Lcom/android/fileexplorer/encryption/FixCorrupt;->ORDER_LENGTH:I

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/android/fileexplorer/encryption/FixCorrupt;->mList:Ljava/util/ArrayList;

    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/android/fileexplorer/encryption/FixCorrupt;->mOrders:Landroid/util/Pair;

    .line 29
    sget-object v0, Lcom/android/fileexplorer/encryption/FixCorrupt;->TAG:Ljava/lang/String;

    .line 31
    const-string v1, "Start recovering private files..."

    .line 33
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/android/fileexplorer/analytics/DeviceIdGenerator;->generateAllDeviceIds()Ljava/util/List;

    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/android/fileexplorer/encryption/FixCorrupt;->mDeviceIds:Ljava/util/List;

    .line 42
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object p1

    .line 46
    :goto_2d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_43

    .line 52
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 58
    iget-object v1, p0, Lcom/android/fileexplorer/encryption/FixCorrupt;->mList:Ljava/util/ArrayList;

    .line 60
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/encryption/FixCorrupt;->getAllFiles(Lcom/android/fileexplorer/encryption/PrivateFile;)Ljava/util/List;

    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 67
    goto :goto_2d

    .line 68
    :cond_43
    sget-object p1, Lcom/android/fileexplorer/encryption/FixCorrupt;->TAG:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/android/fileexplorer/encryption/FixCorrupt;->mList:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 80
    move-result v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, " files to be recovered"

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/android/fileexplorer/encryption/FixCorrupt;->mOrders:Landroid/util/Pair;

    .line 98
    if-nez v0, :cond_68

    .line 100
    const-string v0, "No order was found"

    .line 102
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_68
    return-void
.end method

.method private addType(Ljava/util/List;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eqz p2, :cond_61

    .line 6
    const/4 v3, -0x2

    .line 7
    const/4 v4, 0x2

    .line 8
    if-eq p2, v1, :cond_46

    .line 10
    if-eq p2, v4, :cond_2b

    .line 12
    const/4 v0, 0x3

    .line 13
    if-eq p2, v0, :cond_10

    .line 15
    goto/16 :goto_7b

    .line 17
    :cond_10
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 20
    move-result p2

    .line 21
    if-nez p2, :cond_23

    .line 23
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Ljava/lang/Integer;

    .line 29
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result p2

    .line 33
    if-ne p2, v4, :cond_23

    .line 35
    goto :goto_7b

    .line 36
    :cond_23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object p2

    .line 40
    invoke-interface {p1, v2, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 43
    goto :goto_7b

    .line 44
    :cond_2b
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 47
    move-result p2

    .line 48
    if-nez p2, :cond_3e

    .line 50
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object p2

    .line 54
    check-cast p2, Ljava/lang/Integer;

    .line 56
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 59
    move-result p2

    .line 60
    if-ne p2, v1, :cond_3e

    .line 62
    goto :goto_7b

    .line 63
    :cond_3e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object p2

    .line 67
    invoke-interface {p1, v2, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 70
    goto :goto_7b

    .line 71
    :cond_46
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 74
    move-result p2

    .line 75
    if-nez p2, :cond_59

    .line 77
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    move-result-object p2

    .line 81
    check-cast p2, Ljava/lang/Integer;

    .line 83
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 86
    move-result p2

    .line 87
    if-ne p2, v3, :cond_59

    .line 89
    goto :goto_7b

    .line 90
    :cond_59
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    move-result-object p2

    .line 94
    invoke-interface {p1, v2, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 97
    goto :goto_7b

    .line 98
    :cond_61
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 101
    move-result p2

    .line 102
    if-nez p2, :cond_74

    .line 104
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    move-result-object p2

    .line 108
    check-cast p2, Ljava/lang/Integer;

    .line 110
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 113
    move-result p2

    .line 114
    if-ne p2, v0, :cond_74

    .line 116
    goto :goto_7b

    .line 117
    :cond_74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object p2

    .line 121
    invoke-interface {p1, v2, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 124
    :goto_7b
    return-void
.end method

.method private encryptFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :try_start_9
    new-instance v2, Ljava/io/RandomAccessFile;

    .line 12
    const-string v3, "rw"

    .line 14
    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_4c
    .catchall {:try_start_9 .. :try_end_10} :catchall_4a

    .line 17
    const-wide/16 v3, 0x400

    .line 19
    :try_start_12
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    .line 22
    move-result-wide v5

    .line 23
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 26
    move-result-wide v3

    .line 27
    long-to-int p1, v3

    .line 28
    const/16 v0, 0x10

    .line 30
    if-ge p1, v0, :cond_20

    .line 32
    move p1, v0

    .line 33
    :cond_20
    new-array p1, p1, [B

    .line 35
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 38
    invoke-static {p1, p2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->encrypt([BLjava/lang/String;)[B

    .line 41
    move-result-object p1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_29} :catch_47
    .catchall {:try_start_12 .. :try_end_29} :catchall_44

    .line 42
    if-nez p1, :cond_2f

    .line 44
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 47
    return v1

    .line 48
    :cond_2f
    const-wide/16 v0, 0x0

    .line 50
    :try_start_31
    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 53
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 56
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    move-result p2

    .line 60
    if-nez p2, :cond_40

    .line 62
    invoke-static {p1, p3}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->bytesToFile([BLjava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_40} :catch_47
    .catchall {:try_start_31 .. :try_end_40} :catchall_44

    .line 65
    :cond_40
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 68
    goto :goto_53

    .line 69
    :catchall_44
    move-exception p1

    .line 70
    move-object v0, v2

    .line 71
    goto :goto_55

    .line 72
    :catch_47
    move-exception p1

    .line 73
    move-object v0, v2

    .line 74
    goto :goto_4d

    .line 75
    :catchall_4a
    move-exception p1

    .line 76
    goto :goto_55

    .line 77
    :catch_4c
    move-exception p1

    .line 78
    :goto_4d
    :try_start_4d
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_4a

    .line 81
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 84
    :goto_53
    const/4 p1, 0x1

    .line 85
    return p1

    .line 86
    :goto_55
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 89
    throw p1
.end method

.method private fixAll()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/encryption/FixCorrupt;->mList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_125

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 19
    new-instance v2, Ljava/io/File;

    .line 21
    invoke-virtual {v1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-static {v1}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->getPrivateFileHeader(Lcom/android/fileexplorer/encryption/PrivateFile;)[B

    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_44

    .line 38
    sget-object v2, Lcom/android/fileexplorer/encryption/FixCorrupt;->TAG:Ljava/lang/String;

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    invoke-virtual {v1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, " doesn\'t exist"

    .line 58
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    goto :goto_6

    .line 69
    :cond_44
    if-nez v3, :cond_61

    .line 71
    sget-object v2, Lcom/android/fileexplorer/encryption/FixCorrupt;->TAG:Ljava/lang/String;

    .line 73
    const-string v3, "cannot get header of "

    .line 75
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    invoke-static {v1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v1

    .line 94
    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    goto :goto_6

    .line 98
    :cond_61
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/encryption/FixCorrupt;->needToFix([B)Z

    .line 101
    move-result v4

    .line 102
    if-eqz v4, :cond_109

    .line 104
    sget-object v4, Lcom/android/fileexplorer/encryption/FixCorrupt;->TAG:Ljava/lang/String;

    .line 106
    const-string v5, "Restoring file:"

    .line 108
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {v1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 115
    move-result-object v6

    .line 116
    invoke-static {v6}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    move-result-object v6

    .line 120
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v5

    .line 127
    invoke-static {v4, v5}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v5, p0, Lcom/android/fileexplorer/encryption/FixCorrupt;->mDeviceIds:Ljava/util/List;

    .line 132
    iget-object v6, p0, Lcom/android/fileexplorer/encryption/FixCorrupt;->mOrders:Landroid/util/Pair;

    .line 134
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 136
    check-cast v6, Landroid/util/Pair;

    .line 138
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 140
    check-cast v6, Ljava/lang/Integer;

    .line 142
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 145
    move-result v6

    .line 146
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 149
    move-result-object v5

    .line 150
    check-cast v5, Ljava/lang/String;

    .line 152
    iget-object v6, p0, Lcom/android/fileexplorer/encryption/FixCorrupt;->mDeviceIds:Ljava/util/List;

    .line 154
    iget-object v7, p0, Lcom/android/fileexplorer/encryption/FixCorrupt;->mOrders:Landroid/util/Pair;

    .line 156
    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 158
    check-cast v7, Landroid/util/Pair;

    .line 160
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 162
    check-cast v7, Ljava/lang/Integer;

    .line 164
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 167
    move-result v7

    .line 168
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 171
    move-result-object v6

    .line 172
    check-cast v6, Ljava/lang/String;

    .line 174
    iget-object v7, p0, Lcom/android/fileexplorer/encryption/FixCorrupt;->mOrders:Landroid/util/Pair;

    .line 176
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 178
    check-cast v7, Ljava/util/List;

    .line 180
    invoke-direct {p0, v3, v5, v6, v7}, Lcom/android/fileexplorer/encryption/FixCorrupt;->getParsedHeader([BLjava/lang/String;Ljava/lang/String;Ljava/util/List;)[B

    .line 183
    move-result-object v3

    .line 184
    const/4 v5, 0x0

    .line 185
    invoke-direct {p0, v3, v5}, Lcom/android/fileexplorer/encryption/FixCorrupt;->isCorruptHeader([BLjava/lang/String;)Z

    .line 188
    move-result v5

    .line 189
    if-nez v5, :cond_ef

    .line 191
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 194
    move-result-object v5

    .line 195
    invoke-static {v3, v5}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->writeHeader([BLjava/lang/String;)Z

    .line 198
    move-result v3

    .line 199
    if-eqz v3, :cond_e8

    .line 201
    const-string v3, "success"

    .line 203
    invoke-static {v4, v3}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getHeaderPath()Ljava/lang/String;

    .line 209
    move-result-object v1

    .line 210
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 213
    move-result v3

    .line 214
    if-eqz v3, :cond_df

    .line 216
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 219
    move-result-object v1

    .line 220
    invoke-static {v1}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getNewPrivateHeaderBakPath(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    move-result-object v1

    .line 224
    :cond_df
    invoke-static {}, Lcom/android/fileexplorer/analytics/DeviceIdGenerator;->getOldDeviceId()Ljava/lang/String;

    .line 227
    move-result-object v3

    .line 228
    invoke-direct {p0, v2, v3, v1}, Lcom/android/fileexplorer/encryption/FixCorrupt;->encryptFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    .line 231
    goto/16 :goto_6

    .line 233
    :cond_e8
    const-string v1, "write header failed"

    .line 235
    invoke-static {v4, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    goto/16 :goto_6

    .line 240
    :cond_ef
    const-string v2, "cannot recovery file "

    .line 242
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    move-result-object v2

    .line 246
    invoke-virtual {v1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 249
    move-result-object v1

    .line 250
    invoke-static {v1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    move-result-object v1

    .line 261
    invoke-static {v4, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    goto/16 :goto_6

    .line 266
    :cond_109
    sget-object v2, Lcom/android/fileexplorer/encryption/FixCorrupt;->TAG:Ljava/lang/String;

    .line 268
    const-string v3, "no need to fix file "

    .line 270
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    move-result-object v3

    .line 274
    invoke-virtual {v1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 277
    move-result-object v1

    .line 278
    invoke-static {v1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    .line 281
    move-result-object v1

    .line 282
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    move-result-object v1

    .line 289
    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    goto/16 :goto_6

    .line 294
    :cond_125
    return-void
.end method

.method private generateSequence(I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-ne p1, v2, :cond_1b

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 13
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-direct {p0, v2, v1}, Lcom/android/fileexplorer/encryption/FixCorrupt;->addType(Ljava/util/List;I)V

    .line 21
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_a

    .line 27
    :cond_1a
    return-object p1

    .line 28
    :cond_1b
    add-int/lit8 p1, p1, -0x1

    .line 30
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/encryption/FixCorrupt;->generateSequence(I)Ljava/util/List;

    .line 33
    move-result-object p1

    .line 34
    new-instance v2, Ljava/util/ArrayList;

    .line 36
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 39
    :goto_26
    if-ge v1, v0, :cond_47

    .line 41
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object v3

    .line 45
    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_44

    .line 51
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Ljava/util/List;

    .line 57
    new-instance v5, Ljava/util/ArrayList;

    .line 59
    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 62
    invoke-direct {p0, v5, v1}, Lcom/android/fileexplorer/encryption/FixCorrupt;->addType(Ljava/util/List;I)V

    .line 65
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    goto :goto_2c

    .line 69
    :cond_44
    add-int/lit8 v1, v1, 0x1

    .line 71
    goto :goto_26

    .line 72
    :cond_47
    return-object v2
.end method

.method private getAllFiles(Lcom/android/fileexplorer/encryption/PrivateFile;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_3e

    .line 12
    new-instance v1, Ljava/io/File;

    .line 14
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    sget-object p1, Lcom/android/fileexplorer/encryption/EncryptUtil;->privateFileFilter:Ljava/io/FilenameFilter;

    .line 23
    invoke-virtual {v1, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getPrivateFileList([Ljava/io/File;)Ljava/util/List;

    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_e1

    .line 33
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_e1

    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object p1

    .line 43
    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_e1

    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 55
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/encryption/FixCorrupt;->getAllFiles(Lcom/android/fileexplorer/encryption/PrivateFile;)Ljava/util/List;

    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    goto :goto_2a

    .line 63
    :cond_3e
    invoke-static {p1}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->getPrivateFileHeader(Lcom/android/fileexplorer/encryption/PrivateFile;)[B

    .line 66
    move-result-object v1

    .line 67
    if-nez v1, :cond_60

    .line 69
    sget-object v1, Lcom/android/fileexplorer/encryption/FixCorrupt;->TAG:Ljava/lang/String;

    .line 71
    const-string v2, "cannot get header of "

    .line 73
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    goto/16 :goto_e1

    .line 97
    :cond_60
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/encryption/FixCorrupt;->needToFix([B)Z

    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_c7

    .line 103
    sget-object v2, Lcom/android/fileexplorer/encryption/FixCorrupt;->TAG:Ljava/lang/String;

    .line 105
    const-string v3, "getAllFiles: needFix"

    .line 107
    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v3, p0, Lcom/android/fileexplorer/encryption/FixCorrupt;->mOrders:Landroid/util/Pair;

    .line 112
    if-nez v3, :cond_c3

    .line 114
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 117
    move-result-object v3

    .line 118
    invoke-static {v3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    move-result-object v3

    .line 122
    invoke-static {v3}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    move-result-object v3

    .line 126
    invoke-static {v3}, Lcom/android/fileexplorer/util/MimeUtils;->guessFileTypeFromExtension(Ljava/lang/String;)I

    .line 129
    move-result v3

    .line 130
    const/4 v4, 0x1

    .line 131
    if-eq v3, v4, :cond_89

    .line 133
    const/4 v4, 0x2

    .line 134
    if-eq v3, v4, :cond_89

    .line 136
    if-nez v3, :cond_c3

    .line 138
    :cond_89
    const-string v3, "Trying to get order of "

    .line 140
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    move-result-object v3

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    .line 146
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 152
    move-result-object v5

    .line 153
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v5, " Real name:"

    .line 158
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 164
    move-result-object v5

    .line 165
    invoke-static {v5}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object v4

    .line 176
    invoke-static {v4}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    move-result-object v4

    .line 180
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object v3

    .line 187
    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0, v1, p1}, Lcom/android/fileexplorer/encryption/FixCorrupt;->getOrder([BLcom/android/fileexplorer/encryption/PrivateFile;)Landroid/util/Pair;

    .line 193
    move-result-object v1

    .line 194
    iput-object v1, p0, Lcom/android/fileexplorer/encryption/FixCorrupt;->mOrders:Landroid/util/Pair;

    .line 196
    :cond_c3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    goto :goto_e1

    .line 200
    :cond_c7
    sget-object v1, Lcom/android/fileexplorer/encryption/FixCorrupt;->TAG:Ljava/lang/String;

    .line 202
    const-string v2, "No need to fix file: "

    .line 204
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 211
    move-result-object p1

    .line 212
    invoke-static {p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    .line 215
    move-result-object p1

    .line 216
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    move-result-object p1

    .line 223
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_e1
    :goto_e1
    return-object v0
.end method

.method private getOrder([BLcom/android/fileexplorer/encryption/PrivateFile;)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_1e

    .line 4
    sget-object p1, Lcom/android/fileexplorer/encryption/FixCorrupt;->TAG:Ljava/lang/String;

    .line 6
    const-string v1, "cannot get Header of "

    .line 8
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 15
    move-result-object p2

    .line 16
    invoke-static {p2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p2

    .line 27
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-object v0

    .line 31
    :cond_1e
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 34
    move-result-object p2

    .line 35
    invoke-static {p2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    invoke-static {p2}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object p2

    .line 43
    invoke-static {p2}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object p2

    .line 47
    const/4 v1, 0x1

    .line 48
    :goto_2f
    const/4 v2, 0x4

    .line 49
    if-gt v1, v2, :cond_a1

    .line 51
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/encryption/FixCorrupt;->generateSequence(I)Ljava/util/List;

    .line 54
    move-result-object v2

    .line 55
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object v2

    .line 59
    :cond_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_9e

    .line 65
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Ljava/util/List;

    .line 71
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 74
    move-result v4

    .line 75
    if-ne v4, v1, :cond_3a

    .line 77
    invoke-direct {p0, p1, v3, p2}, Lcom/android/fileexplorer/encryption/FixCorrupt;->testHeader([BLjava/util/List;Ljava/lang/String;)Landroid/util/Pair;

    .line 80
    move-result-object v4

    .line 81
    if-eqz v4, :cond_3a

    .line 83
    sget-object p1, Lcom/android/fileexplorer/encryption/FixCorrupt;->TAG:Ljava/lang/String;

    .line 85
    const-string p2, "Success with deviceId: "

    .line 87
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    move-result-object p2

    .line 91
    iget-object v0, p0, Lcom/android/fileexplorer/encryption/FixCorrupt;->mDeviceIds:Ljava/util/List;

    .line 93
    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 95
    check-cast v1, Ljava/lang/Integer;

    .line 97
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 100
    move-result v1

    .line 101
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Ljava/lang/String;

    .line 107
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v0, ","

    .line 112
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v0, p0, Lcom/android/fileexplorer/encryption/FixCorrupt;->mDeviceIds:Ljava/util/List;

    .line 117
    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 119
    check-cast v1, Ljava/lang/Integer;

    .line 121
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 124
    move-result v1

    .line 125
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Ljava/lang/String;

    .line 131
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v0, "  and order:"

    .line 136
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/encryption/FixCorrupt;->getOrderString(Ljava/util/List;)Ljava/lang/String;

    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object p2

    .line 150
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance p1, Landroid/util/Pair;

    .line 155
    invoke-direct {p1, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    return-object p1

    .line 159
    :cond_9e
    add-int/lit8 v1, v1, 0x1

    .line 161
    goto :goto_2f

    .line 162
    :cond_a1
    return-object v0
.end method

.method private getOrderString(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1e

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/Integer;

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, ","

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    goto :goto_9

    .line 31
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method private getParsedHeader([BLjava/lang/String;Ljava/lang/String;Ljava/util/List;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[B"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_4
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, [B

    .line 11
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p4

    .line 15
    :goto_e
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_3f

    .line 21
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Integer;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 30
    move-result v0

    .line 31
    const/4 v1, -0x2

    .line 32
    if-eq v0, v1, :cond_3a

    .line 34
    const/4 v1, -0x1

    .line 35
    if-eq v0, v1, :cond_35

    .line 37
    const/4 v1, 0x1

    .line 38
    if-eq v0, v1, :cond_30

    .line 40
    const/4 v1, 0x2

    .line 41
    if-eq v0, v1, :cond_2b

    .line 43
    goto :goto_e

    .line 44
    :cond_2b
    invoke-static {p1, p3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->encryptHeader([BLjava/lang/String;)[B

    .line 47
    move-result-object p1

    .line 48
    goto :goto_e

    .line 49
    :cond_30
    invoke-static {p1, p2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->encryptHeader([BLjava/lang/String;)[B

    .line 52
    move-result-object p1

    .line 53
    goto :goto_e

    .line 54
    :cond_35
    invoke-static {p1, p2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->decryptHeader([BLjava/lang/String;)[B

    .line 57
    move-result-object p1

    .line 58
    goto :goto_e

    .line 59
    :cond_3a
    invoke-static {p1, p3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->decryptHeader([BLjava/lang/String;)[B

    .line 62
    move-result-object p1

    .line 63
    goto :goto_e

    .line 64
    :cond_3f
    return-object p1
.end method

.method private isCorruptHeader([BLjava/lang/String;)Z
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    const-string v1, "eu.medsea.mimeutil.detector.MagicMimeMimeDetector"

    .line 7
    invoke-static {v1}, Leu/medsea/mimeutil/MimeUtil;->registerMimeDetector(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MimeDetector;

    .line 10
    invoke-static {p1}, Leu/medsea/mimeutil/MimeUtil;->getMimeTypes([B)Ljava/util/Collection;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1e

    .line 24
    const-string p2, "octet-stream"

    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_1e
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_3c

    .line 37
    sget-object p2, Lcom/android/fileexplorer/encryption/FixCorrupt;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    const-string v1, "Decoded mime type: "

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    invoke-static {p2, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/4 p1, 0x0

    .line 60
    return p1

    .line 61
    :cond_3c
    return v0
.end method

.method private needToFix([B)Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/analytics/DeviceIdGenerator;->getOldDeviceId()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->decryptHeader([BLjava/lang/String;)[B

    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/encryption/FixCorrupt;->isCorruptHeader([BLjava/lang/String;)Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method private testHeader([BLjava/util/List;Ljava/lang/String;)Landroid/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_49

    .line 4
    if-nez p2, :cond_6

    .line 6
    goto :goto_49

    .line 7
    :cond_6
    const/4 v1, 0x0

    .line 8
    :goto_7
    iget-object v2, p0, Lcom/android/fileexplorer/encryption/FixCorrupt;->mDeviceIds:Ljava/util/List;

    .line 10
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 13
    move-result v2

    .line 14
    add-int/lit8 v2, v2, -0x1

    .line 16
    if-ge v1, v2, :cond_49

    .line 18
    add-int/lit8 v2, v1, 0x1

    .line 20
    move v3, v2

    .line 21
    :goto_14
    iget-object v4, p0, Lcom/android/fileexplorer/encryption/FixCorrupt;->mDeviceIds:Ljava/util/List;

    .line 23
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 26
    move-result v4

    .line 27
    if-ge v3, v4, :cond_47

    .line 29
    iget-object v4, p0, Lcom/android/fileexplorer/encryption/FixCorrupt;->mDeviceIds:Ljava/util/List;

    .line 31
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Ljava/lang/String;

    .line 37
    iget-object v5, p0, Lcom/android/fileexplorer/encryption/FixCorrupt;->mDeviceIds:Ljava/util/List;

    .line 39
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v5

    .line 43
    check-cast v5, Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1, v4, v5, p2}, Lcom/android/fileexplorer/encryption/FixCorrupt;->getParsedHeader([BLjava/lang/String;Ljava/lang/String;Ljava/util/List;)[B

    .line 48
    move-result-object v4

    .line 49
    invoke-direct {p0, v4, p3}, Lcom/android/fileexplorer/encryption/FixCorrupt;->isCorruptHeader([BLjava/lang/String;)Z

    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_44

    .line 55
    new-instance p1, Landroid/util/Pair;

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object p2

    .line 61
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object p3

    .line 65
    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    return-object p1

    .line 69
    :cond_44
    add-int/lit8 v3, v3, 0x1

    .line 71
    goto :goto_14

    .line 72
    :cond_47
    move v1, v2

    .line 73
    goto :goto_7

    .line 74
    :cond_49
    :goto_49
    return-object v0
.end method


# virtual methods
.method public fix()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/encryption/FixCorrupt;->mList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3c

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/encryption/FixCorrupt;->mOrders:Landroid/util/Pair;

    .line 11
    if-nez v0, :cond_d

    .line 13
    goto :goto_3c

    .line 14
    :cond_d
    const-string v0, "eu.medsea.mimeutil.detector.MagicMimeMimeDetector"

    .line 16
    invoke-static {v0}, Leu/medsea/mimeutil/MimeUtil;->registerMimeDetector(Ljava/lang/String;)Leu/medsea/mimeutil/detector/MimeDetector;

    .line 19
    sget-object v0, Lcom/android/fileexplorer/encryption/FixCorrupt;->TAG:Ljava/lang/String;

    .line 21
    const-string v1, "######Start restore all files#####"

    .line 23
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const-string v2, "Restore order: "

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v2, p0, Lcom/android/fileexplorer/encryption/FixCorrupt;->mOrders:Landroid/util/Pair;

    .line 38
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 40
    check-cast v2, Ljava/util/List;

    .line 42
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/encryption/FixCorrupt;->getOrderString(Ljava/util/List;)Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/android/fileexplorer/encryption/FixCorrupt;->fixAll()V

    .line 59
    const/4 v0, 0x0

    .line 60
    return v0

    .line 61
    :cond_3c
    :goto_3c
    const/4 v0, 0x4

    .line 62
    return v0
.end method
