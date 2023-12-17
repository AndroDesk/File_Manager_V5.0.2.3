.class public Lcom/bumptech/glide/load/engine/LoadPath;
.super Ljava/lang/Object;
.source "LoadPath.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        "Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation
.end field

.field private final decodePaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/bumptech/glide/load/engine/DecodePath<",
            "TData;TResourceType;TTranscode;>;>;"
        }
    .end annotation
.end field

.field private final failureMessage:Ljava/lang/String;

.field private final listPool:Ll0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/d<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Ll0/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TResourceType;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/engine/DecodePath<",
            "TData;TResourceType;TTranscode;>;>;",
            "Ll0/d<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/LoadPath;->dataClass:Ljava/lang/Class;

    .line 6
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/LoadPath;->listPool:Ll0/d;

    .line 8
    invoke-static {p4}, Lcom/bumptech/glide/util/Preconditions;->checkNotEmpty(Ljava/util/Collection;)Ljava/util/Collection;

    .line 11
    move-result-object p4

    .line 12
    check-cast p4, Ljava/util/List;

    .line 14
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/LoadPath;->decodePaths:Ljava/util/List;

    .line 16
    const-string p4, "Failed LoadPath{"

    .line 18
    invoke-static {p4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    move-result-object p4

    .line 22
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string p1, "->"

    .line 31
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string p1, "}"

    .line 53
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/LoadPath;->failureMessage:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private loadWithExceptionList(Lcom/bumptech/glide/load/data/DataRewinder;Lcom/bumptech/glide/load/Options;IILcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;Ljava/util/List;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/data/DataRewinder<",
            "TData;>;",
            "Lcom/bumptech/glide/load/Options;",
            "II",
            "Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback<",
            "TResourceType;>;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TTranscode;>;"
        }
    .end annotation

    .line 1
    move-object v1, p0

    .line 2
    move-object/from16 v2, p6

    .line 4
    iget-object v0, v1, Lcom/bumptech/glide/load/engine/LoadPath;->decodePaths:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    move-result v3

    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    move v5, v4

    .line 13
    move-object v4, v0

    .line 14
    :goto_d
    if-ge v5, v3, :cond_30

    .line 16
    iget-object v0, v1, Lcom/bumptech/glide/load/engine/LoadPath;->decodePaths:Ljava/util/List;

    .line 18
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    move-object v6, v0

    .line 23
    check-cast v6, Lcom/bumptech/glide/load/engine/DecodePath;

    .line 25
    move-object v7, p1

    .line 26
    move v8, p3

    .line 27
    move/from16 v9, p4

    .line 29
    move-object v10, p2

    .line 30
    move-object/from16 v11, p5

    .line 32
    :try_start_1f
    invoke-virtual/range {v6 .. v11}, Lcom/bumptech/glide/load/engine/DecodePath;->decode(Lcom/bumptech/glide/load/data/DataRewinder;IILcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;)Lcom/bumptech/glide/load/engine/Resource;

    .line 35
    move-result-object v0
    :try_end_23
    .catch Lcom/bumptech/glide/load/engine/GlideException; {:try_start_1f .. :try_end_23} :catch_25

    .line 36
    move-object v4, v0

    .line 37
    goto :goto_2a

    .line 38
    :catch_25
    move-exception v0

    .line 39
    move-object v6, v0

    .line 40
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :goto_2a
    if-eqz v4, :cond_2d

    .line 45
    goto :goto_30

    .line 46
    :cond_2d
    add-int/lit8 v5, v5, 0x1

    .line 48
    goto :goto_d

    .line 49
    :cond_30
    :goto_30
    if-eqz v4, :cond_33

    .line 51
    return-object v4

    .line 52
    :cond_33
    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    .line 54
    iget-object v3, v1, Lcom/bumptech/glide/load/engine/LoadPath;->failureMessage:Ljava/lang/String;

    .line 56
    new-instance v4, Ljava/util/ArrayList;

    .line 58
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 61
    invoke-direct {v0, v3, v4}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 64
    throw v0
.end method


# virtual methods
.method public getDataClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/LoadPath;->dataClass:Ljava/lang/Class;

    .line 3
    return-object v0
.end method

.method public load(Lcom/bumptech/glide/load/data/DataRewinder;Lcom/bumptech/glide/load/Options;IILcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/data/DataRewinder<",
            "TData;>;",
            "Lcom/bumptech/glide/load/Options;",
            "II",
            "Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback<",
            "TResourceType;>;)",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TTranscode;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/LoadPath;->listPool:Ll0/d;

    .line 3
    invoke-interface {v0}, Ll0/d;->acquire()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/List;

    .line 13
    move-object v1, p0

    .line 14
    move-object v2, p1

    .line 15
    move-object v3, p2

    .line 16
    move v4, p3

    .line 17
    move v5, p4

    .line 18
    move-object v6, p5

    .line 19
    move-object v7, v0

    .line 20
    :try_start_13
    invoke-direct/range {v1 .. v7}, Lcom/bumptech/glide/load/engine/LoadPath;->loadWithExceptionList(Lcom/bumptech/glide/load/data/DataRewinder;Lcom/bumptech/glide/load/Options;IILcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;Ljava/util/List;)Lcom/bumptech/glide/load/engine/Resource;

    .line 23
    move-result-object p1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_1d

    .line 24
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/LoadPath;->listPool:Ll0/d;

    .line 26
    invoke-interface {p2, v0}, Ll0/d;->release(Ljava/lang/Object;)Z

    .line 29
    return-object p1

    .line 30
    :catchall_1d
    move-exception p1

    .line 31
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/LoadPath;->listPool:Ll0/d;

    .line 33
    invoke-interface {p2, v0}, Ll0/d;->release(Ljava/lang/Object;)Z

    .line 36
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "LoadPath{decodePaths="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/LoadPath;->decodePaths:Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const/16 v1, 0x7d

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
