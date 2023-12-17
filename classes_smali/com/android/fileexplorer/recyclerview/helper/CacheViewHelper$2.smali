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
.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;Ljava/lang/ref/WeakReference;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;->val$mRef:Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

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
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 12
    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$000(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)[I

    .line 15
    move-result-object v0

    .line 16
    array-length v1, v0

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_11
    if-ge v2, v1, :cond_91

    .line 20
    aget v3, v0, v2

    .line 22
    iget-object v4, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 24
    invoke-static {v4}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$100(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Ljava/util/HashMap;

    .line 27
    move-result-object v4

    .line 28
    if-nez v4, :cond_1e

    .line 30
    return-void

    .line 31
    :cond_1e
    iget-object v4, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 33
    invoke-static {v4}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$100(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Ljava/util/HashMap;

    .line 36
    move-result-object v4

    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object v4

    .line 45
    if-nez v4, :cond_34

    .line 47
    new-instance v4, Ljava/util/ArrayList;

    .line 49
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 52
    goto :goto_44

    .line 53
    :cond_34
    iget-object v4, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 55
    invoke-static {v4}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$100(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Ljava/util/HashMap;

    .line 58
    move-result-object v4

    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Ljava/util/ArrayList;

    .line 69
    :goto_44
    if-eqz v4, :cond_79

    .line 71
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 74
    move-result v5

    .line 75
    iget-object v6, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 77
    invoke-static {v6}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$200(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)I

    .line 80
    move-result v6

    .line 81
    if-ge v5, v6, :cond_79

    .line 83
    iget-object v5, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;->val$mRef:Ljava/lang/ref/WeakReference;

    .line 85
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 88
    move-result-object v5

    .line 89
    check-cast v5, Landroid/content/Context;

    .line 91
    const/4 v6, 0x0

    .line 92
    if-nez v5, :cond_6d

    .line 94
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 97
    move-result-object v5

    .line 98
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v5, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 105
    move-result-object v5

    .line 106
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    goto :goto_44

    .line 110
    :cond_6d
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {v5, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    goto :goto_44

    .line 122
    :cond_79
    iget-object v5, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 124
    invoke-static {v5}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$100(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Ljava/util/HashMap;

    .line 127
    move-result-object v5

    .line 128
    if-eqz v5, :cond_8e

    .line 130
    iget-object v5, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 132
    invoke-static {v5}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$100(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Ljava/util/HashMap;

    .line 135
    move-result-object v5

    .line 136
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_8e
    add-int/lit8 v2, v2, 0x1

    .line 145
    goto :goto_11

    .line 146
    :cond_91
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 148
    const/4 v1, 0x1

    .line 149
    invoke-static {v0, v1}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$302(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;Z)Z

    .line 152
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 154
    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$400(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Z

    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_c8

    .line 160
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 162
    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$100(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Ljava/util/HashMap;

    .line 165
    move-result-object v0

    .line 166
    if-eqz v0, :cond_c8

    .line 168
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 170
    invoke-static {v0}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->access$100(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Ljava/util/HashMap;

    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_b0
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_b0} :catch_b1

    .line 177
    goto :goto_c8

    .line 178
    :catch_b1
    move-exception v0

    .line 179
    const-string v1, "NPE:"

    .line 181
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object v0

    .line 196
    const-string v1, "CacheViewHelper"

    .line 198
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_c8
    :goto_c8
    return-void
.end method
