.class Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;
.super Ljava/lang/Object;
.source "CacheViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->produce(Ljava/lang/ref/WeakReference;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

.field public final synthetic val$layoutId:I

.field public final synthetic val$mRef:Ljava/lang/ref/WeakReference;

.field public final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;ILjava/lang/ref/WeakReference;Landroid/view/ViewGroup;)V
    .registers 5

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    iput p2, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->val$layoutId:I

    iput-object p3, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->val$mRef:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$100(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->val$layoutId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$100(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->val$layoutId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    return-void

    :cond_34
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$100(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->val$layoutId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_5e

    :cond_4c
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$100(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->val$layoutId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :goto_5e
    if-eqz v0, :cond_9b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    invoke-static {v2}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$500(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)I

    move-result v2

    if-ge v1, v2, :cond_9b

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->val$mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_8b

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v3, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->val$layoutId:I

    iget-object v4, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    :cond_8b
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v3, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->val$layoutId:I

    iget-object v4, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    :cond_9b
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    invoke-static {v1}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$100(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_bf

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    invoke-static {v1}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$100(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->val$layoutId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_b2} :catch_b3

    goto :goto_bf

    :catch_b3
    move-exception v0

    const-string v1, "NPE:"

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CacheViewHelper"

    invoke-static {v0, v1, v2}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_bf
    :goto_bf
    return-void
.end method
