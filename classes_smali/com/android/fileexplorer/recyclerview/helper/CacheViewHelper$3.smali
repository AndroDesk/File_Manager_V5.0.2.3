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
.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;ILjava/lang/ref/WeakReference;Landroid/view/ViewGroup;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 3
    iput p2, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->val$layoutId:I

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->val$mRef:Ljava/lang/ref/WeakReference;

    .line 7
    iput-object p4, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->val$parent:Landroid/view/ViewGroup;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_9

    .line 7
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 10
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 12
    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$100(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Ljava/util/HashMap;

    .line 15
    move-result-object v0

    .line 16
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->val$layoutId:I

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_34

    .line 28
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 30
    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$100(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Ljava/util/HashMap;

    .line 33
    move-result-object v0

    .line 34
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->val$layoutId:I

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_34

    .line 52
    return-void

    .line 53
    :cond_34
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 55
    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$100(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Ljava/util/HashMap;

    .line 58
    move-result-object v0

    .line 59
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->val$layoutId:I

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    move-result-object v0

    .line 69
    if-nez v0, :cond_4c

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    .line 73
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    goto :goto_5e

    .line 77
    :cond_4c
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 79
    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$100(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Ljava/util/HashMap;

    .line 82
    move-result-object v0

    .line 83
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->val$layoutId:I

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Ljava/util/ArrayList;

    .line 95
    :goto_5e
    if-eqz v0, :cond_9b

    .line 97
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 100
    move-result v1

    .line 101
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 103
    invoke-static {v2}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$500(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)I

    .line 106
    move-result v2

    .line 107
    if-ge v1, v2, :cond_9b

    .line 109
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->val$mRef:Ljava/lang/ref/WeakReference;

    .line 111
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Landroid/content/Context;

    .line 117
    const/4 v2, 0x0

    .line 118
    if-nez v1, :cond_8b

    .line 120
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 123
    move-result-object v1

    .line 124
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 127
    move-result-object v1

    .line 128
    iget v3, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->val$layoutId:I

    .line 130
    iget-object v4, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->val$parent:Landroid/view/ViewGroup;

    .line 132
    invoke-virtual {v1, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    goto :goto_5e

    .line 140
    :cond_8b
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 143
    move-result-object v1

    .line 144
    iget v3, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->val$layoutId:I

    .line 146
    iget-object v4, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->val$parent:Landroid/view/ViewGroup;

    .line 148
    invoke-virtual {v1, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    goto :goto_5e

    .line 156
    :cond_9b
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 158
    invoke-static {v1}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$100(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Ljava/util/HashMap;

    .line 161
    move-result-object v1

    .line 162
    if-eqz v1, :cond_bf

    .line 164
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 166
    invoke-static {v1}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$100(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Ljava/util/HashMap;

    .line 169
    move-result-object v1

    .line 170
    iget v2, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;->val$layoutId:I

    .line 172
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_b2} :catch_b3

    .line 179
    goto :goto_bf

    .line 180
    :catch_b3
    move-exception v0

    .line 181
    const-string v1, "NPE:"

    .line 183
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    move-result-object v1

    .line 187
    const-string v2, "CacheViewHelper"

    .line 189
    invoke-static {v0, v1, v2}, La/a;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 192
    :cond_bf
    :goto_bf
    return-void
.end method
