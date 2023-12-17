.class public Lcom/bumptech/glide/load/engine/DecodePath;
.super Ljava/lang/Object;
.source "DecodePath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        "Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DecodePath"


# instance fields
.field private final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field private final decoders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "TDataType;TResourceType;>;>;"
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

.field private final transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
            "TResourceType;TTranscode;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Ll0/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TDataType;>;",
            "Ljava/lang/Class<",
            "TResourceType;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;",
            "Ljava/util/List<",
            "+",
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "TDataType;TResourceType;>;>;",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
            "TResourceType;TTranscode;>;",
            "Ll0/d<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodePath;->dataClass:Ljava/lang/Class;

    .line 6
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/DecodePath;->decoders:Ljava/util/List;

    .line 8
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/DecodePath;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    .line 10
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/DecodePath;->listPool:Ll0/d;

    .line 12
    const-string p4, "Failed DecodePath{"

    .line 14
    invoke-static {p4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    move-result-object p4

    .line 18
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string p1, "->"

    .line 27
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string p1, "}"

    .line 49
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodePath;->failureMessage:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private decodeResource(Lcom/bumptech/glide/load/data/DataRewinder;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/data/DataRewinder<",
            "TDataType;>;II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TResourceType;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodePath;->listPool:Ll0/d;

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
    move v3, p2

    .line 16
    move v4, p3

    .line 17
    move-object v5, p4

    .line 18
    move-object v6, v0

    .line 19
    :try_start_12
    invoke-direct/range {v1 .. v6}, Lcom/bumptech/glide/load/engine/DecodePath;->decodeResourceWithList(Lcom/bumptech/glide/load/data/DataRewinder;IILcom/bumptech/glide/load/Options;Ljava/util/List;)Lcom/bumptech/glide/load/engine/Resource;

    .line 22
    move-result-object p1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_1c

    .line 23
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodePath;->listPool:Ll0/d;

    .line 25
    invoke-interface {p2, v0}, Ll0/d;->release(Ljava/lang/Object;)Z

    .line 28
    return-object p1

    .line 29
    :catchall_1c
    move-exception p1

    .line 30
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodePath;->listPool:Ll0/d;

    .line 32
    invoke-interface {p2, v0}, Ll0/d;->release(Ljava/lang/Object;)Z

    .line 35
    throw p1
.end method

.method private decodeResourceWithList(Lcom/bumptech/glide/load/data/DataRewinder;IILcom/bumptech/glide/load/Options;Ljava/util/List;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/data/DataRewinder<",
            "TDataType;>;II",
            "Lcom/bumptech/glide/load/Options;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TResourceType;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodePath;->decoders:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    if-ge v2, v0, :cond_50

    .line 11
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodePath;->decoders:Ljava/util/List;

    .line 13
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/bumptech/glide/load/ResourceDecoder;

    .line 19
    :try_start_12
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataRewinder;->rewindAndGet()Ljava/lang/Object;

    .line 22
    move-result-object v4

    .line 23
    invoke-interface {v3, v4, p4}, Lcom/bumptech/glide/load/ResourceDecoder;->handles(Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)Z

    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_4a

    .line 29
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataRewinder;->rewindAndGet()Ljava/lang/Object;

    .line 32
    move-result-object v4

    .line 33
    invoke-interface {v3, v4, p2, p3, p4}, Lcom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;

    .line 36
    move-result-object v1
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_24} :catch_29
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_24} :catch_27
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_24} :catch_25

    .line 37
    goto :goto_4a

    .line 38
    :catch_25
    move-exception v4

    .line 39
    goto :goto_2a

    .line 40
    :catch_27
    move-exception v4

    .line 41
    goto :goto_2a

    .line 42
    :catch_29
    move-exception v4

    .line 43
    :goto_2a
    const/4 v5, 0x2

    .line 44
    const-string v6, "DecodePath"

    .line 46
    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_47

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    const-string v7, "Failed to decode data for "

    .line 59
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v3

    .line 69
    invoke-static {v6, v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    :cond_47
    invoke-interface {p5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_4a
    :goto_4a
    if-eqz v1, :cond_4d

    .line 77
    goto :goto_50

    .line 78
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    .line 80
    goto :goto_8

    .line 81
    :cond_50
    :goto_50
    if-eqz v1, :cond_53

    .line 83
    return-object v1

    .line 84
    :cond_53
    new-instance p1, Lcom/bumptech/glide/load/engine/GlideException;

    .line 86
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodePath;->failureMessage:Ljava/lang/String;

    .line 88
    new-instance p3, Ljava/util/ArrayList;

    .line 90
    invoke-direct {p3, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 93
    invoke-direct {p1, p2, p3}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 96
    throw p1
.end method


# virtual methods
.method public decode(Lcom/bumptech/glide/load/data/DataRewinder;IILcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/data/DataRewinder<",
            "TDataType;>;II",
            "Lcom/bumptech/glide/load/Options;",
            "Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback<",
            "TResourceType;>;)",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TTranscode;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/engine/DecodePath;->decodeResource(Lcom/bumptech/glide/load/data/DataRewinder;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;

    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p5, p1}, Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;->onResourceDecoded(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    .line 8
    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodePath;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    .line 11
    invoke-interface {p2, p1, p4}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->transcode(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "DecodePath{ dataClass="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodePath;->dataClass:Ljava/lang/Class;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", decoders="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodePath;->decoders:Ljava/util/List;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", transcoder="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodePath;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    const/16 v1, 0x7d

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method
