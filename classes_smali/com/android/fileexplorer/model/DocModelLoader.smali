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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/model/DocModelLoader;->multiFactory:Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;

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

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La/b;->P(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/fileexplorer/model/DocModelLoader;->multiFactory:Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;

    const-class v1, Lz1/a;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->build(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    goto :goto_1f

    :cond_15
    iget-object v0, p0, Lcom/android/fileexplorer/model/DocModelLoader;->multiFactory:Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;

    const-class v1, Ly1/a;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->build(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

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

    check-cast p1, Lcom/android/fileexplorer/model/DocRequest;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/model/DocModelLoader;->buildLoadData(Lcom/android/fileexplorer/model/DocRequest;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object p1

    return-object p1
.end method

.method public getSnapshotModelData(Lx1/b;)Ljava/lang/Object;
    .registers 7

    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lx1/b;->inputPathStr:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_25

    sget-object v1, Lcom/android/fileexplorer/model/DocModelLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lx1/b;->inputPathStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "not exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "cn.wps.moffice_eng.xiaomi.lite"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lx1/a;->a(Landroid/content/Context;)Lx1/a;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lx1/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lx1/b;

    invoke-direct {v3}, Lx1/b;-><init>()V

    invoke-virtual {v3, v2}, Lx1/b;->setFileUri(Landroid/net/Uri;)Lx1/b;

    move-result-object v2

    invoke-virtual {p1}, Lx1/b;->getInputPathStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lx1/b;->setInputPathStr(Ljava/lang/String;)Lx1/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lx1/b;->setMimeType(Ljava/lang/String;)Lx1/b;

    move-result-object v0

    invoke-virtual {p1}, Lx1/b;->getResolution()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lx1/b;->setResolution(Ljava/lang/String;)Lx1/b;

    move-result-object p1

    invoke-static {v1}, Lx1/a;->a(Landroid/content/Context;)Lx1/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lx1/a;->c(Lx1/b;)Lcom/bumptech/glide/load/Key;

    move-result-object p1

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

    check-cast p1, Lcom/android/fileexplorer/model/DocRequest;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/DocModelLoader;->handles(Lcom/android/fileexplorer/model/DocRequest;)Z

    move-result p1

    return p1
.end method
