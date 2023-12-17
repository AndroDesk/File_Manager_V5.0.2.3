.class Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$1;
.super Ljava/lang/Object;
.source "CacheViewHelper.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$1;->this$0:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6
    const-string p1, "cache-single"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 11
    return-object v0
.end method
