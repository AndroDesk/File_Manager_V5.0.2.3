.class public Lcom/xiaomi/onetrack/util/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/util/k$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "FileUtil"

.field private static final b:Ljava/lang/String; = "onetrack"

.field private static final c:Ljava/lang/String; = "tombstone"

.field private static d:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/onetrack/util/k$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/xiaomi/onetrack/util/l;

    .line 3
    const/high16 v1, 0x100000

    .line 5
    invoke-direct {v0, v1}, Lcom/xiaomi/onetrack/util/l;-><init>(I)V

    .line 8
    sput-object v0, Lcom/xiaomi/onetrack/util/k;->d:Landroid/util/LruCache;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    const-string v0, "tombstone"

    .line 36
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    .line 20
    :cond_9
    sget-object v0, Lcom/xiaomi/onetrack/util/k;->d:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/onetrack/util/k$a;

    if-eqz v0, :cond_16

    .line 21
    iget-object p0, v0, Lcom/xiaomi/onetrack/util/k$a;->a:Ljava/lang/String;

    return-object p0

    :cond_16
    const/4 v0, 0x0

    .line 22
    :try_start_17
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/onetrack/util/k;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 25
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_35} :catch_5c
    .catchall {:try_start_17 .. :try_end_35} :catchall_5a

    .line 26
    :goto_35
    :try_start_35
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_40

    .line 27
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_35

    :cond_3f
    move-object v4, v0

    .line 28
    :cond_40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 29
    new-instance v3, Lcom/xiaomi/onetrack/util/k$a;

    invoke-direct {v3, v0}, Lcom/xiaomi/onetrack/util/k$a;-><init>(Lcom/xiaomi/onetrack/util/l;)V

    .line 30
    iput-object v2, v3, Lcom/xiaomi/onetrack/util/k$a;->a:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/xiaomi/onetrack/util/k;->d:Landroid/util/LruCache;

    invoke-virtual {v0, p0, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_50} :catch_57
    .catchall {:try_start_35 .. :try_end_50} :catchall_54

    .line 32
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    return-object v2

    :catchall_54
    move-exception p0

    move-object v0, v4

    goto :goto_7b

    :catch_57
    move-exception p0

    move-object v0, v4

    goto :goto_5d

    :catchall_5a
    move-exception p0

    goto :goto_7b

    :catch_5c
    move-exception p0

    :goto_5d
    :try_start_5d
    const-string v2, "FileUtil"

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/xiaomi/onetrack/util/p;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_5d .. :try_end_77} :catchall_5a

    .line 34
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    return-object v1

    :goto_7b
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 35
    throw p0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 37
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 40
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_4e
    .catchall {:try_start_1 .. :try_end_1b} :catchall_4c

    .line 41
    :cond_1b
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 42
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v1, p1, :cond_1b

    goto :goto_31

    :cond_30
    move-object v2, v0

    .line 44
    :cond_31
    :goto_31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v1, p1, :cond_42

    const/4 v1, 0x0

    add-int/lit8 p1, p1, -0x1

    .line 45
    invoke-virtual {p0, v1, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3e} :catch_4a
    .catchall {:try_start_1b .. :try_end_3e} :catchall_6e

    .line 46
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    return-object p0

    .line 47
    :cond_42
    :try_start_42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_46} :catch_4a
    .catchall {:try_start_42 .. :try_end_46} :catchall_6e

    .line 48
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    return-object p0

    :catch_4a
    move-exception p0

    goto :goto_50

    :catchall_4c
    move-exception p0

    goto :goto_70

    :catch_4e
    move-exception p0

    move-object v2, v0

    :goto_50
    :try_start_50
    const-string p1, "FileUtil"

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get error:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_50 .. :try_end_6a} :catchall_6e

    .line 50
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_6e
    move-exception p0

    move-object v0, v2

    :goto_70
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 51
    throw p0
.end method

.method public static a(Ljava/io/File;)V
    .registers 3

    .line 52
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 53
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_33

    :catch_10
    move-exception v0

    const-string v1, "failed to remove file: "

    .line 54
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 55
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FileUtil"

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    :goto_33
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_7e

    :cond_e
    const/4 v0, 0x0

    .line 2
    :try_start_f
    new-instance v1, Lcom/xiaomi/onetrack/util/k$a;

    invoke-direct {v1, v0}, Lcom/xiaomi/onetrack/util/k$a;-><init>(Lcom/xiaomi/onetrack/util/l;)V

    .line 3
    iput-object p1, v1, Lcom/xiaomi/onetrack/util/k$a;->a:Ljava/lang/String;

    .line 4
    sget-object v2, Lcom/xiaomi/onetrack/util/k;->d:Landroid/util/LruCache;

    invoke-virtual {v2, p0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/xiaomi/onetrack/util/k;->b()Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 8
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 9
    :cond_2d
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_3b

    .line 11
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 12
    :cond_3b
    new-instance p0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v2, 0x400

    invoke-direct {p0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_47} :catch_5b
    .catchall {:try_start_f .. :try_end_47} :catchall_59

    .line 13
    :try_start_47
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4d} :catch_55
    .catchall {:try_start_47 .. :try_end_4d} :catchall_51

    .line 15
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    goto :goto_79

    :catchall_51
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_7a

    :catch_55
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_5c

    :catchall_59
    move-exception p0

    goto :goto_7a

    :catch_5b
    move-exception p0

    :goto_5c
    :try_start_5c
    const-string p1, "FileUtil"

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "put error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_5c .. :try_end_76} :catchall_59

    .line 17
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    :goto_79
    return-void

    :goto_7a
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/m;->a(Ljava/io/Closeable;)V

    .line 18
    throw p0

    :cond_7e
    :goto_7e
    return-void
.end method

.method private static b()Ljava/lang/String;
    .registers 1

    const-string v0, "onetrack"

    .line 1
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .registers 3

    .line 2
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 3
    :cond_7
    sget-object v0, Lcom/xiaomi/onetrack/util/k;->d:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/onetrack/util/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3c

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_3c

    :catch_25
    move-exception p0

    const-string v0, "clear error:"

    .line 7
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FileUtil"

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 20
    invoke-static {v1, v0, p0}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    new-instance v0, Ljava/io/File;

    .line 26
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_2a

    .line 35
    :try_start_22
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    .line 38
    goto :goto_2a

    .line 39
    :catch_26
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    :cond_2a
    :goto_2a
    return-object p0
.end method
