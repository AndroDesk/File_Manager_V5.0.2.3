.class Lcom/android/fileexplorer/model/DocSnapshotManager$1;
.super Ljava/lang/Object;
.source "DocSnapshotManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/model/DocSnapshotManager;->release(Lcom/bumptech/glide/Glide;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/model/DocSnapshotManager;

.field public final synthetic val$glide:Lcom/bumptech/glide/Glide;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/model/DocSnapshotManager;Lcom/bumptech/glide/Glide;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/model/DocSnapshotManager$1;->this$0:Lcom/android/fileexplorer/model/DocSnapshotManager;

    iput-object p2, p0, Lcom/android/fileexplorer/model/DocSnapshotManager$1;->val$glide:Lcom/bumptech/glide/Glide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx1/a;->a(Landroid/content/Context;)Lx1/a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/model/DocSnapshotManager$1;->val$glide:Lcom/bumptech/glide/Glide;

    iget-object v2, v0, Lx1/a;->a:Landroid/content/Context;

    invoke-static {v2}, La/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1d

    goto :goto_41

    :cond_1d
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_24

    goto :goto_41

    :cond_24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    array-length v3, v2

    move v7, v4

    :goto_2a
    if-ge v7, v3, :cond_41

    aget-object v8, v2, v7

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    sub-long v9, v5, v9

    const-wide/32 v11, 0x19bfcc00

    cmp-long v9, v9, v11

    if-lez v9, :cond_3e

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_3e
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    :cond_41
    :goto_41
    iget-boolean v2, v0, Lx1/a;->c:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_49

    const-class v0, Lz1/a;

    goto :goto_51

    :cond_49
    iget-boolean v0, v0, Lx1/a;->b:Z

    if-eqz v0, :cond_50

    const-class v0, Ly1/a;

    goto :goto_51

    :cond_50
    move-object v0, v3

    :goto_51
    if-eqz v1, :cond_bc

    if-nez v0, :cond_57

    goto/16 :goto_bc

    :cond_57
    const/4 v2, 0x1

    :try_start_58
    invoke-virtual {v1}, Lcom/bumptech/glide/Glide;->getRegistry()Lcom/bumptech/glide/Registry;

    move-result-object v1

    if-eqz v1, :cond_70

    const-class v5, Lcom/bumptech/glide/Registry;

    const-string v6, "modelLoaderRegistry"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_6f} :catch_70

    goto :goto_71

    :catch_70
    :cond_70
    move-object v1, v3

    :goto_71
    if-nez v1, :cond_74

    goto :goto_90

    :cond_74
    :try_start_74
    const-class v5, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_76} :catch_90

    const-string v6, "getModelLoadersForClass"

    :try_start_78
    new-array v7, v2, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Class;

    aput-object v8, v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {v5, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_8f} :catch_90

    goto :goto_91

    :catch_90
    :goto_90
    move-object v0, v3

    :goto_91
    if-eqz v0, :cond_bc

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_9a

    goto :goto_bc

    :cond_9a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ad

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/model/ModelLoader;

    if-eqz v1, :cond_9e

    goto :goto_ae

    :cond_ad
    move-object v1, v3

    :goto_ae
    if-nez v1, :cond_b1

    goto :goto_bc

    :cond_b1
    instance-of v0, v1, Lz1/b;

    if-nez v0, :cond_b9

    instance-of v0, v1, Ly1/b;

    if-eqz v0, :cond_bc

    :cond_b9
    move-object v3, v1

    check-cast v3, La/c;

    :cond_bc
    :goto_bc
    if-eqz v3, :cond_c1

    invoke-interface {v3}, La/c;->a()V

    :cond_c1
    return-void
.end method
