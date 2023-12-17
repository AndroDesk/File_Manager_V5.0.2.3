.class public Lcom/android/fileexplorer/model/DocModelLoader;
.super Ljava/lang/Object;
.source "DocModelLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader<",
        "Lcom/android/fileexplorer/model/DocRequest;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "DocModelLoader"


# instance fields
.field public multiFactory:Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/model/DocModelLoader;->multiFactory:Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;

    .line 6
    return-void
.end method


# virtual methods
.method public buildLoadData(Lcom/android/fileexplorer/model/DocRequest;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/model/DocRequest;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La/b;->P(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/model/DocModelLoader;->multiFactory:Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;

    const-class v1, Lz1/a;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->build(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    goto :goto_1f

    .line 4
    :cond_15
    iget-object v0, p0, Lcom/android/fileexplorer/model/DocModelLoader;->multiFactory:Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;

    const-class v1, Ly1/a;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->build(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    .line 5
    :goto_1f
    :try_start_1f
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/DocModelLoader;->getSnapshotModelData(Lx1/b;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/model/ModelLoader;->buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object p1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_27} :catch_28

    return-object p1

    :catch_28
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .registers 5

    .line 1
    check-cast p1, Lcom/android/fileexplorer/model/DocRequest;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/model/DocModelLoader;->buildLoadData(Lcom/android/fileexplorer/model/DocRequest;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object p1

    return-object p1
.end method

.method public getSnapshotModelData(Lx1/b;)Ljava/lang/Object;
    .registers 7

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    iget-object v1, p1, Lx1/b;->inputPathStr:Ljava/lang/String;

    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_25

    .line 14
    sget-object v1, Lcom/android/fileexplorer/model/DocModelLoader;->TAG:Ljava/lang/String;

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    iget-object v3, p1, Lx1/b;->inputPathStr:Ljava/lang/String;

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v3, "not exists"

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_25
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    .line 45
    move-result-object v2

    .line 46
    const/4 v3, 0x1

    .line 47
    const-string v4, "cn.wps.moffice_eng.xiaomi.lite"

    .line 49
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    invoke-static {v1}, Lx1/a;->a(Landroid/content/Context;)Lx1/a;

    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    invoke-static {v0}, Lx1/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    new-instance v3, Lx1/b;

    .line 73
    invoke-direct {v3}, Lx1/b;-><init>()V

    .line 76
    invoke-virtual {v3, v2}, Lx1/b;->setFileUri(Landroid/net/Uri;)Lx1/b;

    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {p1}, Lx1/b;->getInputPathStr()Ljava/lang/String;

    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v2, v3}, Lx1/b;->setInputPathStr(Ljava/lang/String;)Lx1/b;

    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v2, v0}, Lx1/b;->setMimeType(Ljava/lang/String;)Lx1/b;

    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p1}, Lx1/b;->getResolution()Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v0, p1}, Lx1/b;->setResolution(Ljava/lang/String;)Lx1/b;

    .line 99
    move-result-object p1

    .line 100
    invoke-static {v1}, Lx1/a;->a(Landroid/content/Context;)Lx1/a;

    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0, p1}, Lx1/a;->c(Lx1/b;)Lcom/bumptech/glide/load/Key;

    .line 107
    move-result-object p1

    .line 108
    return-object p1
.end method

.method public handles(Lcom/android/fileexplorer/model/DocRequest;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    check-cast p1, Lcom/android/fileexplorer/model/DocRequest;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/DocModelLoader;->handles(Lcom/android/fileexplorer/model/DocRequest;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method
