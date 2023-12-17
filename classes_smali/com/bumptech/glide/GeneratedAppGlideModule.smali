.class abstract Lcom/bumptech/glide/GeneratedAppGlideModule;
.super Lcom/bumptech/glide/module/AppGlideModule;
.source "GeneratedAppGlideModule.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/module/AppGlideModule;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public abstract getExcludedModuleClasses()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end method

.method public getRequestManagerFactory()Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
