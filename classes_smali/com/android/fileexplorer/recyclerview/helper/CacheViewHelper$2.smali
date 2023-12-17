.class Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;
.super Ljava/lang/Object;
.source "CacheViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->preLoadLayout(Ljava/lang/ref/WeakReference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

.field public final synthetic val$mRef:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;Ljava/lang/ref/WeakReference;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    iput-object p2, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;->val$mRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$000(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_91

    aget v3, v0, v2

    iget-object v4, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    invoke-static {v4}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$100(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Ljava/util/HashMap;

    move-result-object v4

    if-nez v4, :cond_1e

    return-void

    :cond_1e
    iget-object v4, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    invoke-static {v4}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$100(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_34

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_44

    :cond_34
    iget-object v4, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    invoke-static {v4}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$100(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    :goto_44
    if-eqz v4, :cond_79

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    invoke-static {v6}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$200(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)I

    move-result v6

    if-ge v5, v6, :cond_79

    iget-object v5, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;->val$mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    const/4 v6, 0x0

    if-nez v5, :cond_6d

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_44

    :cond_6d
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_44

    :cond_79
    iget-object v5, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    invoke-static {v5}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$100(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_8e

    iget-object v5, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    invoke-static {v5}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$100(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8e
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_91
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$302(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;Z)Z

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$400(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Z

    move-result v0

    if-eqz v0, :cond_c8

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$100(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_c8

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$100(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_b0
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_b0} :catch_b1

    goto :goto_c8

    :catch_b1
    move-exception v0

    const-string v1, "NPE:"

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CacheViewHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c8
    :goto_c8
    return-void
.end method
