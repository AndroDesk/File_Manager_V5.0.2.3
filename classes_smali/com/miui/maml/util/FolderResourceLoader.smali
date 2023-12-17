.class public Lcom/miui/maml/util/FolderResourceLoader;
.super Lcom/miui/maml/ResourceLoader;
.source "FolderResourceLoader.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FolderResourceLoader"


# instance fields
.field private mResourcePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/ResourceLoader;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/miui/maml/util/FolderResourceLoader;->mResourcePath:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "FolderResourceLoader"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/miui/maml/util/FolderResourceLoader;->mResourcePath:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .registers 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_39

    .line 8
    :try_start_7
    new-instance v0, Ljava/io/FileInputStream;

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    iget-object v3, p0, Lcom/miui/maml/util/FolderResourceLoader;->mResourcePath:Ljava/lang/String;

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v3, "/"

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_22} :catch_33

    .line 35
    if-eqz p2, :cond_38

    .line 37
    :try_start_24
    array-length p1, p2

    .line 38
    if-lez p1, :cond_38

    .line 40
    const/4 p1, 0x0

    .line 41
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 44
    move-result v1

    .line 45
    int-to-long v1, v1

    .line 46
    aput-wide v1, p2, p1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2f} :catch_30

    .line 48
    goto :goto_38

    .line 49
    :catch_30
    move-exception p1

    .line 50
    move-object v1, v0

    .line 51
    goto :goto_34

    .line 52
    :catch_33
    move-exception p1

    .line 53
    :goto_34
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    move-object v0, v1

    .line 57
    :cond_38
    :goto_38
    return-object v0

    .line 58
    :cond_39
    return-object v1
.end method

.method public resourceExists(Ljava/lang/String;)Z
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1d

    .line 7
    new-instance v0, Ljava/io/File;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    iget-object v2, p0, Lcom/miui/maml/util/FolderResourceLoader;->mResourcePath:Ljava/lang/String;

    .line 16
    const-string v3, "/"

    .line 18
    invoke-static {v1, v2, v3, p1}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_1d
    const/4 p1, 0x0

    .line 31
    return p1
.end method
