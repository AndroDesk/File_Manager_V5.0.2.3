.class public final Lr4/a;
.super Ljava/lang/Object;
.source "ApkLibraryInstaller.java"

# interfaces
.implements Lr4/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr4/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 1

    .line 1
    if-eqz p0, :cond_5

    .line 3
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    .line 6
    :catch_5
    :cond_5
    return-void
.end method

.method public static b(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lr4/e;)Lr4/a$a;
    .registers 20

    .line 1
    move-object/from16 v0, p1

    .line 3
    invoke-static/range {p0 .. p0}, Lr4/a;->d(Landroid/content/Context;)[Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    array-length v2, v1

    .line 8
    const/4 v3, 0x0

    .line 9
    move v4, v3

    .line 10
    :goto_9
    const/4 v5, 0x0

    .line 11
    if-ge v4, v2, :cond_79

    .line 13
    aget-object v6, v1, v4

    .line 15
    move v7, v3

    .line 16
    :goto_f
    add-int/lit8 v8, v7, 0x1

    .line 18
    const/4 v9, 0x5

    .line 19
    const/4 v10, 0x1

    .line 20
    if-ge v7, v9, :cond_23

    .line 22
    :try_start_15
    new-instance v7, Ljava/util/zip/ZipFile;

    .line 24
    new-instance v11, Ljava/io/File;

    .line 26
    invoke-direct {v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-direct {v7, v11, v10}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1f} :catch_21

    .line 32
    move-object v5, v7

    .line 33
    goto :goto_23

    .line 34
    :catch_21
    move v7, v8

    .line 35
    goto :goto_f

    .line 36
    :cond_23
    :goto_23
    if-nez v5, :cond_28

    .line 38
    move-object/from16 v12, p2

    .line 40
    goto :goto_76

    .line 41
    :cond_28
    move v7, v3

    .line 42
    :goto_29
    add-int/lit8 v8, v7, 0x1

    .line 44
    if-ge v7, v9, :cond_71

    .line 46
    array-length v7, v0

    .line 47
    move v11, v3

    .line 48
    :goto_2f
    if-ge v11, v7, :cond_6d

    .line 50
    aget-object v12, v0, v11

    .line 52
    const-string v13, "lib"

    .line 54
    invoke-static {v13}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    move-result-object v13

    .line 58
    sget-char v14, Ljava/io/File;->separatorChar:C

    .line 60
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    sget-char v12, Ljava/io/File;->separatorChar:C

    .line 68
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    move-object/from16 v12, p2

    .line 73
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v13

    .line 80
    const/4 v14, 0x2

    .line 81
    new-array v14, v14, [Ljava/lang/Object;

    .line 83
    aput-object v13, v14, v3

    .line 85
    aput-object v6, v14, v10

    .line 87
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    const-string v15, "Looking for %s in APK %s..."

    .line 92
    invoke-static {v15, v14}, Lr4/e;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v5, v13}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 98
    move-result-object v13

    .line 99
    if-eqz v13, :cond_6a

    .line 101
    new-instance v0, Lr4/a$a;

    .line 103
    invoke-direct {v0, v5, v13}, Lr4/a$a;-><init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V

    .line 106
    return-object v0

    .line 107
    :cond_6a
    add-int/lit8 v11, v11, 0x1

    .line 109
    goto :goto_2f

    .line 110
    :cond_6d
    move-object/from16 v12, p2

    .line 112
    move v7, v8

    .line 113
    goto :goto_29

    .line 114
    :cond_71
    move-object/from16 v12, p2

    .line 116
    :try_start_73
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_76

    .line 119
    :catch_76
    :goto_76
    add-int/lit8 v4, v4, 0x1

    .line 121
    goto :goto_9

    .line 122
    :cond_79
    return-object v5
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 9

    .line 1
    const-string v0, "lib"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, "([^\\"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, "]*)"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 42
    move-result-object p1

    .line 43
    new-instance v0, Ljava/util/HashSet;

    .line 45
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 48
    invoke-static {p0}, Lr4/a;->d(Landroid/content/Context;)[Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    array-length v1, p0

    .line 53
    const/4 v2, 0x0

    .line 54
    :goto_35
    if-ge v2, v1, :cond_6d

    .line 56
    aget-object v3, p0, v2

    .line 58
    :try_start_39
    new-instance v4, Ljava/util/zip/ZipFile;

    .line 60
    new-instance v5, Ljava/io/File;

    .line 62
    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    const/4 v3, 0x1

    .line 66
    invoke-direct {v4, v5, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_44} :catch_6a

    .line 69
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    .line 72
    move-result-object v4

    .line 73
    :cond_48
    :goto_48
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_6a

    .line 79
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 82
    move-result-object v5

    .line 83
    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 85
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {p1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_48

    .line 99
    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 106
    goto :goto_48

    .line 107
    :catch_6a
    :cond_6a
    add-int/lit8 v2, v2, 0x1

    .line 109
    goto :goto_35

    .line 110
    :cond_6d
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 113
    move-result p0

    .line 114
    new-array p0, p0, [Ljava/lang/String;

    .line 116
    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 119
    move-result-object p0

    .line 120
    check-cast p0, [Ljava/lang/String;

    .line 122
    return-object p0
.end method

.method public static d(Landroid/content/Context;)[Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 4
    move-result-object p0

    .line 5
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_1a

    .line 11
    array-length v3, v0

    .line 12
    if-eqz v3, :cond_1a

    .line 14
    array-length v3, v0

    .line 15
    add-int/2addr v3, v2

    .line 16
    new-array v3, v3, [Ljava/lang/String;

    .line 18
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 20
    aput-object p0, v3, v1

    .line 22
    array-length p0, v0

    .line 23
    invoke-static {v0, v1, v3, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    return-object v3

    .line 27
    :cond_1a
    new-array v0, v2, [Ljava/lang/String;

    .line 29
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 31
    aput-object p0, v0, v1

    .line 33
    return-object v0
.end method
