.class public Lcom/bumptech/glide/RequestBuilder;
.super Lcom/bumptech/glide/request/BaseRequestOptions;
.source "RequestBuilder.java"

# interfaces
.implements Lcom/bumptech/glide/ModelTypes;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/BaseRequestOptions<",
        "Lcom/bumptech/glide/RequestBuilder<",
        "TTranscodeType;>;>;",
        "Lcom/bumptech/glide/ModelTypes<",
        "Lcom/bumptech/glide/RequestBuilder<",
        "TTranscodeType;>;>;"
    }
.end annotation


# static fields
.field public static final DOWNLOAD_ONLY_OPTIONS:Lcom/bumptech/glide/request/RequestOptions;


# instance fields
.field private final context:Landroid/content/Context;

.field private errorBuilder:Lcom/bumptech/glide/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final glide:Lcom/bumptech/glide/Glide;

.field private final glideContext:Lcom/bumptech/glide/GlideContext;

.field private isDefaultTransitionOptionsSet:Z

.field private isModelSet:Z

.field private isThumbnailBuilt:Z

.field private model:Ljava/lang/Object;

.field private requestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;>;"
        }
    .end annotation
.end field

.field private final requestManager:Lcom/bumptech/glide/RequestManager;

.field private thumbSizeMultiplier:Ljava/lang/Float;

.field private thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private transitionOptions:Lcom/bumptech/glide/TransitionOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/TransitionOptions<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 6
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 8
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 14
    sget-object v1, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    .line 16
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 29
    sput-object v0, Lcom/bumptech/glide/RequestBuilder;->DOWNLOAD_ONLY_OPTIONS:Lcom/bumptech/glide/request/RequestOptions;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/RequestManager;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bumptech/glide/RequestBuilder;->isDefaultTransitionOptionsSet:Z

    .line 3
    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    .line 4
    iput-object p2, p0, Lcom/bumptech/glide/RequestBuilder;->requestManager:Lcom/bumptech/glide/RequestManager;

    .line 5
    iput-object p3, p0, Lcom/bumptech/glide/RequestBuilder;->transcodeClass:Ljava/lang/Class;

    .line 6
    iput-object p4, p0, Lcom/bumptech/glide/RequestBuilder;->context:Landroid/content/Context;

    .line 7
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestManager;->getDefaultTransitionOptions(Ljava/lang/Class;)Lcom/bumptech/glide/TransitionOptions;

    move-result-object p3

    iput-object p3, p0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    .line 8
    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->getGlideContext()Lcom/bumptech/glide/GlideContext;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 9
    invoke-virtual {p2}, Lcom/bumptech/glide/RequestManager;->getDefaultRequestListeners()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->initRequestListeners(Ljava/util/List;)V

    .line 10
    invoke-virtual {p2}, Lcom/bumptech/glide/RequestManager;->getDefaultRequestOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/RequestBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 11
    iget-object v0, p2, Lcom/bumptech/glide/RequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    iget-object v1, p2, Lcom/bumptech/glide/RequestBuilder;->requestManager:Lcom/bumptech/glide/RequestManager;

    iget-object v2, p2, Lcom/bumptech/glide/RequestBuilder;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/bumptech/glide/RequestBuilder;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V

    .line 12
    iget-object p1, p2, Lcom/bumptech/glide/RequestBuilder;->model:Ljava/lang/Object;

    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->model:Ljava/lang/Object;

    .line 13
    iget-boolean p1, p2, Lcom/bumptech/glide/RequestBuilder;->isModelSet:Z

    iput-boolean p1, p0, Lcom/bumptech/glide/RequestBuilder;->isModelSet:Z

    .line 14
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    return-void
.end method

