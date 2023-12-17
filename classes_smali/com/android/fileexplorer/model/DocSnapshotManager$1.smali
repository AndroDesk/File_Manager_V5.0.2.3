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
.method public constructor <init>(Lcom/android/fileexplorer/model/DocSnapshotManager;Lcom/bumptech/glide/Glide;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/model/DocSnapshotManager$1;->this$0:Lcom/android/fileexplorer/model/DocSnapshotManager;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/model/DocSnapshotManager$1;->val$glide:Lcom/bumptech/glide/Glide;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lx1/a;->a(Landroid/content/Context;)Lx1/a;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/fileexplorer/model/DocSnapshotManager$1;->val$glide:Lcom/bumptech/glide/Glide;

    .line 11
    iget-object v2, v0, Lx1/a;->a:Landroid/content/Context;

    .line 13
    invoke-static {v2}, La/b;->f(Landroid/content/Context;)Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Ljava/io/File;

    .line 19
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 25
    move-result v2

    .line 26
    const/4 v4, 0x0

    .line 27
    if-nez v2, :cond_1d

    .line 29
    goto :goto_41

    .line 30
    :cond_1d
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 33
    move-result-object v2

    .line 34
    if-nez v2, :cond_24

    .line 36
    goto :goto_41

    .line 37
    :cond_24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    move-result-wide v5

    .line 41
    array-length v3, v2

    .line 42
    move v7, v4

    .line 43
    :goto_2a
    if-ge v7, v3, :cond_41

    .line 45
    aget-object v8, v2, v7

    .line 47
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    .line 50
    move-result-wide v9

    .line 51
    sub-long v9, v5, v9

    .line 53
    const-wide/32 v11, 0x19bfcc00

    .line 56
    cmp-long v9, v9, v11

    .line 58
    if-lez v9, :cond_3e

    .line 60
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 63
    :cond_3e
    add-int/lit8 v7, v7, 0x1

    .line 65
    goto :goto_2a

    .line 66
    :cond_41
    :goto_41
    iget-boolean v2, v0, Lx1/a;->c:Z

    .line 68
    const/4 v3, 0x0

    .line 69
    if-eqz v2, :cond_49

    .line 71
    const-class v0, Lz1/a;

    .line 73
    goto :goto_51

    .line 74
    :cond_49
    iget-boolean v0, v0, Lx1/a;->b:Z

    .line 76
    if-eqz v0, :cond_50

    .line 78
    const-class v0, Ly1/a;

    .line 80
    goto :goto_51

    .line 81
    :cond_50
    move-object v0, v3

    .line 82
    :goto_51
    if-eqz v1, :cond_bc

    .line 84
    if-nez v0, :cond_57

    .line 86
    goto/16 :goto_bc

    .line 88
    :cond_57
    const/4 v2, 0x1

    .line 89
    :try_start_58
    invoke-virtual {v1}, Lcom/bumptech/glide/Glide;->getRegistry()Lcom/bumptech/glide/Registry;

    .line 92
    move-result-object v1

    .line 93
    if-eqz v1, :cond_70

    .line 95
    const-class v5, Lcom/bumptech/glide/Registry;

    .line 97
    const-string v6, "modelLoaderRegistry"

    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v5, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 106
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_6f} :catch_70

    .line 112
    goto :goto_71

    .line 113
    :catch_70
    :cond_70
    move-object v1, v3

    .line 114
    :goto_71
    if-nez v1, :cond_74

    .line 116
    goto :goto_90

    .line 117
    :cond_74
    :try_start_74
    const-class v5, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_76} :catch_90

    .line 119
    const-string v6, "getModelLoadersForClass"

    .line 121
    :try_start_78
    new-array v7, v2, [Ljava/lang/Class;

    .line 123
    const-class v8, Ljava/lang/Class;

    .line 125
    aput-object v8, v7, v4

    .line 127
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {v5, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 134
    new-array v2, v2, [Ljava/lang/Object;

    .line 136
    aput-object v0, v2, v4

    .line 138
    invoke-virtual {v5, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    move-result-object v0

    .line 142
    check-cast v0, Ljava/util/List;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_8f} :catch_90

    .line 144
    goto :goto_91

    .line 145
    :catch_90
    :goto_90
    move-object v0, v3

    .line 146
    :goto_91
    if-eqz v0, :cond_bc

    .line 148
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 151
    move-result v1

    .line 152
    if-gtz v1, :cond_9a

    .line 154
    goto :goto_bc

    .line 155
    :cond_9a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 158
    move-result-object v0

    .line 159
    :cond_9e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    move-result v1

    .line 163
    if-eqz v1, :cond_ad

    .line 165
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    move-result-object v1

    .line 169
    check-cast v1, Lcom/bumptech/glide/load/model/ModelLoader;

    .line 171
    if-eqz v1, :cond_9e

    .line 173
    goto :goto_ae

    .line 174
    :cond_ad
    move-object v1, v3

    .line 175
    :goto_ae
    if-nez v1, :cond_b1

    .line 177
    goto :goto_bc

    .line 178
    :cond_b1
    instance-of v0, v1, Lz1/b;

    .line 180
    if-nez v0, :cond_b9

    .line 182
    instance-of v0, v1, Ly1/b;

    .line 184
    if-eqz v0, :cond_bc

    .line 186
    :cond_b9
    move-object v3, v1

    .line 187
    check-cast v3, La/c;

    .line 189
    :cond_bc
    :goto_bc
    if-eqz v3, :cond_c1

    .line 191
    invoke-interface {v3}, La/c;->a()V

    .line 194
    :cond_c1
    return-void
.end method
