.class public Lcom/android/fileexplorer/model/DocModelLoaderFactory;
.super Ljava/lang/Object;
.source "DocModelLoaderFactory.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Lcom/android/fileexplorer/model/DocRequest;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Lcom/android/fileexplorer/model/DocRequest;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/fileexplorer/model/DocModelLoader;

    invoke-direct {v0, p1}, Lcom/android/fileexplorer/model/DocModelLoader;-><init>(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)V

    return-object v0
.end method

.method public teardown()V
    .registers 1

    return-void
.end method