.method private buildRequest(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/Request;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/BaseRequestOptions<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    .line 1
    new-instance v1, Ljava/lang/Object;

    .line 3
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    iget-object v5, p0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    .line 8
    invoke-virtual {p3}, Lcom/bumptech/glide/request/BaseRequestOptions;->getPriority()Lcom/bumptech/glide/Priority;

    .line 11
    move-result-object v6

    .line 12
    invoke-virtual {p3}, Lcom/bumptech/glide/request/BaseRequestOptions;->getOverrideWidth()I

    .line 15
    move-result v7

    .line 16
    invoke-virtual {p3}, Lcom/bumptech/glide/request/BaseRequestOptions;->getOverrideHeight()I

    .line 19
    move-result v8

    .line 20
    const/4 v4, 0x0

    .line 21
    move-object v0, p0

    .line 22
    move-object v2, p1

    .line 23
    move-object v3, p2

    .line 24
    move-object v9, p3

    .line 25
    move-object v10, p4

    .line 26
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/RequestBuilder;->buildRequestRecursive(Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/Request;

    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method private buildRequestRecursive(Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/Request;
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/TransitionOptions<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Lcom/bumptech/glide/request/BaseRequestOptions<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    .line 1
    move-object/from16 v11, p0

    .line 3
    iget-object v0, v11, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    .line 5
    if-eqz v0, :cond_12

    .line 7
    new-instance v0, Lcom/bumptech/glide/request/ErrorRequestCoordinator;

    .line 9
    move-object/from16 v13, p1

    .line 11
    move-object/from16 v1, p4

    .line 13
    invoke-direct {v0, v13, v1}, Lcom/bumptech/glide/request/ErrorRequestCoordinator;-><init>(Ljava/lang/Object;Lcom/bumptech/glide/request/RequestCoordinator;)V

    .line 16
    move-object v4, v0

    .line 17
    move-object v15, v4

    .line 18
    goto :goto_19

    .line 19
    :cond_12
    move-object/from16 v13, p1

    .line 21
    move-object/from16 v1, p4

    .line 23
    const/4 v0, 0x0

    .line 24
    move-object v15, v0

    .line 25
    move-object v4, v1

    .line 26
    :goto_19
    move-object/from16 v0, p0

    .line 28
    move-object/from16 v1, p1

    .line 30
    move-object/from16 v2, p2

    .line 32
    move-object/from16 v3, p3

    .line 34
    move-object/from16 v5, p5

    .line 36
    move-object/from16 v6, p6

    .line 38
    move/from16 v7, p7

    .line 40
    move/from16 v8, p8

    .line 42
    move-object/from16 v9, p9

    .line 44
    move-object/from16 v10, p10

    .line 46
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/RequestBuilder;->buildThumbnailRequestRecursive(Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/Request;

    .line 49
    move-result-object v0

    .line 50
    if-nez v15, :cond_34

    .line 52
    return-object v0

    .line 53
    :cond_34
    iget-object v1, v11, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    .line 55
    invoke-virtual {v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->getOverrideWidth()I

    .line 58
    move-result v1

    .line 59
    iget-object v2, v11, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    .line 61
    invoke-virtual {v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->getOverrideHeight()I

    .line 64
    move-result v2

    .line 65
    invoke-static/range {p7 .. p8}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_56

    .line 71
    iget-object v3, v11, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    .line 73
    invoke-virtual {v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->isValidOverride()Z

    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_56

    .line 79
    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/request/BaseRequestOptions;->getOverrideWidth()I

    .line 82
    move-result v1

    .line 83
    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/request/BaseRequestOptions;->getOverrideHeight()I

    .line 86
    move-result v2

    .line 87
    :cond_56
    move/from16 v19, v1

    .line 89
    move/from16 v20, v2

    .line 91
    iget-object v12, v11, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    .line 93
    iget-object v1, v12, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    .line 95
    invoke-virtual {v12}, Lcom/bumptech/glide/request/BaseRequestOptions;->getPriority()Lcom/bumptech/glide/Priority;

    .line 98
    move-result-object v18

    .line 99
    iget-object v2, v11, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    .line 101
    move-object/from16 v13, p1

    .line 103
    move-object/from16 v14, p2

    .line 105
    move-object v3, v15

    .line 106
    move-object/from16 v15, p3

    .line 108
    move-object/from16 v16, v3

    .line 110
    move-object/from16 v17, v1

    .line 112
    move-object/from16 v21, v2

    .line 114
    move-object/from16 v22, p10

    .line 116
    invoke-direct/range {v12 .. v22}, Lcom/bumptech/glide/RequestBuilder;->buildRequestRecursive(Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/Request;

    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v3, v0, v1}, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->setRequests(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V

    .line 123
    return-object v3
.end method

.method private buildThumbnailRequestRecursive(Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/Request;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/TransitionOptions<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Lcom/bumptech/glide/request/BaseRequestOptions<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    .line 1
    move-object/from16 v11, p0

    .line 3
    move-object/from16 v12, p1

    .line 5
    move-object/from16 v5, p4

    .line 7
    move-object/from16 v13, p6

    .line 9
    iget-object v0, v11, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    .line 11
    if-eqz v0, :cond_94

    .line 13
    iget-boolean v1, v11, Lcom/bumptech/glide/RequestBuilder;->isThumbnailBuilt:Z

    .line 15
    if-nez v1, :cond_8c

    .line 17
    iget-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    .line 19
    iget-boolean v2, v0, Lcom/bumptech/glide/RequestBuilder;->isDefaultTransitionOptionsSet:Z

    .line 21
    if-eqz v2, :cond_19

    .line 23
    move-object/from16 v14, p5

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move-object v14, v1

    .line 27
    :goto_1a
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->isPrioritySet()Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_27

    .line 33
    iget-object v0, v11, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    .line 35
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getPriority()Lcom/bumptech/glide/Priority;

    .line 38
    move-result-object v0

    .line 39
    goto :goto_2b

    .line 40
    :cond_27
    invoke-direct {v11, v13}, Lcom/bumptech/glide/RequestBuilder;->getThumbnailPriority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    .line 43
    move-result-object v0

    .line 44
    :goto_2b
    move-object v15, v0

    .line 45
    iget-object v0, v11, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    .line 47
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getOverrideWidth()I

    .line 50
    move-result v0

    .line 51
    iget-object v1, v11, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    .line 53
    invoke-virtual {v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->getOverrideHeight()I

    .line 56
    move-result v1

    .line 57
    invoke-static/range {p7 .. p8}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_4e

    .line 63
    iget-object v2, v11, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    .line 65
    invoke-virtual {v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->isValidOverride()Z

    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_4e

    .line 71
    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/request/BaseRequestOptions;->getOverrideWidth()I

    .line 74
    move-result v0

    .line 75
    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/request/BaseRequestOptions;->getOverrideHeight()I

    .line 78
    move-result v1

    .line 79
    :cond_4e
    move/from16 v16, v0

    .line 81
    move/from16 v17, v1

    .line 83
    new-instance v10, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;

    .line 85
    invoke-direct {v10, v12, v5}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;-><init>(Ljava/lang/Object;Lcom/bumptech/glide/request/RequestCoordinator;)V

    .line 88
    move-object/from16 v0, p0

    .line 90
    move-object/from16 v1, p1

    .line 92
    move-object/from16 v2, p2

    .line 94
    move-object/from16 v3, p3

    .line 96
    move-object/from16 v4, p9

    .line 98
    move-object v5, v10

    .line 99
    move-object/from16 v6, p5

    .line 101
    move-object/from16 v7, p6

    .line 103
    move/from16 v8, p7

    .line 105
    move/from16 v9, p8

    .line 107
    move-object v13, v10

    .line 108
    move-object/from16 v10, p10

    .line 110
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/RequestBuilder;->obtainRequest(Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/BaseRequestOptions;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/bumptech/glide/request/Request;

    .line 113
    move-result-object v10

    .line 114
    const/4 v0, 0x1

    .line 115
    iput-boolean v0, v11, Lcom/bumptech/glide/RequestBuilder;->isThumbnailBuilt:Z

    .line 117
    iget-object v9, v11, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    .line 119
    move-object v0, v9

    .line 120
    move-object v4, v13

    .line 121
    move-object v5, v14

    .line 122
    move-object v6, v15

    .line 123
    move/from16 v7, v16

    .line 125
    move/from16 v8, v17

    .line 127
    move-object v12, v10

    .line 128
    move-object/from16 v10, p10

    .line 130
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/RequestBuilder;->buildRequestRecursive(Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/Request;

    .line 133
    move-result-object v0

    .line 134
    const/4 v1, 0x0

    .line 135
    iput-boolean v1, v11, Lcom/bumptech/glide/RequestBuilder;->isThumbnailBuilt:Z

    .line 137
    invoke-virtual {v13, v12, v0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->setRequests(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V

    .line 140
    return-object v13

    .line 141
    :cond_8c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 143
    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    .line 145
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 148
    throw v0

    .line 149
    :cond_94
    iget-object v0, v11, Lcom/bumptech/glide/RequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    .line 151
    if-eqz v0, :cond_d4

    .line 153
    new-instance v14, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;

    .line 155
    invoke-direct {v14, v12, v5}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;-><init>(Ljava/lang/Object;Lcom/bumptech/glide/request/RequestCoordinator;)V

    .line 158
    move-object/from16 v0, p0

    .line 160
    move-object/from16 v1, p1

    .line 162
    move-object/from16 v2, p2

    .line 164
    move-object/from16 v3, p3

    .line 166
    move-object/from16 v4, p9

    .line 168
    move-object v5, v14

    .line 169
    move-object/from16 v6, p5

    .line 171
    move-object/from16 v7, p6

    .line 173
    move/from16 v8, p7

    .line 175
    move/from16 v9, p8

    .line 177
    move-object/from16 v10, p10

    .line 179
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/RequestBuilder;->obtainRequest(Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/BaseRequestOptions;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/bumptech/glide/request/Request;

    .line 182
    move-result-object v15

    .line 183
    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 186
    move-result-object v0

    .line 187
    iget-object v1, v11, Lcom/bumptech/glide/RequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    .line 189
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 192
    move-result v1

    .line 193
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->sizeMultiplier(F)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 196
    move-result-object v4

    .line 197
    invoke-direct {v11, v13}, Lcom/bumptech/glide/RequestBuilder;->getThumbnailPriority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    .line 200
    move-result-object v7

    .line 201
    move-object/from16 v0, p0

    .line 203
    move-object/from16 v1, p1

    .line 205
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/RequestBuilder;->obtainRequest(Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/BaseRequestOptions;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/bumptech/glide/request/Request;

    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v14, v15, v0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->setRequests(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V

    .line 212
    return-object v14

    .line 213
    :cond_d4
    move-object/from16 v0, p0

    .line 215
    move-object/from16 v1, p1

    .line 217
    move-object/from16 v2, p2

    .line 219
    move-object/from16 v3, p3

    .line 221
    move-object/from16 v4, p9

    .line 223
    move-object/from16 v5, p4

    .line 225
    move-object/from16 v6, p5

    .line 227
    move-object/from16 v7, p6

    .line 229
    move/from16 v8, p7

    .line 231
    move/from16 v9, p8

    .line 233
    move-object/from16 v10, p10

    .line 235
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/RequestBuilder;->obtainRequest(Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/BaseRequestOptions;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/bumptech/glide/request/Request;

    .line 238
    move-result-object v0

    .line 239
    return-object v0
.end method

.method private getThumbnailPriority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;
    .registers 4

    .line 1
    sget-object v0, Lcom/bumptech/glide/RequestBuilder$1;->$SwitchMap$com$bumptech$glide$Priority:[I

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_32

    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p1, v0, :cond_2f

    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p1, v0, :cond_2c

    .line 18
    const/4 v0, 0x4

    .line 19
    if-ne p1, v0, :cond_15

    .line 21
    goto :goto_2c

    .line 22
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    const-string v0, "unknown priority: "

    .line 26
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->getPriority()Lcom/bumptech/glide/Priority;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p1

    .line 45
    :cond_2c
    :goto_2c
    sget-object p1, Lcom/bumptech/glide/Priority;->IMMEDIATE:Lcom/bumptech/glide/Priority;

    .line 47
    return-object p1

    .line 48
    :cond_2f
    sget-object p1, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 50
    return-object p1

    .line 51
    :cond_32
    sget-object p1, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    .line 53
    return-object p1
.end method

.method private initRequestListeners(Ljava/util/List;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_14

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/bumptech/glide/request/RequestListener;

    .line 17
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 20
    goto :goto_4

    .line 21
    :cond_14
    return-void
.end method

.method private into(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/target/Target;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;>(TY;",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/BaseRequestOptions<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-boolean v0, p0, Lcom/bumptech/glide/RequestBuilder;->isModelSet:Z

    if-eqz v0, :cond_39

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/RequestBuilder;->buildRequest(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/Request;

    move-result-object p2

    .line 6
    invoke-interface {p1}, Lcom/bumptech/glide/request/target/Target;->getRequest()Lcom/bumptech/glide/request/Request;

    move-result-object p4

    .line 7
    invoke-interface {p2, p4}, Lcom/bumptech/glide/request/Request;->isEquivalentTo(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 8
    invoke-direct {p0, p3, p4}, Lcom/bumptech/glide/RequestBuilder;->isSkipMemoryCacheWithCompletePreviousRequest(Lcom/bumptech/glide/request/BaseRequestOptions;Lcom/bumptech/glide/request/Request;)Z

    move-result p3

    if-nez p3, :cond_2b

    .line 9
    invoke-static {p4}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/request/Request;

    invoke-interface {p2}, Lcom/bumptech/glide/request/Request;->isRunning()Z

    move-result p2

    if-nez p2, :cond_2a

    .line 10
    invoke-interface {p4}, Lcom/bumptech/glide/request/Request;->begin()V

    :cond_2a
    return-object p1

    .line 11
    :cond_2b
    iget-object p3, p0, Lcom/bumptech/glide/RequestBuilder;->requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {p3, p1}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 12
    invoke-interface {p1, p2}, Lcom/bumptech/glide/request/target/Target;->setRequest(Lcom/bumptech/glide/request/Request;)V

    .line 13
    iget-object p3, p0, Lcom/bumptech/glide/RequestBuilder;->requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {p3, p1, p2}, Lcom/bumptech/glide/RequestManager;->track(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/Request;)V

    return-object p1

    .line 14
    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must call #load() before calling #into()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isSkipMemoryCacheWithCompletePreviousRequest(Lcom/bumptech/glide/request/BaseRequestOptions;Lcom/bumptech/glide/request/Request;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/BaseRequestOptions<",
            "*>;",
            "Lcom/bumptech/glide/request/Request;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->isMemoryCacheable()Z

    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_e

    .line 7
    invoke-interface {p2}, Lcom/bumptech/glide/request/Request;->isComplete()Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_e

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
    :goto_f
    return p1
.end method

.method private loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->model:Ljava/lang/Object;

    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/bumptech/glide/RequestBuilder;->isModelSet:Z

    .line 6
    return-object p0
.end method

.method private obtainRequest(Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/BaseRequestOptions;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILjava/util/concurrent/Executor;)Lcom/bumptech/glide/request/Request;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/BaseRequestOptions<",
            "*>;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/TransitionOptions<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->context:Landroid/content/Context;

    .line 5
    iget-object v2, v0, Lcom/bumptech/glide/RequestBuilder;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 7
    iget-object v4, v0, Lcom/bumptech/glide/RequestBuilder;->model:Ljava/lang/Object;

    .line 9
    iget-object v5, v0, Lcom/bumptech/glide/RequestBuilder;->transcodeClass:Ljava/lang/Class;

    .line 11
    iget-object v12, v0, Lcom/bumptech/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    .line 13
    invoke-virtual {v2}, Lcom/bumptech/glide/GlideContext;->getEngine()Lcom/bumptech/glide/load/engine/Engine;

    .line 16
    move-result-object v14

    .line 17
    invoke-virtual/range {p6 .. p6}, Lcom/bumptech/glide/TransitionOptions;->getTransitionFactory()Lcom/bumptech/glide/request/transition/TransitionFactory;

    .line 20
    move-result-object v15

    .line 21
    move-object/from16 v3, p1

    .line 23
    move-object/from16 v6, p4

    .line 25
    move/from16 v7, p8

    .line 27
    move/from16 v8, p9

    .line 29
    move-object/from16 v9, p7

    .line 31
    move-object/from16 v10, p2

    .line 33
    move-object/from16 v11, p3

    .line 35
    move-object/from16 v13, p5

    .line 37
    move-object/from16 v16, p10

    .line 39
    invoke-static/range {v1 .. v16}, Lcom/bumptech/glide/request/SingleRequest;->obtain(Landroid/content/Context;Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/BaseRequestOptions;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Ljava/util/List;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/request/transition/TransitionFactory;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/SingleRequest;

    .line 42
    move-result-object v1

    .line 43
    return-object v1
.end method


# virtual methods
.method public addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_12

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    .line 5
    if-nez v0, :cond_d

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    .line 14
    :cond_d
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_12
    return-object p0
.end method

.method public apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/BaseRequestOptions<",
            "*>;)",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    return-object p1
.end method

.method public bridge synthetic apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public clone()Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 4
    iget-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    invoke-virtual {v1}, Lcom/bumptech/glide/TransitionOptions;->clone()Lcom/bumptech/glide/TransitionOptions;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->clone()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->clone()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public downloadOnly(II)Lcom/bumptech/glide/request/FutureTarget;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/FutureTarget<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->getDownloadOnlyRequest()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/RequestBuilder;->submit(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p1

    return-object p1
.end method

.method public downloadOnly(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target<",
            "Ljava/io/File;",
            ">;>(TY;)TY;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->getDownloadOnlyRequest()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    move-result-object p1

    return-object p1
.end method

.method public error(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->errorBuilder:Lcom/bumptech/glide/RequestBuilder;

    .line 3
    return-object p0
.end method

.method public getDownloadOnlyRequest()Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/RequestBuilder;

    .line 3
    const-class v1, Ljava/io/File;

    .line 5
    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/RequestBuilder;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V

    .line 8
    sget-object v1, Lcom/bumptech/glide/RequestBuilder;->DOWNLOAD_ONLY_OPTIONS:Lcom/bumptech/glide/request/RequestOptions;

    .line 10
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public into(II)Lcom/bumptech/glide/request/FutureTarget;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/FutureTarget<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/RequestBuilder;->submit(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p1

    return-object p1
.end method

.method public into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/bumptech/glide/util/Executors;->mainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/target/Target;

    move-result-object p1

    return-object p1
.end method

.method public into(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/target/Target;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;>(TY;",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p0, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/target/Target;

    move-result-object p1

    return-object p1
.end method

.method public into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/request/target/ViewTarget<",
            "Landroid/widget/ImageView;",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 15
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 16
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->isTransformationSet()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 18
    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->isTransformationAllowed()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 19
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 20
    sget-object v0, Lcom/bumptech/glide/RequestBuilder$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_62

    goto :goto_4c

    .line 21
    :pswitch_28  #0x6
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    goto :goto_4d

    .line 22
    :pswitch_31  #0x3, 0x4, 0x5
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalFitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    goto :goto_4d

    .line 23
    :pswitch_3a  #0x2
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    goto :goto_4d

    .line 24
    :pswitch_43  #0x1
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    goto :goto_4d

    :cond_4c
    :goto_4c
    move-object v0, p0

    .line 25
    :goto_4d
    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->glideContext:Lcom/bumptech/glide/GlideContext;

    iget-object v2, p0, Lcom/bumptech/glide/RequestBuilder;->transcodeClass:Ljava/lang/Class;

    .line 26
    invoke-virtual {v1, p1, v2}, Lcom/bumptech/glide/GlideContext;->buildImageViewTarget(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/target/ViewTarget;

    move-result-object p1

    const/4 v1, 0x0

    .line 27
    invoke-static {}, Lcom/bumptech/glide/util/Executors;->mainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 28
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/target/Target;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/request/target/ViewTarget;

    return-object p1

    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_43  #00000001
        :pswitch_3a  #00000002
        :pswitch_31  #00000003
        :pswitch_31  #00000004
        :pswitch_31  #00000005
        :pswitch_28  #00000006
    .end packed-switch
.end method

.method public listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestListeners:Ljava/util/List;

    .line 4
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/signature/AndroidResourceSignature;->obtain(Landroid/content/Context;)Lcom/bumptech/glide/load/Key;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->signatureOf(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load([B)Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->isDiskCacheStrategySet()Z

    move-result v0

    if-nez v0, :cond_14

    .line 20
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 21
    :cond_14
    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->isSkipMemoryCacheSet()Z

    move-result v0

    if-nez v0, :cond_23

    const/4 v0, 0x1

    .line 22
    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCacheOf(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    :cond_23
    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Ljava/lang/Object;
    .registers 2

    .line 3
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/io/File;)Ljava/lang/Object;
    .registers 2

    .line 4
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Ljava/lang/Object;
    .registers 2

    .line 5
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 6
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 7
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/net/URL;)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load([B)Ljava/lang/Object;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public preload()Lcom/bumptech/glide/request/target/Target;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    .line 3
    invoke-virtual {p0, v0, v0}, Lcom/bumptech/glide/RequestBuilder;->preload(II)Lcom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method

.method public preload(II)Lcom/bumptech/glide/request/target/Target;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-static {v0, p1, p2}, Lcom/bumptech/glide/request/target/PreloadTarget;->obtain(Lcom/bumptech/glide/RequestManager;II)Lcom/bumptech/glide/request/target/PreloadTarget;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    move-result-object p1

    return-object p1
.end method

.method public submit()Lcom/bumptech/glide/request/FutureTarget;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/FutureTarget<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/bumptech/glide/RequestBuilder;->submit(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v0

    return-object v0
.end method

.method public submit(II)Lcom/bumptech/glide/request/FutureTarget;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/FutureTarget<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/bumptech/glide/request/RequestFutureTarget;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/request/RequestFutureTarget;-><init>(II)V

    .line 3
    invoke-static {}, Lcom/bumptech/glide/util/Executors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p0, v0, v0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/target/Target;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/request/FutureTarget;

    return-object p1
.end method

.method public thumbnail(F)Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_12

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_12

    .line 8
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    return-object p0

    .line 9
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sizeMultiplier must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->thumbnailBuilder:Lcom/bumptech/glide/RequestBuilder;

    return-object p0
.end method

.method public varargs thumbnail([Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    .line 2
    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_21

    .line 3
    :cond_7
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_1c

    .line 4
    aget-object v2, p1, v1

    if-nez v2, :cond_11

    goto :goto_19

    :cond_11
    if-nez v0, :cond_15

    move-object v0, v2

    goto :goto_19

    .line 5
    :cond_15
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    :goto_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 6
    :cond_1c
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1

    .line 7
    :cond_21
    :goto_21
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/TransitionOptions<",
            "*-TTranscodeType;>;)",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/bumptech/glide/TransitionOptions;

    .line 7
    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->transitionOptions:Lcom/bumptech/glide/TransitionOptions;

    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/bumptech/glide/RequestBuilder;->isDefaultTransitionOptionsSet:Z

    .line 12
    return-object p0
.end method
