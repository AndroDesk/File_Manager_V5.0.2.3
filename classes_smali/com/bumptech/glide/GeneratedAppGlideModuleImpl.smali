.class final Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;
.super Lcom/bumptech/glide/GeneratedAppGlideModule;
.source "GeneratedAppGlideModuleImpl.java"


# instance fields
.field private final appGlideModule:Lcom/android/fileexplorer/model/DiskCacheGlideModule;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/GeneratedAppGlideModule;-><init>()V

    .line 4
    new-instance p1, Lcom/android/fileexplorer/model/DiskCacheGlideModule;

    .line 6
    invoke-direct {p1}, Lcom/android/fileexplorer/model/DiskCacheGlideModule;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->appGlideModule:Lcom/android/fileexplorer/model/DiskCacheGlideModule;

    .line 11
    const-string p1, "Glide"

    .line 13
    const/4 v0, 0x3

    .line 14
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_18

    .line 20
    const-string v0, "Discovered AppGlideModule from annotation: com.android.fileexplorer.model.DiskCacheGlideModule"

    .line 22
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_18
    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->appGlideModule:Lcom/android/fileexplorer/model/DiskCacheGlideModule;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/model/DiskCacheGlideModule;->applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V

    .line 6
    return-void
.end method

.method public getExcludedModuleClasses()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getRequestManagerFactory()Lcom/bumptech/glide/GeneratedRequestManagerFactory;
    .registers 2

    .line 2
    new-instance v0, Lcom/bumptech/glide/GeneratedRequestManagerFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/GeneratedRequestManagerFactory;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getRequestManagerFactory()Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->getRequestManagerFactory()Lcom/bumptech/glide/GeneratedRequestManagerFactory;

    move-result-object v0

    return-object v0
.end method

.method public isManifestParsingEnabled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->appGlideModule:Lcom/android/fileexplorer/model/DiskCacheGlideModule;

    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/module/AppGlideModule;->isManifestParsingEnabled()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->appGlideModule:Lcom/android/fileexplorer/model/DiskCacheGlideModule;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/fileexplorer/model/DiskCacheGlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    .line 6
    return-void
.end method
