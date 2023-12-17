.class public final Lz1/b$a;
.super Ljava/lang/Object;
.source "WpsSnapshotV2Loader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Lz1/a;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/bumptech/glide/load/model/ModelCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelCache<",
            "Lz1/a;",
            "Lz1/a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/bumptech/glide/load/model/ModelCache;

    .line 6
    const-wide/16 v1, 0xc8

    .line 8
    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/model/ModelCache;-><init>(J)V

    .line 11
    iput-object v0, p0, Lz1/b$a;->a:Lcom/bumptech/glide/load/model/ModelCache;

    .line 13
    iput-object p1, p0, Lz1/b$a;->b:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public final build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Lz1/a;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lz1/b;

    .line 3
    iget-object v0, p0, Lz1/b$a;->b:Landroid/content/Context;

    .line 5
    iget-object v1, p0, Lz1/b$a;->a:Lcom/bumptech/glide/load/model/ModelCache;

    .line 7
    invoke-direct {p1, v0, v1}, Lz1/b;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelCache;)V

    .line 10
    return-object p1
.end method

.method public final teardown()V
    .registers 1

    return-void
.end method
