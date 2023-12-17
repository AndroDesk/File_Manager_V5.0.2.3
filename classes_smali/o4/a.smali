.class public final Lo4/a;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static final a:[B

.field public static final b:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [B

    .line 4
    fill-array-data v1, :array_10

    .line 7
    sput-object v1, Lo4/a;->a:[B

    .line 9
    new-array v0, v0, [B

    .line 11
    fill-array-data v0, :array_16

    .line 14
    sput-object v0, Lo4/a;->b:[B

    .line 16
    return-void

    .line 17
    :array_10
    .array-data 1
        0x0t
        0x0t
        -0x5ct
        -0x7ft
    .end array-data

    .line 23
    :array_16
    .array-data 1
        0x0t
        0x0t
        -0x13t
        0x41t
    .end array-data
.end method

.method public static a(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V
    .registers 4

    .line 1
    invoke-static {p1, p0}, La/b;->J(IB)Z

    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_9

    .line 7
    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_9
    return-void
.end method

.method public static b(Ljava/io/File;)[Ljava/io/File;
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "."

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 10
    move-result v1

    .line 11
    const/4 v2, -0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-ne v1, v2, :cond_f

    .line 15
    goto :goto_13

    .line 16
    :cond_f
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    :goto_13
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 23
    move-result-object p0

    .line 24
    new-instance v1, Lo4/a$a;

    .line 26
    invoke-direct {v1, v0}, Lo4/a$a;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 32
    move-result-object p0

    .line 33
    if-nez p0, :cond_25

    .line 35
    new-array p0, v3, [Ljava/io/File;

    .line 37
    return-object p0

    .line 38
    :cond_25
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 41
    return-object p0
.end method

.method public static c(Ljava/io/File;)[B
    .registers 3

    .line 1
    const/4 v0, 0x4

    .line 2
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 5
    move-result-object v1

    .line 6
    invoke-static {v1}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_14

    .line 12
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_14

    .line 18
    new-array p0, v0, [B

    .line 20
    return-object p0

    .line 21
    :cond_14
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 24
    move-result-object p0

    .line 25
    invoke-static {}, Lo4/a;->m()Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_23

    .line 31
    invoke-static {p0}, Lo4/a;->h(Ljava/nio/file/Path;)[B

    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_23
    invoke-static {}, Lo4/a;->j()Z

    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_33

    .line 42
    invoke-static {}, Lo4/a;->l()Z

    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_30

    .line 48
    goto :goto_33

    .line 49
    :cond_30
    new-array p0, v0, [B

    .line 51
    return-object p0

    .line 52
    :cond_33
    :goto_33
    invoke-static {p0}, Lo4/a;->f(Ljava/nio/file/Path;)[B

    .line 55
    move-result-object p0
    :try_end_37
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_37} :catch_38

    .line 56
    return-object p0

    .line 57
    :catch_38
    new-array p0, v0, [B

    .line 59
    return-object p0
.end method

.method public static d(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)Ljava/util/ArrayList;
    .registers 9

    .line 1
    if-eqz p0, :cond_54

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_53

    .line 18
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_53

    .line 24
    if-nez v1, :cond_1a

    .line 26
    goto :goto_53

    .line 27
    :cond_1a
    array-length p0, v1

    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_1c
    if-ge v2, p0, :cond_53

    .line 31
    aget-object v3, v1, v2

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-virtual {v3}, Ljava/io/File;->isHidden()Z

    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_2e

    .line 42
    iget-boolean v4, p1, Lnet/lingala/zip4j/model/ZipParameters;->e:Z

    .line 44
    if-nez v4, :cond_2e

    .line 46
    goto :goto_50

    .line 47
    :cond_2e
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v4, p1, Lnet/lingala/zip4j/model/ZipParameters;->r:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 52
    invoke-static {v3}, Lo4/a;->k(Ljava/io/File;)Z

    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_41

    .line 58
    sget-object v6, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINK_ONLY:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 60
    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_49

    .line 66
    :cond_41
    if-nez v5, :cond_50

    .line 68
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_50

    .line 74
    :cond_49
    invoke-static {v3, p1}, Lo4/a;->d(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)Ljava/util/ArrayList;

    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 81
    :cond_50
    :goto_50
    add-int/lit8 v2, v2, 0x1

    .line 83
    goto :goto_1c

    .line 84
    :cond_53
    :goto_53
    return-object v0

    .line 85
    :cond_54
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 87
    const-string p1, "input path is null, cannot read files in the directory"

    .line 89
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 92
    throw p0
.end method

.method public static e(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p1}, La/b;->O(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-object p1

    .line 8
    :cond_7
    invoke-static {p0}, Lo4/a;->k(Ljava/io/File;)Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_26

    .line 14
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 17
    move-result-object p0

    .line 18
    const/4 p1, 0x1

    .line 19
    new-array p1, p1, [Ljava/nio/file/LinkOption;

    .line 21
    const/4 v0, 0x0

    .line 22
    sget-object v1, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    .line 24
    aput-object v1, p1, v0

    .line 26
    invoke-interface {p0, p1}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_26
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static f(Ljava/nio/file/Path;)[B
    .registers 12

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [B

    .line 4
    :try_start_3
    const-class v2, Ljava/nio/file/attribute/PosixFileAttributeView;

    .line 6
    const/4 v3, 0x1

    .line 7
    new-array v4, v3, [Ljava/nio/file/LinkOption;

    .line 9
    sget-object v5, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    .line 11
    const/4 v6, 0x0

    .line 12
    aput-object v5, v4, v6

    .line 14
    invoke-static {p0, v2, v4}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ljava/nio/file/attribute/PosixFileAttributeView;

    .line 20
    invoke-interface {v2}, Ljava/nio/file/attribute/PosixFileAttributeView;->readAttributes()Ljava/nio/file/attribute/PosixFileAttributes;

    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v2}, Ljava/nio/file/attribute/PosixFileAttributes;->permissions()Ljava/util/Set;

    .line 27
    move-result-object v2

    .line 28
    invoke-static {p0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    .line 31
    move-result v4

    .line 32
    const/4 v5, 0x7

    .line 33
    const/4 v7, 0x6

    .line 34
    const/4 v8, 0x3

    .line 35
    if-eqz v4, :cond_33

    .line 37
    aget-byte p0, v1, v8

    .line 39
    const/16 v9, 0x80

    .line 41
    or-int/2addr p0, v9

    .line 42
    int-to-byte p0, p0

    .line 43
    aput-byte p0, v1, v8

    .line 45
    invoke-static {v7, p0}, La/b;->f0(IB)B

    .line 48
    move-result p0

    .line 49
    aput-byte p0, v1, v8

    .line 51
    goto :goto_4f

    .line 52
    :cond_33
    new-array v9, v6, [Ljava/nio/file/LinkOption;

    .line 54
    invoke-static {p0, v9}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 57
    move-result v9

    .line 58
    aget-byte v10, v1, v8

    .line 60
    invoke-static {v9, v10, v5}, Lo4/a;->p(ZBI)B

    .line 63
    move-result v9

    .line 64
    aput-byte v9, v1, v8

    .line 66
    new-array v9, v6, [Ljava/nio/file/LinkOption;

    .line 68
    invoke-static {p0, v9}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 71
    move-result p0

    .line 72
    aget-byte v9, v1, v8

    .line 74
    invoke-static {p0, v9, v7}, Lo4/a;->p(ZBI)B

    .line 77
    move-result p0

    .line 78
    aput-byte p0, v1, v8

    .line 80
    :goto_4f
    aget-byte p0, v1, v8

    .line 82
    const/4 v9, 0x5

    .line 83
    invoke-static {v4, p0, v9}, Lo4/a;->p(ZBI)B

    .line 86
    move-result p0

    .line 87
    aput-byte p0, v1, v8

    .line 89
    sget-object p0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    .line 91
    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 94
    move-result p0

    .line 95
    aget-byte v4, v1, v8

    .line 97
    invoke-static {p0, v4, v6}, Lo4/a;->p(ZBI)B

    .line 100
    move-result p0

    .line 101
    aput-byte p0, v1, v8

    .line 103
    sget-object p0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 105
    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 108
    move-result p0

    .line 109
    const/4 v4, 0x2

    .line 110
    aget-byte v10, v1, v4

    .line 112
    invoke-static {p0, v10, v5}, Lo4/a;->p(ZBI)B

    .line 115
    move-result p0

    .line 116
    aput-byte p0, v1, v4

    .line 118
    sget-object p0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 120
    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 123
    move-result p0

    .line 124
    aget-byte v5, v1, v4

    .line 126
    invoke-static {p0, v5, v7}, Lo4/a;->p(ZBI)B

    .line 129
    move-result p0

    .line 130
    aput-byte p0, v1, v4

    .line 132
    sget-object p0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    .line 134
    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 137
    move-result p0

    .line 138
    aget-byte v5, v1, v4

    .line 140
    invoke-static {p0, v5, v9}, Lo4/a;->p(ZBI)B

    .line 143
    move-result p0

    .line 144
    aput-byte p0, v1, v4

    .line 146
    sget-object p0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 148
    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 151
    move-result p0

    .line 152
    aget-byte v5, v1, v4

    .line 154
    invoke-static {p0, v5, v0}, Lo4/a;->p(ZBI)B

    .line 157
    move-result p0

    .line 158
    aput-byte p0, v1, v4

    .line 160
    sget-object p0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 162
    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 165
    move-result p0

    .line 166
    aget-byte v0, v1, v4

    .line 168
    invoke-static {p0, v0, v8}, Lo4/a;->p(ZBI)B

    .line 171
    move-result p0

    .line 172
    aput-byte p0, v1, v4

    .line 174
    sget-object p0, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    .line 176
    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 179
    move-result p0

    .line 180
    aget-byte v0, v1, v4

    .line 182
    invoke-static {p0, v0, v4}, Lo4/a;->p(ZBI)B

    .line 185
    move-result p0

    .line 186
    aput-byte p0, v1, v4

    .line 188
    sget-object p0, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 190
    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 193
    move-result p0

    .line 194
    aget-byte v0, v1, v4

    .line 196
    invoke-static {p0, v0, v3}, Lo4/a;->p(ZBI)B

    .line 199
    move-result p0

    .line 200
    aput-byte p0, v1, v4

    .line 202
    sget-object p0, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 204
    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 207
    move-result p0

    .line 208
    aget-byte v0, v1, v4

    .line 210
    invoke-static {p0, v0, v6}, Lo4/a;->p(ZBI)B

    .line 213
    move-result p0

    .line 214
    aput-byte p0, v1, v4
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d7} :catch_d7

    .line 216
    :catch_d7
    return-object v1
.end method

.method public static g(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)Ljava/lang/String;
    .registers 9

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p1, Lnet/lingala/zip4j/model/ZipParameters;->j:Ljava/lang/String;

    .line 7
    invoke-static {v1}, La/b;->O(Ljava/lang/String;)Z

    .line 10
    move-result v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_193

    .line 11
    const-string v2, "\\\\"

    .line 13
    const-string v3, "/"

    .line 15
    if-eqz v1, :cond_106

    .line 17
    :try_start_10
    new-instance v1, Ljava/io/File;

    .line 19
    iget-object v4, p1, Lnet/lingala/zip4j/model/ZipParameters;->j:Ljava/lang/String;

    .line 21
    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    sget-object v4, Lo4/b;->a:Ljava/lang/String;

    .line 30
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 33
    move-result v5

    .line 34
    if-nez v5, :cond_32

    .line 36
    new-instance v5, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    :cond_32
    invoke-static {p0}, Lo4/a;->k(Ljava/io/File;)Z

    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_72

    .line 57
    new-instance v4, Ljava/io/File;

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 67
    move-result-object v6

    .line 68
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 91
    move-result-object v6

    .line 92
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v5

    .line 99
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 109
    move-result v1

    .line 110
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 113
    move-result-object v1

    .line 114
    goto :goto_af

    .line 115
    :cond_72
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 126
    move-result v5

    .line 127
    if-nez v5, :cond_a7

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    .line 131
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 141
    move-result-object v5

    .line 142
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 145
    move-result-object v5

    .line 146
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object v1

    .line 167
    goto :goto_af

    .line 168
    :cond_a7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 171
    move-result v1

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 175
    move-result-object v1

    .line 176
    :goto_af
    const-string v4, "file.separator"

    .line 178
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    move-result-object v4

    .line 182
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 185
    move-result v4

    .line 186
    if-eqz v4, :cond_c0

    .line 188
    const/4 v4, 0x1

    .line 189
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 192
    move-result-object v1

    .line 193
    :cond_c0
    new-instance v4, Ljava/io/File;

    .line 195
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_df

    .line 204
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    move-result-object v0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    .line 210
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    move-result-object v0

    .line 223
    goto :goto_126

    .line 224
    :cond_df
    const/4 v0, 0x0

    .line 225
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 228
    move-result-object v5

    .line 229
    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 232
    move-result v5

    .line 233
    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    move-result-object v0

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    .line 243
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget-object v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->k:Ljava/lang/String;

    .line 251
    invoke-static {v4, v0}, Lo4/a;->e(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    move-result-object v0

    .line 262
    goto :goto_126

    .line 263
    :cond_106
    new-instance v1, Ljava/io/File;

    .line 265
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    iget-object v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->k:Ljava/lang/String;

    .line 270
    invoke-static {v1, v0}, Lo4/a;->e(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 277
    move-result v1

    .line 278
    if-eqz v1, :cond_126

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    .line 282
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    move-result-object v0
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_126} :catch_193

    .line 295
    :cond_126
    :goto_126
    iget-object v1, p1, Lnet/lingala/zip4j/model/ZipParameters;->p:Ljava/lang/String;

    .line 297
    invoke-static {v1}, La/b;->O(Ljava/lang/String;)Z

    .line 300
    move-result v4

    .line 301
    if-eqz v4, :cond_151

    .line 303
    const-string v4, "\\"

    .line 305
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 308
    move-result v4

    .line 309
    if-nez v4, :cond_149

    .line 311
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 314
    move-result v4

    .line 315
    if-nez v4, :cond_149

    .line 317
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    move-result-object v1

    .line 321
    sget-object v4, Lo4/b;->a:Ljava/lang/String;

    .line 323
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    move-result-object v1

    .line 330
    :cond_149
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 333
    move-result-object v1

    .line 334
    invoke-static {v1, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 337
    move-result-object v0

    .line 338
    :cond_151
    invoke-static {v0}, La/b;->O(Ljava/lang/String;)Z

    .line 341
    move-result v2

    .line 342
    if-nez v2, :cond_192

    .line 344
    const-string v2, "fileName to add to zip is empty or null. fileName: \'"

    .line 346
    const-string v3, "\' DefaultFolderPath: \'"

    .line 348
    invoke-static {v2, v0, v3}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    move-result-object v0

    .line 352
    iget-object v2, p1, Lnet/lingala/zip4j/model/ZipParameters;->j:Ljava/lang/String;

    .line 354
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    const-string v2, "\' FileNameInZip: "

    .line 359
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    iget-object p1, p1, Lnet/lingala/zip4j/model/ZipParameters;->k:Ljava/lang/String;

    .line 364
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    move-result-object p1

    .line 371
    invoke-static {p0}, Lo4/a;->k(Ljava/io/File;)Z

    .line 374
    move-result p0

    .line 375
    if-eqz p0, :cond_17e

    .line 377
    const-string p0, "isSymlink: true "

    .line 379
    invoke-static {p1, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 382
    move-result-object p1

    .line 383
    :cond_17e
    invoke-static {v1}, La/b;->O(Ljava/lang/String;)Z

    .line 386
    move-result p0

    .line 387
    if-eqz p0, :cond_18c

    .line 389
    const-string p0, "rootFolderNameInZip: \'"

    .line 391
    const-string p1, "\' "

    .line 393
    invoke-static {p0, v1, p1}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 396
    move-result-object p1

    .line 397
    :cond_18c
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 399
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 402
    throw p0

    .line 403
    :cond_192
    return-object v0

    .line 404
    :catch_193
    move-exception p0

    .line 405
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 407
    invoke-direct {p1, p0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 410
    throw p1
.end method

.method public static h(Ljava/nio/file/Path;)[B
    .registers 8

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [B

    .line 4
    :try_start_3
    const-class v2, Ljava/nio/file/attribute/DosFileAttributeView;

    .line 6
    const/4 v3, 0x1

    .line 7
    new-array v4, v3, [Ljava/nio/file/LinkOption;

    .line 9
    sget-object v5, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    .line 11
    const/4 v6, 0x0

    .line 12
    aput-object v5, v4, v6

    .line 14
    invoke-static {p0, v2, v4}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/nio/file/attribute/DosFileAttributeView;

    .line 20
    if-nez p0, :cond_16

    .line 22
    return-object v1

    .line 23
    :cond_16
    invoke-interface {p0}, Ljava/nio/file/attribute/DosFileAttributeView;->readAttributes()Ljava/nio/file/attribute/DosFileAttributes;

    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0}, Ljava/nio/file/attribute/DosFileAttributes;->isReadOnly()Z

    .line 30
    move-result v2

    .line 31
    invoke-static {v2, v6, v6}, Lo4/a;->p(ZBI)B

    .line 34
    move-result v2

    .line 35
    invoke-interface {p0}, Ljava/nio/file/attribute/DosFileAttributes;->isHidden()Z

    .line 38
    move-result v4

    .line 39
    invoke-static {v4, v2, v3}, Lo4/a;->p(ZBI)B

    .line 42
    move-result v2

    .line 43
    invoke-interface {p0}, Ljava/nio/file/attribute/DosFileAttributes;->isSystem()Z

    .line 46
    move-result v3

    .line 47
    const/4 v4, 0x2

    .line 48
    invoke-static {v3, v2, v4}, Lo4/a;->p(ZBI)B

    .line 51
    move-result v2

    .line 52
    invoke-interface {p0}, Ljava/nio/file/attribute/DosFileAttributes;->isDirectory()Z

    .line 55
    move-result v3

    .line 56
    invoke-static {v3, v2, v0}, Lo4/a;->p(ZBI)B

    .line 59
    move-result v0

    .line 60
    invoke-interface {p0}, Ljava/nio/file/attribute/DosFileAttributes;->isArchive()Z

    .line 63
    move-result p0

    .line 64
    const/4 v2, 0x5

    .line 65
    invoke-static {p0, v0, v2}, Lo4/a;->p(ZBI)B

    .line 68
    move-result p0

    .line 69
    aput-byte p0, v1, v6
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_46} :catch_46

    .line 71
    :catch_46
    return-object v1
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, La/b;->O(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_34

    .line 7
    const-string v0, "file.separator"

    .line 9
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_20

    .line 19
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 26
    move-result v0

    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    :cond_20
    const-string v0, ".zip"

    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_33

    .line 41
    const/4 v0, 0x0

    .line 42
    const-string v1, "."

    .line 44
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 47
    move-result v1

    .line 48
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    :cond_33
    return-object p0

    .line 53
    :cond_34
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 55
    const-string v0, "zip file name is empty or null, cannot determine zip file name"

    .line 57
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p0
.end method

.method public static j()Z
    .registers 2

    .line 1
    const-string v0, "os.name"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "mac"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public static k(Ljava/io/File;)Z
    .registers 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    .line 8
    move-result p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_8} :catch_9

    .line 9
    return p0

    .line 10
    :catch_9
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public static l()Z
    .registers 2

    .line 1
    const-string v0, "os.name"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "nux"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public static m()Z
    .registers 2

    .line 1
    const-string v0, "os.name"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "win"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public static n(Ljava/lang/String;)Z
    .registers 2

    .line 1
    const-string v0, "/"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_13

    .line 9
    const-string v0, "\\"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_11

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    const/4 p0, 0x0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    :goto_13
    const/4 p0, 0x1

    .line 21
    :goto_14
    return p0
.end method

.method public static o(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/nio/file/Files;->readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    .line 12
    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_c} :catch_d

    .line 13
    return-object p0

    .line 14
    :catch_d
    const-string p0, ""

    .line 16
    return-object p0
.end method

.method public static p(ZBI)B
    .registers 3

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    shl-int/2addr p0, p2

    or-int/2addr p0, p1

    int-to-byte p1, p0

    :cond_6
    return p1
.end method

.method public static q(Ljava/nio/file/Path;[B)V
    .registers 11

    .line 1
    if-eqz p1, :cond_ae

    .line 3
    array-length v0, p1

    .line 4
    if-nez v0, :cond_7

    .line 6
    goto/16 :goto_ae

    .line 8
    :cond_7
    invoke-static {}, Lo4/a;->m()Z

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x5

    .line 13
    const/4 v2, 0x2

    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v0, :cond_4e

    .line 18
    aget-byte v0, p1, v4

    .line 20
    if-nez v0, :cond_17

    .line 22
    goto/16 :goto_ae

    .line 24
    :cond_17
    const-class v0, Ljava/nio/file/attribute/DosFileAttributeView;

    .line 26
    new-array v5, v3, [Ljava/nio/file/LinkOption;

    .line 28
    sget-object v6, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    .line 30
    aput-object v6, v5, v4

    .line 32
    invoke-static {p0, v0, v5}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Ljava/nio/file/attribute/DosFileAttributeView;

    .line 38
    if-nez p0, :cond_29

    .line 40
    goto/16 :goto_ae

    .line 42
    :cond_29
    :try_start_29
    aget-byte v0, p1, v4

    .line 44
    invoke-static {v4, v0}, La/b;->J(IB)Z

    .line 47
    move-result v0

    .line 48
    invoke-interface {p0, v0}, Ljava/nio/file/attribute/DosFileAttributeView;->setReadOnly(Z)V

    .line 51
    aget-byte v0, p1, v4

    .line 53
    invoke-static {v3, v0}, La/b;->J(IB)Z

    .line 56
    move-result v0

    .line 57
    invoke-interface {p0, v0}, Ljava/nio/file/attribute/DosFileAttributeView;->setHidden(Z)V

    .line 60
    aget-byte v0, p1, v4

    .line 62
    invoke-static {v2, v0}, La/b;->J(IB)Z

    .line 65
    move-result v0

    .line 66
    invoke-interface {p0, v0}, Ljava/nio/file/attribute/DosFileAttributeView;->setSystem(Z)V

    .line 69
    aget-byte p1, p1, v4

    .line 71
    invoke-static {v1, p1}, La/b;->J(IB)Z

    .line 74
    move-result p1

    .line 75
    invoke-interface {p0, p1}, Ljava/nio/file/attribute/DosFileAttributeView;->setArchive(Z)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_4d} :catch_ae

    .line 78
    goto :goto_ae

    .line 79
    :cond_4e
    invoke-static {}, Lo4/a;->j()Z

    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_5a

    .line 85
    invoke-static {}, Lo4/a;->l()Z

    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_ae

    .line 91
    :cond_5a
    aget-byte v0, p1, v2

    .line 93
    const/4 v5, 0x3

    .line 94
    if-nez v0, :cond_64

    .line 96
    aget-byte v0, p1, v5

    .line 98
    if-nez v0, :cond_64

    .line 100
    goto :goto_ae

    .line 101
    :cond_64
    :try_start_64
    new-instance v0, Ljava/util/HashSet;

    .line 103
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 106
    aget-byte v6, p1, v5

    .line 108
    sget-object v7, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    .line 110
    invoke-static {v6, v4, v0, v7}, Lo4/a;->a(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 113
    aget-byte v6, p1, v2

    .line 115
    const/4 v7, 0x7

    .line 116
    sget-object v8, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 118
    invoke-static {v6, v7, v0, v8}, Lo4/a;->a(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 121
    aget-byte v6, p1, v2

    .line 123
    const/4 v7, 0x6

    .line 124
    sget-object v8, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 126
    invoke-static {v6, v7, v0, v8}, Lo4/a;->a(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 129
    aget-byte v6, p1, v2

    .line 131
    sget-object v7, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    .line 133
    invoke-static {v6, v1, v0, v7}, Lo4/a;->a(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 136
    aget-byte v1, p1, v2

    .line 138
    const/4 v6, 0x4

    .line 139
    sget-object v7, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 141
    invoke-static {v1, v6, v0, v7}, Lo4/a;->a(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 144
    aget-byte v1, p1, v2

    .line 146
    sget-object v6, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 148
    invoke-static {v1, v5, v0, v6}, Lo4/a;->a(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 151
    aget-byte v1, p1, v2

    .line 153
    sget-object v5, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    .line 155
    invoke-static {v1, v2, v0, v5}, Lo4/a;->a(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 158
    aget-byte v1, p1, v2

    .line 160
    sget-object v5, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 162
    invoke-static {v1, v3, v0, v5}, Lo4/a;->a(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 165
    aget-byte p1, p1, v2

    .line 167
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 169
    invoke-static {p1, v4, v0, v1}, Lo4/a;->a(BILjava/util/HashSet;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 172
    invoke-static {p0, v0}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_ae} :catch_ae

    .line 175
    :catch_ae
    :cond_ae
    :goto_ae
    return-void
.end method

.method public static r(Ljava/nio/file/Path;J)V
    .registers 5

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v0, p1, v0

    .line 5
    if-lez v0, :cond_1b

    .line 7
    const/4 v0, 0x0

    .line 8
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    .line 10
    invoke-static {p0, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_10

    .line 16
    goto :goto_1b

    .line 17
    :cond_10
    :try_start_10
    invoke-static {p1, p2}, La/b;->v(J)J

    .line 20
    move-result-wide p1

    .line 21
    invoke-static {p1, p2}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    .line 24
    move-result-object p1

    .line 25
    invoke-static {p0, p1}, Ljava/nio/file/Files;->setLastModifiedTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;)Ljava/nio/file/Path;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1b} :catch_1b

    .line 28
    :catch_1b
    :cond_1b
    :goto_1b
    return-void
.end method
